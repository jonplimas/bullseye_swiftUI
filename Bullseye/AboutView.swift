//
//  AboutView.swift
//  Bullseye
//
//  Created by CSUFTitan on 7/1/20.
//  Copyright © 2020 Jon Limas. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    
    struct AboutHeadingStyle : ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.black)
                .font(Font.custom("Arial Rounded MT Bold", size: 30))
                .padding(.bottom, 20)
                .padding(.top, 20)
        }
    }
    struct AboutBodyStyle : ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.black)
                .font(Font.custom("Arial Rounded MT Bold", size: 16))
                .padding(.init(top: 0, leading: 60, bottom: 20, trailing: 60))
        }
    }
    let beige = Color(red: 255.0/255.0, green: 214.0/255.0, blue: 179.0/255.0)
    
    var body: some View {
        Group {
            VStack {
                Text("🎯 Bullseye 🎯").modifier(AboutHeadingStyle())
                Text("This is Bullseye, the game where you can win points and earn fame by dragging a slider.").modifier(AboutBodyStyle()).lineLimit(nil)
                Text("Get 100 bonus points for hitting the bullseye! 50 bonus points for being 1 off.").modifier(AboutBodyStyle())
                Text("- Jon Limas").modifier(AboutBodyStyle())
            }
        .navigationBarTitle("About Bullseye")
        .background(beige)
        }
        .background(Image("Background"))
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().previewLayout(.fixed(width: 896, height: 414))
    }
}
