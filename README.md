# MetaDataMRF

###### *created and maintained by [marceelrf](https://github.com/marceelrf)*

## *Abstract*
With the increase of data production, it is becoming increasingly necessary to optimize their structure and storage.In this context metadata is fundamental.In this repository I present to you a tool for automated metadata production, based only on file names.

Currently, MetaDataMRF package is maintained by [marceelrf](https://github.com/marceelrf), if you met any problem during using the software, please email: marcel.ferreira@unesp.br

## *The metaDataMRF() function*
The metaDataMRF function take *dirname* as a single argument. This enables the user to run the function without having to previously set the directory work. The function will return a CSV file contain the metadata information. The file is automatically named by the date storage at the system in the time of compilation (**EX** *"20191020metaData.csv"*).

## *File name*
The first step is the standardization of file names. Considering my needs, I chose the file name as *"date_project_colleagues_experiment_sample_type.format"*. For example, last week my colleague Gerson and I conducted XRD experiments with hydroxyapatite samples (*__The date of the analysis was November 20, 2019__*). Then the file containing the analysis data was named as "*20191120_057317_Gerson_DRX_HA1150_data.txt*".

**_Importantly, this format that served my needs may not suit yours. So feel free to change the code to your needs._**

In the following sections I will discuss further about each component of the file name.

### *Date*

### *Project*

### *Colleagues*

### *Experiment*

### *Sample*

### *Type*

### *Format*
