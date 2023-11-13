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
        let london = MKPointAnnotation()
        london.title = "London"
        london.coordinate = CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275)
        mapView.addAnnotation(london)
    }
}
