/*******************************************************************************
 * Copyright (c) 2009 Kåre Morstøl (NotTooBad Software).
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    Kåre Morstøl (NotTooBad Software) - initial API and implementation
 *******************************************************************************/ 

#import "ToggleSwitchCell.h"
#import "LabeledPickerView.h"

@implementation ToggleSwitchCell

- (id)initWithReuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithTitlelabel:YES reuseIdentifier:reuseIdentifier]) {
        // Initialization code
		UISwitch *switchview = [[UISwitch alloc] initWithFrame:CGRectZero];
		valueview = switchview;
		[switchview addTarget:self action:@selector(valueChanged) forControlEvents:UIControlEventValueChanged];
		[self.contentView addSubview:valueview];
    }
    return self;
}

- (void)dealloc {
    [super dealloc];
}

- (void) setConfiguration:(NSDictionary *)config {
	[super setConfiguration:config];
}

- (void) setValue:(NSObject *)newvalue {
	super.value = newvalue;
	((UISwitch *) valueview).on = [(NSNumber *)newvalue boolValue];

}

- (void) valueChanged {
	super.value = [NSNumber numberWithBool:((UISwitch *) valueview).on];
}

@end