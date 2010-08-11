//
//  MapperViewController.h
//  Mapper
//
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MKMapView+ZoomLevel.h"

@class MyAnnotation;

@interface MapperViewController : UIViewController <MKMapViewDelegate>
{
	IBOutlet MKMapView *mapView;

}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;


@end

