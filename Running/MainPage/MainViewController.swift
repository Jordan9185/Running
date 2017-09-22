//
//  MainViewController.swift
//  Running
//
//  Created by JordanLin on 2017/9/22.
//  Copyright © 2017年 nicklee. All rights reserved.
//

import UIKit

import MapKit

class MainViewController: UIViewController {

    var rootView: UIView!
    
    var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpRootView()
        
        setUpMapView()
    }
    
    func setUpRootView() {
        
        rootView = UIView()
        
        rootView.backgroundColor = .white
        
        self.view.addSubview(rootView)
        
        rootView.translatesAutoresizingMaskIntoConstraints = false
        
        rootView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        
        rootView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        
        rootView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        rootView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
    }

    func setUpMapView() {
        
        mapView = MKMapView()
        
        rootView.addSubview(mapView)
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
        
        mapView.leadingAnchor.constraint(equalTo: rootView.leadingAnchor).isActive = true
        
        mapView.trailingAnchor.constraint(equalTo: rootView.trailingAnchor).isActive = true
        
        mapView.bottomAnchor.constraint(equalTo: rootView.bottomAnchor).isActive = true
        
        mapView.topAnchor.constraint(equalTo: rootView.topAnchor).isActive = true
        
        mapView.mapType = .standard
        
        let location = CLLocationCoordinate2D(latitude: 25.042477, longitude: 121.564883)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        
        annotation.title = "AppWorks School"
        
        annotation.subtitle = "Do the UIKit practice!"
        
        mapView.addAnnotation(annotation)
        
    }

}
