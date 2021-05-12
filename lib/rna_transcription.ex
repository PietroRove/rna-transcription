defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    dna |> Enum.map(&rna_translate/1)
  end

  def rna_translate(char) do
    case char do
      ?G -> ?C
      ?C -> ?G
      ?T -> ?A
      ?A -> ?U
    end
  end
end
