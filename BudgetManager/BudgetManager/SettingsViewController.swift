//
//  SettingsViewController.swift
//  BudgetManager
//
//  Created by 查明轩 on 2018/11/14.
//  Copyright © 2018 budgetmanager. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

	@IBAction func onDataImport(_ sender: Any) {
		let csvDataText = csvDataTextView.text
		if (csvDataText != nil && !csvDataText!.isEmpty) {
			let csvData = csvDataText!
			BudgetItemListTableViewController.budgetItemList = CsvParser.readCsvString(csvString: csvData)
			CsvParser.csvData = csvData
//			DispatchQueue.global(qos: .userInitiated).async {
//				DispatchQueue.main.async { [weak self] in
				// do something in main thread
//				}
//			}
		}
	}
	
	@IBAction func onDataExport(_ sender: Any) {
	}
	
	@IBOutlet weak var csvDataTextView: UITextView!
	override func viewDidLoad() {
        super.viewDidLoad()
		self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
