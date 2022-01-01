//
//  BeanElement.swift
//  ambrosial
//
//  Created by Jason Lin on 12/26/21.
//

import SwiftUI

struct BeanElement: View {
    var bean: Bean

    var body: some View {
        
        VStack(alignment: .leading) {
            Text(bean.roasterName)
                .foregroundColor(Color.gray)
            Text(bean.name)
                .font(.title3)
            Text("\t" + bean.roastLevel + " Roast")
            Text("\t" + bean.tastingNotes)
        }
    }
}

struct BeanElement_Previews: PreviewProvider {
    static var beans = ModelData().beans

    static var previews: some View {
        Group {
            BeanElement(bean: beans[2])
            BeanElement(bean: beans[0])
        }
        .previewLayout(.fixed(width: 300, height: 100))
    }
}

