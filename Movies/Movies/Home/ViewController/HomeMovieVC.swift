//
//  ViewController.swift
//  Movies
//
//  Created by Daiane Goncalves on 23/01/23.
//

import UIKit

class HomeMovieVC: UIViewController {
    
    var screen: HomeMoviesScreen?
    var data: [Result] = []
    
    private let service: HomeService = HomeService()
    
    override func loadView() {
        screen = HomeMoviesScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configTableView(delegate: self, dataSource: self)
        fetchMovie()
    }

    func fetchMovie(){
        service.getMovieURLSession { result, failure in
            if let result = result {
                self.data = result
            } else {
                print("Deu ruim socorro")
            }
            DispatchQueue.main.async {
                self.screen?.tableView.reloadData()
            }
        }
    }
    
}

extension HomeMovieVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: HomeTableViewCell? = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifier, for: indexPath) as? HomeTableViewCell
        cell?.setupCell(movie: data[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 0
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        return
    }
}
