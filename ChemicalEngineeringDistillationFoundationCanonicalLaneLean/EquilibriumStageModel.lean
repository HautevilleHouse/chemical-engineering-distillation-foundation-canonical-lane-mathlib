import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationFoundationCanonicalLaneLean

structure EquilibriumStagePackage where
  vaporLiquidEquilibrium : Prop
  stageEfficiency : Prop
  murphreeEfficiency : Prop
  operatingLine : Prop

structure EquilibriumStageEvidence (P : EquilibriumStagePackage) where
  vaporLiquidEquilibriumClosed : P.vaporLiquidEquilibrium
  stageEfficiencyClosed : P.stageEfficiency
  murphreeEfficiencyClosed : P.murphreeEfficiency
  operatingLineClosed : P.operatingLine

def EquilibriumStageClosed (P : EquilibriumStagePackage) : Prop :=
  P.vaporLiquidEquilibrium ∧ P.stageEfficiency ∧ P.murphreeEfficiency ∧ P.operatingLine

theorem equilibrium_stage_closed_from_evidence (P : EquilibriumStagePackage) (E : EquilibriumStageEvidence P) : EquilibriumStageClosed P :=
  And.intro E.vaporLiquidEquilibriumClosed (And.intro E.stageEfficiencyClosed (And.intro E.murphreeEfficiencyClosed E.operatingLineClosed))

end ChemicalEngineeringDistillationFoundationCanonicalLaneLean
end HautevilleHouse