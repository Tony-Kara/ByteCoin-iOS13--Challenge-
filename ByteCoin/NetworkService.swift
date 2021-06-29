//
//  NetworkService.swift
//  ByteCoin
//
//  Created by mac on 6/29/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

class NetworkService{
    
//    func getCatsBreed(completion: @escaping ([String]) -> ()){
//
//            guard let url = URL(string: "\(imageBaseURL)/breeds") else {return}
//            let apiKeys =  "7a007633-3c88-475b-aaf3-9c3ad370f264"
//            var urlRequest = URLRequest(url: url) // load a url request in an effort to put in your API in an header which is a more secure way.
//        urlRequest.setValue(apiKeys, forHTTPHeaderField: "x-api-key")
//
//            let task = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
//                    if error != nil{
//                        debugPrint("Errors were found")
//                        return
//                    }
//
//                    guard let data = data else{ return }
//
//                  do{
//
//                     guard let breeds = try JSONSerialization.jsonObject(with: data, options: [.allowFragments]) as? [[String:Any]] else{return}
//                    var catBreeds:[String] = []
//
//                    for cat in breeds {
//                        let cats = cat["name"] as? String ?? "No name found"
//                        catBreeds.append(cats)
//                    }
//                     completion(catBreeds)
//
//                    }catch{
//                        debugPrint("Error returning data for images")
//                    }
//
//                }
//                task.resume()
//            }
//
//
}
