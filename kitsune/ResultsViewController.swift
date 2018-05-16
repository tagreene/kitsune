//
//  ResultsViewController.swift
//  kitsune
//
//  Created by Trent Greene on 5/15/18.
//  Copyright © 2018 greene. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .darkGray
        
        callYelpAPI()
    }
    
    func callYelpAPI() {
        let config = URLSessionConfiguration.default
        // MARK: - DO NOT COMMIT YOUR PRIVATE KEY
        config.httpAdditionalHeaders = ["Authorization" : "Bearer xxxxxxxxxx"]
        let session = URLSession(configuration: config)
        
        let url = URL(string: "https://api.yelp.com/v3/businesses/search?latitude=37.774929&longitude=-122.419416&radius=40000&categories=climbing")!
        let request = URLRequest(url: url)
        
        let task = session.dataTask(with: request) {
            (data, response, error) -> Void in
            print(response)
            guard let data = data else { print("No data?"); return }
            do {
                let yelpResponse = try JSONDecoder().decode(YelpAPIResponse.self, from: data)
                print(yelpResponse.total)
                guard let results = yelpResponse.businesses else { print("Could not unwrap businesses"); return }
                
                for result in results {
                    print(result.name)
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}

