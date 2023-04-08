//
//  TestsView.swift
//  ConsoleControl
//
//  Created by Антон Шалимов on 08.04.2023.
//

import SwiftUI

struct TestsView: View {
    @State private var selectedOption = 0
    let options: [String]
    
    var body: some View {
        VStack {
            Picker(selection: $selectedOption, label: Text("")) {
                ForEach(0 ..< options.count, id: \.self) { index in
                    Text(self.options[index]).tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}

struct TestsView_Previews: PreviewProvider {
    static var previews: some View {
        TestsView(options: ["AD", "ALD", "Local"])
    }
}
