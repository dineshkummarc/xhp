/*
 *  Copyright (c) 2004-present, Facebook, Inc.
 *  All rights reserved.
 *
 *  This source code is licensed under the MIT license found in the
 *  LICENSE file in the root directory of this source tree.
 *
 */

namespace Facebook\XHP\HTML;

use namespace Facebook\XHP\ChildValidation as XHPChild;

final xhp class meter
  extends element
  implements Category\Phrase, Category\Flow {
  use XHPChild\Validation;
  attribute
    float high,
    float low,
    float max,
    float min,
    float optimum,
    float value;

  // Should not contain :meter
  protected static function getChildrenDeclaration(): XHPChild\Constraint {
    return XHPChild\any_number_of(
      XHPChild\any_of(
        XHPChild\pcdata(),
        XHPChild\of_type<Category\Phrase>(),
      ),
    );
  }

  protected string $tagName = 'meter';
}
