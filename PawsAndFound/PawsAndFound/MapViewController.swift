//
//  MapViewController.swift
//  PawsAndFound
//
//  Created by Jose Baez on 11/11/23.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        let pet1 = MKPointAnnotation()
        pet1.title = "Missing Pet here"
        pet1.coordinate = CLLocationCoordinate2D(latitude: 25.7617, longitude: -80.191788)
        mapView.addAnnotation(pet1)
        
        let pet2 = MKPointAnnotation()
        pet2.title = "Missing Pet here"
        pet2.coordinate = CLLocationCoordinate2D(latitude: 25.7617, longitude: -80.291788)
        mapView.addAnnotation(pet2)
        
        let pet3 = MKPointAnnotation()
        pet3.title = "Missing Pet here"
        pet3.coordinate = CLLocationCoordinate2D(latitude: 25.7617, longitude: -80.391788)
        mapView.addAnnotation(pet3)
    }
}
