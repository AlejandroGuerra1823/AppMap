//
//  CustomDialog.swift
//  AppMap
//
//  Created by Alejandro Guerra on 3/09/24.
//

import SwiftUI

struct CustomDialog<Content:View>: View {
    
    let closeDialog:() -> Void
    let onDismissOutside:Bool
    let content:Content
    
    
    
    var body: some View {
        ZStack{
            Rectangle().fill(.gray.opacity(0.7)).ignoresSafeArea().onTapGesture {
                if onDismissOutside{
                    closeDialog()
                }
            }
            
            content.frame(width: UIScreen.main.bounds.size.width-100,
                          height: 300).padding().background(.white).cornerRadius(16).overlay(alignment: .topTrailing){
                Button(action: {closeDialog()}, label: {
                    Image(systemName: "xmark.circle")
                })
                
            }
                        
            
        }.ignoresSafeArea()
            .frame(width: UIScreen.main.bounds.size.width,
                   height: UIScreen.main.bounds.size.height,
                   alignment: .center)
        
        
        
    }
}
