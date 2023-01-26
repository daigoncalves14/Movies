//
//  Generic.swift
//  Movies
//
//  Created by Daiane Goncalves on 24/01/23.
//

import Foundation

protocol GenericService: AnyObject {
    typealias completion <T> = (_ result: T, _ failure: Error?) -> Void
}
