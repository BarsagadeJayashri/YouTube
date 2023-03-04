YouTube-Integration-with-Salesforce
This file contains a solution for integrating YouTube with the Salesforce.  Salesforce and YouTube integration will help the users to search for knowledge videos within the platform.


Pre-requisites:
 In order to integrate the platform by using YouTube Data API to receive the video data from the YouTube platform.

- For this, create an API key and Endpoint from the google cloud console.
Go to below google cloud console to generate your YouTube API key :
https://console.developers.google.com


Features:
The solution is designed for the following processes:
1.	Create an Apex class called YouTubeController  in the Salesforce. Copy the content of YouTubeController .cls  file from the repository.
2.	Copy the content of YouTubeJson and create apex class in Salesforce to retrieve the required data from JSON and to store the variables in the apex class.
3.	Next, create Lightning Web component in VS code by using code of file called searchPlayerYouTube and deploy into the salesforce.

Usage:

Users will be able search and watch videos inside in Salesforce org. The weather information will be retrieved from the YouTube Data API and will be shown on the page.

