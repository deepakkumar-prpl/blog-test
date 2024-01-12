class Task < ApplicationRecord
  class << self
    def generate_docx
      PureDocx.create('/home/prpl-tech/deepak/blog/doc.docx', paginate_pages: 'right') do |doc|
        table = [
          [
            { column: [doc.text('first column, first row')] },
            {
              column: [
                doc.text('second column a, first row'),
                doc.text('second column b, first row'),
                doc.text('second column c, first row')
              ]
            }
          ]
        ]

        table_options = {
          table_width: 4000,
          sides_without_border: %i[left top right insideH insideV],
          bold_sides: [:bottom]
        }
        doc.header([
                     doc.text('header', style: [:italic], size: 28, align: 'left')
                   ])

        # doc.content([
        #   doc.text('text', style: [:bold], size: 32, align: 'center'),
        #   doc.table(table, table_options)
        # ])
      end
    end
  end
end
