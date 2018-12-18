//
//  Card.m
//  DeckOfCardsC
//
//  Created by Greg Hughes on 12/18/18.
//  Copyright © 2018 Greg Hughes. All rights reserved.
//

#import "Card.h"
#import "Card.h"
@implementation Card

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    
    
    if (self){
       
        NSArray *cards = dictionary[@"cards"];
        NSDictionary *cardDictionary = cards.firstObject;
        NSString *imageURLAsString = cardDictionary[@"image"];
        _imageUrlString = imageURLAsString;
        
    }
    return self;
}

@end
