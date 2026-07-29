import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationFoundationCanonicalLaneLean

structure McCabeThieleStageMethodPackage where
  numberOfStages : Type u
  refluxRatio : Type v
  feedCondition : Type w
  operatingLineEquations : Prop
  stageConstruction : Prop
  graphicalMethodClosed : Prop

structure McCabeThieleStageMethodEvidence (M : McCabeThieleStageMethodPackage) where
  operatingLineEquationsClosed : M.operatingLineEquations
  stageConstructionClosed : M.stageConstruction
  graphicalMethodClosedTerm : M.graphicalMethodClosed

def McCabeThieleStageMethodClosed (M : McCabeThieleStageMethodPackage) : Prop :=
  M.operatingLineEquations ∧ M.stageConstruction ∧ M.graphicalMethodClosed

theorem mccabe_thiele_stage_method_closed_from_evidence (M : McCabeThieleStageMethodPackage)
  (E : McCabeThieleStageMethodEvidence M) : McCabeThieleStageMethodClosed M := by
  exact And.intro E.operatingLineEquationsClosed
    (And.intro E.stageConstructionClosed E.graphicalMethodClosedTerm)

end ChemicalEngineeringDistillationFoundationCanonicalLaneLean
end HautevilleHouse
