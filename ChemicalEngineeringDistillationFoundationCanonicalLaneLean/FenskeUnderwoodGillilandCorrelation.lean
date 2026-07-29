import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationFoundationCanonicalLaneLean

structure FenskeUnderwoodGillilandPackage where
  fenskeMinimumStages : Prop
  underwoodMinimumReflux : Prop
  gillilandCorrelation : Prop
  stageEfficiency : Prop
  refluxRatioOptimization : Prop

structure FenskeUnderwoodGillilandEvidence (F : FenskeUnderwoodGillilandPackage) where
  fenskeMinimumStagesClosed : F.fenskeMinimumStages
  underwoodMinimumRefluxClosed : F.underwoodMinimumReflux
  gillilandCorrelationClosed : F.gillilandCorrelation
  stageEfficiencyClosed : F.stageEfficiency
  refluxRatioOptimizationClosed : F.refluxRatioOptimization

def FenskeUnderwoodGillilandClosed (F : FenskeUnderwoodGillilandPackage) : Prop :=
  F.fenskeMinimumStages ∧ F.underwoodMinimumReflux ∧ F.gillilandCorrelation ∧
  F.stageEfficiency ∧ F.refluxRatioOptimization

theorem fenske_underwood_gilliland_closed_from_evidence
    (F : FenskeUnderwoodGillilandPackage) (E : FenskeUnderwoodGillilandEvidence F) :
    FenskeUnderwoodGillilandClosed F := by
  exact And.intro E.fenskeMinimumStagesClosed
    (And.intro E.underwoodMinimumRefluxClosed
      (And.intro E.gillilandCorrelationClosed
        (And.intro E.stageEfficiencyClosed E.refluxRatioOptimizationClosed)))

end ChemicalEngineeringDistillationFoundationCanonicalLaneLean
end HautevilleHouse