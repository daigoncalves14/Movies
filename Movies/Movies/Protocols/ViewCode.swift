//
//  ViewCode.swift
//  Movies
//
//  Created by Daiane Goncalves on 26/01/23.
//

import Foundation

protocol ViewCode {
    func configElements()
    func configConstraints()
}

extension ViewCode {
    func setupViewCode(){
        configElements()
        configConstraints()
    }
}
