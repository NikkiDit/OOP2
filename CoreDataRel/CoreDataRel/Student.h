//
//  Student.h
//  CoreDataRel
//
//  Created by Adenike Olatunji on 20/04/2015.
//  Copyright (c) 2015 AO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Class;

@interface Student : NSManagedObject

@property (nonatomic, retain) NSString * email;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * phone;
@property (nonatomic, retain) Class *studentClass;

@end
