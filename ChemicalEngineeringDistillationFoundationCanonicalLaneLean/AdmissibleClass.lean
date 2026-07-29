import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationFoundationCanonicalLaneLean

structure DistillationAdmittedObject where
  column : Type u
  feed : Type v
  products : Type w
  numberOfStages : Nat
  refluxRatio : ℝ
  boilupRatio : ℝ
  pressure : ℝ
  temperatureProfile : Type x
  equilibriumStagesAchieved : Prop
  conclusion : equilibriumStagesAchieved

structure DistillationEndgameState where
  object : DistillationAdmittedObject

def DistillationWitnessClosed (O : DistillationAdmittedObject) : Prop :=
  O.equilibriumStagesAchieved

end ChemicalEngineeringDistillationFoundationCanonicalLaneLean
end HautevilleHouse
