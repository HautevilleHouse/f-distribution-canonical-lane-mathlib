import FDistributionCanonicalLaneLean.GateLemmas


namespace HautevilleHouse
namespace FDistributionCanonicalLaneLean

/-!
F-distribution

Constrained admissible-class closure of the theorem.
Full formalization of the proof is future work.
-/
def constrained_theorem_closure : Prop :=
  ∀ (s₁²/σ₁², s₂²/σ₂² from Normal samples), F = (s₁²/σ₁²)/(s₂²/σ₂²) ∼ F_{n₁-1,n₂-1}

theorem constrained_theorem_closure_true : constrained_theorem_closure := by
  sorry

end FDistributionCanonicalLaneLean
end HautevilleHouse
