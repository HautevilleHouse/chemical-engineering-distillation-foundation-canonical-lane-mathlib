import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationFoundationCanonicalLaneLean

structure ThermodynamicPhaseEquilibriumPackage where
  temperature : Type u
  pressure : Type v
  vaporPhaseFugacity : Type w
  liquidPhaseFugacity : Type x
  saturationCondition : Prop
  vaporLiquidEquilibrium : Prop
  fugacityModelClosed : Prop
  equilibriumConditionClosed : Prop

structure ThermodynamicPhaseEquilibriumEvidence (P : ThermodynamicPhaseEquilibriumPackage) where
  saturationConditionClosed : P.saturationCondition
  vaporLiquidEquilibriumClosed : P.vaporLiquidEquilibrium
  fugacityModelClosedTerm : P.fugacityModelClosed
  equilibriumConditionClosedTerm : P.equilibriumConditionClosed

def ThermodynamicPhaseEquilibriumClosed (P : ThermodynamicPhaseEquilibriumPackage) : Prop :=
  P.saturationCondition ∧ P.vaporLiquidEquilibrium ∧ P.fugacityModelClosed ∧ P.equilibriumConditionClosed

theorem thermodynamic_phase_equilibrium_closed_from_evidence (P : ThermodynamicPhaseEquilibriumPackage)
  (E : ThermodynamicPhaseEquilibriumEvidence P) : ThermodynamicPhaseEquilibriumClosed P := by
  exact And.intro E.saturationConditionClosed
    (And.intro E.vaporLiquidEquilibriumClosed
      (And.intro E.fugacityModelClosedTerm E.equilibriumConditionClosedTerm))

end ChemicalEngineeringDistillationFoundationCanonicalLaneLean
end HautevilleHouse
