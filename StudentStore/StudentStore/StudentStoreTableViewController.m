//
//  StudentStoreTableViewController.m
//  StudentStore
//
//  Created by james on 14-8-11.
//  Copyright (c) 2014年 Appcoda. All rights reserved.
//

#import "StudentStoreTableViewController.h"
#import "AddStudentViewController.h"
#import "Student.h"

@interface StudentStoreTableViewController ()
{
    NSMutableArray *students;
}

@end

@implementation StudentStoreTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    students = [[NSMutableArray alloc] initWithArray:[Student MR_findAll]];
    
//    students = [[NSMutableArray alloc] initWithArray:[Student MR_findAllInContext:[NSManagedObjectContext MR_defaultContext]]];
    
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [students count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    Student *student = [students objectAtIndex:indexPath.row];
    cell.textLabel.text = student.name;
    NSString *description = [NSString stringWithFormat:@"%@ - %@", student.age, student.gender];
    cell.detailTextLabel.text = description;
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"UpdateStudent"]) {
        Student *student = [students objectAtIndex:[[self.tableView indexPathForSelectedRow] row]];
        UINavigationController *destViewController = [segue destinationViewController];
        AddStudentViewController *addStudent = (AddStudentViewController *)[destViewController topViewController];
        addStudent.student = student;
    }
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        Student *student = [students objectAtIndex:indexPath.row];
        [student MR_deleteEntity];
        [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreAndWait];
        
        [students removeObjectAtIndex:indexPath.row];
        [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationTop];
    }
}

@end
