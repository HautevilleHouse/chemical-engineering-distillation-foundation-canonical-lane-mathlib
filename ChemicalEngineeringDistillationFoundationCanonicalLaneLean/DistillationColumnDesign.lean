import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringDistillationFoundationCanonicalLaneLean.PhaseEquilibriumPackage
import HautevilleHouse.ChemicalEngineeringDistillationFoundationCanonicalLaneLean.McCabeThieleConstruction
import HautevilleHouse.ChemicalEngineeringDistillationFoundationCanonicalLaneLean.FenskeUnderwoodGillilandCorrelation

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationFoundationCanonicalLaneLean

structure DistillationColumnDesignPackage where
  columnDiameter : Prop
  trayHydraulics : Prop
  pressureDrop : Prop
  weirDesign : Prop
  downcomerDesign : Prop

structure DistillationColumnDesignEvidence (D : DistillationColumnDesignPackage) where
  columnDiameterClosed : D.columnDiameter
  trayHydraulicsClosed : D.trayHydraulics
  pressureDropClosed : D.pressureDrop
  weirDesignClosed : D.weirDesign
  downcomerDesignClosed : D.downcomerDesign

def DistillationColumnDesignClosed (D : DistillationColumnDesignPackage) : Prop :=
  D.columnDiameter ∧ D.trayHydraulics ∧ D.pressureDrop ∧ D.weirDesign ∧ D.downcomerDesign

theorem distillation_column_design_closed_from_evidence
    (D : DistillationColumnDesignPackage) (E : DistillationColumnDesignEvidence D) :
    DistillationColumnDesignClosed D := by
  exact And.intro E.columnDiameterClosed
    (And.intro E.trayHydraulicsClosed
      (And.intro E.pressureDropClosed
        (And.intro E.weirDesignClosed E.downcomerDesignClosed)))

end ChemicalEngineeringDistillationFoundationCanonicalLaneLean
end HautevilleHouse