//
//  ViewController.swift
//  GooglePlacesSearchController
//
//  Created by Dmitry Shmidt on 6/28/15.
//  Copyright (c) 2015 Dmitry Shmidt. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit
import GooglePlacesSearchController

class ViewController: UIViewController {
    let GoogleMapsAPIServerKey = "YOUR_KEY"

    @IBAction func searchAddress(sender: UIBarButtonItem) {
        
        let controller = GooglePlacesSearchController(
            apiKey: GoogleMapsAPIServerKey,
            placeType: PlaceType.Address
        )
        
        //  Or ff you want to use autocompletion for specific coordinate and radius (in meters)
        
        //  let coord = CLLocationCoordinate2D(latitude: 51.5074, longitude: 0.1278)
        //  let controller = GooglePlacesSearchController(
        //  apiKey: GoogleMapsAPIServerKey,
        //  placeType: PlaceType.Address,
        //  coordinate: coord,
        //  radius: 100
        //  )
        
        controller.didSelectGooglePlace { (place) -> Void in
            print(place.description)
            
            //Dismiss Search
            controller.active = false
        }
        
        presentViewController(controller, animated: true, completion: nil)
    }
}