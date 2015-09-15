//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    return characterDictionary[@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *array = [NSMutableArray array];
    
    for (NSDictionary *characterDictionary in charactersArray) {
        [array addObject:characterDictionary[@"favorite drink"]];
    }
    return array;
}
//    return [charactersArray valueForKey:@"favorite drink"];
//}
- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *mutableDictionary = [characterDictionary mutableCopy];
    mutableDictionary[@"quote"] = @"If you can't find it within yourself to stand up and tell the truth about what happened, you don't deserve to wear that uniform!";
    return mutableDictionary;
}

@end
