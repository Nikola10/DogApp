//
//  SecondViewController.h
//  DogApp
//
//  Created by Petar Cenic on 6/19/16.
//  Copyright © 2016 Petar Cenic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Dog.h"

@interface SecondViewController : UIViewController

@property IBOutlet UILabel* breed;
@property IBOutlet UITextView* desc;
@property IBOutlet UILabel* rezultat;
@property IBOutlet UILabel* otac;
@property IBOutlet UILabel* majka;
@property IBOutlet UIImageView* slika;
@property Dog* dog;

@end

