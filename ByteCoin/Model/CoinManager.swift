//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct CoinManager {
    
    static let instance = CoinManager()
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    
    func getCoinPrice( for currency: String , completion: @escaping (String) -> ()){
        
        guard let url = URL(string: "\(baseURL)/\(currency)") else {return}
        let apiKeys =  "3A37631D-7B07-4CCB-93A8-621FAE622888"
        var urlRequest = URLRequest(url: url) // load a url request in an effort to put in your API in an header which is a more secure way.
        urlRequest.setValue(apiKeys, forHTTPHeaderField: "X-CoinAPI-Key")
        
        let task = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            if error != nil{
                debugPrint("Errors were found")
                return
            }
            
            guard let data = data else{ return }
            
            do{
                
                guard let coinapi = try JSONSerialization.jsonObject(with: data, options: [.allowFragments]) as? [String:Any] else{return}
                let rate = coinapi["rate"] as? Double ?? 0.0
                let rateInstring = String(format: "%.0f", rate)
                
                DispatchQueue.main.async {
                    completion(rateInstring)
                }
                
                
                
            }catch{
                debugPrint("Error returning rate for selected cryto")
            }
            
        }
        task.resume()
    }
    
    
    
    
    
}
