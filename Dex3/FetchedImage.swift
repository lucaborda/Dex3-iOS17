//
//  FetchImage.swift
//  Dex3
//
//  Created by Luca Borda on 07/08/2024.
//

import SwiftUI

struct FetchedImage: View {
    let url: URL?
    
    var body: some View {
        if let url, let imageData = try? Data(contentsOf: url), let uiImage = UIImage(data: imageData) {
            Image(uiImage: uiImage)
                .resizable()
                .scaledToFit()
                .shadow(color: .black, radius: 6)
        } else {
            Image("bulbassur")
        }
    }
}
struct FetchedImage_Preview: PreviewProvider {
    static var previews: some View {
        FetchedImage(url: SamplePokemon.samplePokemon.sprite)
    }
}
