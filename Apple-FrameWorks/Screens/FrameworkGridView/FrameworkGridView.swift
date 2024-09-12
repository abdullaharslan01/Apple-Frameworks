//
//  FrameworkGridView.swift
//  Apple-FrameWorks
//
//  Created by abdullah on 12.09.2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
               
                ForEach(MockData.frameworks, id: \.self) { frameWorkItem  in
                    
                    FrameworkTitleView(framework: frameWorkItem)
                        .onTapGesture {
                            viewModel.selectedFramework = frameWorkItem
                        }
                }
            }
            .sheet(isPresented: $viewModel.isShowingDetailView, content: {

                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
                
            })
            
        }.navigationTitle(" Frameworks")
        
        
    }
}

#Preview {
    NavigationStack {
        FrameworkGridView(viewModel: FrameworkGridViewModel())
    }
}


