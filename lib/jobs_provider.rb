class JobsProvider
  ROLES = ['Customer Success', 'Fullstack Engineer', 'Product Manager'].freeze
  PRIMARY_BUSINESSES = ['Accounting', 'Software development', 'Landscaping'].freeze
  TECHNICAL_BACKGROUND_REQUIRED = ['Yes', 'No'].freeze

  def self.combinations
    jobs = []

    ROLES.each do |role|
      PRIMARY_BUSINESSES.each do |business|

        job = {
          RoleName: role,
          PrimaryBusiness: business
        }

        if role == 'Fullstack Engineer' || (role ==  'Product Manager' && business == 'Software development')
          TECHNICAL_BACKGROUND_REQUIRED.each do |background_required|
            job2 = job.clone
            job2[:TechnicalBackground] = background_required
            jobs << job2
          end
        else
          jobs << job
        end
      end
    end

    jobs
  end
end
