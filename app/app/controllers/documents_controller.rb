class DocumentsController < ApplicationController
	require 'csv'

	def sums
		csv_file = params[:file]
		csv_path = csv_file.path
		sum = 0

		CSV.foreach(csv_path) do |row|
			sum += row[0].to_f
		end

		sum = "%.2f" % sum

		render :plain => sum
	end

	def filters
		csv_file = params[:file]
		csv_path = csv_file.path
		sum = 0

		CSV.foreach(csv_path) do |row|
			if row[2].to_f % 2 == 1
				sum += row[1].to_f
			end
		end

		sum = "%.2f" % sum

		render :plain => sum
	end

	def intervals
		csv_file = params[:file]
		csv_path = csv_file.path
		sum = 0
		max = 0
		i = 0
		nums = Array.new

		CSV.foreach(csv_path) do |row|
			nums.push(row[0].to_f)
		end

		if nums.size <= 30
		elsif nums.size > 30
		end

		max = nums.length

		max = "%.2f" % max

		render :plain => max
	end

	def lin_regressions
	end
end
