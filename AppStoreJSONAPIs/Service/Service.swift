//
//  Service.swift
//  AppStoreJSONAPIs
//
//  Created by abdalla mahmoud on 13/02/2022.
//

import Foundation

class Service {
    
    static let shared = Service()
    
    func fetchApps(searchTerm: String, completion: @escaping (SearchResult?, Error?) -> ()) {
        let urlString = "https://itunes.apple.com/search?term=\(searchTerm)&entity=software"
        
        
        fetchGenericJSONData(url: urlString, completion: completion)
       
    }
    
    func fetchTopFreeApps(completion: @escaping (AppGroup?, Error?) -> ()) {
        let url = "https://rss.applemarketingtools.com/api/v2/us/apps/top-free/50/apps.json"
        
        fetchAppGroup(urlString: url, completion: completion)
    }
    
    
    
    func fetchTopPaidApps(completion: @escaping (AppGroup?, Error?) -> ()) {
        let url = "https://rss.applemarketingtools.com/api/v2/us/apps/top-paid/25/apps.json"
        
        fetchAppGroup(urlString: url, completion: completion)
    }
    
    func fetchTopPodcasts(completion: @escaping (AppGroup?, Error?) -> ()) {
        let url = "https://rss.applemarketingtools.com/api/v2/us/podcasts/top/25/podcast-episodes.json"
        
        fetchAppGroup(urlString: url, completion: completion)
    }
    
    // helper
    func fetchAppGroup(urlString: String, completion: @escaping (AppGroup?, Error?) -> Void) {

        
        fetchGenericJSONData(url: urlString, completion: completion)
    }
    
    func fetchSocialApps(completion: @escaping ([SocialApp]?, Error?) -> Void) {
        let url = "https://mocki.io/v1/288fa1e6-6a09-4040-bbd0-210881193d1f"
        
        fetchGenericJSONData(url: url, completion: completion)
        
    }
        func fetchGenericJSONData<T: Decodable>(url: String, completion: @escaping (T?, Error?) -> ()) {
            guard let url = URL(string: url) else {return}
            URLSession.shared.dataTask(with: url) { data, response, error in
                
                if let error = error {
                    completion(nil, error)
                    return
                }
                
                // success
                guard let data = data else {return}
                
                do {
                    let objects = try JSONDecoder().decode(T.self, from: data)
                    completion(objects, nil)
                } catch {
                    completion(nil, error)
                    //print("Failed to decode json:", error)
                }
            }.resume()
            
        }
}
