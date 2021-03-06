% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/download_package.R
\name{download_package}
\alias{download_package}
\title{Download a data package (optionally with child packages)}
\usage{
download_package(
  mn,
  resource_map_pid,
  download_directory,
  prefix_file_names = TRUE,
  download_column_metadata = FALSE,
  convert_excel_to_csv = FALSE,
  download_child_packages = TRUE,
  check_download_size = FALSE
)
}
\arguments{
\item{mn}{(MNode) The Member Node to download from.}

\item{resource_map_pid}{(chraracter) The PID of the resource map for the package to download.}

\item{download_directory}{(character) The path of the directory to download the package to.}

\item{prefix_file_names}{(logical) Optional. Whether to prefix file names with the package metadata identifier.
This is useful when downloading files from multiple packages to one directory.}

\item{download_column_metadata}{(logical) Optional. Whether to download attribute (column) metadata as csv files.
If using this, then it is recommended to also set \code{prefix_file_names = TRUE}.}

\item{convert_excel_to_csv}{(logical) Optional. Whether to convert Excel files to csv files. The csv files are downloaded
as sheetName_excelWorkbookName.csv}

\item{download_child_packages}{(logical) Optional. Whether to download data from child packages of the selected package. Defaults to \code{TRUE}.}

\item{check_download_size}{(logical) Optional. Whether to check the total download size before continuing. Setting this to \code{FALSE}
speeds up the function, especially when the package has many elements.}
}
\description{
This function downloads all of the data objects in a data package to the local filesystem.
It is particularly useful when a data package is too large to download using the web interface.
}
\details{
Setting \code{check_download_size} to \code{TRUE} is recommended if you are uncertain of the total download size
and want to avoid downloading very large data packages.

This function will also download any data objects it finds in any child data packages of the input data package.
If you would only like to download data from one data package, set \code{download_child_packages} to \code{FALSE}.
}
\examples{
\dontrun{
cn <- CNode("PROD")
mn <- getMNode(cn, "urn:node:ARCTIC")

download_package(mn, "resource_map_urn:uuid:2b4e4174-4e4b-4a46-8ab0-cc032eda8269",
"/home/dmullen")
}

}
\author{
Dominic Mullen, \email{dmullen17@gmail.com}
}
