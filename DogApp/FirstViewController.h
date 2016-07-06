
#import <UIKit/UIKit.h>

@interface FirstViewController : UIScrollView<UITableViewDataSource, UITableViewDelegate>

@property IBOutlet UITableView * table;

@property NSMutableArray * dogs;


@end

