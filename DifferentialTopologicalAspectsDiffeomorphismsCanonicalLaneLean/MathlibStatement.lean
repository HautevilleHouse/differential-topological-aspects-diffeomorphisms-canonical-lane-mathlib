import Mathlib.Geometry.Manifold.Diffeomorphism
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

-- The Mathlib statement for a diffeomorphism between manifolds.
abbrev MathlibDiffeomorphismStatement (M N : Type) [TopologicalSpace M] [TopologicalSpace N] : Prop :=
  Nonempty (M ≃ₘ N)

theorem mathlib_diffeomorphism_statement_available (M N : Type) [TopologicalSpace M] [TopologicalSpace N] :
    MathlibDiffeomorphismStatement M N = Nonempty (M ≃ₘ N) := rfl

end HautevilleHouse.DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse
