//
//  ContentView.swift
//  EmmaKadai10
//
//  Created by Emma
//

import SwiftUI

struct ContentView: View {
    private let prefectures: [String] = [
        "北海道",
        "青森県",
        "岩手県",
        "宮城県",
        "秋田県",
        "山形県",
        "福島県",
        "茨城県",
        "栃木県",
        "群馬県",
        "埼玉県",
        "千葉県",
        "東京都",
        "神奈川県",
        "新潟県",
        "富山県",
        "石川県",
        "福井県",
        "山梨県",
        "長野県",
        "岐阜県",
        "静岡県",
        "愛知県",
        "三重県",
        "滋賀県",
        "京都府",
        "大阪府",
        "兵庫県",
        "奈良県",
        "和歌山県",
        "鳥取県",
        "島根県",
        "岡山県",
        "広島県",
        "山口県",
        "徳島県",
        "香川県",
        "愛媛県",
        "高知県",
        "福岡県",
        "佐賀県",
        "長崎県",
        "熊本県",
        "大分県",
        "宮崎県",
        "鹿児島県",
        "沖縄県"
    ]

    private let lowColors: [Color] = [
        Color.pink.opacity(0.1),
        Color.green.opacity(0.1),
        Color.mint.opacity(0.2)
    ]

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Text("47都道府県を表示するアプリ")
                    .font(.headline)
                    .padding(.bottom)
                    .frame(maxWidth: .infinity, maxHeight: 40)
                    .background(.mint.opacity(0.5))
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 5)
                    .foregroundColor(.mint)

                List(prefectures.indices, id: \.self){ index in
                    HStack {
                        Text("\(prefectures[index])")
                            .padding(.leading)
                        Spacer()
                        Text("\(index + 1)番目の都道府県です。")
                            .foregroundColor(.gray)
                            .padding(.trailing)
                    }
                    .listRowBackground(lowColors[index % lowColors.count])
                }
                .listStyle(.plain)
            }
            .ignoresSafeArea(edges: [.leading, .trailing] )
            .navigationTitle("課題10")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
