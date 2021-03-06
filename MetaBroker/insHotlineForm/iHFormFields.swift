// iHFormFields     ･   MetaBroker   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

var iHFormFields = [["",                                                                "",                     "",         "",         ""],
                    [" Your Vehicle\(headerTitleSpaces)",                               "Year ↕️",              "Make ↕️",     "Model",    ""],
                    [" Did you lease it?\(headerTitleSpaces)",                          "Leased",               "Not Leased", "",       ""],
                    [" When did you buy or lease?\(headerTitleSpaces)",                 "Year ↕️",              "Month ↕️", "",         ""],
                    [" Main use of your vehicle\(headerTitleSpaces)",                   "Pleasure",             "Business", "",         ""],
                    [" Your daily commute (one way)\(headerTitleSpaces)",               "0 KM ↕️",              "",         "",         ""],
                    [" Annual distance\(headerTitleSpaces)",                            "15,000 KM ↕️",         "",         "",         ""],
                    [" Does your vehicle have winter tires?\(headerTitleSpaces)",       "Yes",                  "No",       "",         ""],
                    [" Where is this vehicle parked at night?\(headerTitleSpaces)",     "Private garage ↕️",    "",         "",         ""],
                    [" Coverage and Deductible Preferences\(headerTitleSpaces)",        "",                     "",         "",         ""],
                    [" Liability coverage\(headerTitleSpaces)",                         "$1 Million",           "$2 Million", "",        ""],
                    [" Collision deductible\(headerTitleSpaces)",                       "$500",                 "$1,000",   "Decline",  ""],
                    [" Comprehensive deductible\(headerTitleSpaces)",                   "$300",                 "$500",     "$1,000", "Decline"],
                    [" Loss of use\(headerTitleSpaces)",                                "Yes",                  "No",       "",         ""],
                    [" Rental car insurance\(headerTitleSpaces)",                       "Yes",                  "No",       "",         ""],
                    [" ",                                                               "",                     "",         "",         ""],
                    [" ",                                                               "",                     "",         "",         ""],
                    [" ",                                                               "",                     "",         "",         ""],
                    [" ",                                                               "",                     "",         "",         ""],
                    [" ",                                                               "",                     "",         "",         ""],
                    [" ",                                                               "",                     "",         "",         ""],
                    [" ",                                                               "",                     "",         "",         ""],
                    [" ",                                                               "",                     "",         "",         ""],
                    [" ",                                                               "",                     "",         "",         ""],
                    [" ",                                                               "",                     "",         "",         ""],
                    [" ",                                                               "",                     "",         "",         ""],
                    [" ",                                                               "",                     "",         "",         ""],
                    [" ",                                                               "",                     "",         "",         ""],
                    [" ",                                                               "",                     "",         "",         ""],
                    [" end\(headerTitleSpaces)",                                        "",                     "",         "",         ""]]

var headerTitleSpaces = "  "

//var boilerplateFormFieldMatrix = [[""], /// admittedly nerdy-sounding but descriptive nonetheless
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "],
//    [" "]]

/// Individual columns as separate arrays: (last edited Nov. 18, 2019)

//var insHotlineHeaderTitles = ["",
//" Your Vehicle\(headerTitleSpaces)",
//" Did you lease it?\(headerTitleSpaces)",
//" When did you buy or lease?\(headerTitleSpaces)",
//" Main use of your vehicle\(headerTitleSpaces)",
//" Your daily commute (one way)\(headerTitleSpaces)",
//" Annual distance\(headerTitleSpaces)",
//" Does your vehicle have winter tires?\(headerTitleSpaces)",
//" Where is this vehicle parked at night?\(headerTitleSpaces)",
//" Coverage and Deductible Preferences\(headerTitleSpaces)",
//" Liability coverage\(headerTitleSpaces)",
//" Collision deductible\(headerTitleSpaces)",
//" Comprehensive deductible\(headerTitleSpaces)",
//" Loss of use\(headerTitleSpaces)",
//" Rental car insurance\(headerTitleSpaces)",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" end\(headerTitleSpaces)"]

//var insHotlineFormContentsOne = ["",
//" Year ↕️",
//" Leased",
//" Year ↕️",
//" Pleasure",
//" 0 Km ↕️",
//" 15,000 Km ↕️",
//" Yes",
//" Private Garage ↕️",
//" ",
//" $1 Million",
//" $500",
//" $300",
//" Yes",
//" Yes",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" end"]

//var insHotlineFormContentsTwo = ["",
//" Make ↕️",
//" Not Leased",
//" Month ↕️",
//" Business",
//" ",
//" ",
//" No",
//" ",
//" ",
//" $2 Million",
//" $1,000",
//" $500",
//" No",
//" No",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" end"]

//var insHotlineFormContentsThree = ["",
//" Model (type it in)",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" Decline",
//" $1,000",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" ",
//" end"]
