//  ViewController.swift
//  MyWeather


import UIKit
import SnapKit

class ViewController: UIViewController {
    
        
    @IBOutlet weak var tableView: UITableView!
    let apiKey = "a428cba4361816bd12b53cf797300332"
    let cities = ["Moscow", "Seoul", "London"]
    let network = Network()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        //tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
        /*
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
         */
        
        
        
    }

    
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let urlString = "https://api.openweathermap.org/data/2.5/weather?q=Moscow&appid=\(apiKey)&units=metric"
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        let city = cities[indexPath.row]
        /*
        self.network.fetch(urlString: urlString) { weather in
            print(weather.cityName)
            cell.nameLabel.text = weather.cityName
            cell.tempLabel.text = weather.temperatureString
            cell.feelsLikeLabel.text = weather.feelsLikeTemperatureString
            cell.viewImage.image = UIImage(systemName: weather.systemIconNameString)
        }
         */
        cell.nameLabel.text = city
        
        return cell
    }
    
    
}

