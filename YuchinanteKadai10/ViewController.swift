//
//  ViewController.swift
//  
//  
//  Created by Yuchinante on 2024/03/07
//  
//

import UIKit

// ViewControllerクラス: メインのビューコントローラー
class ViewController: UIViewController, UITableViewDataSource {

    // テーブルビューに表示する都道府県名のリスト
    let prefecturesList = [
        "北海道", "青森県", "岩手県", "宮城県", "秋田県",
        "山形県", "福島県", "茨城県", "栃木県", "群馬県",
        "埼玉県", "千葉県", "東京都", "神奈川県", "新潟県",
        "富山県", "石川県", "福井県", "山梨県", "長野県",
        "岐阜県", "静岡県", "愛知県", "三重県", "滋賀県",
        "京都府", "大阪府", "兵庫県", "奈良県", "和歌山県",
        "鳥取県", "島根県", "岡山県", "広島県", "山口県",
        "徳島県", "香川県", "愛媛県", "高知県", "福岡県",
        "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県",
        "鹿児島県", "沖縄県"
    ]

    // テーブルビューの行数を返すメソッド
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prefecturesList.count
    }

    // テーブルビューのセルを設定するメソッド
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // セルの再利用
        let cell = tableView.dequeueReusableCell(withIdentifier: "prefecturesCell", for: indexPath)

        // セルに都道府県名を表示
        cell.textLabel?.text = prefecturesList[indexPath.row]

        // セルに番号と詳細情報を表示
        cell.detailTextLabel?.text = String(indexPath.row + 1) + "番目の都道府県です"

        // セルの背景色を設定
        let color: UIColor
        switch indexPath.row % 3 {
        case 0:
            color = .red
        case 1:
            color = .green
        default:
            color = .blue
        }
        cell.contentView.backgroundColor = color.withAlphaComponent(0.3)

        return cell
    }
}
