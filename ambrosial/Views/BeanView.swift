//
//  BeanView.swift
//  ambrosial
//
//  Created by Jason Lin on 12/26/21.
//

import SwiftUI

struct BeanView: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        
        List {
            ForEach(modelData.beans) { bean in
                NavigationLink {
                    //GrindSizeView()
                    //     .environmentObject(ModelData())// TO BE IMPLEMENTED
                } label: {
                    BeanElement(bean: bean)
                }.frame(width: UIScreen.screenWidth * 0.9, alignment: .leading)
            }
        }.navigationTitle("Coffee Beans")
        
    }
}

struct BeanView_Previews: PreviewProvider {
    static var previews: some View {
        BeanView()
            .environmentObject(ModelData())
    }
}
