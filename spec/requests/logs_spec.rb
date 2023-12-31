require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/logs', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Log. As you add validations to Log, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Log.create! valid_attributes
      get logs_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      log = Log.create! valid_attributes
      get log_url(log)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_log_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      log = Log.create! valid_attributes
      get edit_log_url(log)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Log' do
        expect do
          post logs_url, params: { log: valid_attributes }
        end.to change(Log, :count).by(1)
      end

      it 'redirects to the created log' do
        post logs_url, params: { log: valid_attributes }
        expect(response).to redirect_to(log_url(Log.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Log' do
        expect do
          post logs_url, params: { log: invalid_attributes }
        end.to change(Log, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post logs_url, params: { log: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested log' do
        log = Log.create! valid_attributes
        patch log_url(log), params: { log: new_attributes }
        log.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the log' do
        log = Log.create! valid_attributes
        patch log_url(log), params: { log: new_attributes }
        log.reload
        expect(response).to redirect_to(log_url(log))
      end
    end

    context 'with invalid parameters' do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        log = Log.create! valid_attributes
        patch log_url(log), params: { log: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested log' do
      log = Log.create! valid_attributes
      expect do
        delete log_url(log)
      end.to change(Log, :count).by(-1)
    end

    it 'redirects to the logs list' do
      log = Log.create! valid_attributes
      delete log_url(log)
      expect(response).to redirect_to(logs_url)
    end
  end
end
