//
//  Extension+UITableView.swift
//  ImagesFeed
//
//  Created by arthack on 08.01.2024.
//

import UIKit

extension UITableView {
    func registerCell(ofType cell: UITableViewCell.Type) {
        let name = String(describing: cell.self)
        register(UINib(nibName: name, bundle: nil), forCellReuseIdentifier: name)
    }
    
    func dequeueTypedCell<T: UITableViewCell>(forIndexPath indexPath: IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: String(describing: T.self), for: indexPath) as! T
    }
}
