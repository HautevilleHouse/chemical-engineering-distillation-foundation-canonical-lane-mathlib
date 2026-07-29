import ChemicalEngineeringDistillationFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def distillationProjection : Projection DistillationEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem distillation_projection_idempotent (x : DistillationEndgameState) :
    distillationProjection.toFun (distillationProjection.toFun x) = distillationProjection.toFun x := by
  exact distillationProjection.idempotent x

end ChemicalEngineeringDistillationFoundationCanonicalLaneLean
end HautevilleHouse