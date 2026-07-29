import ChemicalEngineeringDistillationFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DistillationColumn where
  carrier : Type
  topology : TopologicalSpace carrier

structure DistillationAdmittedObject where
  column : DistillationColumn
  vaporLiquidEquilibriumEstablished : Prop
  feedCompositionDefined : Prop
  productSpecification : Type
  productSpecTopology : TopologicalSpace productSpecification
  distillateRecoveryMet : Prop
  conclusion : distillateRecoveryMet

structure DistillationEndgameState where
  object : DistillationAdmittedObject

def DistillationWitnessClosed (O : DistillationAdmittedObject) : Prop :=
  O.distillateRecoveryMet

end ChemicalEngineeringDistillationFoundationCanonicalLaneLean
end HautevilleHouse