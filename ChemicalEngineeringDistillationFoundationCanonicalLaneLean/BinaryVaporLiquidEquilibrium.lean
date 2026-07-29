import chemicalEngineeringDistillationFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationFoundationCanonicalLaneLean

structure BinaryVaporLiquidEquilibriumPackage where
  relativeVolatility : ℝ
  alphaConstant : Prop
  gammaModel : Type
  equilibriumCurve : ℝ → ℝ
  bubblePointTemperature : ℝ → ℝ → ℝ
  dewPointTemperature : ℝ → ℝ → ℝ
  modelValid : Prop
  alphaConstantTerm : alphaConstant
  modelValidTerm : modelValid

structure BinaryVaporLiquidEquilibriumEvidence (B : BinaryVaporLiquidEquilibriumPackage) where
  relativeVolatilityPositive : B.relativeVolatility > 0
  equilibriumCurveMonotone : ∀ x, 0 ≤ x → x ≤ 1 → 0 ≤ B.equilibriumCurve x ∧ B.equilibriumCurve x ≤ 1
  modelValidClosed : B.modelValid

def BinaryVaporLiquidEquilibriumClosed (B : BinaryVaporLiquidEquilibriumPackage) : Prop :=
  B.relativeVolatility > 0 ∧
  (∀ x, 0 ≤ x → x ≤ 1 → 0 ≤ B.equilibriumCurve x ∧ B.equilibriumCurve x ≤ 1) ∧
  B.modelValid

theorem binary_vapor_liquid_equilibrium_closed_from_evidence (B : BinaryVaporLiquidEquilibriumPackage) (E : BinaryVaporLiquidEquilibriumEvidence B) : BinaryVaporLiquidEquilibriumClosed B :=
by
  exact And.intro E.relativeVolatilityPositive (And.intro E.equilibriumCurveMonotone E.modelValidClosed)

end ChemicalEngineeringDistillationFoundationCanonicalLaneLean
end HautevilleHouse
