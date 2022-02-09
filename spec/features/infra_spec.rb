# test that infrastructure is working
feature "test that infra is working" do
  scenario "show text that infra is working" do
    visit '/'
    expect(page).to have_content "Testing infrastructure working!"
  end
end