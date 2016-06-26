
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "Dog.h"
#import "DogCell.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (void)viewWillAppear:(BOOL) animated {
    [super viewWillAppear:animated];
    
    self.dogs = [[NSMutableArray alloc] init];
    
    Dog* dog = [[Dog alloc] init];
    dog.breed = @"Cune iron line";
    dog.desc = @"Izvanredan pas";
    dog.otac = @"Mupi";
    dog.majka = @"Lana";
    dog.titula = @"Grand shampion";
    dog.slika = @"Dog";
    [self.dogs addObject:dog];
    
    dog = [[Dog alloc] init];
    dog.breed = @"Mirko iron line";
    dog.desc = @"Izvanredan pas";
    dog.otac = @"Mupi";
    dog.majka = @"Lana";
    dog.titula = @"Grand shampion";
    dog.slika = @"cunejunior";
    [self.dogs addObject:dog];
    
    dog = [[Dog alloc] init];
    dog.breed = @"Buki iron line";
    dog.desc = @"Izvanredan pas";
    dog.otac = @"Mupi";
    dog.majka = @"Lana";
    dog.titula = @"Grand shampion";
    dog.slika = @"Dog";
    [self.dogs addObject:dog];
    
    
    self.table.delegate = self;
    self.table.dataSource = self;
    [self.table reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.dogs count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DogCell *cell = ((DogCell *)[tableView dequeueReusableCellWithIdentifier:@"dogCell"]);
    
   cell.breed.text = ((Dog*)[self.dogs objectAtIndex:indexPath.row]).breed;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SecondViewController *secondVC = [self.storyboard instantiateViewControllerWithIdentifier:
                                      @"SecondViewController"];
    
    secondVC.dog = [self.dogs objectAtIndex:indexPath.row];
    
    
    [self presentViewController:secondVC animated:YES completion:nil];
    
}



@end

