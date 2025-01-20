//
//  ContentView.swift
//  AIfriends
//
//  Created by 伊藤潤平 on 2025/01/19.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        VStack {
            // CreateFriendViewへ遷移する
            NavigationStack {
                Image(.title)
                NavigationLink(destination: CreateFriendView()) {
                    Text("友達を作りに行く！")
                }
                .padding(100)
            }
            
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
