/*******************************************************************************
 * Copyright (c) 2009 Kåre Morstøl (NotTooBad Software). 
 * Copyright (c) 2009 NormSoft, Inc..
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    Kåre Morstøl (NotTooBad Software) - initial API and implementation 
 *    Allen Hadden (NormSoft) - Added PSChildPane support.
 *******************************************************************************/ 

#import "ChildPaneCell.h"

@implementation ChildPaneCell

- (id)initWithReuseIdentifier:(NSString *)reuseIdentifier {
	if (self = [super initWithTitlelabel:YES reuseIdentifier:reuseIdentifier]) {
		// Initialization code
		self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	}
	return self;
}

@end