//
//  MovieView.swift
//  SwiftUINavigation
//
//  Created by Victor Alves on 27/10/23.
//

import SwiftUI


struct Movie {
    var title:String
    var sinopse: String
}

struct MoviePlaying{
    var titlePlaying:String
}

struct MovieView: View{
    var title:String = ""
    var sinopse:String = ""
    @State var liked:Bool = false
    
    func like(){
        liked = true
    }
    
    var body: some View{
        HStack{
            Image(title)
                .resizable()
                .frame(width: 80, height: 120)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            Spacer()
            VStack(alignment:.leading){
                
                Text(title)
                    .font(.headline)
                    .padding([.top], 12)
                Spacer().frame(height: 8)
                
                Text(sinopse)
                    .font(.caption)
                    .frame(width: 270)
                    .foregroundStyle(.gray)
                    .lineLimit(3)
                
                Spacer().frame(height: 8)
                
                HStack{
                    Image(systemName: "star")
                        .font(.system(size: 12))
                        .foregroundStyle(.gray)
                    Text("7.1")
                        .font(.system(size: 12))
                        .foregroundStyle(.gray)
                    Image(systemName: liked ? "heart.fill" : "heart")
                        .foregroundColor(.red)
                        .font(.system(size: 15))
                        .padding([.leading], 200)
                        .padding([.top], 8)
                }
            }
        }
        .swipeActions(edge: .trailing){
            Button{
                liked.toggle()
            }label:{
                liked ? Label("Unlike", systemImage: "heart.slash") :
                Label("Like", systemImage: "heart.fill")
            }.tint(.red)
        }
        
    }
}

