defmodule MinimalServer.Invoice do
  defstruct invoice_number: 0, 
    total_amount: 0,
    invoice_date: nil ,
    description: "Replace me",
    client: "ACME Company"
end
