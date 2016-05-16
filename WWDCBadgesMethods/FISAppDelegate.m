//
//  FISAppDelegate.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    return YES;
}

- (NSString *)badgeForSpeaker:(NSString *) speaker{
    NSString *hellospeaker = @"Hello, my name is";
    hellospeaker = [hellospeaker stringByAppendingFormat: @" %@.",speaker];
    return hellospeaker;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers{
    NSMutableArray *badgeSpeakers = [[NSMutableArray alloc] init];

    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *welcomespeakers = [self badgeForSpeaker:speakers[i]];
        [badgeSpeakers addObject: welcomespeakers];
    }
    return badgeSpeakers;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers: (NSArray *)speakers{
    
    NSMutableArray *roomAssignments = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *name = speakers[i];
        NSUInteger room = i + 1;
        NSString *nameAndRoom = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", name, room];
        [roomAssignments addObject:nameAndRoom];
    }
    
    return roomAssignments;
}


@end
