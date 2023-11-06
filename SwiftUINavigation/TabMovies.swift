//
//  TabMovies.swift
//  SwiftUINavigation
//
//  Created by Victor Alves on 27/10/23.
//

import SwiftUI

struct TabMovies: View {
    var movies:[Movie] = [
    Movie(title: "The Exorcist", sinopse: "Recent college grad Jaime Reyes returns home full of aspirations for his future, only to find that home is not quite as he left it. As he searches to find his purpose in the world, fate intervenes when Jaime unexpectedly finds himself in possession of an ancient relic of alien biotechnology: the Scarab."),
    Movie(title: "Saw X", sinopse: "Recent college grad Jaime Reyes returns home full of aspirations for his future, only to find that home is not quite as he left it. As he searches to find his purpose in the world, fate intervenes when Jaime unexpectedly finds himself in possession of an ancient relic of alien biotechnology: the Scarab."),
    Movie(title: "Loki", sinopse: "Recent college grad Jaime Reyes returns home full of aspirations for his future, only to find that home is not quite as he left it. As he searches to find his purpose in the world, fate intervenes when Jaime unexpectedly finds himself in possession of an ancient relic of alien biotechnology: the Scarab."),
    Movie(title: "Killers of the Flower Moon", sinopse: "Recent college grad Jaime Reyes returns home full of aspirations for his future, only to find that home is not quite as he left it. As he searches to find his purpose in the world, fate intervenes when Jaime unexpectedly finds himself in possession of an ancient relic of alien biotechnology: the Scarab."),
    Movie(title: "Blue Beetle", sinopse: "Recent college grad Jaime Reyes returns home full of aspirations for his future, only to find that home is not quite as he left it. As he searches to find his purpose in the world, fate intervenes when Jaime unexpectedly finds himself in possession of an ancient relic of alien biotechnology: the Scarab.")]


var moviesSearch:[Movie] = [
    Movie(title: "Blue Beetle", sinopse: "Recent college grad Jaime Reyes returns home full of aspirations for his future, only to find that home is not quite as he left it. As he searches to find his purpose in the world, fate intervenes when Jaime unexpectedly finds himself in possession of an ancient relic of alien biotechnology: the Scarab."),
    Movie(title: "Blue Beetle", sinopse: "Recent college grad Jaime Reyes returns home full of aspirations for his future, only to find that home is not quite as he left it. As he searches to find his purpose in the world, fate intervenes when Jaime unexpectedly finds himself in possession of an ancient relic of alien biotechnology: the Scarab."),
    Movie(title: "Blue Beetle", sinopse: "Recent college grad Jaime Reyes returns home full of aspirations for his future, only to find that home is not quite as he left it. As he searches to find his purpose in the world, fate intervenes when Jaime unexpectedly finds himself in possession of an ancient relic of alien biotechnology: the Scarab."),
    Movie(title: "Blue Beetle", sinopse: "Recent college grad Jaime Reyes returns home full of aspirations for his future, only to find that home is not quite as he left it. As he searches to find his purpose in the world, fate intervenes when Jaime unexpectedly finds himself in possession of an ancient relic of alien biotechnology: the Scarab."),
    Movie(title: "Blue Beetle", sinopse: "Recent college grad Jaime Reyes returns home full of aspirations for his future, only to find that home is not quite as he left it. As he searches to find his purpose in the world, fate intervenes when Jaime unexpectedly finds himself in possession of an ancient relic of alien biotechnology: the Scarab.")]


var moviesPlaying:[MoviePlaying] = [
    MoviePlaying(titlePlaying: "Blue Beetle"),
    MoviePlaying(titlePlaying: "The Boy and the Heron"),
    MoviePlaying(titlePlaying: "Loki"),
    MoviePlaying(titlePlaying: "The Exorcist"),
    MoviePlaying(titlePlaying: "Killers of the Flower Moon")]

@State var searchText:String = ""

var body: some View {
    
    NavigationStack {
        
        VStack(alignment: .leading){
            
            Text("MovieDB")
                .font(.title)
                .bold()
            Spacer().frame(height: 10)
            Text("Now Playing")
                .bold()
            
            ScrollView(.horizontal, content: {
                HStack{
                    ForEach(moviesPlaying, id:\.titlePlaying){ MoviePlaying in
                        NowPlayingView(title: MoviePlaying.titlePlaying)
                    }
                }
            })
            
            Spacer().frame(height: 18)
            
            Text("Popular Movies")
                .bold()
            
            List(movies, id:\.title){ Movie in
                MovieView(title: Movie.title, sinopse: Movie.sinopse)
                    .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .padding([.bottom], 5)
        }
        
        
    }
    .padding([.horizontal])
    
    .searchable(text: $searchText)
    
}
}

#Preview {
    TabMovies()
}
