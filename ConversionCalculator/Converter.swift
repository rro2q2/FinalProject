//
//  Converter.swift
//  ConversionCalculator
//
//  Created by Roland Oruche on 4/12/19.
//  Copyright © 2019 University of Missouri. All rights reserved.
//

import UIKit

struct Converter {
    let label: String
    let inputUnit: String
    let outputUnit: String
}

enum ActionSheet {
    case ftoc
    case ctof
    case mtok
    case ktom
}
