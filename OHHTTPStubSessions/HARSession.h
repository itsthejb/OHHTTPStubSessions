//
//  HARSession.h
//  OHHTTPStubSessions
//
//  Created by Jonathan Crooke on 24/02/2014.
//  Copyright (c) 2014 Jonathan Crooke. All rights reserved.
//

#import "MTLModel.h"
#import "HARCreator.h"

@interface HARSession : MTLModel
@property (strong, readonly) HARCreator *creator;
@property (strong, readonly) NSArray *entries;
@end
