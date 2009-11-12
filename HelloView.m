//
//  HelloView.m
//  Test
//
//  Created by Magnus Kallström on 2009-11-05.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "HelloView.h"


@implementation HelloView

- (id)initWithFrame:(NSRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (NSString)listDirectory:(voidPtr)vptr {
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	if ([paths count] > 0) {
		NSString *userDocumentsPath = [paths objectAtIndex:0];
		return &userDocumentsPath;
	}	
	return &"";
}

- (void)drawRect:(NSRect)rect {
    // Drawing code here.
	NSString* hello = @"Hello, World!";
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	if ([paths count] > 0) {
		NSString *userDocumentsPath = [paths objectAtIndex:0];
		hello = listDirectory();
	}	
	
	NSPoint point = NSMakePoint(15, 75);
	
	NSMutableDictionary* font_attributes = [NSMutableDictionary new];
	
    NSFont* font = [NSFont fontWithName:@"Futura-MediumItalic" size:42];
	
    [font_attributes setObject:font forKey:NSFontAttributeName];
	
	
	
    [hello drawAtPoint:point withAttributes:font_attributes];
	
	
	
    [font_attributes release];
}

@end
