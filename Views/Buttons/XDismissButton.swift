//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Efe Mesudiyeli on 10.04.2024.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingModal: Bool
    var body: some View {
        HStack{
            
            Spacer()
            
            Button(action: {
                isShowingModal = false
            },
                   label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            })
        }.padding(.trailing)
    }
}

#Preview {
    XDismissButton(isShowingModal: .constant(false))
}
