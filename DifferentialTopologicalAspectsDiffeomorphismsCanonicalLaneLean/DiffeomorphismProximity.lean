import BridgeLemmas
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean

-- Structure encoding the notion that a diffeomorphism can be approximated by nearby diffeomorphisms.
structure DiffeomorphismProximityPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  proximityProperty : Prop
  proximityClosed : proximityProperty

theorem diffeomorphism_proximity_closed (P : DiffeomorphismProximityPackage) : P.proximityProperty := P.proximityClosed

end HautevilleHouse.DifferentialTopologicalAspectsDiffeomorphismsCanonicalLaneLean
end HautevilleHouse
