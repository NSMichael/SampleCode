//
//  AddStudentViewController.m
//  StudentStore
//
//  Created by james on 14-8-11.
//  Copyright (c) 2014年 Appcoda. All rights reserved.
//

#import "AddStudentViewController.h"
#import "Student.h"

@interface AddStudentViewController ()

@end

@implementation AddStudentViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (self.student) {
        self.nameTextField.text = [self.student valueForKey:@"name"];
        NSNumber *age = [NSNumber numberWithInt:[[self.student valueForKey:@"age"] intValue]];
        self.ageTextField.text = [NSString stringWithFormat:@"%@", age];
        self.genderTextField.text = [self.student valueForKey:@"gender"];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Actions

- (void)cancel:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)save:(id)sender
{
    if (self.student) {
        self.student.name = self.nameTextField.text;
        NSNumber *age = [NSNumber numberWithInt:[self.ageTextField.text intValue]];
        self.student.age = age;
        self.student.gender = self.genderTextField.text;
    } else {
        Student *student = [Student MR_createEntity];
        student.name = self.nameTextField.text;
        NSNumber *age = [NSNumber numberWithInt:[self.ageTextField.text intValue]];
        student.age = age;
        student.gender = self.genderTextField.text;
    }
    
    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreAndWait];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
