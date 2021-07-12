//
//  OrderForm.swift
//  DemoApp
//
//  Created by KIRILL SIMAGIN on 11/07/2021.
//

import SwiftUI

struct OrderForm: View {
    /// for switch
    @State var specialRequest = false
    @State var specialRequestInput = ""
    
    /// for stepper
    @State var orderAmount = 1
    
    /// text field
    @State var firstName = ""
    @State var lastName = ""
    @State var street = ""
    @State var city = ""
    @State var zip = ""
    
    // for slider
    @State var userFeedback = 0.0

    var body: some View {
        Form{
            Section{
                Toggle(isOn: $specialRequest) {
                    Image(systemName: specialRequest ? "heart.fill" : "heart")
                        .foregroundColor(.orange)
                    Text("Any special requests?")
                }
                .toggleStyle(SwitchToggleStyle(tint: .orange))
                // Use your Toggle Style for your Toggle view
                //            .toggleStyle(DefaultToggle(onColor: .blue, offColor: .white))
                //            .toggleStyle(MyToggleStyle())
                //            .toggleStyle(CheckboxStyle())
                if specialRequest {
                    TextField("Enter your request", text: $specialRequestInput)
                }
                
                
                Stepper(value: $orderAmount, in: 1...10) {
                    Text("Quantity: \(orderAmount)")
                }
            }
            
            Section {
                TextField("First name", text: $firstName)
                TextField("Last name", text: $lastName)
                TextField("Street", text: $street)
                TextField("City", text: $city)
                TextField("ZIP code", text: $zip)
            }
            Section {
                HStack {
                    Image(systemName: "hand.thumbsdown")
                    Slider(value: $userFeedback, in: 0.0...10.0)
                    Image(systemName: "hand.thumbsup")
                }
                Text("your feedback: \(userFeedback)")
            }
        }
        .navigationTitle("🛠")
    }
}

struct OrderForm_Previews: PreviewProvider {
    static var previews: some View {
        OrderForm()
    }
}
/// Implementaion
/// https://www.instagram.com/p/B43EKNMC3Hb/
struct DefaultToggle: ToggleStyle {
    
    let onColor: Color
    let offColor: Color
    
    let width: CGFloat = 50
    let height: CGFloat = 30
    
    func makeBody (configuration: Self.Configuration) -> some View{
        HStack{
            configuration.label
            Spacer ()
            ZStack(alignment: configuration.isOn ? .trailing : .leading) {
                RoundedRectangle(cornerRadius:16)
                    .frame(width: width, height: height)
                    .foregroundColor(configuration.isOn ? .blue : .green)
                RoundedRectangle (cornerRadius: 16)
                    .frame(width: height-3.5, height: height-3.5)
                    .foregroundColor(.yellow)
                    .padding(1.5)
            }
            .onTapGesture {
                withAnimation{configuration.$isOn.wrappedValue.toggle()
                }
            }
        }
    }
}

struct MyToggleStyle: ToggleStyle{
    
    let width: CGFloat = 60
    let height: CGFloat = 30
    
    func makeBody (configuration: Self.Configuration) -> some View {
        
        HStack{
            
            //Uncomment the following two lines to show the label
            configuration.label
            Spacer ()
            
            ZStack(alignment: configuration.isOn ? .trailing : .leading){
                
                //The box around our slider
                
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: width, height: height)
                    .foregroundColor(configuration.isOn ?
                                        .green : .gray)
                
                //The slider itself
                RoundedRectangle(cornerRadius:4)
                    .frame (width: (width / 4), height: height)
                    .foregroundColor(.white)
            }
            .shadow(color: .gray, radius: 1, x: 1, y: 1)
            .onTapGesture{
                withAnimation{
                    configuration.$isOn.wrappedValue.toggle()
                }
                
            }
        }
    }
}

struct CheckboxStyle: ToggleStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        
        return HStack {
            
            configuration.label
            
            Spacer()
            
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(configuration.isOn ? .purple : .gray)
                .font(.system(size: 20, weight: .bold, design: .default))
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
        
    }
}
