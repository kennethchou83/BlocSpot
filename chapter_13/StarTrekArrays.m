//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
   
    return [characterString componentsSeparatedByString:@";"];
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    return [characterArray componentsJoinedByString:@";"];
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSArray *alphabetizedArray = [characterArray sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
    return alphabetizedArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    
    for (NSString *arrayPresent in characterArray) {
        NSString *lowercaseArray = arrayPresent.lowercaseString;
        NSRange worfRange = [lowercaseArray rangeOfString:@"worf"];
        
        if (worfRange.location != NSNotFound) {
            return YES;
        }
    }
    
    return NO;
}

@end


