//
//  CsvParser.swift
//  BudgetManager
//
//  Created by 查明轩 on 2018/11/13.
//  Copyright © 2018 budgetmanager. All rights reserved.
//

import Foundation
class CsvParser {
	static var csvData: String = ""
	
	static func readCsvString (csvString: String) -> [BudgetItem] {
		var result = [BudgetItem]();
		if (!csvString.isEmpty) {
			let inputRows = csvString.split(separator: "\n")
			for row in inputRows {
				result.append(parseBudgetItem(data: String(row)))
			}
		}
		return result;
	}
	
	static func parseBudgetItem (data: String) -> BudgetItem {
		let result = BudgetItem();
		let dataEntrys = data.split(separator: ",", omittingEmptySubsequences: true)
		result.setTime(time: String(dataEntrys[0]))
		result.setIncome(income: Float(dataEntrys[1])!)
		result.setExpense(expense: Float(dataEntrys[2])!)
		result.setCategory(category: String(dataEntrys[3]))
		result.setMerchant(merchant: String(dataEntrys[4]))
		result.setCurrency(currency: Int(currencyMapping(currency: String(dataEntrys[5]))))
		if (dataEntrys.count == 7) {
			result.setComment(comment: String(dataEntrys[6]))
		}
		return result;
	}
	
	static func loadBudgetItemList() -> [BudgetItem] {
		return readCsvString(csvString: csvData)
	}
	
	static func currencyMapping(currency: String) -> Int {
		switch currency {
		case "USD":
			return 0;
		case "RMB":
			return 1;
		case "EUR":
			return 2;
		case "YEN":
			return 3;
		default:
			return -1;
		}
	}
}
