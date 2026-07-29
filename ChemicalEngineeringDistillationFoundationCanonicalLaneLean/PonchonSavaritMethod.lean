import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationFoundationCanonicalLaneLean

structure PonchonSavaritPackage where
  enthalpyConcentrationDiagram : Prop
  energyBalance : Prop
  tieLines : Prop
  stageConstruction : Prop

structure PonchonSavaritEvidence (P : PonchonSavaritPackage) where
  enthalpyConcentrationDiagramClosed : P.enthalpyConcentrationDiagram
  energyBalanceClosed : P.energyBalance
  tieLinesClosed : P.tieLines
  stageConstructionClosed : P.stageConstruction

def PonchonSavaritClosed (P : PonchonSavaritPackage) : Prop :=
  P.enthalpyConcentrationDiagram ∧ P.energyBalance ∧ P.tieLines ∧ P.stageConstruction

theorem ponchon_savarit_closed_from_evidence (P : PonchonSavaritPackage) (E : PonchonSavaritEvidence P) : PonchonSavaritClosed P :=
  And.intro E.enthalpyConcentrationDiagramClosed (And.intro E.energyBalanceClosed (And.intro E.tieLinesClosed E.stageConstructionClosed))

end ChemicalEngineeringDistillationFoundationCanonicalLaneLean
end HautevilleHouse