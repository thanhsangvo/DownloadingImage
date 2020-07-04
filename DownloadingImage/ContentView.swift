//
//  ContentView.swift
//  DownloadingImage
//
//  Created by Võ Thanh Sang on 7/2/20.
//

import SwiftUI

struct ContentView: View {
    
    let listImage = ["https://images.unsplash.com/photo-1567892320421-1c657571ea4a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=658&q=80",
        "https://images.unsplash.com/photo-1568819317551-31051b37f69f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
         "https://images.unsplash.com/photo-1581588636584-5c447d2c9d97?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=644&q=80"]
    
    var body: some View {
        
        List(self.listImage, id: \.self) { (image) in
            URLImage(url: image)
                .aspectRatio(contentMode: .fit)
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
