--[[
    DO NOT RUN THIS FILE, THIS IS PURE META
]]

---@meta DISCORD

---@class DiscordBot
DiscordBot = {}

---Initializes the discord bot.
---@nodiscard
---@param token string the bot token
---@param guild string the guild id
---@return DiscordBot bot the bot object
function DiscordBot.create(token, guild) end

---Returns the `ChannelObject` for the given channel id.
---@nodiscard
---@param channel string the channel id
---@return ChannelObject? channel the channel object
function DiscordBot:getChannel(channel) end

---@enum DiscordBot.ChannelType
DiscordBot.ChannelType = {
    GUILD_TEXT = 0,
    DM = 1,
    GUILD_VOICE = 2,
    GROUP_DM = 3,
    GUILD_CATEGORY = 4,
    GUILD_ANNOUNCEMENT = 5,
    ANNOUNCEMENT_THREAD = 10,
    PUBLIC_THREAD = 11,
    PRIVATE_THREAD = 12,
    GUILD_STAGE_VOICE = 13,
    GUILD_DIRECTORY = 14,
    GUILD_FORUM = 15,
    GUILD_MEDIA = 16
}


---@class MessageReferenceStructure
---@field message_id string? id of the originating message
---@field channel_id string? id of the originating message's channel
---@field guild_id string? id of the originating message's guild
---@field fail_if_not_exits boolean? when sending, whether to error if the referenced message doesn't exist instead of sending as a normal (non-reply) message, default true

---@class PollCreateRequestObjectStructure
---@field question {text: string} the question of the poll
---@field answers {answer_id: integer, poll_media: {text: string}} the answers of the poll
---@field duration integer the duration of the poll in hours (max: 7 days)
---@field allow_multiselect boolean whether the poll allows multiple answers
---@field layout_type integer|1? the layout type of the poll (only 1?????)

---@class OverwriteObject
---@field id string role or user id
---@field type integer 0 for role, 1 for member
---@field allow string permissions allowed
---@field deny string permissions denied

---@class AvatarDecorationDataObject
---@field id string the avatar decoration hash
---@field sku_id string id of the avatar decorations SKU

---@class UserObject
---@field id string the id of the user
---@field username string the username of the user
---@field discriminator string the discriminator of the user
---@field avatar string? the avatar hash
---@field bot boolean? whether the user is a bot
---@field system boolean? whether the user is an official discord system user
---@field mfa_enabled boolean? whether the user has two factor enabled on their account
---@field banner string? the banner hash
---@field accent_color integer? the accent color of the user
---@field locale string? the locale of the user
---@field verified boolean? whether the user has verified their email
---@field email string? the email of the user
---@field flags integer? the flags of the user
---@field premium_type integer? the type of nitro subscription on a user's account
---@field public_flags integer? the public flags of the user
---@field avatar_decoration_data AvatarDecorationDataObject? data for the users avatar decoration

---@class ThreadMetadataObject
---@field archived boolean whether the thread is archived
---@field auto_archive_duration integer the duration in minutes before the thread is archived (60, 1440, 4320, 10080)
---@field archive_timestamp string the timestamp when the thread is archived
---@field locked boolean whether the thread is locked; when a thread is locked, only users with MANAGE_THREADS can unarchive it
---@field invitable boolean? whether non-moderators can add other non-moderators to a thread; only available on private threads
---@field create_timestamp string? the timestamp when the thread was created

---@class GuildMemberObject
---@field user UserObject? the user this guild member represents
---@field nick string? this users guild nickname
---@field roles string[] the roles of the member
---@field joined_at string the timestamp when the member joined the guild
---@field premium_since string? the timestamp when the user started boosting the guild
---@field deaf boolean whether the user is deafened in voice channels
---@field mute boolean whether the user is muted in voice channels
---@field flags integer guild member flags represented as a bit set, defaults to 0
---@field pending boolean? whether the user has not yet passed the guild's Membership Screening requirements
---@field permissions string? total permissions of the member in the channel, including overwrites, returned when in the interaction object
---@field communication_disabled_until string? when the user's timeout will expire and the user will be able to communicate in the guild again, null or a time in the past if the user is not timed out
---@field avatar_decoration_data AvatarDecorationDataObject? data for the users avatar decoration

---@class ThreadMemberObject
---@field id string? the id of the user
---@field user_id string? the id of the user
---@field join_timestamp string the timestamp when the user joined the thread
---@field flags integer the flags of the user in the thread
---@field member GuildMemberObject? the member object for the user

---@class DefaultReactionObject
---@field emoji_id string? the id of the emoji
---@field emoji_name string? the name of the emoji

