//
//  Card.h
//  DeckOfCardsC
//
//  Created by Greg Hughes on 12/18/18.
//  Copyright © 2018 Greg Hughes. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Card : NSObject


@property (nonatomic, strong) NSString *imageUrlString;



-(instancetype)initWithDictionary:(NSDictionary *)dictionary;



@end

NS_ASSUME_NONNULL_END
