//
//  URLImage.swift
//  DownloadingImage
//
//  Created by Võ Thanh Sang on 7/2/20.
//

import SwiftUI

struct URLImage: View {
    
    let url: String
    let placeholder: String
    
    @ObservedObject var imageLoader = ImageLoader()
    
    init(url: String, placeholder: String = "placeholder") {
        self.url = url
        self.placeholder = placeholder
        self.imageLoader.downloaderImage(url: self.url)
    }
    
    var body: some View {
        
        if let data = self.imageLoader.DownloadedData {
            return Image(uiImage: UIImage(data: data)!).resizable()
        } else {
            return Image("placeholder").resizable()
        }
    }
}

struct URLImage_Previews: PreviewProvider {
    static var previews: some View {
        URLImage(url: "https://images.unsplash.com/photo-1593616469526-a3499ec79768?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80")
    }
}
