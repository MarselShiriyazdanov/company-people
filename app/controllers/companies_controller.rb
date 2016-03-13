class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]
  respond_to :json, only: :update

  def index
    @companies = CompanyPresenter.wrap(Company.includes(:favorite).all)
  end

  def show
    @people = PeoplePresenter.wrap(@company.people.includes(:favorite))
  end

  def update
    @company.create_favorite

    respond_with status: :ok
  end

  private
    def set_company
      @company = Company.find(params[:id])
    end
end
