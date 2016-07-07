

#import "SecondViewController.h"
#import "FirstViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)back:(id)sender {
    FirstViewController *firstVC = [self.storyboard instantiateViewControllerWithIdentifier:@"FirstViewController"];
    [self presentViewController:firstVC animated:YES completion:nil];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.breed.text = self.dog.breed;
    self.desc.text = self.dog.desc;
    self.majka.text = self.dog.majka;
    self.otac.text = self.dog.otac;
    self.rezultat.text = [NSString stringWithFormat:@"%@ W, %@ D, %@ L", self.dog.pobede, self.dog.porazi, self.dog.nereseno];
    
    [self.slika setImage:[UIImage imageNamed:self.dog.slika]];
}


@end
