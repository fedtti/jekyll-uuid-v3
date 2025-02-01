# frozen_string_literal: true

class Jekyll::UUIDv3 < Jekyll::Generator
  safe true
  priority :lowest

  def generate(site)
    if disabled_in_development?
      Jekyll.logger.info "Jekyll UUID v3:", "Skipping UUIDs generation in development"
      return
    end

  end

  def disabled_in_development?
    config && config["disable_in_development"] && Jekyll.env == "development"
  end
end
