//
//  AFButton.swift
//  Apple-FrameWorks
//
//  Created by abdullah on 12.09.2024.
//

import SwiftUI

struct AFButton: View {
    
    let title: String
    
    var body: some View {
        
        Text("\(title)")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .frame(width: 280, height: 50)
                            .background(Color.red)
                            .foregroundStyle(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    AFButton(title: "Test Title")
}
