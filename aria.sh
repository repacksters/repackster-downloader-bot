echo "[setup] Adding Trackers...."
tracker_list=$(curl -s https://trackerslist.com/all_aria2.txt)
echo "bt-tracker=$tracker_list" >> aria2c.conf


export MAX_DOWNLOAD_SPEED=0
export MAX_CONCURRENT_DOWNLOADS=4
aria2c --conf-path=aria2c.conf \
   --daemon=true --allow-overwrite=true --max-overall-download-limit=$MAX_DOWNLOAD_SPEED \
   --max-overall-upload-limit=1K --max-concurrent-downloads=$MAX_CONCURRENT_DOWNLOADS
