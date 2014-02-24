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
  NSData *data = [NSData dataWithContentsOfFile:path];
  NSError *e = nil;
  NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:&e];
  expect(e).to.beNil();
  session = [[HARSession alloc] initWithDictionary:dictionary error:&e];
  expect(e).to.beNil();
  expect(session).to.beInstanceOf([HARSession class]);
});

it(@"should parse the creator", ^{
  expect(session.creator.name).to.equal(@"Charles Proxy");
  expect(session.creator.version).to.equal(@"3.8.3");
});

SpecEnd
