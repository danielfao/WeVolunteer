//
//  TableViewController.m
//  WeVolunteer
//
//  Created by Daniel Oliveira on 7/12/17.
//  Copyright © 2017 Daniel Oliveira. All rights reserved.
//

#import "TableViewController.h"
#import "ReusableTableCell.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    [self.tableView registerClass:[ReusableTableCell class] forCellReuseIdentifier:reusableCellIdentifier];
    [self.tableView registerNib:[UINib nibWithNibName:@"ReusableTableCell" bundle:nil] forCellReuseIdentifier:reusableCellIdentifier];
    
    date = @[@"12 Jul. 2017", @"10 Jun. 2017", @"05 Feb. 2017", @"10 Jan. 2017"];
    time = @[@"10:00 AM", @"05:00 AM", @"06:00 PM", @"12:00 PM"];
    title = @[@"Ajuda em Asilo", @"Cuidar de Cachorros", @"Cuidar de Gatos", @"Ajuda em Orfanato"];
    author = @[@"Daniel Oliveira", @"Carlos Menzoni", @"Yasmin Benatti", @"João Fontana"];
    contact = @[@"email@email.com", @"email@email.com", @"email@email.com", @"email@email.com"];
    type = @[@"Elderly", @"Dogs", @"Cats", @"Kids"];
}

- (void)viewDidAppear:(BOOL)animated {
    [self.tableView setContentOffset:CGPointZero];
    [self.tableView setScrollIndicatorInsets:UIEdgeInsetsZero];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return title.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ReusableTableCell *cell = [tableView dequeueReusableCellWithIdentifier:reusableCellIdentifier forIndexPath:indexPath];
    
    cell.cellTitleLabel.text = title[indexPath.row];
    cell.cellTimeLabel.text = time[indexPath.row];
    cell.cellDateLabel.text = date[indexPath.row];
    cell.cellAuthorLabel.text = author[indexPath.row];
    cell.cellContactLabel.text = contact[indexPath.row];
    cell.cellTypeLabel.text = type[indexPath.row];
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 146.0f;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
