import ChemicalEngineeringDistillationFoundationCanonicalLaneLean.FinalTheorem
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationFoundationCanonicalLaneLean

structure DistillationTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremBoundaryClassical : String
  constrainedClosureStatement : String
  carriedRemainder : String

def sourceTheoremStatement : DistillationTheoremStatement :=
  { sourceKey := "chemical-engineering-distillation-foundation-canonical-lane",
    theoremName := "Chemical Engineering Distillation Foundation",
    theoremBoundaryClassical := "unrestricted classical boundary remains open",
    constrainedClosureStatement := "All admissible distillation objects satisfy bridgeClosed and gateClosed",
    carriedRemainder := "non-ideal VLE corrections not modeled in this foundation"
  }

theorem constrained_distillation_closure_holds (A : AdmissibleClass) :
    sourceTheoremStatement.constrainedClosureStatement := by
  have h : ConstrainedDistillationClosure A := constrained_distillation_endgame A
  exact h

end ChemicalEngineeringDistillationFoundationCanonicalLaneLean
end HautevilleHouse
