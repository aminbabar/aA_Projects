# == Schema Information
#
# Table name: nobels
#
#  yr          :integer
#  subject     :string
#  winner      :string

require_relative './sqlzoo.rb'

def physics_no_chemistry
  # In which years was the Physics prize awarded, but no Chemistry prize?
  execute(<<-SQL)

  SQL
end
# https://www.w3schools.com/sql/sql_join_self.asp

#   SELECT
#     yr1.subject AS A1, yr2.subject AS A2, yr1.yr, yr1.winner, yr2.winner
#   FROM
#     Nobels yr1, Nobels yr2
#   AND
#     yr1.subject = Physics, yr2.subject != Chemistry

# SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
# FROM Customers A, Customers B
# WHERE A.CustomerID <> B.CustomerID
# AND A.City = B.City 
# ORDER BY A.City;


#   SELECT
#     A.subject AS 
#   FROM
#     Nobels
#   JOIN SELF on Nobels.subject = Chemistry;
#   WHERE
#     subject = 'Physics'