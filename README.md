# Send2Mac Client Ruby

## Synopsis

A simple [Send2Mac][0925-001] client written in Ruby. When links are received, it opens them in the default browser using [Launchy][0925-002]. 

## Code Example

    $ ruby bin/send2mac-client
    $ Listening...
    $ http://github.com/prokizzle/pinboard_tools
    $ http://coffeegeek.com

## Motivation

The official Send2Mac client is written in AppleScript using a curl loop. I figured I could rewrite it in Ruby very quickly. My intention is to build upon the script to enable actions and commands, possibly chaining multiple Send2Mac API Keys together. This is pretty much a baseline for a whole lot of tinkering.

## Installation

Clone the project.
Run `rake init` and enter your [Send2Mac API Key][0925-003]. 
Run `ruby bin/send2mac-client` to start it.

## License

Licensed under the [MIT License][0925-004]
[0925-001]: http://www.send2mac.com/ "Send2Mac"
[0925-002]: https://github.com/copiousfreetime/launchy "copiousfreetime/launchy · GitHub"
[0925-003]: http://www.send2mac.com/send2mac/index.php "Send2Mac"
[0925-004]: http://opensource.org/licenses/MIT "The MIT License (MIT) | Open Source Initiative"
