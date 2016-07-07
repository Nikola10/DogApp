

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property IBOutlet UITableView* table;
@property NSMutableArray* dogs;


@end

