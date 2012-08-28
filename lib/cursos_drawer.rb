class CursosDrawer
  def self.draw(search)
    pdf = PDF::Writer.new
    pdf.text "Lista de Usuários", :font_size => 32, :justification => :center

  PDF::SimpleTable.new do |table|
    table.title = "Sample Tables"
    table.column_order.push(*%w(first second))

    table.columns["first"] = PDF::SimpleTable::Column.new("first")
    table.columns["first"].heading = "First"

    table.columns["second"] = PDF::SimpleTable::Column.new("second")
    table.columns["second"].heading = "Second"

    table.show_lines    = :all
    table.show_headings = true
    table.orientation   = :center
    table.position      = :center

    @data = [
    {"first"=> "1", "second"=> "2"}, # First row
    {"first"=> "One", "second"=> "Two"}, # Second row
    {"first"=> "Mono", "second"=> "Di"}, # Third row
    ]

  table.data.replace @data
  table.render_on(pdf)
  end
  end

end