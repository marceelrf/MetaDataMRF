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
The first component in the file name is the **Date** of the file production. The date should be write as the ISO 8601 preconizes. First the **year** writen with 4 digits, then **month** with 2 digits and finally the **day** with 2 digits. No separator should be used. It's important to emphasize that **day** and **month** must be writen with 2 digits **ALWAYS**. 

**Ex:** *2nd May 2019 = 20190502*

### *Project*
The *Project* component is an indentification of the main project with the file are related. Funding agencies as FAPESP, CNPq and CAPES usually provides an numeric code for each project. In my files I use the six numeric code of my FAPESP scolarship (*057317*). If there's more project related, with different agencies, the agency name could be add to the numeric code (*FAPESP057317*).

### *Colleagues*
Most of experiments are performed with the contribution of one or more colleagues. In this component we specify which colleagues participated. In case of more the one the names should be separated by *"."*.

**Ex:** *Gerson and Georgia = Gerson.Georgia*

### *Experiment*
The experiment component of the file name sould be write as short as possible. If there is a protocol file the experiment component should matches with the experiment name in the protocol file.

### *Sample*
Sample component should be short and standarized across different experiments.

### *Type*
**_Image_**, **_graph_**, **_text_** and **_data_** are some examples of type of files common used.

### *Format*
The format componet are the only componet automatically generated. You do not need to worry.
