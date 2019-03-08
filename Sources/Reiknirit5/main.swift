import Foundation

let menu = Menu(title: "Skilaverkefni 5", options: [
    (text: "Hluti 1", option: runPart1),
    (text: "Hluti 2", option: runPart2),
    (text: "Hætta", option: {
        exit(0)
    })
])

while true {
    menu.show()
}
