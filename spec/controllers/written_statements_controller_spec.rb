require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe WrittenStatementsController do

  # This should return the minimal set of attributes required to create a valid
  # WrittenStatement. As you add validations to WrittenStatement, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "statements" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # WrittenStatementsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all written_statements as @written_statements" do
      written_statement = WrittenStatement.create! valid_attributes
      get :index, {}, valid_session
      assigns(:written_statements).should eq([written_statement])
    end
  end

  describe "GET show" do
    it "assigns the requested written_statement as @written_statement" do
      written_statement = WrittenStatement.create! valid_attributes
      get :show, {:id => written_statement.to_param}, valid_session
      assigns(:written_statement).should eq(written_statement)
    end
  end

  describe "GET new" do
    it "assigns a new written_statement as @written_statement" do
      get :new, {}, valid_session
      assigns(:written_statement).should be_a_new(WrittenStatement)
    end
  end

  describe "GET edit" do
    it "assigns the requested written_statement as @written_statement" do
      written_statement = WrittenStatement.create! valid_attributes
      get :edit, {:id => written_statement.to_param}, valid_session
      assigns(:written_statement).should eq(written_statement)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new WrittenStatement" do
        expect {
          post :create, {:written_statement => valid_attributes}, valid_session
        }.to change(WrittenStatement, :count).by(1)
      end

      it "assigns a newly created written_statement as @written_statement" do
        post :create, {:written_statement => valid_attributes}, valid_session
        assigns(:written_statement).should be_a(WrittenStatement)
        assigns(:written_statement).should be_persisted
      end

      it "redirects to the created written_statement" do
        post :create, {:written_statement => valid_attributes}, valid_session
        response.should redirect_to(WrittenStatement.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved written_statement as @written_statement" do
        # Trigger the behavior that occurs when invalid params are submitted
        WrittenStatement.any_instance.stub(:save).and_return(false)
        post :create, {:written_statement => { "statements" => "invalid value" }}, valid_session
        assigns(:written_statement).should be_a_new(WrittenStatement)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        WrittenStatement.any_instance.stub(:save).and_return(false)
        post :create, {:written_statement => { "statements" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested written_statement" do
        written_statement = WrittenStatement.create! valid_attributes
        # Assuming there are no other written_statements in the database, this
        # specifies that the WrittenStatement created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        WrittenStatement.any_instance.should_receive(:update).with({ "statements" => "MyString" })
        put :update, {:id => written_statement.to_param, :written_statement => { "statements" => "MyString" }}, valid_session
      end

      it "assigns the requested written_statement as @written_statement" do
        written_statement = WrittenStatement.create! valid_attributes
        put :update, {:id => written_statement.to_param, :written_statement => valid_attributes}, valid_session
        assigns(:written_statement).should eq(written_statement)
      end

      it "redirects to the written_statement" do
        written_statement = WrittenStatement.create! valid_attributes
        put :update, {:id => written_statement.to_param, :written_statement => valid_attributes}, valid_session
        response.should redirect_to(written_statement)
      end
    end

    describe "with invalid params" do
      it "assigns the written_statement as @written_statement" do
        written_statement = WrittenStatement.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        WrittenStatement.any_instance.stub(:save).and_return(false)
        put :update, {:id => written_statement.to_param, :written_statement => { "statements" => "invalid value" }}, valid_session
        assigns(:written_statement).should eq(written_statement)
      end

      it "re-renders the 'edit' template" do
        written_statement = WrittenStatement.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        WrittenStatement.any_instance.stub(:save).and_return(false)
        put :update, {:id => written_statement.to_param, :written_statement => { "statements" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested written_statement" do
      written_statement = WrittenStatement.create! valid_attributes
      expect {
        delete :destroy, {:id => written_statement.to_param}, valid_session
      }.to change(WrittenStatement, :count).by(-1)
    end

    it "redirects to the written_statements list" do
      written_statement = WrittenStatement.create! valid_attributes
      delete :destroy, {:id => written_statement.to_param}, valid_session
      response.should redirect_to(written_statements_url)
    end
  end

end
