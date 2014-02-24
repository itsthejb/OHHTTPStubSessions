//
//  ParsingSpecs.m
//  OHHTTPStubSessions
//
//  Created by Jonathan Crooke on 24/02/2014.
//  Copyright (c) 2014 Jonathan Crooke. All rights reserved.
//

#import "HARSession.h"

SpecBegin(ParsingSpecs)

__block HARSession *session = nil;

before(^{
  NSString *path = [[NSBundle bundleForClass:[self class]] pathForResource:@"session"
                                                                    ofType:@"har"];
  NSDictionary *dictionary = [[NSDictionary alloc] initWithContentsOfFile:path];
  NSError *e = nil;
  session = [[HARSession alloc] initWithDictionary:dictionary error:&e];
  expect(e).to.beNil();
  expect(session).to.beInstanceOf([HARSession class]);
});

it(@"", ^{
  expect(YES).to.equal(YES);
});

SpecEnd
