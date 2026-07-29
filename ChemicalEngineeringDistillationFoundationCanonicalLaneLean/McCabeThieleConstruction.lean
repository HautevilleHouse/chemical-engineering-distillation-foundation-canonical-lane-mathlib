import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationFoundationCanonicalLaneLean

structure McCabeThieleConstruction where
  operatingLinesDefined : Prop
  equilibriumCurveDefined : Prop
  feedLineDefined : Prop
  stageConstruction : Prop
  numberOfStagesDetermined : Prop

structure McCabeThieleEvidence (M : McCabeThieleConstruction) where
  operatingLinesDefinedClosed : M.operatingLinesDefined
  equilibriumCurveDefinedClosed : M.equilibriumCurveDefined
  feedLineDefinedClosed : M.feedLineDefined
  stageConstructionClosed : M.stageConstruction
  numberOfStagesDeterminedClosed : M.numberOfStagesDetermined

def McCabeThieleClosed (M : McCabeThieleConstruction) : Prop :=
  M.operatingLinesDefined ∧ M.equilibriumCurveDefined ∧ M.feedLineDefined ∧
  M.stageConstruction ∧ M.numberOfStagesDetermined

theorem mccabe_thiele_closed_from_evidence (M : McCabeThieleConstruction)
    (E : McCabeThieleEvidence M) : McCabeThieleClosed M := by
  exact And.intro E.operatingLinesDefinedClosed
    (And.intro E.equilibriumCurveDefinedClosed
      (And.intro E.feedLineDefinedClosed
        (And.intro E.stageConstructionClosed E.numberOfStagesDeterminedClosed)))

end ChemicalEngineeringDistillationFoundationCanonicalLaneLean
end HautevilleHouse