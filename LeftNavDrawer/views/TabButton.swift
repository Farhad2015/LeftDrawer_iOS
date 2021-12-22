//
//  TabButton.swift
//  LeftNavDrawer
//
//  Created by Artificial-Soft Air on 22/12/21.
//

import SwiftUI

struct TabButton: View {
    var image: String
    var title: String
    
    //Selected tab
    @Binding var selectedTab: String
    //Animation slide
    var animation: Namespace.ID
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()){
                selectedTab = title
            }
        }, label: {
            HStack(spacing: 15){
                Image(systemName: image)
                    .font(.title2)
                    .frame(width: 30)
                Text(title)
                    .fontWeight(.semibold)
            }
            .foregroundColor(selectedTab == title ? Color.blue : .white)
            .padding(.vertical, 12)
            .padding(.horizontal, 10)
            // Max frame
            .frame(maxWidth: getRect().width - 170, alignment: .leading)
            .background(
                //hero animation
                ZStack{
                if selectedTab == title {
                    Color.white.opacity(selectedTab == title ? 1 : 0)
                        .clipShape(CustomCorner(corners: [.topRight, .bottomRight], radious: 10))
                        .matchedGeometryEffect(id: "TAB", in: animation)
                }
                }
            )
        })
    }
}

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
