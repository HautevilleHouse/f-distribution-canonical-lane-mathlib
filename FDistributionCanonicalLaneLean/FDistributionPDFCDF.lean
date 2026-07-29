import FDistributionCanonicalLaneLean.FDistributionAdmissibleClass

namespace HautevilleHouse
namespace FDistributionCanonicalLaneLean

structure FDistributionPDFCDFPackage where
  pdfFormula : ℕ → ℕ → ℝ → ℝ
  cdfFormula : ℕ → ℕ → ℝ → ℝ
  pdfNonnegative : Prop
  pdfIntegratesToOne : Prop
  cdfLimitsCorrect : Prop
  pdfConsistentWithCDF : Prop

structure FDistributionPDFCDFEvidence (P : FDistributionPDFCDFPackage) where
  pdfNonnegativeClosed : P.pdfNonnegative
  pdfIntegratesToOneClosed : P.pdfIntegratesToOne
  cdfLimitsCorrectClosed : P.cdfLimitsCorrect
  pdfConsistentWithCDFClosed : P.pdfConsistentWithCDF

def FDistributionPDFCDFClosed (P : FDistributionPDFCDFPackage) : Prop :=
  P.pdfNonnegative ∧ P.pdfIntegratesToOne ∧ P.cdfLimitsCorrect ∧ P.pdfConsistentWithCDF

theorem f_distribution_pdf_cdf_closed_from_evidence (P : FDistributionPDFCDFPackage) (E : FDistributionPDFCDFEvidence P) : FDistributionPDFCDFClosed P :=
  And.intro E.pdfNonnegativeClosed (And.intro E.pdfIntegratesToOneClosed (And.intro E.cdfLimitsCorrectClosed E.pdfConsistentWithCDFClosed))

end FDistributionCanonicalLaneLean
end HautevilleHouse