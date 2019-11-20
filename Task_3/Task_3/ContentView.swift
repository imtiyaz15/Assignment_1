//
//  ContentView.swift
//  Task_3
//
//  Created by Brahmastra on 20/11/19.
//  Copyright © 2019 Brahmastra. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    init()
    {
        UITabBar.appearance().backgroundColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)

        
    }
    var body: some View {
        TabView {
            Favorite().tabItem({
                Image(systemName: Constants.TabBarImageName.tabBar0)
                Text("\(Constants.TabBarText.tabBar0)")
            }).tag(0).background(Color(.red))
            
            Download().tabItem({
            Image(systemName: Constants.TabBarImageName.tabBar1)
            Text("\(Constants.TabBarText.tabBar1)")
            }).tag(1)
            
            History().tabItem({
            Image(systemName: Constants.TabBarImageName.tabBar2)
            Text("\(Constants.TabBarText.tabBar2)")
            }).tag(2).background(Color(.red))
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
