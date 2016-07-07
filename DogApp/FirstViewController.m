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
    
    Dog* bullDog = [[Dog alloc] init];
    bullDog.breed = @"Bull dog";
    bullDog.desc = @"Izvanredan pas";
    bullDog.slika = @"bullDog";
    bullDog.otac = @"Mupi";
    bullDog.majka = @"Lana";
    bullDog.pobede = @"3";
    bullDog.porazi = @"1";
    bullDog.nereseno = @"0";
    [self.dogs addObject:bullDog];
    
    Dog* pit = [[Dog alloc] init];
    pit.breed = @"Pit bull";
    pit.desc = @"Veoma poslusan";
    pit.slika = @"pit";
    pit.otac = @"Mupi";
    pit.majka = @"Lana";
    pit.pobede = @"3";
    pit.porazi = @"1";
    pit.nereseno = @"0";
    [self.dogs addObject:pit];
    
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
