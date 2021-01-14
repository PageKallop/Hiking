//
//  HikeDetail.swift
//  Hiking
//
//  Created by Page Kallop on 1/14/21.
//

import SwiftUI

struct HikeDetail: View {
    
    let hike: Hike
    @State private var zoomed: Bool = false
    var body: some View {
       
        VStack{
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation{
                    self.zoomed.toggle()
                    }
                }
            Text(hike.name)
            Text(String(format: "%.1f", hike.mile))
        }.navigationBarTitle(hike.name, displayMode: .inline)
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        
        HikeDetail(hike: Hike(name: "Big hill",
        imageURL: "moon", mile: 1.0))
        
    }
}
