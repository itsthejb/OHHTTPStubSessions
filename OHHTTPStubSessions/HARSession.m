//
//  HARSession.m
//  OHHTTPStubSessions
//
//  Created by Jonathan Crooke on 24/02/2014.
//  Copyright (c) 2014 Jonathan Crooke. All rights reserved.
//

#import "HARSession.h"

@implementation HARSession

- (instancetype)initWithDictionary:(NSDictionary *)dictionaryValue
                             error:(NSError *__autoreleasing *)error
{
  return [super initWithDictionary:dictionaryValue[@"log"] error:error];
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
  return;
}

@end
