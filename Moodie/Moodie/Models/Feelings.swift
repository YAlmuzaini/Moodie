//
//  Feelings.swift
//  Moodie
//
//  Created by Yousif on 05/01/2021.
//

import SwiftUI

struct Emojis: Identifiable{
    let emojiImage: [String]
    let emojiTitle: [String]
    let emojiBackgroundColor: [String]
    
    let id = UUID()
}

let emoji = [
    Emojis(emojiImage: ["","angry","verySad","sad","shy","ok","inLove","happy","excited",""],
           emojiTitle: ["","Angry","Very Sad","Sad","Shy","Ok","In Love","Happy","Excited",""],
           emojiBackgroundColor: ["","RedSalsa","Orange-ish","Orange","Maize","Pistachio","Zomp","QueenBlue","CgBlue","Sky"])
]
