//
//  SnowfallView.swift
//  Snow
//
//  Created by Josue German Hernandez Gonzalez on 11-08-23.
//

import SwiftUI

struct SnowfallView: View {
    @State private var snowflakes: [Snowflake] = []
    let timer = Timer.publish(every: 0.05, on: .main, in: .common).autoconnect()

    var body: some View {
        ZStack {
            ForEach(snowflakes) { flake in
                Circle()
                    .frame(width: flake.size, height: flake.size)
                    .opacity(Double(flake.size / 10))
                    .position(x: flake.x, y: flake.y)
                    .onReceive(timer) { _ in
                        if let index = snowflakes.firstIndex(where: { $0.id == flake.id }) {
                            snowflakes[index].y += 10
                            snowflakes[index].x += flake.drift
                            if snowflakes[index].y > UIScreen.main.bounds.height + flake.size {
                                snowflakes.remove(at: index)
                            }
                        }
                    }
            }
        }
        .onReceive(timer) { _ in
            let x = CGFloat.random(in: 0..<UIScreen.main.bounds.width)
            let size = CGFloat.random(in: 4...10)
            let drift = CGFloat.random(in: -1...1)
            snowflakes.append(Snowflake(x: x, y: -size, size: size, drift: drift))
        }
    }
}


struct SnowfallView_Previews: PreviewProvider {
    static var previews: some View {
        SnowfallView()
    }
}
