//
//  AddText.swift
//  StateAndDataFlow
//
//  Created by Anton Duplin on 3/11/21.
//

import SwiftUI

struct AddText: View {
    @Binding var userName: String
    
  
    
    var body: some View {
        Text("\(userName.count)")
            .font(.largeTitle)
            .foregroundColor(userName.count >= 3 ? .green : .red )

    }
}

struct AddText_Previews: PreviewProvider {
    static var previews: some View {
        AddText(userName: .constant("128"))
    }
}
