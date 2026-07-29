import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationFoundationCanonicalLaneLean

structure MassTransferPackingHydraulicsPackage where
  packingType : Type u
  liquidLoad : Type v
  vaporLoad : Type w
  floodingCondition : Prop
  pressureDropCorrelation : Prop
  hydraulicPerformanceClosed : Prop

structure MassTransferPackingHydraulicsEvidence (P : MassTransferPackingHydraulicsPackage) where
  floodingConditionClosed : P.floodingCondition
  pressureDropCorrelationClosed : P.pressureDropCorrelation
  hydraulicPerformanceClosedTerm : P.hydraulicPerformanceClosed

def MassTransferPackingHydraulicsClosed (P : MassTransferPackingHydraulicsPackage) : Prop :=
  P.floodingCondition ∧ P.pressureDropCorrelation ∧ P.hydraulicPerformanceClosed

theorem mass_transfer_packing_hydraulics_closed_from_evidence (P : MassTransferPackingHydraulicsPackage)
  (E : MassTransferPackingHydraulicsEvidence P) : MassTransferPackingHydraulicsClosed P := by
  exact And.intro E.floodingConditionClosed
    (And.intro E.pressureDropCorrelationClosed E.hydraulicPerformanceClosedTerm)

end ChemicalEngineeringDistillationFoundationCanonicalLaneLean
end HautevilleHouse
