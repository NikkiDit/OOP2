//
//  Student.h
//  CoreDataRel
//
//  Created by Adenike Olatunji on 20/04/2015.
//  Copyright (c) 2015 AO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class StudentClass;

@interface Student : NSManagedObject

@property (nonatomic, retain) NSString * email;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * phone;
@property (nonatomic, retain) StudentClass *studentClass;

@end
