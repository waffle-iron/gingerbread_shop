defmodule GingerbreadShop.Service.Case do
    @moduledoc """
      This module defines the test case to be used by all tests.
    """

    use ExUnit.CaseTemplate

    using do
        quote do
            import Ecto
            import Ecto.Changeset
            import Ecto.Query
            use Defecto, repo: GingerbreadShop.Service.Repo
        end
    end

    setup tags do
        :ok = Ecto.Adapters.SQL.Sandbox.checkout(GingerbreadShop.Service.Repo)

        unless tags[:async] do
            Ecto.Adapters.SQL.Sandbox.mode(GingerbreadShop.Service.Repo, { :shared, self() })
        end

        :timer.sleep(100)

        :ok
    end
end
