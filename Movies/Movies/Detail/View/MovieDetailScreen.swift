//
//  MovieDetailScreen.swift
//  Movies
//
//  Created by Daiane Goncalves on 26/01/23.
//

import UIKit

class MovieDetailScreen: UIView {
    
    lazy var gradient: UIView = {
        let view = GradientView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    lazy var popularMovies: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Filmes Populares"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        return label
    } ()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}

//MARK: - ViewCode
extension MovieDetailScreen: ViewCode {
    
    func configElements(){
        addSubview(gradient)
        addSubview(popularMovies)
    }
    
    func configConstraints(){
        NSLayoutConstraint.activate([
            
            gradient.topAnchor.constraint(equalTo: topAnchor),
            gradient.leadingAnchor.constraint(equalTo: leadingAnchor),
            gradient.trailingAnchor.constraint(equalTo: trailingAnchor),
            gradient.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            popularMovies.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 35),
            popularMovies.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
}
