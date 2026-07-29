import chemicalEngineeringDistillationFoundationCanonicalLaneLean.DistillationColumnDesign

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationFoundationCanonicalLaneLean

structure DistillationProcessControlPackage where
  feedFlowRate : ℝ
  distillateFlowRate : ℝ
  bottomsFlowRate : ℝ
  refluxRatio : ℝ
  reboilerDuty : ℝ
  condenserDuty : ℝ
  materialBalance : feedFlowRate = distillateFlowRate + bottomsFlowRate
  energyBalance : Prop
  controllerTuningParameters : Type
  controllerStability : Prop
  energyBalanceTerm : energyBalance
  controllerStabilityTerm : controllerStability

structure DistillationProcessControlEvidence (P : DistillationProcessControlPackage) where
  materialBalanceClosed : P.materialBalance
  energyBalanceClosed : P.energyBalance
  controllerStabilityClosed : P.controllerStability

def DistillationProcessControlClosed (P : DistillationProcessControlPackage) : Prop :=
  P.materialBalance ∧ P.energyBalance ∧ P.controllerStability

theorem distillation_process_control_closed_from_evidence (P : DistillationProcessControlPackage) (E : DistillationProcessControlEvidence P) : DistillationProcessControlClosed P :=
by
  exact And.intro E.materialBalanceClosed (And.intro E.energyBalanceClosed E.controllerStabilityClosed)

end ChemicalEngineeringDistillationFoundationCanonicalLaneLean
end HautevilleHouse
