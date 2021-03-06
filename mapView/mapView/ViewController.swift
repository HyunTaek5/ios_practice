//
//  ViewController.swift
//  mapView
//
//  Created by 오현택 on 2021/03/04.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate{

    @IBOutlet var myMap: MKMapView!
    @IBOutlet var locationInfo1: UILabel!
    @IBOutlet var locationInfo2: UILabel!
    
    let locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locationInfo1.text = ""
        locationInfo2.text = ""
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        myMap.showsUserLocation = true
    }
    func goLocation(latitudeValue: CLLocationDegrees, longitudeValue: CLLocationDegrees, delta span: Double) -> CLLocationCoordinate2D {
        let pLocation = CLLocationCoordinate2DMake(latitudeValue, longitudeValue)
        let spanValue = MKCoordinateSpan(latitudeDelta: span, longitudeDelta: span)
        let pRegion = MKCoordinateRegion(center: pLocation, span: spanValue)
        myMap.setRegion(pRegion, animated: true)
        return pLocation
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations location: [CLLocation]){
        let pLocation = location.last
        _ = goLocation(latitudeValue: (pLocation?.coordinate.latitude)!,
            longitudeValue: (pLocation?.coordinate.longitude)!, delta: 0.01)
                CLGeocoder().reverseGeocodeLocation(pLocation!, completionHandler: {
                    (placemarks, error) -> Void in
                    let pm = placemarks!.first
                    let country = pm!.country
                    var address: String = country!
                    if pm!.locality != nil {
                        address += " "
                        address += pm!.locality!
                    }
                    if pm!.thoroughfare != nil{
                        address += " "
                        address += pm!.thoroughfare!
                    }
                    self.locationInfo1.text = "현재 위치"
                    self.locationInfo2.text = address
                })
        locationManager.stopUpdatingLocation()
    }
    
    func setAnnotation(latitudeValue: CLLocationDegrees, longitudeValue: CLLocationDegrees, delta span: Double, title strTitle: String, subtitle strSubtitle:String) {
        let annotation = MKPointAnnotation()
        annotation.coordinate = goLocation(latitudeValue: latitudeValue, longitudeValue: longitudeValue, delta: span)
        annotation.title = strTitle
        annotation.subtitle = strSubtitle
        myMap.addAnnotation(annotation)
    }
    @IBAction func sgChangeLocation(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            self.locationInfo1.text = ""
            self.locationInfo2.text = ""
            locationManager.startUpdatingLocation()
        } else if sender.selectedSegmentIndex == 1 {
            setAnnotation(latitudeValue: 37.636323833465774, longitudeValue: 127.068213, delta: 0.1, title: "하계역", subtitle: "서울특별시 하계동")
            self.locationInfo1.text = "보고 계신 위치"
            self.locationInfo2.text = "하계역 7호선"
        } else if sender.selectedSegmentIndex == 2 {
            setAnnotation(latitudeValue: 37.62542283094306, longitudeValue: 127.0764176785276, delta: 0.1, title: "그루브 커피 로스터즈", subtitle: "서울특별시 노원구 공릉동 509-12")
            self.locationInfo1.text = "보고 계신 위치"
            self.locationInfo2.text = "공릉동 커피 맛집"
            
        }
    }
    
}

