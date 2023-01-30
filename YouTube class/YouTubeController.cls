public with sharing class YouTubeController {
    private static final String SEARCH_ENDPOINT = 'https://www.googleapis.com/youtube/v3/search';
        private static final String API_KEY = 'AIzaSyAwdpxi7SfAmWccTYJx3AUxYHUYcEgRHMU'; //Put your API_KEY here 
    
        @AuraEnabled(cacheable=true)
        public static list<myWrapperData> getYouTubeVideos(string searchKey){
            searchKey = searchKey == null ? 'salesforce' : searchKey;
            // YouTube API Callouts
            Http http = new Http();
            HttpRequest req = new HttpRequest();
            Httpresponse res = null;
            String endpoint  = SEARCH_ENDPOINT +
            '?part=snippet' +
            '&maxResults=20' +
            '&type=video' +
            '&q=' + EncodingUtil.urlEncode(searchKey, 'UTF-8') +
            '&key=' + API_KEY;
    
            req.setEndPoint(endpoint);
            req.setMethod('GET');
            res = http.send(req);
    
            //Deserializing json data
            YouTubeJson.Response response = (YouTubeJson.Response)JSON.deserialize(res.getBody(), YouTubeJson.Response.class);
            List<YouTubeJson.Item> items  =  response.items;
    
            //Filling Wrapper Data for lightning component
            List<myWrapperData> wrp  = new List<myWrapperData>();
    
            for (YouTubeJson.Item itemObj : items) {
               myWrapperData YTWrap = new myWrapperData();
                YTWrap.videoId = itemObj.id.videoId;
                YTWrap.description = itemObj.Snippet.description;
                YTWrap.thumbnails = itemObj.Snippet.thumbnails.medium.url;
                YTWrap.title = itemObj.Snippet.title;
                YTWrap.channelTitle = itemObj.Snippet.channelTitle;
    
                wrp.add(YTWrap);
            }
            return wrp;
    
        }
        public class myWrapperData{
            @AuraEnabled public string videoId {get;set;}
            @AuraEnabled public string description {get;set;}
            @AuraEnabled public String thumbnails {get;set;}
            @AuraEnabled public String title {get;set;}
            @AuraEnabled public String channelTitle {get;set;}
            @AuraEnabled public String publishedAt  {get;set;}
        }
}