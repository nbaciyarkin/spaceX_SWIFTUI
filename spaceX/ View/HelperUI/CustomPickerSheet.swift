//
//  CustomPicker.swift
//  spaceX
//
//  Created by Yarkın Gazibaba on 23.01.2022.
//

import SwiftUI




struct CustomPickerSheet:View {
    @State var selected = "Turkey"
    var body: some View{
        CustomPicker(selected: self.$selected)
    }
}

struct CustomPickerSheet_Previews: PreviewProvider {
    static var previews: some View {
        CustomPickerSheet()
    }
}


struct CustomPicker: UIViewRepresentable {
    
    @Binding var selected: String
        
    func makeCoordinator() -> Coordinator {
        return CustomPicker.Coordinator(parent1: self)
    }
    
   
    func makeUIView(context: UIViewRepresentableContext<CustomPicker>) -> UIPickerView {
        let picker = UIPickerView()
        picker.dataSource = context.coordinator
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIView(_ uiView: UIPickerView, context: UIViewRepresentableContext<CustomPicker>) {
    }
    
    
    class Coordinator: NSObject,UIPickerViewDelegate,UIPickerViewDataSource {

        var parent : CustomPicker
        
        init(parent1: CustomPicker) {
            parent = parent1
        }
        
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return data.count
        }
        
        /*func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return data[row]
        } */
        
        
        
        func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
            let view = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width - 100, height: 60))
            
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
            
            label.text = data[row]
            
            label.textAlignment = .center
            label.font = .systemFont(ofSize: 22, weight: .bold)
            
            view.backgroundColor = .gray
            
            view.addSubview(label)
            
            return view
        }
         
        func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
            return UIScreen.main.bounds.width - 100
        }
        
        func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
            return 60
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            self.parent.selected = data [row]
        }
    }
}



var data = ["Turkey","Tunusia","Germany","Philipans","Japan","China","Turkmenistan"]
