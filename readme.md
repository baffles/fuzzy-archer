# Fuzzy Archer

## About

### What is Fuzzy Archer?

Occasionally, authors on [The Daily WTF](http://www.thedailywtf.com/) insert hidden comments into their articles. Fuzzy
Archer is a simple extension for Google Chrome that displays these hidden comments.

### Where did the name come from?

The name generator on GitHub spit it out, so I used it!

## Building

To build from source, you'll need to have `CoffeeScript` (which requires `node.js`), `fs-extra`, and `cson` installed.

You'll probably want `CoffeeScript` installed globally, so you can just run `coffee` and `cake. The other required
modules may be installed locally using `npm install cson fs-extra`.

To build, execute `cake build`. To automatically re-build as you edit, execute `cake watch`.
