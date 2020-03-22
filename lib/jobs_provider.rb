class JobsProvider
  ROLES = ['Customer Success', 'Fullstack Engineer', 'Product Manager'].freeze
  PRIMARY_BUSINESSES = ['Accounting', 'Software development', 'Landscaping'].freeze
  TECHNICAL_BACKGROUND_REQUIRED = ['Yes', 'No'].freeze

  def self.combinations
    jobs = []

    ROLES.each do |role|
      PRIMARY_BUSINESSES.each do |business|

        job = {
          role_name: role,
          primary_business: business
        }

        if role == 'Fullstack Engineer' || (role ==  'Product Manager' && business == 'Software development')
          TECHNICAL_BACKGROUND_REQUIRED.each do |background_required|
            job[:technical_background] = background_required
            jobs << job
          end
        else
          jobs << job
        end
      end
    end

    jobs
  end
end