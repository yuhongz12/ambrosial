//
//  BrewMethodElement.swift
//  ambrosial
//
//  Created by Jason Lin on 12/26/21.
//

import SwiftUI

struct BrewMethodElement: View {
    var brewMethod: BrewMethod

    var body: some View {
        VStack (alignment: .center) {
            brewMethod.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(brewMethod.name)
        }
    }
}

struct BrewMethodElement_Previews: PreviewProvider {
    static var brewMethods = ModelData().brewMethods

    static var previews: some View {
        Group {
            BrewMethodElement(brewMethod: brewMethods[0])
            BrewMethodElement(brewMethod: brewMethods[2])
        }
        .previewLayout(.fixed(width: 300, height: 100))
    }
}
