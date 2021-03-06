library(R6)

#' The job class.
#'
#' This class is returned by client methods such as
#' \code{DOcplexcloudClient.submitJob()} and is used to store information for jobs
#' created and executed on DOcplexcloud.
#'
#' @field joburl The URL of the job.
#' @field jobid The id of the job.
#' @field exectutionStatus The execution status if the job has been executed.
#' @examples
#' \dontrun{
#' client <- DOcplexcloudClient(url='Your DOcplexcloud base URL',
#'                              key='Your DOcplexcloud api key')
#'
#' # Create job and wait for completion
#' job <- client$submitJob(addAttachment(file="model.lp"))
#' # The job status
#' status <- job$executionStatus
#' }
#' @export
DOcplexcloudJob <- R6Class("DOcplexcloudJob",
    public = list (
        joburl = NULL,
        jobid = NULL,
        executionStatus = NULL,
        initialize = function() {
            self$joburl <- NULL
            self$jobid <- NULL
            self$executionStatus <- NULL
        }
    )
)
