#Note - it might be necessary to update both R and RStudio to recent versions before running code

#Calling PRISMA2020

library(PRISMA2020)

#calling Rcommander package, which allows for editing of CSV files. 

library(Rcmdr)

#Running the edit command opens the dataset for editing. It is important to manually edit the dataset according to the flow chart that needs to be created.

PRISMA<-edit(PRISMA)

#Code renames the PRISMA dataset to data and allows for editing using the PRISMA2020 R package.

data<-PRISMA
data<-PRISMA_data(data)

#Code creates the PRISMA flowdiagram according to reporting standards.

(FLOWCHART<-PRISMA_flowdiagram(
  data,
  interactive = FALSE,
  previous = TRUE,
  other = TRUE,
  detail_databases = TRUE,
  detail_registers = FALSE,
  fontsize = 11,
  font = "Calibri",
  title_colour = "Goldenrod1",
  greybox_colour = "Gainsboro",
  main_colour = "Black",
  arrow_colour = "Black",
  arrow_head = "normal",
  arrow_tail = "none",
  side_boxes = TRUE
  ))

#Code saves the PRISMA diagram to PDF. It is possible to change to other file formats by changing file-name ending and file type to e.g., png. 

PRISMA_save(
  plotobj = FLOWCHART,
  filename = "PRISMA2020_flowdiagram.pdf",
  filetype = "pdf",
  overwrite = TRUE
)

