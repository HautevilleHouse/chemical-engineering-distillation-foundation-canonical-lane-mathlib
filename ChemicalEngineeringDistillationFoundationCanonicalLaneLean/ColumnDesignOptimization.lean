import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationFoundationCanonicalLaneLean

structure ColumnDesignOptimizationPackage where
  columnDiameter : Type u
  columnHeight : Type v
  energyConsumption : Type w
  costFunction : Type x
  optimizationConstraints : Prop
  designOptimality : Prop
  optimizationClosed : Prop

structure ColumnDesignOptimizationEvidence (C : ColumnDesignOptimizationPackage) where
  optimizationConstraintsClosed : C.optimizationConstraints
  designOptimalityClosed : C.designOptimality
  optimizationClosedTerm : C.optimizationClosed

def ColumnDesignOptimizationClosed (C : ColumnDesignOptimizationPackage) : Prop :=
  C.optimizationConstraints ∧ C.designOptimality ∧ C.optimizationClosed

theorem column_design_optimization_closed_from_evidence (C : ColumnDesignOptimizationPackage)
  (E : ColumnDesignOptimizationEvidence C) : ColumnDesignOptimizationClosed C := by
  exact And.intro E.optimizationConstraintsClosed
    (And.intro E.designOptimalityClosed E.optimizationClosedTerm)

end ChemicalEngineeringDistillationFoundationCanonicalLaneLean
end HautevilleHouse
