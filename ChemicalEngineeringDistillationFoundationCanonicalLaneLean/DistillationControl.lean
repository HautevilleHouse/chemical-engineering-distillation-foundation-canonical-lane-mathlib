import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationFoundationCanonicalLaneLean

structure DistillationControlPackage where
  compositionControl : Prop
  temperatureControl : Prop
  pressureControl : Prop
  levelControl : Prop
  feedForwardControl : Prop

structure DistillationControlEvidence (D : DistillationControlPackage) where
  compositionControlClosed : D.compositionControl
  temperatureControlClosed : D.temperatureControl
  pressureControlClosed : D.pressureControl
  levelControlClosed : D.levelControl
  feedForwardControlClosed : D.feedForwardControl

def DistillationControlClosed (D : DistillationControlPackage) : Prop :=
  D.compositionControl ∧ D.temperatureControl ∧ D.pressureControl ∧ D.levelControl ∧ D.feedForwardControl

theorem distillation_control_closed_from_evidence (D : DistillationControlPackage) (E : DistillationControlEvidence D) : DistillationControlClosed D :=
  And.intro E.compositionControlClosed (And.intro E.temperatureControlClosed (And.intro E.pressureControlClosed (And.intro E.levelControlClosed E.feedForwardControlClosed)))

end ChemicalEngineeringDistillationFoundationCanonicalLaneLean
end HautevilleHouse