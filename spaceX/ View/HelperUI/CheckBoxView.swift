//
//  CheckBoxView.swift
//  spaceX
//
//  Created by Yarkın Gazibaba on 30.01.2022.
//

import SwiftUI

struct CheckBoxView: View {
    @Binding var checked: Bool

    var body: some View {
        Image(checked ? "filled_check" : "empty_check").resizable().frame(width: 25, height: 25)
            
            
            .onTapGesture {
                self.checked.toggle()
                print(checked)
            }
    }
}

struct CheckBoxView_Previews: PreviewProvider {
    struct CheckBoxViewHolder: View {
        @State var checked = false

        var body: some View {
            CheckBoxView(checked: $checked)
        }
    }


    static var previews: some View {
         CheckBoxViewHolder()
     }
 }
