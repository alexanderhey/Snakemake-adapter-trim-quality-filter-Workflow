rule all:
	input:
		expand("trim/{sample}.trim.fastq.gz", sample=config["samples"])
 
rule fastp:
	input:
		sample="samples/{sample}.fastq.gz"
	output:
		trim="trim/{sample}.trim.fastq.gz"
	shell:
		"fastp -i {input.sample} -o {output.trim} -h report_name.html"
 