//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    return [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSString *returnString = cheeseName;
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch | NSBackwardsSearch];
        returnString = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
        /* WORK HERE, ASSUMING `cheeseName` ENDS WITH " cheese" */
    } else {
        NSLog(@"There is no cheese word.");
        /* WORK HERE, ASSUMING `cheeseName` DOES NOT END WITH " cheese" */
    }

    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */

    return returnString;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
   if (cheeseCount == 1) {
//        NSLog(@"%d cheese", cheeseCount);
//        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
    }
//       else {
//        NSLog(@"%d cheeses", cheeseCount);
//        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
//    }
//    /*
//     (You will learn more about if/else statements in a later checkpoint.)
//     */
//    return nil;
    NSString *cheeseString = (cheeseCount == 1 ? @"cheese" : @"cheeses");
    return [NSString stringWithFormat:@"%d %@", cheeseCount, cheeseString];
    // it's wanting to force cheesecount into an unsigned long, and change the %d to %lu. This whole method doesn't make sense to me. Also why is cheeseCount an NSUInteger? Where are they declaring cheeseCount, how does it know that it's 1?
}

@end
