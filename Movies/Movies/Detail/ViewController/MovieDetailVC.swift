//
//  MovieDetailVC.swift
//  Movies
//
//  Created by Daiane Goncalves on 26/01/23.
//

import UIKit

class MovieDetailVC: UIViewController {

    var screen: MovieDetailScreen?
    
    
    override func loadView() {
        screen = MovieDetailScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
