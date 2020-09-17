require "application_system_test_case"

class ReclamacaosTest < ApplicationSystemTestCase
  setup do
    @reclamacao = reclamacaos(:one)
  end

  test "visiting the index" do
    visit reclamacaos_url
    assert_selector "h1", text: "Reclamacaos"
  end

  test "creating a Reclamacao" do
    visit reclamacaos_url
    click_on "New Reclamacao"

    fill_in "Categoria", with: @reclamacao.categoria
    fill_in "Empresa", with: @reclamacao.empresa
    fill_in "Texto", with: @reclamacao.texto
    fill_in "Titulo", with: @reclamacao.titulo
    click_on "Create Reclamacao"

    assert_text "Reclamacao was successfully created"
    click_on "Back"
  end

  test "updating a Reclamacao" do
    visit reclamacaos_url
    click_on "Edit", match: :first

    fill_in "Categoria", with: @reclamacao.categoria
    fill_in "Empresa", with: @reclamacao.empresa
    fill_in "Texto", with: @reclamacao.texto
    fill_in "Titulo", with: @reclamacao.titulo
    click_on "Update Reclamacao"

    assert_text "Reclamacao was successfully updated"
    click_on "Back"
  end

  test "destroying a Reclamacao" do
    visit reclamacaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reclamacao was successfully destroyed"
  end
end
