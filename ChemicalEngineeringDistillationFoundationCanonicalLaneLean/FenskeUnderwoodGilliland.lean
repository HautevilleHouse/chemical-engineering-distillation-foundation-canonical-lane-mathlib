import chemicalEngineeringDistillationFoundationCanonicalLaneLean.McCabeThieleMethod

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationFoundationCanonicalLaneLean

structure FenskeUnderwoodGillilandPackage where
  minimumRefluxRatio : ℝ
  minimumNumberOfStages : ℕ
  actualRefluxRatio : ℝ
  actualNumberOfStages : ℕ
  fenskeEquationValid : Prop
  underwoodEquationValid : Prop
  gillilandCorrelationValid : Prop
  refluxRatioAboveMinimum : actualRefluxRatio ≥ minimumRefluxRatio
  numberOfStagesAboveMinimum : actualNumberOfStages ≥ minimumNumberOfStages
  fenskeEquationValidTerm : fenskeEquationValid
  underwoodEquationValidTerm : underwoodEquationValid
  gillilandCorrelationValidTerm : gillilandCorrelationValid

structure FenskeUnderwoodGillilandEvidence (F : FenskeUnderwoodGillilandPackage) where
  fenskeEquationValidClosed : F.fenskeEquationValid
  underwoodEquationValidClosed : F.underwoodEquationValid
  gillilandCorrelationValidClosed : F.gillilandCorrelationValid
  refluxRatioAboveMinimumClosed : F.refluxRatioAboveMinimum
  numberOfStagesAboveMinimumClosed : F.numberOfStagesAboveMinimum

def FenskeUnderwoodGillilandClosed (F : FenskeUnderwoodGillilandPackage) : Prop :=
  F.fenskeEquationValid ∧ F.underwoodEquationValid ∧ F.gillilandCorrelationValid ∧
  F.refluxRatioAboveMinimum ∧ F.numberOfStagesAboveMinimum

theorem fenske_underwood_gilliland_closed_from_evidence (F : FenskeUnderwoodGillilandPackage) (E : FenskeUnderwoodGillilandEvidence F) : FenskeUnderwoodGillilandClosed F :=
by
  exact And.intro E.fenskeEquationValidClosed
    (And.intro E.underwoodEquationValidClosed
      (And.intro E.gillilandCorrelationValidClosed
        (And.intro E.refluxRatioAboveMinimumClosed E.numberOfStagesAboveMinimumClosed)))

end ChemicalEngineeringDistillationFoundationCanonicalLaneLean
end HautevilleHouse
