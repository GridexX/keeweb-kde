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