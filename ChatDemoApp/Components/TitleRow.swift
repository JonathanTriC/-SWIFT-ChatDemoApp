//
//  TitleRow.swift
//  ChatDemoApp
//
//  Created by Jonathan Tri Christianto on 17/05/22.
//

import SwiftUI

struct TitleRow: View {
    var imageUrl = URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTipXzez5nT6TeTngHFUJnygpNqTlujr8sZoevoLR7ZfdLyJBWBvIax2kD&s=10")
    var name = "Kim Jisoo"
    
    var body: some View {
        HStack(spacing: 20){
            AsyncImage(url: imageUrl) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title).bold()
                
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
        }
        .padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Peach"))
    }
}
