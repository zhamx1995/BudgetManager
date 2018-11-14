//
//  BudgetItem.swift
//  BudgetManager
//
//  Created by 查明轩 on 2018/11/13.
//  Copyright © 2018 budgetmanager. All rights reserved.
//

import Foundation
class BudgetItem {
	private var sItemId: String = "";
	private var sTime: String = "";
	private var sIncome: Float = 0;
	private var sExpense: Float = 0;
	private var sCategory: String = "";
	private var sMerchant: String = "";
	private var sEventTag: String = "";
	private var sCurrency: Int = 0;
	private var sComment: String = "";
	
	init() {}
	
	init(itemId:String, time:String, income:Float, expense:Float, category:String, merchant:String, eventTag:String, currency:Int, comment:String) {
		sItemId = itemId;
		sTime = time;
		sIncome = income;
		sExpense = expense;
		sCategory = category;
		sMerchant = merchant;
		sEventTag = eventTag;
		sCurrency = currency;
		sComment = comment;
	}
	
	func getItemId()->String {
		return sItemId;
	}
	func setItemId(itemId: String) {
		sItemId = itemId;
	}
	
	func getTime()->String {
		return sTime;
	}
	func setTime(time: String) {
		sTime = time;
	}
	
	func getIncome()->Float {
		return sIncome;
	}
	func setIncome(income: Float) {
		sIncome = income;
	}
	
	func getExpense()->Float {
		return sExpense;
	}
	func setExpense(expense: Float) {
		sExpense = expense;
	}
	
	func getCategory()->String {
		return sCategory;
	}
	func setCategory(category: String) {
		sCategory = category;
	}
	
	func getMerchant()->String {
		return sMerchant;
	}
	func setMerchant(merchant: String) {
		sMerchant = merchant;
	}
	
	func getEventTag()->String {
		return sEventTag;
	}
	func setEventTag(eventTag: String) {
		sEventTag = eventTag;
	}
	
	func getCurrency()->Int {
		return sCurrency;
	}
	func setCurrency(currency: Int) {
		sCurrency = currency;
	}
	
	func getComment()->String {
		return sComment;
	}
	func setComment(comment: String) {
		sComment = comment;
	}
	
	
}
