// iHMenus          ･   collection-view-boilerplate   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

var iHVehicleYearOptions = [Int]()

var vehicleMakeOptions = ["Acura", "Alfa Romeo", "Aston Martin", "Audi", "Bentley",
                          "BMW", "Buick", "Cadillac", "Chevrolet", "Chrysler",
                          "Dodge", "Ferrari", "Fiat", "Ford", "GMC",
                          "Honda", "Hyundai", "Infiniti", "Jaguar", "Jeep",
                          "Kia", "Lamborghini", "Land Rover", "Lexus", "Lincoln",
                          "Lotus", "Maserati", "Mazda", "McLaren", "Mercedes-Benz",
                          "Mini", "Mitsubushi", "Nissan", "Porsche", "Rolls-Royce",
                          "Scion", "Smart", "Subaru", "Tesla", "Toyota",
                          "Volkswagen", "Volvo"]


func populateVehicleYearOptions() {
    
    for i in (1981...2020) {
        iHVehicleYearOptions.append(i)
    }
    
    print("vehicle year options: \(iHVehicleYearOptions)")
}

