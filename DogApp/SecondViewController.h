

#import <UIKit/UIKit.h>
#import "Dog.h"


@interface SecondViewController : UIViewController

@property IBOutlet UILabel *breed;
@property IBOutlet UILabel *otac;
@property IBOutlet UILabel *majka;
@property IBOutlet UILabel *titula;
@property IBOutlet UIImageView* slika;




@property IBOutlet UITextView* desc;

@property Dog* dog;


@end

