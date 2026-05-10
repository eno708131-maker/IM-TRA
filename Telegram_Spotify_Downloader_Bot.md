# Telegram Spotify Downloader Bot

Bot នេះត្រូវបានបង្កើតឡើងដើម្បីទាញយកបទចម្រៀងពី Spotify (Album ឬ Track) ជា MP3 ដោយប្រើប្រាស់ `spotdl` និង `python-telegram-bot`។

## តម្រូវការ (Prerequisites)

*   **Python 3.x**
*   **pip3** (Python package installer)
*   **ffmpeg**: សម្រាប់បម្លែង audio files។

## របៀបដំឡើង (Installation)

1.  **Clone repository នេះ (ឬ download source code)**

    ```bash
    git clone <repository_url>
    cd <repository_name>
    ```

    (ក្នុងករណីនេះ អ្នកនឹងទទួលបាន file `spotify_bot.py` ដោយផ្ទាល់)

2.  **ដំឡើង dependencies**

    ```bash
    sudo pip3 install spotdl python-telegram-bot
    ```

3.  **ទទួលបាន Telegram Bot Token**

    *   បើក Telegram ហើយស្វែងរក `@BotFather`។
    *   ចាប់ផ្តើម chat ជាមួយ `@BotFather` ហើយប្រើ command `/newbot`។
    *   ធ្វើតាមការណែនាំដើម្បីបង្កើត Bot ថ្មី ហើយអ្នកនឹងទទួលបាន **HTTP API Token**។

4.  **កែសម្រួល Bot Token ក្នុង code**

    បើក file `spotify_bot.py` ហើយប្តូរ `TOKEN` ទៅជា Token របស់អ្នក:

    ```python
    TOKEN = "YOUR_TELEGRAM_BOT_TOKEN_HERE"
    ```

    (ខ្ញុំបានដាក់ Token របស់អ្នកចូលរួចហើយក្នុង code ដែលខ្ញុំបានផ្តល់ឱ្យ)

## របៀបដំណើរការ (How to Run)

```bash
python3 spotify_bot.py
```

ដើម្បីដំណើរការ Bot ក្នុង background អ្នកអាចប្រើ `nohup` ឬ `screen`:

```bash
nohup python3 spotify_bot.py > bot.log 2>&1 &
```

## របៀបប្រើប្រាស់ (How to Use)

1.  ចាប់ផ្តើម chat ជាមួយ Bot របស់អ្នកក្នុង Telegram។
2.  ផ្ញើ command `/start`។
3.  ផ្ញើ Link Spotify Album ឬ Track ទៅកាន់ Bot។
4.  Bot នឹងចាប់ផ្តើមទាញយកបទចម្រៀង ហើយផ្ញើជា MP3 មកកាន់អ្នក។

## ចំណាំ (Important Notes)

*   **Rate Limit**: `spotdl` អាចនឹងជួបប្រទះបញ្ហា rate limit ពី Spotify ឬ YouTube ដែលអាចបណ្តាលឱ្យការទាញយកបរាជ័យជាបណ្តោះអាសន្ន។ បញ្ហានេះជាធម្មតាដោះស្រាយដោយខ្លួនឯងបន្ទាប់ពីរយៈពេលខ្លី។
*   **Storage**: Bot នឹងបង្កើត folder `downloads` ដើម្បីទុកឯកសារបណ្តោះអាសន្ន។ ឯកសារទាំងនេះនឹងត្រូវបានលុបដោយស្វ័យប្រវត្តិបន្ទាប់ពីត្រូវបានផ្ញើទៅកាន់អ្នកប្រើប្រាស់។

## Source Code

សូមមើល file `spotify_bot.py`។
