# QFeatures EuroBioc2020 Workshop

<img
src="https://raw.githubusercontent.com/rformassspectrometry/stickers/master/QFeatures/QFeatures.png"
height="150">


The
[`QFeatures`](https://rformassspectrometry.github.io/QFeatures/articles/QFeatures.html)
package provides infrastructure (that is classes to store data and the
methods to process and manipulate them) to manage and analyse
quantitative features from mass spectrometry experiments. It is based
on the `SummarizedExperiment` and `MultiAssayExperiment` Bioconductor
classes. Assays in a QFeatures object have a hierarchical relation:
proteins are composed of peptides, themselves produced by
spectra. Throughout the aggregation and processing of these data, the
relations between assays are tracked and recorded, thus allowing users
to easily navigate across spectra, peptide and protein quantitative
data. In this workshop, we will demonstrate how to import data as
QFeatures objects, how to process and analyse data in QFeatures
objects, and how to interpret the results.  Some familiarity with
Bioconductor data analysis, in particular the SummarizedExperiment
class, is recommended to follow this short workshop.

The content of this workshop is provided under a [CC-BY
ShareAlike](https://creativecommons.org/licenses/by-sa/2.0/) license.
