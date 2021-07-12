//
//  ContentView.swift
//  Shared
//
//  Created by KIRILL SIMAGIN on 09/07/2021.
//

import SwiftUI
struct ViewData {
    static let storedUsername = "azerty"
    static let storedPassword = "azerty"
}

struct ContentView: View {
    @State var username = ""
    @State var password = ""
    
    @State var authenticationDidFail = false
    @State var authenticationDidSucceed = false
    
    var body: some View {
        ZStack {
            VStack {
                WelcomeText()
                UserImage()
                
                UsernameTextField(username: $username)
                
                PasswordSecureField(password: $password)
                
                if authenticationDidFail {
                    Text("Entered credentials incorrect. Try again.")
                        .padding(.bottom, 15)
                        .foregroundColor(.red)
                }
                
                Button(action: {
                    print("username => \(username) == \(ViewData.storedUsername)\n passw => \(password) == \(ViewData.storedPassword)")
                    if username == ViewData.storedUsername && password == ViewData.storedPassword {
                        authenticationDidSucceed = true
                        authenticationDidFail = false
                        }else {
                            authenticationDidFail = true
                            authenticationDidSucceed = false
                        }
                }, label: {
                    LoginButtonContent()
                })
                .buttonStyle(PlainButtonStyle())
            }
            .padding()
            
            if authenticationDidSucceed {
                Text("Login successful!")
                    .font(.headline)
                    .frame(width: 250, height: 80)
                    .background(Color.green)
                    .cornerRadius(20)
                    .foregroundColor(.white)
                    .animation(Animation.default)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
