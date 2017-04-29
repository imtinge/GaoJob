module Admin::JobsHelper

  def render_job_status(job)
    if job.is_hidden
      fa_icon 'lock', id: "job_status_icon_#{job.id}"
    else
      fa_icon 'unlock', id: "job_status_icon_#{job.id}"
    end
  end

end
