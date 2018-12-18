//
//  CardController.m
//  DeckOfCardsC
//
//  Created by Greg Hughes on 12/18/18.
//  Copyright © 2018 Greg Hughes. All rights reserved.
//

#import "CardController.h"
#import "Card.h"
#import <UIKit/UIKit.h>

@implementation CardController



+ (void)drawCardWithCompletion:(void (^)(Card * _Nonnull))completion
{
    
    NSURL *baseUrl = [[NSURL alloc] initWithString:@"https://deckofcardsapi.com/api/deck/new/draw/"];
    
//    NSLog(@"%@", baseUrl);
    
    [[[NSURLSession sharedSession] dataTaskWithURL:baseUrl completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error) {
            NSLog(@"There was an error in %s: %@", __PRETTY_FUNCTION__, error.localizedDescription);
            completion(nil);
            return;
        }
        
        
        if (data == nil){
            completion(nil);
            NSLog(@"unable to retrieve data");
            
        }
        
        NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData: data options: NSJSONReadingAllowFragments error: &error];
        
        Card *card = [[Card new] initWithDictionary:jsonDictionary];
        
        completion(card);
        
        
    }]resume];
      }





+ (void)fetchCardImageWithCard:(Card *)card completion:(void (^)(UIImage * ))completion
{
    
    
    NSURL *imageUrl = [[NSURL alloc] initWithString:card.imageUrlString];
    
    
    
    [[[NSURLSession sharedSession] dataTaskWithURL:imageUrl completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        
        
        if (error) {
            NSLog(@"There was an error in %s: %@", __PRETTY_FUNCTION__, error.localizedDescription);
            completion(nil);
            return;
        }
        
        
        
        if (data == nil) {
            NSLog(@"no data was retrieved");
            completion(nil);
            return;
        }
        
        
        
        UIImage *cardImage = [[UIImage alloc] initWithData: data];
        completion(cardImage);
        
        
    }]resume];
    
    
}
@end

