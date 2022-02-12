(function(storyContent) {
    var delayParagraph = 700.0;
    var delayChoice = 100.0;

    var story = new inkjs.Story(storyContent);

    var storyContainer = document.querySelectorAll('#story')[0];
    var choicesContainer = document.querySelectorAll('#choices')[0];

    let PURE = true;
    let ACTION = false;
    story.BindExternalFunction("saveSlotIsBlank", saveSlotIsBlank, PURE);
    story.BindExternalFunction("saveToSlot", saveToSlot, ACTION);
    story.BindExternalFunction("loadFromSlot", loadFromSlot, ACTION);
    story.BindExternalFunction("quickSave", quickSave, ACTION);
    story.BindExternalFunction("quickLoad", quickLoad, ACTION);

    let quickSaveJson = localStorage.getItem("quickSave");
    function quickSave()
    {
        quickSaveJson = story.state.ToJson();
        localStorage.setItem("quickSave", quickSaveJson);
    }
    function quickLoad()
    {
        let json = localStorage.getItem("quickSave");
        if (!json) return false;

        quickSaveJson = json;
        story.state.LoadJson(quickSaveJson);

        return true;
    }
    function saveSlotIsBlank(page)
    {
        if (localStorage.getItem("saveSlot_" + page))
        {
            console.log("saveSlotIsBlank " + page + " false");
            return false;
        }
        else
        {
            console.log("saveSlotIsBlank " + page + " true");
            return true;
        }
    }

    function saveToSlot(page)
    {
        console.log("saveToSlot " + page);
        localStorage.setItem("saveSlot_" + page, quickSaveJson);
    }

    function loadFromSlot(page)
    {
        console.log("loadFromSlot " + page);
        let saved = localStorage.getItem("saveSlot_" + page);

        var existingChoices = choicesContainer.querySelectorAll('p.choice');
        for(var i=0; i<existingChoices.length; i++) {
            var c = existingChoices[i];
            c.parentNode.removeChild(c);
        }
        var existingParagraphs = storyContainer.querySelectorAll('p');
        for(var i=0; i<existingParagraphs.length; i++) {
            var c = existingParagraphs[i];
            c.parentNode.removeChild(c);
        }

        story.state.LoadJson(saved);

        // continueStory();
    }


    function showAfter(delay, el) {
        setTimeout(function() { el.classList.add("show") }, delay);
    }

    function scrollToBottom() {
        var progress = 0.0;
        var start = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop || 0;
        var dist = document.body.scrollHeight - window.innerHeight - start;
        if( dist < 0 ) return;

        var duration = 300 + 300*dist/100;
        var startTime = null;
        function step(time) {
            if( startTime == null ) startTime = time;
            var t = (time-startTime) / duration;
            var lerp = 3*t*t - 2*t*t*t;
            window.scrollTo(0, start + lerp*dist);
            if( t < 1 ) requestAnimationFrame(step);
        }
        requestAnimationFrame(step);
    }

    function continueStory() {

        var paragraphIndex = 0;
        var delay = 0.0;

        // Generate story text - loop through available content
        while(story.canContinue) {

            // Get ink to generate the next paragraph
            var paragraphText = story.Continue();

            // Create paragraph element
            var paragraphElement = document.createElement('p');
            paragraphElement.innerHTML = paragraphText;
            storyContainer.appendChild(paragraphElement);

            // Fade in paragraph after a short delay
            showAfter(delay, paragraphElement);

            delay += delayParagraph;
        }

        // Create HTML choices from ink choices
        story.currentChoices.forEach(function(choice) {

            // Create paragraph with anchor element
            var choiceParagraphElement = document.createElement('p');
            choiceParagraphElement.classList.add("choice");
            choiceParagraphElement.innerHTML = `<a href='#'>${choice.text}</a>`
            choicesContainer.appendChild(choiceParagraphElement);

            // Fade choice in after a short delay
            showAfter(delay, choiceParagraphElement);
            delay += delayChoice;

            // Click on choice
            var choiceAnchorEl = choiceParagraphElement.querySelectorAll("a")[0];
            choiceAnchorEl.addEventListener("click", function(event) {

                // Don't follow <a> link
                event.preventDefault();

                // Remove all existing choices
                var existingChoices = choicesContainer.querySelectorAll('p.choice');
                for(var i=0; i<existingChoices.length; i++) {
                    var c = existingChoices[i];
                    c.parentNode.removeChild(c);
                }

                // Tell the story where to go next
                story.ChooseChoiceIndex(choice.index);

                // Aaand loop
                continueStory();
            });
        });

        // // Create paragraph with anchor element
        // var choiceParagraphElement = document.createElement('p');
        // choiceParagraphElement.classList.add("choice");
        // choiceParagraphElement.innerHTML = `<a href='#'><br/><br/><br/></a>`
        // choicesContainer.appendChild(choiceParagraphElement);

        scrollToBottom();
    }

    continueStory();

})(storyContent);