---@class ChannelObject
---@field id string the id of the channel
---@field type integer the type of the channel
---@field guild_id string? the id of the guild
---@field position integer? the position of the channel
---@field permission_overwrites OverwriteObject[]? the permission overwrites of the channel
---@field name string? the name of the channel
---@field topic string? the topic of the channel
---@field nsfw boolean? whether the channel is nsfw
---@field last_message_id string? the id of the last message in the channel
---@field bitrate integer? the bitrate of the channel
---@field user_limit integer? the user limit of the channel
---@field rate_limit_per_user integer? the rate limit per user of the channel
---@field recipients UserObject[]? the recipients of the channel
---@field icon string? the icon hash of the channel
---@field owner_id string? the id of the channel owner
---@field application_id string? the application id of the channel
---@field parent_id string? the parent id of the channel
---@field last_pin_timestamp string? the timestamp of the last pinned message
---@field rtc_region string? the rtc region of the channel
---@field video_quality_mode integer? the video quality mode of the channel
---@field message_count integer? the message count of the channel
---@field member_count integer? an approximate count of users in a thread, stops counting at 50
---@field thread_metadata ThreadMetadataObject? thread-specific fields not needed by other channels
---@field member ThreadMemberObject? thread member object for the current user, if they have joined the thread
---@field default_auto_archive_duration integer? default duration for newly created threads, in minutes, to automatically archive after recent activity
---@field permissions string? computed permissions for the invoking user in the channel, including overwrites, only included when part of the resolved data received on a slash command interaction. This does not include implicit permissions, which may need to be checked separately
---@field flags integer? 
---@field total_message_sent integer? number of messages ever sent in a thread, it's similar to message_count on message creation, but will not decrement the number when a message is deleted
---@field available_tags string[]? tags that can be used
---@field applied_tags string[]? tags that have been applied to the channel
---@field default_reaction_emoji DefaultReactionObject? the default reaction emoji of the channel
---@field default_thread_rate_limit_per_user integer? the initial rate_limit_per_user to set on newly created threads in a channel. this field is copied to the thread at creation time and does not live update.
---@field default_sort_order integer? the default sort order of threads in a channel. 0 for oldest first, 1 for newest first
---@field default_forum_layout integer? the default forum layout of threads in a channel. 0 for list, 1 for grid

---@class ChannelObject_OPTIONAL
---@field id string? the id of the channel
---@field type integer? the type of the channel
---@field guild_id string? the id of the guild
---@field position integer? the position of the channel
---@field permission_overwrites OverwriteObject[]? the permission overwrites of the channel
---@field name string? the name of the channel
---@field topic string? the topic of the channel
---@field nsfw boolean? whether the channel is nsfw
---@field last_message_id string? the id of the last message in the channel
---@field bitrate integer? the bitrate of the channel
---@field user_limit integer? the user limit of the channel
---@field rate_limit_per_user integer? the rate limit per user of the channel
---@field recipients UserObject[]? the recipients of the channel
---@field icon string? the icon hash of the channel
---@field owner_id string? the id of the channel owner
---@field application_id string? the application id of the channel
---@field parent_id string? the parent id of the channel
---@field last_pin_timestamp string? the timestamp of the last pinned message
---@field rtc_region string? the rtc region of the channel
---@field video_quality_mode integer? the video quality mode of the channel
---@field message_count integer? the message count of the channel
---@field member_count integer? an approximate count of users in a thread, stops counting at 50
---@field thread_metadata ThreadMetadataObject? thread-specific fields not needed by other channels
---@field member ThreadMemberObject? thread member object for the current user, if they have joined the thread
---@field default_auto_archive_duration integer? default duration for newly created threads, in minutes, to automatically archive after recent activity
---@field permissions string? computed permissions for the invoking user in the channel, including overwrites, only included when part of the resolved data received on a slash command interaction. This does not include implicit permissions, which may need to be checked separately
---@field flags integer? 
---@field total_message_sent integer? number of messages ever sent in a thread, it's similar to message_count on message creation, but will not decrement the number when a message is deleted
---@field available_tags string[]? tags that can be used
---@field applied_tags string[]? tags that have been applied to the channel
---@field default_reaction_emoji DefaultReactionObject? the default reaction emoji of the channel
---@field default_thread_rate_limit_per_user integer? the initial rate_limit_per_user to set on newly created threads in a channel. this field is copied to the thread at creation time and does not live update.
---@field default_sort_order integer? the default sort order of threads in a channel. 0 for oldest first, 1 for newest first
---@field default_forum_layout integer? the default forum layout of threads in a channel. 0 for list, 1 for grid

---@class ChannelMentionObject
---@field id string the id of the channel
---@field guild_id string the id of the guild containing the channel
---@field type integer the type of the channel
---@field name string the name of the channel

---@class AttachmentObject
--todo

---@class MessageObject
---@field id string the id of the message
---@field channel_id string the id of the channel the message was sent in
---@field author UserObject the author of the message
---@field content string the content of the message
---@field timestamp string the timestamp of the message
---@field edited_timestamp string? the timestamp of the last time the message was edited
---@field tts boolean whether the message is text-to-speech
---@field mention_everyone boolean whether the message mentions everyone
---@field mentions UserObject[] the users specifically mentioned in the message
---@field mention_roles string[] the roles specifically mentioned in the message
---@field mention_channels ChannelMentionObject[] the channels specifically mentioned in the message
---@field attachments AttachmentObject[] the attachments in the message