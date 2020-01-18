//
//  Model.swift
//  Search
//
//  Created by Wale on 18/01/2020.
//  Copyright © 2020 mac. All rights reserved.
//

public struct ApplicationData{
    var items: [String]
    var filteredItems: [String] = []
    init(){
        items =  ["Lettuce", "Tomatoes", "Milk", "Granola", "Donuts", "Cookies",
        "Butter", "Cheese", "Lemonade", "Yogurt", "Oatmeal", "Juice", "Tea", "Coffee", "Bagels", "Brownies", "Potatoes", "Onions"]
        filterData(search: "")
        
    }
    mutating func filterData(search: String){
        if search == ""{
            filteredItems = items
        }else{
            filteredItems = items.filter({(item) in
                let value1 = item.lowercased()
                let value2 = search.lowercased()
                let valid = value1.hasPrefix(value2)
                return valid
            })
        }
        filteredItems.sort(by: {(value1,value2) in value1 < value2})
    }
}

var appData = ApplicationData()
