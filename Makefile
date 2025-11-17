rexec = R CMD BATCH --no-save --no-restore

output/penguin_class.csv: analysis/classify_penguins.R
	$(rexec) $<

output/penguin_pairs.png: analysis/plot_penguin.R
	$(rexec) $<

# penguin_report.html: analysis/penguin_report.qmd output/penguin_class.csv output/penguin_pairs.png