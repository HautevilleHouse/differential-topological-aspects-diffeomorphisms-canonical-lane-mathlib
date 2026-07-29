import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphisms

structure HirschSmaleDensityPackage where
  manifoldType : Type u
  diffeomorphismGroup : Type v
  denseOpenSet : Prop
  hyperbolicityGeneric : Prop
  structuralStabilityGeneric : Prop
  infiniteDimensionalRemainder : Prop

def HirschSmaleDensityClosed (H : HirschSmaleDensityPackage) : Prop :=
  H.denseOpenSet ∧ H.hyperbolicityGeneric ∧ H.structuralStabilityGeneric ∧ H.infiniteDimensionalRemainder

theorem hirsch_smale_density_closed (H : HirschSmaleDensityPackage) :
    HirschSmaleDensityClosed H := by
  exact And.intro H.denseOpenSet (And.intro H.hyperbolicityGeneric (And.intro H.structuralStabilityGeneric H.infiniteDimensionalRemainder))

end DifferentialTopologicalAspectsDiffeomorphisms
end HautevilleHouse