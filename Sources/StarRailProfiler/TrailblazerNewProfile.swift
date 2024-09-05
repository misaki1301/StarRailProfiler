//
//  TrailBlazerNewProfile.swift
//
//
//  Created by Paul Frank on 26/01/24.
//

import SwiftUI
import MountainViewUI

struct BackgroundColorModifier: ViewModifier {
	let backgroundColor: AnyView
	
	func body(content: Content) -> some View {
		ZStack(content: {
			backgroundColor
				.ignoresSafeArea(.all)
				content
		})
	}
}

extension View {
	func backgroundColor(_ color: AnyView) -> some View {
		modifier(BackgroundColorModifier(backgroundColor: color))
	}
}

public struct TrailBlazerNewProfile: View {
	
	public init() {}
	
   public var body: some View {
		
				LazyVStack {
					Image("1101", bundle: .module)
						.resizable()
						.scaledToFill()
						.clipShape(Circle())
						.frame(width: 100, height: 100)
					Text("Trailblazer name")
					MountainCardView {
						Text("Hola mundo")
					}
					Spacer()
					MountainViewButton(text: "Share Profile", action: {
						
					}, buttonStyle: .filled)
				}.backgroundColor(AnyView(LinearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottom)))
    }
}

#Preview {
	TrailBlazerNewProfile()
}
