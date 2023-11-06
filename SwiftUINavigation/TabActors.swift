//
//  TabActors.swift
//  SwiftUINavigation
//
//  Created by Victor Alves on 27/10/23.
//

import SwiftUI

struct TabActors: View {
    
    var actors:[Actor] = [
        Actor(name: "Xolo Mariduena", details: "Xolo Maridueña was born in Los Angeles, California on June 9, 2001, Maridueña was barely three days old when he got his first taste of behind-the-scenes action in a radio station studio. Xolo has grown up watching artists perform firsthand, which sparked his intense interest in becoming a performer in his own right.", movies: "Cobra Kai, Blue Beetle, Parenthood"),
        Actor(name: "Bruna Marquezine", details: "Bruna Reis Maia (born August 4, 1995), better known as Bruna Marquezine, is a Brazilian actress. Marquezine began her television career in 2000. Since then she has acted in many Brazilian shows and films. She played her first role in an English-speaking film when she played Roseli in Breaking Through (2015). However, her biggest role in Hollywood has been her role in Blue Beetle (2023), when she played Jenny Kord, the love interest of Jaime Reyes.", movies: "Muitos"),
        Actor(name: "Susan Sarandon", details: "Susan Abigail Sarandon (née Tomalin; born October 4, 1946) is an American actress and activist. She is the recipient of various accolades, including an Academy Award, a British Academy Film Award, and a Screen Actors Guild Award, in addition to nominations for a Daytime Emmy Award, six Primetime Emmy Awards, and nine Golden Globe Awards. In 2002, she was honored with a star on the Hollywood Walk of Fame for her contributions to the film industry.", movies: "Muitos"),
        Actor(name: "Raoul Max Trujillo", details: "Raoul Trujillo is an American actor, dancer, and choreographer. A former soloist with the Nikolais Dance Theatre, he is the original choreographer and co-director for the American Indian Dance Theatre. He is the host for a series of dancing programs. Trujillo's career spans more than 30 years in film and theatre. He is perhaps best known for playing Zero Wolf, the Mayan villain in Apocalypto (2006), directed by Mel Gibson, and for playing the Iroquois chief Kiotseaton in the film Black Robe.", movies: "Apocalypto, Sicario, Blue Beetle, Riddick..."),
        Actor(name: "Belissa Escobedo", details: "Belissa Escobedo (born September 16, 1998) is an American actress. Escobedo's breakthrough role was in NBC's 2020 series The Baker and the Beauty. She is known for his roles in Hocus Pocus 2 (2022) and Blue Beetle (2023).", movies: "Hocus Pocus 2, Blue Beetle..."),
        Actor(name: "Damián Alcázar", details: "Damián Alcázar was born on January 8, 1953 in Jiquilpan, Michoacan, Mexico. He is an actor, known for Herod's Law (1999), The Chronicles of Narnia: Prince Caspian (2008) and El infierno (2010).", movies: "El Infierno, Narcos, Blue Beetle..."),
        Actor(name: "Elpidia Carrillo", details: "Elpidia Carrillo (born August 16, 1961) is a Mexican actress who has appeared in various acclaimed Latin-American films and television shows, in addition to some Hollywood films. She is also credited as Elpedia Carrillo on some of her films. Carrillo was born in Parácuaro, Michoacán, Mexico. Perhaps her best acted role in Hollywood to date has been that of Maria in the 1986 movie Salvador, where she acted alongside James Woods. Arguably, though, her best known role would be as the survivor, Anna, in Predator with Arnold Schwarzenegger and a cameo in Predator 2. In American cinema, she has also worked with Jimmy Smits and many other stars.", movies: "Predator, Seven Pounds, Predator 2, Blue Beetle...")
    ]
    
    var body: some View {
        VStack(alignment:.leading){
            Text("Actors")
                .font(.system(size: 35))
                .bold()
                .padding([.horizontal])
            Divider()
            Spacer().frame(height:8)
            
            List(actors, id:\.name){ Actor in
                ActorsView(name: Actor.name, details: Actor.details, movies: Actor.movies)
            }.listStyle(.plain)
        }
        
    }
    
}
    #Preview {
        TabActors()
    }

