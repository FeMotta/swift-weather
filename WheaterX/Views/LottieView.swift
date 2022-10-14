//
//  LottieView.swift
//  WheaterX
//
//  Created by Fernando dos Santos Motta on 07/08/22.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    var name: String
    var loopMode: LottieLoopMode = .loop
    
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> some UIView {
        let view = UIView()
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<LottieView>) {
        uiView.subviews.forEach({$0.removeFromSuperview()})
        
        let animationview = AnimationView()
        animationview.translatesAutoresizingMaskIntoConstraints = false
        uiView.addSubview(animationview)
        
        NSLayoutConstraint.activate([
            animationview.widthAnchor.constraint(equalTo: uiView.widthAnchor),
            animationview.widthAnchor.constraint(equalTo: uiView.heightAnchor)
        ])
        
        animationview.animation = Animation.named(name)
        animationview.contentMode = .scaleAspectFit
        animationview.loopMode = loopMode
        animationview.play()
    }
}
