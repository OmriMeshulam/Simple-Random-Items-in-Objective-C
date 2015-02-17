//
//  OGMItem.h
//  RandomItems
//
//  Created by Omri Meshulam on 2/16/15.
//  Copyright (c) 2015 OmriMeshulam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OMItem : NSObject
{
    
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
    
}

+(instancetype)randomItem;

// Designated initializer (constructor) for OMItem
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber;

- (instancetype)initWithItemName:(NSString*)name;

- (void)setItemName:(NSString *) str;
- (NSString *)itemName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *) serialNumber;

- (void)setValueInDollars:(int)val;
- (int)valueInDollars;

- (NSDate *)dateCreated;

@end
