//
//  CustomeMapView.h
//  Mapper
//
//  Created by Srihari Muthyala on 8/10/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <MapKit/MapKit.h>


@interface MKMapView (ZoomLevel)

- (void)setCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate
zoomLevel:(NSUInteger)zoomLevel animated:(BOOL)animated;
- (int) getZoomLevel;
@end