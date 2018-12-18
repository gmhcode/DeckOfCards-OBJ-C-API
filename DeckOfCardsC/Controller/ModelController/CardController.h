//
//  CardController.h
//  DeckOfCardsC
//
//  Created by Greg Hughes on 12/18/18.
//  Copyright © 2018 Greg Hughes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface CardController : NSObject


+ (void) drawCardWithCompletion: (void (^) (Card *)) completion;

+ (void) fetchCardImageWithCard: (Card *) card completion: (void (^) (UIImage *)) completion;





@end

NS_ASSUME_NONNULL_END
