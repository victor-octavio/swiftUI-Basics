//
//  ActorsView.swift
//  SwiftUINavigation
//
//  Created by Victor Alves on 27/10/23.
//

import SwiftUI


struct Actor{
    var name:String
    var details:String
    var movies:String
}

struct ActorsView: View {
    var name:String = "Blue Beetle"
    var details:String = "fjadshfgakhjfgahdfajkfggfahsdfgkahjsdfgakjhgsfdkjagsfdkhjagfkjagsdfkjagfagfjagfdskajdfgakjfdgfjahsdfgahdsfjaghshdsfgahj"
    var movies:String = "jjsadhffgajshdfgajsdhf"
    
    var body: some View {
        HStack{
            Image(name)
                .resizable()
                .frame(width: 80, height: 120)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment:.leading){
                Text(name)
                    .font(.system(size: 15))
                    .bold()
                Text(details)
                    .font(.caption)
                    .lineLimit(3)
                    .foregroundColor(.gray)
                    .frame(width: 200)
                Spacer().frame(height: 10)
                HStack{
                    Image(systemName: "star")
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                    Text(movies)
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                }
            }
        }
    }
}

#Preview {
    ActorsView()
}
