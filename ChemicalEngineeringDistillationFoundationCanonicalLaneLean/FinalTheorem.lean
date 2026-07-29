import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationFoundationCanonicalLaneLean

def ConstrainedDistillationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_distillation_endgame (A : AdmissibleClass) : ConstrainedDistillationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalEngineeringDistillationFoundationCanonicalLaneLean
end HautevilleHouse
