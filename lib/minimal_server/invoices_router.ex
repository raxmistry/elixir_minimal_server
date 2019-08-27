defmodule MinimalServer.InvoicesRouter do
  alias MinimalServer.Invoice, as: Invoice
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get "/" do 
    conn 
    |> put_resp_content_type("application/json")
    |> send_resp(200, Poison.encode!(message()))
  end

  defp message do
    
    %{
      invoice1: %Invoice{invoice_number: 123, total_amount: 10000, description: "test", client: "Company 1"},
      invoice2: %Invoice{invoice_number: 345, total_amount: 16000, description: "another test", client: "Bob's Business"}
    }
  end
end
