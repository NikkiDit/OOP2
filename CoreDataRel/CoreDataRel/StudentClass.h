//
//  Class.h
//  CoreDataRel
//
//  Created by Adenike Olatunji on 20/04/2015.
//  Copyright (c) 2015 AO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface StudentClass : NSManagedObject

@property (nonatomic, retain) NSNumber * room_num;
@property (nonatomic, retain) NSSet *students;
@end

@interface StudentClass (CoreDataGeneratedAccessors)

- (void)addStudentsObject:(NSManagedObject *)value;
- (void)removeStudentsObject:(NSManagedObject *)value;
- (void)addStudents:(NSSet *)values;
- (void)removeStudents:(NSSet *)values;

@end
