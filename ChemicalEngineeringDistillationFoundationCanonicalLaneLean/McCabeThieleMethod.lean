import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationFoundationCanonicalLaneLean

structure McCabeThieleMethodPackage where
  operatingLines : Prop
  equilibriumCurve : Prop
  feedCondition : Prop
  stepwiseConstruction : Prop
  refluxRatioDetermined : Prop
  numberStagesCalculated : Prop

structure McCabeThieleMethodEvidence (M : McCabeThieleMethodPackage) where
  operatingLinesClosed : M.operatingLines
  equilibriumCurveClosed : M.equilibriumCurve
  feedConditionClosed : M.feedCondition
  stepwiseConstructionClosed : M.stepwiseConstruction
  refluxRatioDeterminedClosed : M.refluxRatioDetermined
  numberStagesCalculatedClosed : M.numberStagesCalculated

def McCabeThieleMethodClosed (M : McCabeThieleMethodPackage) : Prop :=
  M.operatingLines ∧ M.equilibriumCurve ∧ M.feedCondition ∧
  M.stepwiseConstruction ∧ M.refluxRatioDetermined ∧ M.numberStagesCalculated

theorem mccabe_thiele_method_closed_from_evidence
    (M : McCabeThieleMethodPackage) (Ev : McCabeThieleMethodEvidence M) :
    McCabeThieleMethodClosed M := by
  exact And.intro Ev.operatingLinesClosed
    (And.intro Ev.equilibriumCurveClosed
      (And.intro Ev.feedConditionClosed
        (And.intro Ev.stepwiseConstructionClosed
          (And.intro Ev.refluxRatioDeterminedClosed Ev.numberStagesCalculatedClosed))))

end ChemicalEngineeringDistillationFoundationCanonicalLaneLean
end HautevilleHouse