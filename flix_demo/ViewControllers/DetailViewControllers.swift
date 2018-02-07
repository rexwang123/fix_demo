//
//  DetailViewControllers.swift
//  flix_demo
//
//  Created by Jiayi Wang on 2/6/18.
//  Copyright © 2018 Jiayi Wang. All rights reserved.
//

import UIKit
enum MoviesKeys{
    static let title = "title"
    static let releaseDate = "release_date"
    static let overView = "overview"
    static let posterPath = "poster_path"
    static let backDrop_path = "backdrop_path"
}
class DetailViewControllers: UIViewController {

    @IBOutlet weak var backDropImageView: UIImageView!
 
    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
   
    @IBOutlet weak var ReleaseDateLabel: UILabel!
    
    
    @IBOutlet weak var overViewLabel: UILabel!
    
    var movie: [String: Any]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let movie = movie{
            titleLabel.text = movie[MoviesKeys.title] as! String
            ReleaseDateLabel.text = movie[MoviesKeys.releaseDate] as! String
            overViewLabel.text = movie[MoviesKeys.overView] as! String
            let backDropPathString = movie[MoviesKeys.backDrop_path] as! String
            let posterPathString = movie[MoviesKeys.posterPath] as! String
            
            let baseURLString = "https://image.tmdb.org/t/p/w500"
            
            let backdropURL = URL(string:baseURLString + backDropPathString)!
            backDropImageView.af_setImage(withURL: backdropURL)
            
            let posterURL = URL(string:baseURLString + posterPathString)!
            posterImageView.af_setImage(withURL: posterURL)
            
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
