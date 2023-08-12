//
//  Snowflake.swift
//  Snow
//
//  Created by Josue German Hernandez Gonzalez on 11-08-23.
//

import Foundation

struct Snowflake: Identifiable {
    var id = UUID()
    var x: CGFloat
    var y: CGFloat
    var size: CGFloat
    var drift: CGFloat
}

