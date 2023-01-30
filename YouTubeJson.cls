public class YouTubeJson {
    public List<YouTubeJson.Item> items { get; set; }    
    public class Response {
        public String kind { get; set; }
        public String etag { get; set; }
        public String nextPageToken { get; set; }
        public String prevPageToken { get; set; }
        public YouTubeJson.PageInfo pageInfo { get; set; }
        public List<YouTubeJson.Item> items { get; set; }
    }
    
    public class PageInfo {
        public Integer totalResults { get; set; }
        public Integer resultsPerPage { get; set; }
    }
    
    public class Item {
        public String kind { get; set; }
        public String etag { get; set; }
        public YouTubeJson.Id id { get; set; }
        public YouTubeJson.Snippet snippet { get; set; }
    }
    
    public class Id {
        public String kind { get; set; }
        public String videoId { get; set; }
    }
    
    public class Snippet {
        public Datetime publishedAt { get; set; }
        public String channelId { get; set; }
        public String title { get; set; }
        public String description { get; set; }
        public YouTubeJson.Thumbnails thumbnails { get; set; }
        public String channelTitle { get; set; }
        public String liveBroadcastContent { get; set; }
    }
    
    public class Thumbnails {
        public YouTubeJson.Thumbnail medium { get; set; }
        public YouTubeJson.Thumbnail high { get; set; }
    }
    
    public class Thumbnail {
        public String url { get; set; }
    }
}