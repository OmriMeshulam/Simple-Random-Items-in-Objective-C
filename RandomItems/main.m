//
//  main.m
//  RandomItems
//
//  Created by Omri Meshulam on 2/16/15.
//  Copyright (c) 2015 OmriMeshulam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OGMItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Creating mutable array object, storing its address in item variables.
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        /*
        // Sending the message addObject: to the NSMutableArray pointed to
        // by the variable items, passing a string each time
        [items addObject: @"One" ];
        [items addObject: @"Two"];
        [items addObject: @"Three"];
        
        // Sending another message, insertObject:atIndex, to the same array object
        [items insertObject:@"Zero" atIndex:0];
        
        // For every item in the items array.. (fast enumeration (cannot add or delete within this loop))
        for (NSString *item in items){
            // logging description of item
            NSLog(@"%@", item);
        }
        */
        /*
         OMItem *item = [[OMItem alloc] init];
        
         setter function calls
        [item setItemName:@"Purple Sofa"];
        [item setSerialNumber:@"F32VG6"];
        [item setValueInDollars:100];
         
        NSLog(@"%@ %@ %@ %d", [item itemName],[item dateCreated],
        [item serialNumber], [item valueInDollars]);
         */
        
        /*
        item.itemName = @"Purple Sofa";
        item.serialNumber = @"F32VG6";
        item.valueInDollars = 100;
        */
        
        /*
        OMItem *item = [[OMItem alloc]initWithItemName:@"Purple Sofa" valueInDollars:100 serialNumber:@"F32VG6"];
         
        NSLog(@"%@ %@ %@ %d",item.itemName, item.dateCreated,
                            item.serialNumber, item.valueInDollars);
        
        NSLog(@"%@", item);
        
        // Testing different initializers and initialization chain       
        OMItem *itemWithName = [[OMItem alloc]initWithItemName:@"Green Couch"];
        NSLog(@"%@", itemWithName);
        
        OMItem *itemWithoutName = [[OMItem alloc]init];
        NSLog(@"%@", itemWithoutName);
        */
        
        /*
        // Populating array with random items
        for (int i = 0; i < 10; i++){
            OMItem *item = [OMItem randomItem];
            [items addObject:item];
        }
        */
        
        // Creating strong reference cycle, items never get deleted
        // __weak attribute given to container solves this.
        OMItem *backpack = [[OMItem alloc] initWithItemName:@"Backpack"];
        [items addObject:backpack];
        OMItem *calculator = [[OMItem alloc] initWithItemName:@"Calculator"];
        [items addObject:calculator];
        
        [backpack setContainedItem:(OMItem *)calculator]; //or more easily backpack.containedItem = calculator;
        backpack = nil;
        calculator = nil;
        
        
        
        /*
        // Invoking an exception "unrecognized selector"
        id lastObj = [items lastObject];
        [lastObj count];
        */
        
        for (OMItem *item in items){
            NSLog(@"%@",item);
        }
        
        NSLog(@"Setting items to nill...");        
        // destroying the mutable array object
        items = nil;
        
        //id objectOfUnknownType;
        
        
    }
    return 0;
}
