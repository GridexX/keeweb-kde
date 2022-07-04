<div align="center">

<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC-6DV_8BqR4hW5pHjuHwhhDPydavVltUBQxB84o3vQilrzSgkcLyxfjP2-vwPkmOUXKk&usqp=CAU" alt="keeweb-logo" width="100" height="100">

# Keeweb-kde

Scripts related to synchronization between KeepassXC and Keeweb with KDE.
Related to this [repository](https://github.com/GridexX/keeweb).

![URL check](https://github.com/GridexX/keeweb-kde/actions/workflows/url_health_check.yml/badge.svg)
</div>

### Installation
1. Clone this repository
1. Copy the `.env.example` into `.env-webdav` inside our `/home/${USER}` 
1. Add your credentials to `.env-webdav` in base64 format. You should use the same that is defined [here](https://github.com/GridexX/keeweb#installation). To add it launch this command according to your credentials:
   ```bash
   echo "${USER}:${PASSWORD}" | base64 | tee -a .env-webdav
    ```
1. Update variables in `.env-webdav` according to your needs.
### Customization 
This section is optionnal and show an approach how to use KeepassXC with the file hosted on your WedDAV server.  

**⚠️ This section is related to KDE**

The goal is to overrides commands launched when opening KeepassXC.  
In KDE, we create application and specify commands to launch them. To do so :   
1. Install [KeepassXC](https://keepassxc.org/download/#linux) on your computer. 
1. Make sure to launch it with `keepass` command in terminal.
1. Clone this repository, go in the folder cloned and make script files executable :
    ```bash
    chmod u+X *.sh
    ```
1. Right click on `Application Launcher` and `Edit Applications` in the menu.
1. Add a custom entry `Keepass` and set a command to launch the `database_retrieve.sh` file (don't forget to use the path where the file is located).
1. Save the changes, you're now ready to use KeepassXC with Keeweb 😄.

**Tests**

To check if the script is working, open the `database_retrieve.sh` file and run it.
It should retrieve the database from Keeweb and save it in `${GK_PATH}/${GK_CONFIG_FILE}` file. 
Try to modify some entry with the KeepassXC application and check if the changes are repercuted on Keeweb.
