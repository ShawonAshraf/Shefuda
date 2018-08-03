//
//  SoundClipData.swift
//  Shefuda
//
//  Created by Shawon Ashraf on 8/3/18.
//  Copyright © 2018 Shawon Ashraf. All rights reserved.
//

import Foundation

class SoundClipData {
    // MARK: sounds dictionary
    // sound file names without extension
    static let soundClips: [String: String] = [
        "তর পুটকি তুই মার":"TOR PUTKI TUI MAR",
        "তোর সোনা খাঁড়ায় না":"tor shona toh kharay na",
        "লাভ ইস লাইফ":"love is life",
        "খানকির পোলা পেত্নী সুদাস":"khankir pola petni sudas",
        "বেশ্যা পোলা":"beshsha pola",
        "তরা মইরা যা":"tora moira ja",
        "খেলারে সুদি":"khelare sudi",
        "লজ্জা লজ্জা লজ্জা":"lojja lojja lojja",
        "আমার বাল ফালা":"amar bal fala",
        "ফকিন্নি গরিব":"FOKINNI GORIB",
        "অশিক্ষিত বর্বর ছোটলোকের জাতেরা":"oshikhito borbor chotoloker jatera",
        "বেশ্যার সোঁদারা":"beshar sodara",
        "আই হেইট ইউ":"I hate you",
        "মুরুক্ষসোঁদা":"murukkhusuda",
        "এই তরা মরে যা":"ei tora more ja",
        "ফকিন্নির সোঁদা দেশ":"fokinnir suda desh",
        "তোর বইনরে তুই সোঁদ":"TOR BOINRE TUI SOD",
        "লাভ নেভার ডাইস":"love never dies",
        "মাদারফাকার":"motherfucker",
        "শয়তান":"shoitan",
        "আমারে কুত্তায় সোঁদাইসে":"amare kuttay sudaise",
        "ধর্ম সোঁদা":"dhormo soda",
        "তর মায়েরে সুদি":"tor mayere sudi",
        "সুদি না":"sudi na",
        "হা হা হা হা":"Evil Laugh",
        "মদ খাবি মানুষ হবি":"mod khabi manush hobi",
        "তর মায়েরে তুই সোদ":"tor mayere tui sod",
        "খানকির পোলা ১":"khankir pola 01",
        "ওকে থুতু মারো":"oke thutu maro",
        "মদ খাবি, মাগী সুদবি, ওকে?":"mod khabi, magi sudbi, ok",
        "তোরা কুত্তাসোদা":"tora kuttasoda",
        "তোরা মুরুক্ষসোদা":"tora murukkhusuda",
        "কুত্তা দিয়া সোদাবো":"kutta diye sodabo",
        "গভর্নরের পুটকিতে আমি ছেপ দিয়া":"governor er putkite ami sep dia dhukai disi",
        "তর মা বুড়ি সুদি":"TOR MA BURI SUDI",
        "তোর মায়ের ভোঁদা রে আমি সুদি না":"tor maayer bhoda re ami sudi na",
        "তোর মায়েরে সুদতে আসি নাই":"TOR MAIRE SUDTE ASHI NAI KHANKIR POLA",
        "খুবই অসভ্য খারাপ":"khubi oshobho kharap",
        "শুভ সন্ধ্যা":"shubho shondha",
        "রাবিশ":"rubbish",
        "তোর মায়ের ভোঁদা দিয়া":"tor maayer bhoda dia dhukai dimu tor mukh dia bair hoibo",
        "মদ খাবি মাগি সুদবি":"mod khabi, magi sudbi",
        "মদ না খাইলে তোর মায়েরে সুদি":"mod na khaile tor mayere sudi",
        "তরা সব চোর":"Tora shob chor",
        "তড় মায়েরে তুই ২":"tor mayere tui sod 02",
        "শুভ অপরাহ্ণ":"shubho oporanho",
        "বেশ্যা মাগী":"beshsha magi",
        "ইউ ব্লাডই বাস্টার্ড":"YOU BLOODY BASTARD",
        "মদ খাও আর মাগী চোদো":"mod khao ar magi chudo",
        "নির্লজ্জ বেহায়া":"nirlojjo behaya",
        "কুত্তার বাচ্চা":"KUTTAR BACHA",
        "এসেন্ডেড খানকির পোলা":"Ascended khankir pola",
        "খানকি মাগী":"khanki magi",
        "মদ খাবি নাকি":"mod khabi naki",
        "স্টুপিড":"stupid",
        "মিথ্যুক ধোঁকাবাজ":"mithuk dhokabaj",
        "গুষ্টি সুদি":"gushti sudi",
        "শুটকি খাস, পেত্নী সোদস":"shutki khas, petni sudos",
        "সুপ্রভাত বাংলাদেশে এখন সুপ্রভাত":"Shuprobhat Bangladeshe Ekhon Shuprobhat",
        "বেশ্যার সোঁদা":"beshar soda",
        "খানকি":"khanki",
        "মদ খাবো আর মাগী সুদবো":"mod khabo ar magi sudbo",
        "মাদারফাকার বাস্টার্ড জারজ":"MOTHERFUCKER BASTARD JAROZ",
        "ত্বদের মই ঘৃণা করি":"toder ami ghrina kori",
        "কুত্তা দিয়া সোদাইতে সোদাইতে":"kutta diya sodaite sodaite",
        "তগরে আমি কুত্তা দিয়া চোদাই":"togore ami kutta diya chodai",
        "মাগী সুদো":"magi sudo",
        "তার পুটকি মাইরা দিসি":"taar putki maira disi",
        "গরীবের সোঁদা":"goriber suda",
        "খানকির পোলা মদ খাঁ":"khankir pola mod kha",
        "তুই গরীব সোঁদা":"tui gorib suda",
        "ভোঁদা দিয়া কুত্তা দিয়া সোদাই":"bhoda diya kutta diya sodai"
    ]
    
    // MARK: file extension for sounds
    static let fileExtension: String = ".mp3"
}
