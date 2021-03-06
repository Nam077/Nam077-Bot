import request from "request";
import cheerio from "cheerio";
import axios from "axios";
require('dotenv').config();
const PAGE_ACCESS_TOKEN = process.env.PAGE_ACCESS_TOKEN;
let handleGetStarted = (sender_psid) => {
    return new Promise(async(reslove, reject) => {
        try {
            let username = await getUserName(sender_psid);
            let msgtime = checktime(username);
            let response = { "text": msgtime }
            let response2 = getImageGetStarted();
            let response3 = getStartedQuickReplyTemplate();
            await callSendAPI(sender_psid, response);
            await callSendAPI(sender_psid, response2);
            await callSendAPI(sender_psid, response3);
            reslove('done');
        } catch (e) {
            reject(e);
        }
    });

}
let sendTyping = (sender_psid) => {
    let request_body = {
            "recipient": {
                "id": sender_psid
            },
            "sender_action": "typing_on"
        }
        // Send the HTTP request to the Messenger Platform
    request({
        "uri": "https://graph.facebook.com/v9.0/me/messages",
        "qs": { "access_token": process.env.PAGE_ACCESS_TOKEN },
        "method": "POST",
        "json": request_body
    }, (err, res, body) => {
        if (!err) {
            console.log('sendTyping Ok')
        } else {
            console.error("Unable to send message:" + err);
        }
    });
}
let sendReadMessage = (sender_psid) => {
    let request_body = {
        "recipient": {
            "id": sender_psid
        },
        "sender_action": "mark_seen"
    }

    // Send the HTTP request to the Messenger Platform
    request({
        "uri": "https://graph.facebook.com/v9.0/me/messages",
        "qs": { "access_token": process.env.PAGE_ACCESS_TOKEN },
        "method": "POST",
        "json": request_body
    }, (err, res, body) => {
        if (!err) {
            console.log('sendTyping Ok')
        } else {
            console.error("Unable to send message:" + err);
        }
    });
}
let sendMessage = (sender_psid, name) => {
    let nameFont, linkFont, imageFont, messagebody;
    let config = require('../../font.json');
    let datafont = config;
    var item = datafont.find(item => item.key === name);
    messagebody = item['msg'].trim();
    nameFont = item['name'].trim();
    linkFont = item['link'].trim();
    imageFont = item['img'].trim();
    return new Promise(async(reslove, reject) => {
        try {
            let username = await getUserName(sender_psid);
            if (imageFont != null && imageFont != '') {
                let response2 = {
                    "attachment": {
                        "type": "image",
                        "payload": {

                            "url": imageFont,
                            "is_reusable": true
                        }
                    }

                }
                await callSendAPI(sender_psid, response2);
            }
            let message = `Ch??o ${username}\nT??i ???? nh???n ???????c y??u c???u t??? b???n\nT??n font: ${nameFont}\nLink download: ${linkFont}\n${messagebody}\n#NVNFONT`
            let response = {
                "attachment": {
                    "type": "template",
                    "payload": {
                        "template_type": "button",
                        "text": message,
                        "buttons": [{
                                "type": "web_url",
                                "url": linkFont,
                                "title": "T???i xu???ng"
                            },
                            {
                                "type": "postback",
                                "title": "Danh s??ch font h??? tr???",
                                "payload": "LIST_FONT",
                            }
                        ]
                    }
                }
            }
            await callSendAPI(sender_psid, response);
            reslove('done');
        } catch (e) {
            reject(e);
        }
    });
}
let sendTextMessage = (sender_psid, name) => {
    let config = require('../../data.json');
    var item = config.find(item => item.key === name);
    console.log(item);
    let respon = item['respone'].trim();
    let img = item['img'].trim();
    return new Promise(async(reslove, reject) => {
        try {
            let username = await getUserName(sender_psid);
            let response = { "text": respon }
            await callSendAPI(sender_psid, response);
            if (img != null && img != '') {
                let response2 = {
                    "attachment": {
                        "type": "image",
                        "payload": {

                            "url": img,
                            "is_reusable": true
                        }
                    }

                }
                await callSendAPI(sender_psid, response2);
            }
            reslove('done');

        } catch (e) {
            reject(e);
        }
    });
}

let callSendAPI = async(sender_psid, response) => {
    // Construct the message body
    return new Promise(async(reslove, reject) => {
        try {
            let request_body = {
                "recipient": {
                    "id": sender_psid
                },
                "message": response
            }
            await sendTyping(sender_psid);
            await sendReadMessage(sender_psid);

            // Send the HTTP request to the Messenger Platform
            request({
                "uri": "https://graph.facebook.com/v9.0/me/messages",
                "qs": { "access_token": process.env.PAGE_ACCESS_TOKEN },
                "method": "POST",
                "json": request_body
            }, (err, res, body) => {
                if (!err) {
                    reslove('message sent!')
                } else {
                    console.error("Unable to send message:" + err);
                }
            });
        } catch (e) {
            reject(e);
        }
    })

}

