require "rspec"

require_relative "matrices"

describe "multiply_matrices" do
  describe "multiplies two given matrices and returns the result" do
    it "example 1" do
      m1 = [
        [1, 2],
        [3, 4]
          ]
      m2 = [
        [5, 6],
        [7, 8]
      ]

      expect(multiply_matrices(m1, m2)).to eq([[19, 22], [43, 50]])
    end

    it "example 2" do
      m1 = [
        [3, 1, 4]
      ]
      m2 = [
        [4,3],
        [2,5],
        [6,8]
      ]

      expect(multiply_matrices(m1,m2)).to eq([[38,46]])
    end

    it "example 3" do
      m1 = [
        [1, 2, 3],
        [4, 5, 6]
      ]
      m2 = [
        [7, 8],
        [9, 10],
        [11, 12]
      ]

      expect(multiply_matrices(m1,m2)).to eq([[58, 64], [139, 154]])
    end

    it "example 4" do
      m1 = [
        [1, 2],
        [3, 4],
        [5, 6]
      ]
      m2 = [
        [7, 8, 9],
        [10, 11, 12]
      ]

      expect(multiply_matrices(m1,m2)).to eq([[27, 30, 33], [61, 68, 75], [95, 106, 117]])
    end

    it "example 5" do
      m1 = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
      ]
      m2 = [
        [1, 0, 0],
        [0, 1, 0],
        [0, 0, 1]
      ]

      expect(multiply_matrices(m1,m2)).to eq([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
    end
  end
end
