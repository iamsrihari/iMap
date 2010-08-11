//
//  MapperViewController.m
//  Mapper
//


#import "MapperViewController.h"
#import "MyAnnotation.h"
#define ZOOM_LEVEL 14
#define GEORGIA_TECH_LATITUDE 33.777328
#define GEORGIA_TECH_LONGITUDE -84.397348

@implementation MapperViewController

@synthesize mapView;


- (void)dealloc 
{
	[mapView release];
    [super dealloc];
}


- (void)viewDidLoad 
{
    [super viewDidLoad];
	
	[mapView setMapType:MKMapTypeStandard];
	[mapView setZoomEnabled:YES];
	[mapView setScrollEnabled:YES];
	/*
	MKCoordinateRegion region = { {0.0, 0.0 }, { 0.0, 0.0 } };
	region.center.latitude = 41.902245099708516;
	region.center.longitude = 12.457906007766724;
	region.span.longitudeDelta = 0.01f;
	region.span.latitudeDelta = 0.01f;	
	[customMapView setRegion:region animated:YES];
	*/
	[mapView setDelegate:self];
	
	
	
	
	CLLocationCoordinate2D centerCoord =  { 33.777328, -84.397348 };
	//MyAnnotation *ann = [[MyAnnotation alloc] init];
	//ann.title = @"Rome";
	//ann.subtitle = @"San Peter";
	//ann.coordinate = centerCoord;//region.center;
	//[mapView addAnnotation:ann];
	[mapView setCenterCoordinate:centerCoord zoomLevel:10 animated:NO];
	
	NSLog(@"Zoom level is :%d",[mapView getZoomLevel]);
	
	
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    //CLLocationCoordinate2D centerCoord =  { 33.777328, -84.397348 };
	//CLLocationCoordinate2D centerCoord=customMapView.userLocation.coordinate;
	//NSLog(customMapView.userLocation);
    //[customMapView setCenterCoordinate:centerCoord zoomLevel:14 animated:NO];
}

- (MKAnnotationView *)mapView:(MKMapView *)mV viewForAnnotation:(id <MKAnnotation>)annotation
{
	MKPinAnnotationView *pinView = nil;
	if(annotation != mapView.userLocation) 
	{
		static NSString *defaultPinID = @"com.invasivecode.pin";
		pinView = (MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:defaultPinID];
		if ( pinView == nil )
			pinView = [[[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:defaultPinID] autorelease];
		
		pinView.pinColor = MKPinAnnotationColorPurple;
		pinView.canShowCallout = YES;
		pinView.animatesDrop = YES;
	}
	else
	{
		[mapView.userLocation setTitle:@"I am here"];
	}
	
    return pinView;
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation 
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning 
{
    [super didReceiveMemoryWarning];
}


- (void)viewDidUnload 
{

}



@end
