//
//  HARCreator.h
//  OHHTTPStubSessions
//
//  Created by Jonathan Crooke on 24/02/2014.
//  Copyright (c) 2014 Jonathan Crooke. All rights reserved.
//

#import "MTLModel.h"

@interface HARCreator : MTLModel
@property (copy, readonly) NSString *name;
@property (copy, readonly) NSString *version;
@end
