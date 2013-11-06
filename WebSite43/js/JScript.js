// search the CSSOM for a specific -webkit-keyframe rule
function findKeyframesRule(rule) {
    // gather all stylesheets into an array
    var ss = document.styleSheets;

    // loop through the stylesheets
    for (var i = 0; i < ss.length; ++i) {

        // loop through all the rules
        for (var j = 0; j < ss[i].cssRules.length; ++j) {

            // find the -webkit-keyframe rule whose name matches our passed over parameter and return that rule
            if (ss[i].cssRules[j].type == window.CSSRule.WEBKIT_KEYFRAMES_RULE && ss[i].cssRules[j].name == rule)
                return ss[i].cssRules[j];
        }
    }

    // rule not found
    return null;
}

// remove old keyframes and add new ones
function change(anim) {
    // find our -webkit-keyframe rule
    var keyframes = findKeyframesRule(anim);

    // remove the existing 0% and 100% rules
    keyframes.deleteRule("0%");
    keyframes.deleteRule("100%");

    // create new 0% and 100% rules with random numbers
    keyframes.insertRule("0% { -webkit-filter: drop-shadow(3px 3px 40px rgba(" + myCharacterColor + ",1)); }");
    keyframes.insertRule("100% { -webkit-filter: drop-shadow(" + myCharacterColor + ",0.5)); }");

    // assign the animation to our element (which will cause the animation to run)
    document.getElementById('cat').style.webkitAnimationName = anim;
}

// begin the new animation process
function startChange() {
    // remove the old animation from our object
    document.getElementById('cat').style.webkitAnimationName = "none";

    // call the change method, which will update the keyframe animation
    setTimeout(function () { change("blink"); }, 0);
}

// get a random number integer between two low/high extremes
function randomFromTo(from, to) {
    return Math.floor(Math.random() * (to - from + 1) + from);
}