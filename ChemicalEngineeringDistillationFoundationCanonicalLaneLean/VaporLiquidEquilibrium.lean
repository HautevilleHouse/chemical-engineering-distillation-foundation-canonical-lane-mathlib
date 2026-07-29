import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationFoundationCanonicalLaneLean

structure VaporLiquidEquilibriumPackage where
  temperature : Type u
  pressure : Type v
  liquidComposition : Type w
  vaporComposition : Type x
  activityModel : Prop
  fugacityModel : Prop
  equilibriumRatio : Prop
  bubblePointCalculated : Prop
  dewPointCalculated : Prop

structure VaporLiquidEquilibriumEvidence (E : VaporLiquidEquilibriumPackage) where
  activityModelClosed : E.activityModel
  fugacityModelClosed : E.fugacityModel
  equilibriumRatioClosed : E.equilibriumRatio
  bubblePointCalculatedClosed : E.bubblePointCalculated
  dewPointCalculatedClosed : E.dewPointCalculated

def VaporLiquidEquilibriumClosed (E : VaporLiquidEquilibriumPackage) : Prop :=
  E.activityModel ∧ E.fugacityModel ∧ E.equilibriumRatio ∧
  E.bubblePointCalculated ∧ E.dewPointCalculated

theorem vapor_liquid_equilibrium_closed_from_evidence
    (E : VaporLiquidEquilibriumPackage) (Ev : VaporLiquidEquilibriumEvidence E) :
    VaporLiquidEquilibriumClosed E := by
  exact And.intro Ev.activityModelClosed
    (And.intro Ev.fugacityModelClosed
      (And.intro Ev.equilibriumRatioClosed
        (And.intro Ev.bubblePointCalculatedClosed Ev.dewPointCalculatedClosed)))

end ChemicalEngineeringDistillationFoundationCanonicalLaneLean
end HautevilleHouse