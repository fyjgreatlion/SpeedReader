% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generate_document_term_vectors.R
\name{generate_document_term_vectors}
\alias{generate_document_term_vectors}
\title{A function to generate document term vectors from a variety of inputs.}
\usage{
generate_document_term_vectors(input, data_type = c("string", "term vector",
  "raw text", "csv", "ngrams"), ngram_type = NULL, data_directory = NULL,
  tokenization_method = c("None", "RegEx"), regex = "[^a-zA-Z\\\\s]",
  output_type = c("return", "save", "return and save"), output_name = NULL,
  output_directory = NULL, csv_separator = ",", csv_word_column = NULL,
  csv_count_column = NULL, csv_header = FALSE, keep_sequence = FALSE)
}
\arguments{
\item{input}{A list of strings, term vectors, raw documents, or csv files you wish to turn into document term vectors.}

\item{data_type}{The type of data provided to the function. Defaults to 'string' in which case the user must provide a vector or list of strings, with each string representing one document. Alternatively the user may specify one of the following input formats: 'term vector', in which case a list of document term vectors is expected; 'raw text', in which case a vector of paths to plain text files should be provided; 'csv', in which case a vector of paths to document term csv files must be specified. If 'csv' is specified, optional arguments csv_separator, csv_word_column, csv_header,  and optionally csv_count_column must also be specified; or "ngrams", in which case a file path to a block of save ngrams
extractions generated by the ngrams() function is stored. If "ngrams" is
selected, then ngram_type must also be selected.}

\item{ngram_type}{The type of ngram we wish to use to generate document term
vectors. Can be one of ngrams "jk_filtered", "verb_filtered", "phrases", or
any of "x_grams" where x is a number specifying the n_gram length. Can only be
used with input generated by the ngrams() function. Defaults to NULL.}

\item{data_directory}{Optional argument specifying where the data is stored.}

\item{tokenization_method}{Defaults to "None", in which case text input is kept as is. Alternatively, the user may select "RegEx" in which case all characters will be removed from the input that match the regex argument. See clean_document_text() for more examples.}

\item{regex}{Deaults to removing all characters that are not upper or lowercase letters or spaces. Can be set as desired by the user.}

\item{output_type}{A string value indicating whether the resulting list object should be returned ("return"), saved to a file in the current working directory with name output_name.Rdata ("save"), of both ("save and return"). Defaults to "return".}

\item{output_name}{The file name we wish to give the output document term vector list object generated by this function if specifying a value of "save" or "return and save" for output_type. You do not need to provide the .Rdata extension as this is appended automatically. Defaults to NULL.}

\item{output_directory}{An optional alternate directory where output will be
stored. Defaults to NULL, in which case all output is stored in data_directory
if output_type != NULL}

\item{csv_separator}{Defaults to "," but can be set to "*backslash*t" for tab separated values.}

\item{csv_word_column}{If you are providing one csv file per document, then you must specify the index of the column that contains the words. Defaults to NULL.}

\item{csv_count_column}{For memory efficiency, you may want to store only the counts of unique words in csv files. If your data include counts, then you must specify the index of the column that contains the counts. Defaults to NULL.}

\item{csv_header}{Logical indicating whether the csv files provided have a header. Defaults to FALSE.}

\item{keep_sequence}{Logical indicating whether document term vectors should be condensed and counts (FALSE) or whether the full sequence should be maintained for storage (TRUE). Defaults to FALSE as this can be a much more memory efficient representation.}
}
\value{
A document term vector list.
}
\description{
A function to generate document term vectors from a variety of inputs.
}

