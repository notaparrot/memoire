var paged = new Paged.Previewer();
var Hyphenopoly = {
    require: {
        "fr": "anticonstitutionnellement",
    },
    setup: {
        exceptions: {
            "global": "Bernard, Stiegler,",
        },
        selectors: {
            "*":{
                minWordlength: 7,
                orphanControl: 2
            },
            ".cite":{
                minWordlength: 8,
                orphanControl: 2
            },
        },
        paths: {
            patterndir: "Hyphenopoly/patterns/",
            maindir: "Hyphenopoly/"
        },
        handleEvent: {
            hyphenopolyEnd: function (e) {
                paged.preview();
            }
        }
    }
};