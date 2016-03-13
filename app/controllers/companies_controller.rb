class CompaniesController < ApplicationController
  before_action :set_company, only: :show

  def index
    @companies = CompanyPresenter.wrap(Company.includes(:favorite).all)
  end

  def show
    @people = PeoplePresenter.wrap(@company.people.includes(:favorite))
  end

  private
    def set_company
      @company = Company.find(params[:id])
    end
end
