class Api::V1::LoadController < Api::V1::ApiController
    def index
        begin
            ticket = Ticket.create(request_number: params[:RequestNumber],
                                sequence_number: params[:SequenceNumber],
                                request_type: params[:RequestType],
                                request_action: params[:RequestAction],
                                request_due_date_time: params[:DateTimes][:RequestTakenDateTime],
                                primary_service_area_code: params[:ServiceArea][:PrimaryServiceAreaCode][:SACode],
                                additional_service_area_codes: params[:ServiceArea][:AdditionalServiceAreaCodes][:SACode],
                                well_known_text: params[:ExcavationInfo][:DigsiteInfo][:WellKnownText])

            ticket.excavators.create(company_name: params[:Excavator][:CompanyName],
                                    address: address,
                                    crew_on_site: params[:Excavator][:CrewOnsite])
            render json: { message: 'Records created successfully!' }, status: :ok
        rescue Exception => e
            render json: { message: e.message }, status: :unprocessable_entity
        end
    end


    protected

    def address
        params[:Excavator][:Address] + "," + params[:Excavator][:City] + "," + params[:Excavator][:State] + "," + params[:Excavator][:Zip]
    end
end