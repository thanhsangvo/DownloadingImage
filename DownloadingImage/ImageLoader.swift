//
//  ImageLoader.swift
//  DownloadingImage
//
//  Created by Võ Thanh Sang on 7/2/20.
//

import Foundation

class ImageLoader: ObservableObject {
    @Published var DownloadedData: Data?
    
    func downloaderImage(url: String) {
        guard let imageURL = URL(string: url) else {
            return
        }
        
        URLSession.shared.dataTask(with: imageURL) { (data, url, error) in
            guard let data = data,
                  error == nil else {
                return
            }
            
            DispatchQueue.main.async {
                self.DownloadedData = data
            }
        }
        .resume()
    }
}
