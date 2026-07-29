import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DistillationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end ChemicalEngineeringDistillationFoundationCanonicalLaneLean
end HautevilleHouse
