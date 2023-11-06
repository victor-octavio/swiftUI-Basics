//
//  NowPlayingView.swift
//  SwiftUINavigation
//
//  Created by Victor Alves on 27/10/23.
//

import SwiftUI

struct NowPlayingView: View{
    var title: String = ""
    @State var isPresented:Bool = false
    
    
    
    var body: some View{
        VStack{
            Button(){
                self.isPresented = true
            }label:{
                Image(title)
                    .resizable()
                    .frame(width: 130, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            
            Text(title)
                .bold()
            Spacer().frame(height: 3)
            HStack{
                Image(systemName: "star")
                    .font(.system(size: 12))
                    .foregroundStyle(.gray)
                Text("7.1")
                    .font(.system(size: 12))
                    .foregroundStyle(.gray)
            }
            
        }
        .sheet(isPresented: $isPresented, content: {
            VStack{
                VStack(alignment: .leading){
                    HStack{
                        Image(title)
                            .resizable()
                            .frame(width: 200, height: 300)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                        VStack(alignment:.leading){
                            Text(title)
                                .font(.title)
                                .bold()
                            Text("Genero")
                                .foregroundColor(.gray)
                            HStack{
                                Image(systemName: "star")
                                    .font(.system(size: 12))
                                    .foregroundColor(.gray)
                                Text("7.1")
                                    .font(.system(size: 12))
                                    .foregroundColor(.gray)
                            }
                            
                        }
                    }.padding([.bottom], 400)
                }
            }
        })
    }
}

#Preview {
    ContentView()
}
