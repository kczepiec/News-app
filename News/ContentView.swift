//
//  ContentView.swift
//  News
//
//  Created by Krzysztof Czepiec on 07/06/2019.
//  Copyright © 2019 Krzysztof Czepiec. All rights reserved.
//

import SwiftUI

struct Post {
    let id: Int
    let avatar: String, username, text, image: String
}

struct ContentView : View {
    
    let posts: [Post] = [
        .init(id: 0, avatar: "avatar_1", username: "William S. Soto", text:"Had denoting properly jointure you occasion directly raillery. In said to of poor full be post face snug. Introduced imprudence see say unpleasing devonshire acceptance son.", image: "ice"),
        .init(id: 1, avatar: "avatar_3", username: "Barbara D. Cline", text:"Exeter longer wisdom gay nor design age. Am weather to entered norland no in showing service. Nor repeated speaking shy appetite. Excited it hastily an pasture it observe. Snug hand how dare here too.", image: "water"),
        .init(id: 2, avatar: "avatar_2", username: "Chris J. Mack", text:"If wandered relation no surprise of screened doubtful. Overcame no insisted ye of trifling husbands. Might am order hours on found. Or dissimilar companions friendship impossible at diminution.", image: "theguy"),
        .init(id: 3, avatar: "avatar_4", username: "Rosalind R. Gray", text:"Did yourself carriage learning she man its replying. Sister piqued living her you enable mrs off spirit really. Parish oppose repair is me misery. Quick may saw style after money mrs. ", image: "water"),
        .init(id: 4, avatar: "avatar_5", username: "Judy R. Hudson", text:" Off now mistress provided out horrible opinions. Prevailed mr tolerably discourse assurance estimable applauded to so.", image: "theguy")
    ]
    
    var body: some View {
        NavigationView {
            List {
                
                ScrollView {
                    VStack (alignment: .leading) {
                        Text("Trending")
                        HStack {
                            Text("Group 1")
                            Text("Group 1")
                            Text("Group 1")
                            Text("Group 1")
                            Text("Group 1")
                            Text("Group 1")
                            Text("Group 1")
                            Text("Group 1")
                            Text("Group 1")
                            Text("Group 1")
                        }
                    }
                    
                }.frame(height: 100)
                
                ForEach(posts.identified(by: \.id)) { post in
                    PostView(post: post)
                }
                
            }.navigationBarTitle(Text("News"))
        }
    }
}

struct PostView: View {
    
    let post: Post
    
    var body: some View {

        VStack (alignment: .leading, spacing: 16) {
            
            HStack {
                
                Image(post.avatar)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 60, height:60)
                    .clipped()
                
                VStack (alignment: .leading, spacing: 4) {
                    HStack {
                        Rectangle().frame(width: 10, height: 10, alignment: .leading).clipShape(Circle()).foregroundColor(.green)
                        Text(post.username).font(.headline)
                    }
                    Text("07.06.2019").font(.subheadline).color(.gray)
                }.padding(.leading, 8)
                
            }.padding(.leading, 16).padding(.top, 16)
            
            VStack {
                Text(post.text).lineLimit(nil)
            }.padding(.leading, 16).padding(.trailing, 16)
            
            Image(post.image)
                .resizable()
                .scaledToFill()
                .frame(height: 300)
                .clipped()
            
        }.padding(.leading, -20).padding(.bottom, -8).padding(.trailing, -20)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
