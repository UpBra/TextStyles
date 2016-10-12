//
//  TextStylesTableViewController.swift
//  Copyright © 2016 gleesh. All rights reserved.
//

import UIKit


class TextStylesTableViewController: UITableViewController {

    // MARK: - Properties

    private let datasource: [UIFontTextStyle] = [
        .title1,
        .title2,
        .title3,
        .headline,
        .subheadline,
        .body,
        .callout,
        .footnote,
        .caption1,
        .caption2
    ]


    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Text Styles"

        tableView.estimatedRowHeight = 44.0
        tableView.rowHeight = UITableViewAutomaticDimension
    }


    // MARK: - Overrides

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let numberOfRows = datasource.count

        return numberOfRows
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let style = datasource[indexPath.row]

        if let cell = cell as? TextStylePresenter {
            cell.configure(with: style)
        }

        return cell
    }
}
