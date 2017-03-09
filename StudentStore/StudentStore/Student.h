//
//  Student.h
//  StudentStore
//
//  Created by james on 14-8-11.
//  Copyright (c) 2014年 Appcoda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Student : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * age;
@property (nonatomic, retain) NSString * gender;

@end
