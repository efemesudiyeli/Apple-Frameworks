//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Efe Mesudiyeli on 9.04.2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible()),
    ]
}
