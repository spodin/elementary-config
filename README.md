# Elementary Config

**Elementary Config** is a set of resources and instructions I follow to set up a new development and working environment on  [elementary OS](https://elementary.io) powered machine.

![elementary OS Version](https://img.shields.io/badge/-0.5%20Juno-64b9f1.svg?logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAYAAAAfSC3RAAABjUlEQVQ4T13SPcjPYRTG8c%2BFwWuJsJiYJCLEyqIICSmSSGGgDDIwCIW8FLJTYvESJvUYngkZKINVGURSSo9SnqNb91%2F%2F3NPvdzrfc65znRNDr6rm4igW9%2FAvTMR73EjyZZCewUdV7cBenMcntP%2FpeIQJOIU7Se435i%2FYobW922HMw8Ve9DJa8nNcw2iD0%2BXdwmbsajKTnBhSMqN32lJVrXNTcKCB5%2FAMb%2FESK5P8HALbjE%2BSbOzqVmFTAx8nadV2Yk2SY%2F8Ztg7Lk1zp4Hw8bOCjJFur6jQ%2BJGmy%2F76qmoJ7zbQk33vsLhY28EGSbVV1HGNJbvaEybiNq0le9VgzbjaWNvBpkk1VtQKXkqyrqkW4gHNJXndoDzZgNx408CxGkoxW1Qja0n%2FgSJLPVTULZzANh7CsFRiso%2B2oSWuujmE93mAmpnYl96uqOdzWsX9wANt78sEk41XVdrcAH5N861IbdL0dQpKHwyfX4H19rhf%2FrWQ1TuJWg%2F6d3JD9c9psWILfGMckvOtH%2FnWQ%2BwddkrYPQjXONwAAAABJRU5ErkJggg%3D%3D)

## Download and Unpack

```bash
cd /tmp && \
curl -LOk https://github.com/spodin/elementary-config/archive/master.zip && \
unzip master.zip && \
rm master.zip
```

## Setup

1. `./install.sh`
2. `./appearance.sh`
3. `./terminal/ocean-theme.sh`

---

### IntelliJ IDEA

1. [Download](https://www.jetbrains.com/idea/download/#section=linux) Linux-related distribution (.tar.gz)
2. Import setting using File ⯈ Import Settings...

### New SSH Key Generation

1. Create a new ssh key, using the provided email as a label

    ```
    ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
    ```

2. Adding SSH key to the ssh-agent

   1. Start the ssh-agent in the background

       ```
       eval "$(ssh-agent -s)"
       ```

   2. Add SSH private key to the ssh-agent

       ```
       ssh-add ~/.ssh/id_rsa
       ```

### AppCenter Applications

- [AppEditor](https://appcenter.elementary.io/com.github.donadigo.appeditor.desktop)
