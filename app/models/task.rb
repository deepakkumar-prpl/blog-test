# frozen_string_literal: true

class Task < ApplicationRecord
  class << self
    def generate_docx
      PureDocx.create('/home/prpl-tech/deepak/blog/doc.docx', paginate_pages: 'right') do |doc|
        [
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
