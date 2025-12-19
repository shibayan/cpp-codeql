/**
 * @name Avoid == / != on floating point values
 * @description Flags equality/inequality comparisons on floating point types.
 * @kind problem
 * @problem.severity warning
 * @id custom/cpp/floating-point-equality
 */

import cpp

predicate isFloating(Expr e) {
  e.getType() instanceof FloatingPointType
}

from EqualityOperation e
where
  isFloating(e.getLeftOperand()) or isFloating(e.getRightOperand())
select e,
  "Avoid comparing floating point values with '" + e.getOperator() +
  "'. Consider an epsilon-based comparison (fabs(a-b) < eps) or domain-specific tolerance."
