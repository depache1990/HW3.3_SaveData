//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 01.11.2021.
//

import SwiftUI

struct RegisterView: View {
    @AppStorage(DataManager.firstName) var firstName = ""
    @EnvironmentObject private var user: UserManager
    @AppStorage("isOnBoarding") var isOnBoarding: Bool?

    var body: some View {
        VStack {
            HStack {
            TextField("Enter your name...", text: $firstName)
                .multilineTextAlignment(.center)
                AddText(userName: $firstName)
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                        
                    
                }.disabled(firstName.count <= 2)
            }
        }
    }

    private func registerUser() {
        if !firstName.isEmpty  {
            user.name = firstName
            user.isRegistered.toggle()
            self.isOnBoarding?.toggle()
   
        }
            
        }
    }
    


struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
