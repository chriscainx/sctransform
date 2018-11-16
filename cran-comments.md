## Test environments
* macOS Sierra 10.12.6, R 3.5.0
* Ubuntu 18.04 LTS, R 3.4.4
* devtools::build_win(version = "R-release") - R version 3.5.1 (2018-07-02)
* devtools::build_win() - using R Under development (unstable) (2018-10-21 r75476)

## R CMD check results

There were no ERRORs or WARNINGs. 

There were 2 NOTEs:

> * checking CRAN incoming feasibility ... NOTE
> Maintainer: 'Christoph Hafemeister <chafemeister@nygenome.org>'
> 
> New submission
> 
> Possibly mis-spelled words in DESCRIPTION:
>   UMI (3:61, 6:53)
>   denoising (11:14)

Yes, this is a new submission. No, these words are not mis-spelled.

> * checking examples ... NOTE
> Examples with CPU or elapsed time > 5s
>          user system elapsed
> denoise 4.277  1.113   2.851

This test takes slightly more than 5s, but I think it is more important to 
provide meaningful example data here than to shave off half a second.

CRAN comments from a previous submission:

> Thanks. Is there some reference about the method you can add in the
> Description field in the form Authors (year) <doi:.....>?

> We see all your examples are wrapped in \dontrun{}. Please ad toy
> examples outside \sontrun{} so that users can quickly execute examples
> that we can also check on CRAN.

There is no reference, yet, but I will add one eventually. Examples are no
longer wrapped in \dontrun{}
