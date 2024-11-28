require "rspec"

require_relative "matrices"

describe "multiply_matrices" do
  it "multiplies two given matrices and returns the result" do
    m1 = [[1, 2], [3, 4]]
    m2 = [[5, 6], [7, 8]]

    expect(multiply_matrices(m1, m2)).to eq([[19, 22], [43, 50]])
  end
end
