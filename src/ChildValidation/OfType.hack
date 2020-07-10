/*
 *  Copyright (c) 2004-present, Facebook, Inc.
 *  All rights reserved.
 *
 *  This source code is licensed under the MIT license found in the
 *  LICENSE file in the root directory of this source tree.
 *
 */

namespace Facebook\XHP\ChildValidation;

final class OfType<<<__Enforceable>> reify T> extends LeafConstraint {
  <<__Override>>
  public function legacySerializeAsLeaf(): (LegacyConstraintType, string) {
    return tuple(
      LegacyConstraintType::CLASSNAME,
      \HH\ReifiedGenerics\get_classname<T>(),
    );
  }
}
