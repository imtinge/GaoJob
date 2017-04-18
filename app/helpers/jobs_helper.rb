module JobsHelper

  def render_job_status(job)
    if job.is_hidden
      fa_icon 'lock'
    else
      fa_icon 'globe'
    end
  end
end
