//
//  MapViewController.h
//  WeVolunteer
//
//  Created by Daniel Oliveira on 7/12/17.
//  Copyright © 2017 Daniel Oliveira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate> {
    CLLocationManager *locationManager;
}

@property (strong, nonatomic) IBOutlet MKMapView *mapView;

- (IBAction)myLocation:(id)sender;

@end
