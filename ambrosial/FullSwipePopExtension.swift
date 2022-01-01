//
//  FullSwipePopExtension.swift
//  ambrosial
//
//  Created by Jason Lin on 12/24/21.
//


// Don't know how to use this

import SwiftUI

extension View {
    
    func fullSwipePop <Content: View>
    (show: Binding<Bool>, content: @escaping () -> Content) -> some View {
        
        return FullSwipePopHelper(show: show, mainContent: self, content: content())
    }
}

struct FullSwipePopExtension_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}

// Helper function to Build View
private struct FullSwipePopHelper<MainContent: View, Content: View>: View {
    
    // Where MainContent will be our main view,
    // since we are moving our main view left when overlay view shows
    var mainContent: MainContent
    var content: Content
    @Binding var show: Bool
    
    init(show: Binding<Bool>, mainContent: MainContent, content: Content) {
        self._show = show
        self.content = content
        self.mainContent = mainContent
    }
    
    // Gesture Properties
    @GestureState var gestureOffset: CGFloat = 0
    @State var offset: CGFloat = 0
    
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        
        GeometryReader { proxy in
            
            mainContent
                .overlay (
                    ZStack {
                        if show {
                            content
                                .background(
                                    (colorScheme == .dark ? Color.black : Color.white)
                                        .ignoresSafeArea()
                                )
                                .offset(x: offset)
                                .gesture(DragGesture().updating($gestureOffset, body: { value, out, _ in
                                    out = value.translation.width
                                }).onEnded({ value in
                                    withAnimation(.linear.speed(2)) {
                                        offset = 0
                                        
                                        let translation = value.translation.width
                                        
                                        let maxtranslation = proxy.size.width / 2.5
                                        
                                        if translation > maxtranslation {
                                            show = false
                                        }
                                    }
                                }))
                                .transition(.move(edge: .trailing))
                        }
                    }
                )
                .onChange(of: gestureOffset) { newValue in
                    offset = gestureOffset
                }
        }
    }
}
