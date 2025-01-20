//
//  ContentView.swift
//  AIfriends
//
//  Created by 伊藤潤平 on 2025/01/19.
//

import SwiftUI
import SwiftData

struct CreateFriendView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        // ナビゲーションバー
        VStack {
            Text("Create Frined")
                .font(.headline)
                .padding()
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
