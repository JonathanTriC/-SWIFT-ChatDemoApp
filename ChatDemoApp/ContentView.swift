//
//  ContentView.swift
//  ChatDemoApp
//
//  Created by Jonathan Tri Christianto on 17/05/22.
//

import SwiftUI

struct ContentView: View {
    var messageArray = ["Hello you!", "Nice to see you again...", "How are you doing?"]
    
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                    .background(Color("Peach"))
                
                ScrollView{
                    ForEach(messageArray, id: \.self) { text in
                        MessageBubble(message: Message(id: "12345", text: text, received: true, timeStamp: Date()))
                    }
                }
                .padding(.top, 10)
                .background(.white)
                .cornerRadius(30, corners: [.topLeft, .topRight])
            }
            .background(Color("Peach"))
            
            MessageField()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
