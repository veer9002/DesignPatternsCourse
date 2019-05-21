//
//  ViewController.swift
//  DesignPatternsCourse
//
//  Created by Manish Sharma on 20/05/19.
//  Copyright © 2019 Manish Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var moviesDataArr = [Movies]()
    
    // MARK: View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fetchAllMovies()
    }
    
    // MARK: Custom Methods
    func fetchAllMovies() {
        let urlString = Constants.Urls.moviesUrl
        ServiceManager.shareInstance.getMoviesAPI(urlString: urlString) { (result) in
            self.moviesDataArr = result
            print(self.moviesDataArr.count)
        }
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MoviesCell
        
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

