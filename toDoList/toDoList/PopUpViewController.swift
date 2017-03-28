//
//  PopUpViewController.swift
//  toDoList
//
//  Created by Michael Bharrat on 8/5/16.
//  Copyright © 2016 Michael Bharrat. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
var dateStrng: String = ""
var can: Bool = false      //store task, description, due date into global variables
var selectedDate: Bool = false //text label appears with due date
class PopUpViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate{
var locationManager = CLLocationManager()
var center: CLLocationCoordinate2D!
var alerter = 0

let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
@IBOutlet weak var mapView: MKMapView!
@IBOutlet weak var datePick: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()
        //start up GPS Stuff
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest //gps
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        //show blue dot
        self.mapView.showsUserLocation = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    @IBAction func onCancel(sender: UIButton) {
        let nextView = storyBoard.instantiateViewControllerWithIdentifier("secondView") as? SecondViewController
        self.presentViewController(nextView!, animated:true, completion:nil)
    }
    */
    @IBAction func onDone(sender: UIButton) {
        selectedDate = true
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MM/dd/yy"
        dateStrng = dateFormatter.stringFromDate(datePick.date)
        can = true
        swap = true
        let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("viewMain") as? UIViewController
        self.presentViewController(nextViewController!, animated:true, completion:nil)
        
    }

    @IBAction func onCancel(sender: UIButton) {
        can = true
        swap = true
        self.tabBarController?.selectedIndex = 1
    }
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations.last       //gets last location from locations being passed in
        if alerter == 0 {
            alert()
            alerter = 1
        }
        //gets center of that last location
        center = CLLocationCoordinate2D(latitude: location!.coordinate.latitude, longitude: location!.coordinate.longitude)
        
        //create region aka circle we want map to zoom to MKCoordinate span IS that circle
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        //set map view to that region
        self.mapView.setRegion(region, animated: true)
        
        //stop update the location
        //self.locationManager.stopUpdatingLocation()
    }
    func alert(){
        let Alert = UIAlertController(title: "Map Feature not implemented yet", message: "You can set due date of task, wait for next update for map", preferredStyle: UIAlertControllerStyle.Alert)
        
        
        Alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        
        
        self.presentViewController(Alert, animated: true, completion: nil)
    }



}
