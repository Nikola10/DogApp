#import "FirstViewController.h"
#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void) viewWillAppear : (BOOL) animated {
    [super viewWillAppear:animated];
        
    
    
    self.breed.text = self.dog.breed;
    self.desc.text=  self.dog.desc;
    
    self.majka.text = self.dog.majka;
    self.otac.text = self.dog.otac;
    self.titula.text = self.dog.titula;
    
    [self.slika setImage:[UIImage imageNamed:self.dog.slika]];

    

    
}

-(IBAction)back:(id)sender {
    
    FirstViewController *secondVC = [self.storyboard instantiateViewControllerWithIdentifier:
                                      @"FirstViewController"];
    
    [self presentViewController:secondVC animated:YES completion:nil];

}

@end
