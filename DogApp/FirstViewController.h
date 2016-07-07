

<<<<<<< Updated upstream
#import <UIKit/UIKit.h>
=======
@interface FirstViewController :UITableView< UITableViewDataSource, UITableViewDelegate>
>>>>>>> Stashed changes

@interface FirstViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property IBOutlet UITableView* table;
@property NSMutableArray* dogs;


@end

