//
//  MyWiki.swift
//  MyWiki
//
//  Created by Seongchan Kang on 20/11/2018.
//  Copyright © 2018 Seongchan Kang. All rights reserved.
//

import Foundation
import ObjectMapper

class Wiki:Mappable {
    
    
    var text:String?
    var title:String?
    var pageid:Int?
    var tid:String?
    var timestamp:String?
    var mobilepageurl:String?
    var extract:String?
    var extract_html:String?
    var originalImageUrl:String?
    var thumnailImageUrl:String?
    var searchTitle:String?
    
    
    
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    
    
    func mapping(map: Map) {
        
        let loc = "pages.0"
        
        text <- map["text"]
        title <- map["\(loc).titles.normalized"]
        pageid <- map["\(loc).pageid"]
        searchTitle <- map["\(loc).title"]
        timestamp <- map["\(loc).timestamp"]
        mobilepageurl <- map["\(loc).mobile.page"]
        extract <- map["\(loc).extract"]
        extract_html <- map["\(loc).extract_html"]
        originalImageUrl <- map["\(loc).originalimage.source"]
        thumnailImageUrl <- map["\(loc).thumbnail.source"]

    }
    
}

//{
//    "text": "A fuel tank truck crashes and explodes in the Saudi Arabian capital Riyadh, killing 26 people and injuring 135.",
//    "pages": [
//    {
//    "type": "standard",
//    "title": "2012_Riyadh_truck_crash",
//    "displaytitle": "2012 Riyadh truck crash",
//    "namespace": {
//    "id": 0,
//    "text": ""
//    },
//    "titles": {
//    "canonical": "2012_Riyadh_truck_crash",
//    "normalized": "2012 Riyadh truck crash",
//    "display": "2012 Riyadh truck crash"
//    },
//    "pageid": 37522434,
//    "lang": "en",
//    "dir": "ltr",
//    "revision": "846723091",
//    "tid": "2e2af258-ca7d-11e8-b484-5312963d68ab",
//    "timestamp": "2018-06-20T14:10:14Z",
//    "content_urls": {
//    "desktop": {
//    "page": "https://en.wikipedia.org/wiki/2012_Riyadh_truck_crash",
//    "revisions": "https://en.wikipedia.org/wiki/2012_Riyadh_truck_crash?action=history",
//    "edit": "https://en.wikipedia.org/wiki/2012_Riyadh_truck_crash?action=edit",
//    "talk": "https://en.wikipedia.org/wiki/Talk:2012_Riyadh_truck_crash"
//    },
//    "mobile": {
//    "page": "https://en.m.wikipedia.org/wiki/2012_Riyadh_truck_crash",
//    "revisions": "https://en.m.wikipedia.org/wiki/Special:History/2012_Riyadh_truck_crash",
//    "edit": "https://en.m.wikipedia.org/wiki/2012_Riyadh_truck_crash?action=edit",
//    "talk": "https://en.m.wikipedia.org/wiki/Talk:2012_Riyadh_truck_crash"
//    }
//    },
//    "api_urls": {
//    "summary": "https://en.wikipedia.org/api/rest_v1/page/summary/2012_Riyadh_truck_crash",
//    "metadata": "https://en.wikipedia.org/api/rest_v1/page/metadata/2012_Riyadh_truck_crash",
//    "references": "https://en.wikipedia.org/api/rest_v1/page/references/2012_Riyadh_truck_crash",
//    "media": "https://en.wikipedia.org/api/rest_v1/page/media/2012_Riyadh_truck_crash",
//    "edit_html": "https://en.wikipedia.org/api/rest_v1/page/html/2012_Riyadh_truck_crash",
//    "talk_page_html": "https://en.wikipedia.org/api/rest_v1/page/html/Talk:2012_Riyadh_truck_crash"
//    },
//    "extract": "The 2012 Riyadh truck crash occurred on 1 November 2012, when a truck carrying fuel crashed into an intersection flyover in the east of Riyadh, the capital city of Saudi Arabia. The lorry hit a bridge pylon on Khureis Road and the petrol it was carrying leaked into the surroundings, and then ignited. Al Ekhbariya television reported that the blast killed 23 people outright and injured 111, with the death toll expected to rise even higher; although the Saudi health ministry reported the injury total was closer to 135. An Agence France-Presse photographer on the scene described widespread damage, with charred bodies and machinery being hauled from the wreckage. Due to the force of the blast, another truck fell off of the flyover. Amateur video showed black smoke billowing into the sky, visible throughout the city.",
//    "extract_html": "<p>The <b>2012 Riyadh truck crash</b> occurred on 1 November 2012, when a truck carrying fuel crashed into an intersection flyover in the east of Riyadh, the capital city of Saudi Arabia. The lorry hit a bridge pylon on Khureis Road and the petrol it was carrying leaked into the surroundings, and then ignited. Al Ekhbariya television reported that the blast killed 23 people outright and injured 111, with the death toll expected to rise even higher; although the Saudi health ministry reported the injury total was closer to 135. An Agence France-Presse photographer on the scene described widespread damage, with charred bodies and machinery being hauled from the wreckage. Due to the force of the blast, another truck fell off of the flyover. Amateur video showed black smoke billowing into the sky, visible throughout the city.</p>",
//    "normalizedtitle": "2012 Riyadh truck crash"
//    },
//    {
//    "type": "standard",
//    "title": "Saudi_Arabia",
//    "displaytitle": "Saudi Arabia",
//    "namespace": {
//    "id": 0,
//    "text": ""
//    },
//    "titles": {
//    "canonical": "Saudi_Arabia",
//    "normalized": "Saudi Arabia",
//    "display": "Saudi Arabia"
//    },
//    "pageid": 349303,
//    "thumbnail": {
//    "source": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/320px-Flag_of_Saudi_Arabia.svg.png",
//    "width": 320,
//    "height": 213
//    },
//    "originalimage": {
//    "source": "https://upload.wikimedia.org/wikipedia/commons/0/0d/Flag_of_Saudi_Arabia.svg",
//    "width": 750,
//    "height": 500
//    },
//    "lang": "en",
//    "dir": "ltr",
//    "revision": "869499059",
//    "tid": "26803890-eb92-11e8-8e7c-849ff0b78ff4",
//    "timestamp": "2018-11-19T00:28:40Z",
//    "description": "state in Western Asia",
//    "coordinates": {
//    "lat": 24,
//    "lon": 45
//    },
//    "content_urls": {
//    "desktop": {
//    "page": "https://en.wikipedia.org/wiki/Saudi_Arabia",
//    "revisions": "https://en.wikipedia.org/wiki/Saudi_Arabia?action=history",
//    "edit": "https://en.wikipedia.org/wiki/Saudi_Arabia?action=edit",
//    "talk": "https://en.wikipedia.org/wiki/Talk:Saudi_Arabia"
//    },
//    "mobile": {
//    "page": "https://en.m.wikipedia.org/wiki/Saudi_Arabia",
//    "revisions": "https://en.m.wikipedia.org/wiki/Special:History/Saudi_Arabia",
//    "edit": "https://en.m.wikipedia.org/wiki/Saudi_Arabia?action=edit",
//    "talk": "https://en.m.wikipedia.org/wiki/Talk:Saudi_Arabia"
//    }
//    },
//    "api_urls": {
//    "summary": "https://en.wikipedia.org/api/rest_v1/page/summary/Saudi_Arabia",
//    "metadata": "https://en.wikipedia.org/api/rest_v1/page/metadata/Saudi_Arabia",
//    "references": "https://en.wikipedia.org/api/rest_v1/page/references/Saudi_Arabia",
//    "media": "https://en.wikipedia.org/api/rest_v1/page/media/Saudi_Arabia",
//    "edit_html": "https://en.wikipedia.org/api/rest_v1/page/html/Saudi_Arabia",
//    "talk_page_html": "https://en.wikipedia.org/api/rest_v1/page/html/Talk:Saudi_Arabia"
//    },
//    "extract": "Saudi Arabia, officially the Kingdom of Saudi Arabia, is a country in Western Asia constituting the bulk of the Arabian Peninsula. With a land area of approximately 2,150,000 km2 (830,000 sq mi), Saudi Arabia is the largest sovereign state in the Middle East, geographically the fifth-largest in Asia, second-largest in the Arab world after Algeria and 12th-largest in the world. Saudi Arabia is bordered by Jordan and Iraq to the north, Kuwait to the northeast, Qatar, Bahrain, and the United Arab Emirates to the east, Oman to the southeast and Yemen to the south. It is separated from Israel and Egypt by the Gulf of Aqaba. It is the only nation with both a Red Sea coast and a Persian Gulf coast, and most of its terrain consists of arid desert, lowland and mountains. Saudi Arabia is the largest economy in the Middle East as of October 2018 and the 18th largest in the world.",
//    "extract_html": "<p><b>Saudi Arabia</b>, officially the <b>Kingdom of Saudi Arabia</b>, is a country in Western Asia constituting the bulk of the Arabian Peninsula. With a land area of approximately 2,150,000 km<sup>2</sup> (830,000 sq mi), Saudi Arabia is the largest sovereign state in the Middle East, geographically the fifth-largest in Asia, second-largest in the Arab world after Algeria and 12th-largest in the world. Saudi Arabia is bordered by Jordan and Iraq to the north, Kuwait to the northeast, Qatar, Bahrain, and the United Arab Emirates to the east, Oman to the southeast and Yemen to the south. It is separated from Israel and Egypt by the Gulf of Aqaba. It is the only nation with both a Red Sea coast and a Persian Gulf coast, and most of its terrain consists of arid desert, lowland and mountains. Saudi Arabia is the largest economy in the Middle East as of October 2018 and the 18th largest in the world.</p>",
//    "normalizedtitle": "Saudi Arabia"
//    },
//    {
//    "type": "standard",
//    "title": "Riyadh",
//    "displaytitle": "Riyadh",
//    "namespace": {
//    "id": 0,
//    "text": ""
//    },
//    "titles": {
//    "canonical": "Riyadh",
//    "normalized": "Riyadh",
//    "display": "Riyadh"
//    },
//    "pageid": 51554,
//    "thumbnail": {
//    "source": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Riad_collage.jpg/320px-Riad_collage.jpg",
//    "width": 320,
//    "height": 284
//    },
//    "originalimage": {
//    "source": "https://upload.wikimedia.org/wikipedia/commons/c/c8/Riad_collage.jpg",
//    "width": 3328,
//    "height": 2952
//    },
//    "lang": "en",
//    "dir": "ltr",
//    "revision": "866028862",
//    "tid": "eb53ade0-e869-11e8-9a91-30550b372c00",
//    "timestamp": "2018-10-27T20:16:35Z",
//    "description": "Capital city in Saudi Arabia",
//    "coordinates": {
//    "lat": 24.63333333,
//    "lon": 46.71666667
//    },
//    "content_urls": {
//    "desktop": {
//    "page": "https://en.wikipedia.org/wiki/Riyadh",
//    "revisions": "https://en.wikipedia.org/wiki/Riyadh?action=history",
//    "edit": "https://en.wikipedia.org/wiki/Riyadh?action=edit",
//    "talk": "https://en.wikipedia.org/wiki/Talk:Riyadh"
//    },
//    "mobile": {
//    "page": "https://en.m.wikipedia.org/wiki/Riyadh",
//    "revisions": "https://en.m.wikipedia.org/wiki/Special:History/Riyadh",
//    "edit": "https://en.m.wikipedia.org/wiki/Riyadh?action=edit",
//    "talk": "https://en.m.wikipedia.org/wiki/Talk:Riyadh"
//    }
//    },
//    "api_urls": {
//    "summary": "https://en.wikipedia.org/api/rest_v1/page/summary/Riyadh",
//    "metadata": "https://en.wikipedia.org/api/rest_v1/page/metadata/Riyadh",
//    "references": "https://en.wikipedia.org/api/rest_v1/page/references/Riyadh",
//    "media": "https://en.wikipedia.org/api/rest_v1/page/media/Riyadh",
//    "edit_html": "https://en.wikipedia.org/api/rest_v1/page/html/Riyadh",
//    "talk_page_html": "https://en.wikipedia.org/api/rest_v1/page/html/Talk:Riyadh"
//    },
//    "extract": "Riyadh is the capital and most populous city of Saudi Arabia, approximately 790 km (491 mi) North-east of Mecca. It is also the capital of Riyadh Province and belongs to the historical regions of Najd and Al-Yamama. It is situated in the centre of the Arabian Peninsula on a large plateau and home to more than six million people.",
//    "extract_html": "<p><b>Riyadh</b> is the capital and most populous city of Saudi Arabia, approximately 790 km (491 mi) North-east of Mecca. It is also the capital of Riyadh Province and belongs to the historical regions of Najd and Al-Yamama. It is situated in the centre of the Arabian Peninsula on a large plateau and home to more than six million people.</p>",
//    "normalizedtitle": "Riyadh"
//    }
//    ],
//    "year": 2012
//}
