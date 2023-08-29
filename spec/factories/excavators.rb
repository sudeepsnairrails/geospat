FactoryBot.define do
    factory :excavator do
      company_name        { "Test Excavator" }
      address             { "Test, Address, Zip, 000111" }
      crew_on_site        { true }
      association :ticket, factory: :ticket
    end
end