let stripAccents = (str) => {
    str = str.replace(/??|??|???|???|??|??|???|???|???|???|???|??|???|???|???|???|???/g, "a");
    str = str.replace(/??|??|???|???|???|??|???|???|???|???|???/g, "e");
    str = str.replace(/??|??|???|???|??/g, "i");
    str = str.replace(/??|??|???|???|??|??|???|???|???|???|???|??|???|???|???|???|???/g, "o");
    str = str.replace(/??|??|???|???|??|??|???|???|???|???|???/g, "u");
    str = str.replace(/???|??|???|???|???/g, "y");
    str = str.replace(/??/g, "d");
    str = str.replace(/??|??|???|???|??|??|???|???|???|???|???|??|???|???|???|???|???/g, "A");
    str = str.replace(/??|??|???|???|???|??|???|???|???|???|???/g, "E");
    str = str.replace(/??|??|???|???|??/g, "I");
    str = str.replace(/??|??|???|???|??|??|???|???|???|???|???|??|???|???|???|???|???/g, "O");
    str = str.replace(/??|??|???|???|??|??|???|???|???|???|???/g, "U");
    str = str.replace(/???|??|???|???|???/g, "Y");
    str = str.replace(/??/g, "D");
    return str;
}
let getFontSupport = async(sender_psid) => {
    let config = require('../../listfont.json');
    let configs = config;
    for (let i = 0; i < configs.length; i++) {
        console.log(configs[i].list);
        let response = { "text": configs[i].list }
        await callSendAPI(sender_psid, response);
    }
    return;

}
let getGooleSearch = async(sender_psid, message) => {
    console.log(message);
    console.log(sender_psid);
    const searchString = message;
    const encodedString = encodeURI(searchString);
    const AXIOS_OPTIONS = {
        headers: {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.57'
        },
    };
    const { data } = await axios
        .get(
            `https://www.google.com.vn/search?q=${encodedString}&hl=vi&gl=VN`,
            AXIOS_OPTIONS
        );
    let $ = cheerio.load(data);
    //H???i th??ng tin c?? b???n
    let infor = $(data).find("span.hgKElc").text();
    if (infor != null && infor != '') {

        let response = { "text": infor }
        await callSendAPI(sender_psid, response);
        return;
    }
    //H???i th??ng tin v??? n??m sinh
    let year = $(data).find("div.Z0LcW").text();
    if (year != null && year != '') {
        let response = { "text": year }
        await callSendAPI(sender_psid, response);
        console.log(infor);
        return;
    }
    // //Th???i ti???t
    let checkwheather = $(data).find("span#wob_tm").text();
    let wheather = `Th???i ti???t hi???n t???i t???i: ${$(data).find("div#wob_loc").text()}\n` +
        `Nhi???t ?????: ${$(data).find("span#wob_tm").text()} ??C\n` +
        `B???u tr???i: ${$(data).find("span#wob_dc").text()}\n` +
        `Kh??? n??ng c?? m??a: ${$(data).find("span#wob_pp").text()}\n` +
        `????? ???m: ${$(data).find("span#wob_hm").text()} %\n`;
    if (checkwheather != null && checkwheather != '') {
        let response = { "text": wheather }
        await callSendAPI(sender_psid, response);
        return;
    }
    //Gi?? Bitcoin
    let bitcoin = $(data).find("span.pclqee").text();
    if (bitcoin != null && bitcoin != '') {
        let response = {
            "text": bitcoin + ' ' + $(data).find("span.dvZgKd").text()
        }
        await callSendAPI(sender_psid, response);
        return;
    }
    //Ti???n t??? 
    let money = $(data).find("span.DFlfde.SwHCTb").text();
    if (money != null && money != '') {
        let response = { "text": money + ' ' + $(data).find("span.MWvIVe").text() }
        await callSendAPI(sender_psid, response);
        return;
    }
    let change_unit = $(data).find("div.dDoNo.vrBOv.vk_bk").text();
    if (change_unit != null && change_unit != '') {
        let response = { "text": change_unit }
        await callSendAPI(sender_psid, response);
        return;
    }
    let math = $(data).find("span.qv3Wpe").text();
    if (math != null && math != '') {
        let response = { "text": math }
        await callSendAPI(sender_psid, response);
        return;
    }
    //Kho???ng c??ch
    let far = $(data).find("div.LGOjhe").text();

    if (far != null && far != '') {
        let response = { "text": far }
        await callSendAPI(sender_psid, response);
        return;
    }
    //Ng??y th??nh l???p
    let datecreate = $(data).find("div.Z0LcW").text();
    if (datecreate != null && datecreate != '') {
        let response = { "text": datecreate }
        await callSendAPI(sender_psid, response);
        return;
    }
    //Thong tin 
    let information = $(data).find("div.kno-rdesc > span").first().text();
    if (information != null && information != '') {
        let response = { "text": information }
        await callSendAPI(sender_psid, response);
        return;
    }
    //d???ch
    let trans = $(data).find("pre.tw-data-text > span.Y2IQFc").last().text();
    if (trans != null && trans != '') {
        let response = { "text": trans }
        await callSendAPI(sender_psid, response);
        return;
    }
    //date
    let day = $(data).find("div.FzvWSb").text();
    if (day != null && day != '') {
        let response = { "text": day }
        await callSendAPI(sender_psid, response);
        return;
    }
    let time = $(data).find("div.YwPhnf").text();
    if (time != null && time != '') {
        let response = { "text": time }
        await callSendAPI(sender_psid, response);
        return;
    }
    //lyric
    let lyric = $(data).find("div.PZPZlf >div>div > span");
    let lyricsave;
    lyric.each(function(i, e) {
        lyricsave += $(this).text() + '\n';
    })
    console.log(lyricsave);
    if (lyricsave != null && lyricsave != '') {
        let response = { "text": lyricsave }
        await callSendAPI(sender_psid, response);
        return;
    }
    return;
}
let getUserName = async(sender_psid) => {
    return new Promise((reslove, reject) => {
        request({
            "uri": `https://graph.facebook.com/${sender_psid}?fields=first_name,last_name,name,profile_pic&access_token=${PAGE_ACCESS_TOKEN}`,
            "qs": { "access_token": process.env.PAGE_ACCESS_TOKEN },
            "method": "GET",
        }, (err, res, body) => {
            if (!err) {
                body = JSON.parse(body);
                let username = `${body.name}`;
                reslove(username)
            } else {
                console.error("Unable to send message:" + err);
                reject(err);
            }
        });
    });
}
let getStartedQuickReplyTemplate = () => {
    let respone = {
        "text": "B???n c???n t??i gi??p g?? kh??ng nh????",
        "quick_replies": [{
                "content_type": "text",
                "title": "HD S??? d???ng",
                "payload": "BOT_TUTORIAL"
            },
            {
                "content_type": "text",
                "title": "List Font h??? tr???",
                "payload": "LIST_FONT"
            },
            {
                "content_type": "text",
                "title": "Gi?? Vi???t h??a",
                "payload": "PRICE_SERVICE"
            }
        ]
    }
    return respone;

}
let getArraydatafromJson = (file) => {
    let config = require(`../../${file}.json`);
    let arr = [];
    for (let i = 0; i < config.length; i++) {
        arr.push(config[i].key);
    }
    return arr;
}
let getImageGetStarted = () => {
    let respone = {
        "attachment": {
            "type": "image",
            "payload": {

                "url": 'https://bit.ly/3sakE56',
                "is_reusable": true
            }
        }
    }
    return respone;
}
let getVideoTutorial = () => {
    let respone = {
        "attachment": {
            "type": "template",
            "payload": {
                "template_type": "media",
                "elements": [{
                    "media_type": "video",
                    "url": "https://business.facebook.com/nam077.official/videos/646647483033924/"
                }]
            }

        }
    }
    return respone;
}
let getTimeVietNam = () => {
    let time = new Date().toLocaleString('en-US', { timeZone: 'Asia/Ho_Chi_Minh' })
    return time
}
let checkKey = (arr, message) => {
    for (const element of arr) {
        if (message.indexOf(element) > -1) {
            return element;
        }
    }
}
let checktime = (username) => {
    let time = getTimeVietNam();
    let msgtime;
    time = new Date(time);
    time = time.getHours();
    if (time >= 5 && time <= 9) {
        msgtime = `Ch??o bu???i s??ng ${username}. Ch??c b???n bu???i s??ng t???i l??nh`;
    } else if (time >= 10 && time <= 17) {
        msgtime = `Ch??o bu???i chi???u ${username}. R???t vui ???????c g???p b???n`;
    } else if (time >= 18 && time <= 20) {
        msgtime = `Ch??o bu???i t???i ${username}. B???n ???? ??n t???i ch??a nh???`;
    } else if (time <= 23) {
        msgtime = `Ch??o bu???i t???i ${username}. khuya r???i b???n n??n ??i ng??? ??i`;
    } else if (time >= 0 && time <= 4) {
        msgtime = `Ch??o ${username}, t????ng t?? ai m?? ch??a ng??? n???a tr???i`;
    }
    return msgtime;

}
module.exports = {
    handleGetStarted: handleGetStarted,
    callSendAPI: callSendAPI,
    sendMessage: sendMessage,
    stripAccents: stripAccents,
    sendTextMessage: sendTextMessage,
    getFontSupport: getFontSupport,
    getArraydatafromJson: getArraydatafromJson,
    checkKey: checkKey,
    getTimeVietNam: getTimeVietNam,
    checktime: checktime,
    getUserName: getUserName,
    getGooleSearch: getGooleSearch,
    getVideoTutorial: getVideoTutorial,
}