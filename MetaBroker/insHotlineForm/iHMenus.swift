// iHMenus          ･   MetaBroker   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

var iHVehicleYearOptions = [Int]()

var iHBuyOrLeaseYearOptions = [Int]()

var iHDailyCommuteOptions = [0, 2, 5, 7, 10, 15, 20, 30, 40, 50, 60, 70, 80, 90, 100, 150, 200]

var iHAnnualDistanceOptions = [8, 10, 15, 20, 30, 40, 50, 60, 80, 100] /// in thousands

var iHParkingOptions = ["Carport", "Private driveway", "Private garage", "Street", "Parking lot", "Outdoor storage", "Indoor storage", "Covered parking", "Indoor parking", "Other"]

var iHVehicleMakeOptions = ["Acura", "Alfa Romeo", "Aston Martin", "Audi", "Bentley",
                            "BMW", "Buick", "Cadillac", "Chevrolet", "Chrysler",
                            "Dodge", "Ferrari", "Fiat", "Ford", "GMC",
                            "Honda", "Hyundai", "Infiniti", "Jaguar", "Jeep",
                            "Kia", "Lamborghini", "Land Rover", "Lexus", "Lincoln",
                            "Lotus", "Maserati", "Mazda", "McLaren", "Mercedes-Benz",
                            "Mini", "Mitsubushi", "Nissan", "Porsche", "Rolls-Royce",
                            "Scion", "Smart", "Subaru", "Tesla", "Toyota",
                            "Volkswagen", "Volvo"]

var buyOrLeaseMonthOptions = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]


func populateVehicleYearOptions() {
    
    for i in (1981...2020) {
        iHVehicleYearOptions.append(i)
        iHBuyOrLeaseYearOptions.append(i) /// temporary; soon, lower bound of append-loop interval will be set when user chooses a vehicle year
    }
    
    //print("vehicle year options: \(iHVehicleYearOptions)")
}

var iHDropDownMenus = [iHVehicleYearOptions, iHBuyOrLeaseYearOptions, iHDailyCommuteOptions, iHAnnualDistanceOptions, iHParkingOptions, iHVehicleMakeOptions, buyOrLeaseMonthOptions] as [[Any]]

