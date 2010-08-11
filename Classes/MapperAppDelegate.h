//
//  MapperAppDelegate.h
//  Mapper
//
//

#import <UIKit/UIKit.h>

@class MapperViewController;

@interface MapperAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MapperViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MapperViewController *viewController;

@end

