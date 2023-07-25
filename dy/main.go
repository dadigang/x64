package main

import (
	"fmt"
	"io"
	"net/http"
	"os"
)

func DownloadDouyinVideo(url string, filename string) error {
	response, err := http.Get(url)
	if err != nil {
		return err
	}
	defer response.Body.Close()

	file, err := os.Create(filename)
	if err != nil {
		return err
	}
	defer file.Close()

	_, err = io.Copy(file, response.Body)
	if err != nil {
		return err
	}

	return nil
}

func main() {
	videoURL := "https://www.douyin.com/video/7225813424251473163" // Replace with the actual video URL
	filename := "video.mp4"                                        // Replace with the desired filename

	err := DownloadDouyinVideo(videoURL, filename)
	if err != nil {
		fmt.Println("Error downloading video:", err)
		return
	}

	fmt.Println("Video downloaded successfully!")
}
