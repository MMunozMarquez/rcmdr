\name{linearModel}
\alias{linearModel}

\title{Rcmdr Linear Model Dialog}
\description{
  This dialog is used to specify a linear model to be fit by the \code{\link[stats]{lm}} function.
}

\details{
The left model-formula box specifies the response variable to be used in the model; it
may be a variable name or an expression evaluating to the response variable, such as
\code{log(income)}.

The right model-formula box specifies the right-hand (i.e., predictor) side of the model.
See \code{\link[stats]{lm}} for details.

You can type directly in the model formula boxes. Alternatively, double-clicking the left mouse
button on a variable in the variable-list transfers it to the left-hand side of the model (if
it is empty or selected) or to the right-hand side. You can also enter operators and parentheses using the buttons
above the formula. If you select several variables in the variable-list box, clicking on the
\code{+}, \code{*}, or \code{:} button will enter them into the model formula.

Specifying a subset expression allows you to fit the model to a subset of observations
in the active data set. For example, assuming that \code{gender} is a variable in the
active data set, entering \code{gender == "Male"} would restrict the model to males.

The weights box allows you to perform weight-least-squares (WLS) regression;
select a weight variable from the drop-down list. 
Click in the weights combo box to see a list of numeric variables in the
current data set; type a letter in the box to move the selection cursor to the next
variable beginning with that letter.

There is an optional case-deletion box, whose presence is controlled by the \code{model.case.deletion} R Commander option (see \code{\link{Commander}}). Typing the row numbers (e,g., \code{6 16}) or row names (e.g., \code{minister conductor}) of cases to be deleted removes these cases from the fitted linear model. Row names with embedded blanks must be quoted (e.g., \code{"railroad engineer"}), in which case \emph{all} row names specified should be quoted (e.g., \code{"railroad engineer" "minister"}). You cannot specify \emph{both} a subset expression and case deletion.

If the active model is a linear model and the active data set has not changed, 
then the initial values of the left-hand-side,
right-hand-side, weights, and subset fields are retained from the previous model.
}

\author{John Fox \email{jfox@mcmaster.ca}}

\seealso{\code{\link[stats]{lm}}, \code{\link[base]{Comparison}}}

\keyword{models}
