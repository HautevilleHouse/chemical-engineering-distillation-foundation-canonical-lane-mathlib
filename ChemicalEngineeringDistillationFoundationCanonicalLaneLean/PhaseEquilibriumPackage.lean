import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationFoundationCanonicalLaneLean

structure PhaseEquilibriumPackage where
  vaporPhaseModel : Prop
  liquidPhaseModel : Prop
  vaporLiquidEquilibrium : Prop
  activityCoefficientModel : Prop
  equationOfState : Prop

structure PhaseEquilibriumEvidence (P : PhaseEquilibriumPackage) where
  vaporPhaseModelClosed : P.vaporPhaseModel
  liquidPhaseModelClosed : P.liquidPhaseModel
  vaporLiquidEquilibriumClosed : P.vaporLiquidEquilibrium
  activityCoefficientModelClosed : P.activityCoefficientModel
  equationOfStateClosed : P.equationOfState

def PhaseEquilibriumClosed (P : PhaseEquilibriumPackage) : Prop :=
  P.vaporPhaseModel ∧ P.liquidPhaseModel ∧ P.vaporLiquidEquilibrium ∧
  P.activityCoefficientModel ∧ P.equationOfState

theorem phase_equilibrium_closed_from_evidence (P : PhaseEquilibriumPackage)
    (E : PhaseEquilibriumEvidence P) : PhaseEquilibriumClosed P := by
  exact And.intro E.vaporPhaseModelClosed
    (And.intro E.liquidPhaseModelClosed
      (And.intro E.vaporLiquidEquilibriumClosed
        (And.intro E.activityCoefficientModelClosed E.equationOfStateClosed)))

end ChemicalEngineeringDistillationFoundationCanonicalLaneLean
end HautevilleHouse