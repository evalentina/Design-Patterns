//  ViewController.swift
//  MyWeather


import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var tableView = UITableView()
    let apiKey = "a428cba4361816bd12b53cf797300332"
    let myData = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.bounds = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        tableView.backgroundColor = .red
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
        
        fetch()
    }
    
    func fetch() {
        
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=Moscow&appid=\(apiKey)&units=metric")
        else { return }
        let session = URLSession.shared
        let decoder = JSONDecoder()
        session.dataTask(with: url) { data, response, error in
            
            guard let data = data else { return }
            do {
                
                let currentWeatherData = try decoder.decode(Welcome.self, from: data)

                guard let currentWeather = Weather(weatherData: currentWeatherData) else { return }
                DispatchQueue.main.async {
                    //self.text = currentWeather.cityName
                    //tempLabel.text = currentWeather.temperatureString
                    //self.feelsLikeTempLabel.text = currentWeather.feelsLikeTemperatureString
                    //myImageView.image = UIImage(systemName: currentWeather.systemIconNameString)
                }

            }
            catch {
                print(error.localizedDescription)
            }
            
        }.resume()
        
    }

    
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        
        return cell
    }
    
    
}

