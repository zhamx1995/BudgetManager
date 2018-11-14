//
//  BudgetItemListTableViewCell.swift
//  BudgetManager
//
//  Created by 查明轩 on 2018/11/13.
//  Copyright © 2018 budgetmanager. All rights reserved.
//

import UIKit

class BudgetItemListTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

	@IBOutlet weak var MerchantTextField: UILabel!
	@IBOutlet weak var AmountTextField: UILabel!
	override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
