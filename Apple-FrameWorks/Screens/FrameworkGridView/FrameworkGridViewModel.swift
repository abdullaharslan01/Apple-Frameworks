//
//  FrameworkGridViewModel.swift
//  Apple-FrameWorks
//
//  Created by abdullah on 12.09.2024.
//

import Foundation

final class FrameworkGridViewModel: ObservableObject{
    
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView = false
    
    
    
    
}
