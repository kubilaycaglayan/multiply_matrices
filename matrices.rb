def multiply_matrices(m1, m2)
  return if m1[0].length != m2.length

  result = []

  m1.each_index do |m1_row_index|
    m1_row = m1[m1_row_index]

    m2[0].each_index do |m2_col_index|
      sum_series = []

      m1_row.each_index do |m1_el_index|
        m1_element = m1_row[m1_el_index]
        m2_element = m2[m1_el_index][m2_col_index]

        multiplication_result = m1_element * m2_element
        sum_series << multiplication_result
      end

      result[m1_row_index] = [] if result[m1_row_index].nil?
      result[m1_row_index] << sum_series.sum
    end
  end

  result
end
