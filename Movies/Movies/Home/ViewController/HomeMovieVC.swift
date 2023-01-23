//
//  ViewController.swift
//  Movies
//
//  Created by Daiane Goncalves on 23/01/23.
//

import UIKit

class HomeMovieVC: UIViewController {

    var screen: HomeMoviesScreen?
    var data: [HomeModel] = [HomeModel(id: 1, title: "Órfã 2: A Origem", overview: "", releaseDate: "2022-07-27", image: nil, rankUser: 8.7),
                             HomeModel(id: 2, title: "Minions 2: A Origem de Gru", overview: "", releaseDate: "2022-06-29", image: nil, rankUser: 8.0),
                             HomeModel(id: 3, title: "Thor: Amor e Trovão", overview: "", releaseDate: "2022-07-06", image: nil, rankUser: 6.8),
                             HomeModel(id: 4, title: "Avatar", overview: "", releaseDate: "2009-12-18", image: nil, rankUser: 8.8),
                             HomeModel(id: 4, title: "Avatar", overview: "", releaseDate: "2009-12-18", image: nil, rankUser: 8.8),
                             HomeModel(id: 4, title: "Avatar", overview: "", releaseDate: "2009-12-18", image: nil, rankUser: 8.8),
                             HomeModel(id: 5, title: "Xapalau", overview: "", releaseDate: "2029-12-18", image: nil, rankUser: 0.1)]
    
    override func loadView() {
        screen = HomeMoviesScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configTableView(delegate: self, dataSource: self)
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
