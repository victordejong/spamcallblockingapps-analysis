.class public Lio/agora/rtm/jni/AgoraRtmServiceJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lio/agora/common/AgoraServiceJNI;->ensureNativeInitialized()Z

    .line 2
    invoke-static {}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->swig_module_init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native ChannelAttributeOptions_enableNotificationToChannelMembers_get(JLio/agora/rtm/jni/IChannelAttributeOptions;)Z
.end method

.method public static final native ChannelAttributeOptions_enableNotificationToChannelMembers_set(JLio/agora/rtm/jni/IChannelAttributeOptions;Z)V
.end method

.method public static final native IChannelEventHandler_change_ownership(Lio/agora/rtm/jni/IChannelEventHandler;JZ)V
.end method

.method public static final native IChannelEventHandler_director_connect(Lio/agora/rtm/jni/IChannelEventHandler;JZZ)V
.end method

.method public static final native IChannelMember_getChannelId(JLio/agora/rtm/jni/IChannelMember;)Ljava/lang/String;
.end method

.method public static final native IChannelMember_getUserId(JLio/agora/rtm/jni/IChannelMember;)Ljava/lang/String;
.end method

.method public static final native IChannelMember_release(JLio/agora/rtm/jni/IChannelMember;)V
.end method

.method public static final native IChannel_getId(JLio/agora/rtm/jni/IChannel;)Ljava/lang/String;
.end method

.method public static final native IChannel_getMembers(JLio/agora/rtm/jni/IChannel;)I
.end method

.method public static final native IChannel_join(JLio/agora/rtm/jni/IChannel;)I
.end method

.method public static final native IChannel_leave(JLio/agora/rtm/jni/IChannel;)I
.end method

.method public static final native IChannel_release(JLio/agora/rtm/jni/IChannel;)V
.end method

.method public static final native IChannel_sendMessage__SWIG_0(JLio/agora/rtm/jni/IChannel;JLio/agora/rtm/jni/IMessage;)I
.end method

.method public static final native IChannel_sendMessage__SWIG_1(JLio/agora/rtm/jni/IChannel;JLio/agora/rtm/jni/IMessage;JLio/agora/rtm/jni/ISendMessageOptions;)I
.end method

.method public static final native IFileMessage_SWIGUpcast(J)J
.end method

.method public static final native IFileMessage_getFileName(JLio/agora/rtm/jni/IFileMessage;)Ljava/lang/String;
.end method

.method public static final native IFileMessage_getMediaId(JLio/agora/rtm/jni/IFileMessage;)Ljava/lang/String;
.end method

.method public static final native IFileMessage_getSize(JLio/agora/rtm/jni/IFileMessage;)J
.end method

.method public static final native IFileMessage_getThumbnailData(JLio/agora/rtm/jni/IFileMessage;)[B
.end method

.method public static final native IFileMessage_getThumbnailLength(JLio/agora/rtm/jni/IFileMessage;)J
.end method

.method public static final native IFileMessage_setFileName(JLio/agora/rtm/jni/IFileMessage;Ljava/lang/String;)V
.end method

.method public static final native IFileMessage_setSize(JLio/agora/rtm/jni/IFileMessage;J)V
.end method

.method public static final native IFileMessage_setThumbnail(JLio/agora/rtm/jni/IFileMessage;[BI)V
.end method

.method public static final native IImageMessage_SWIGUpcast(J)J
.end method

.method public static final native IImageMessage_getFileName(JLio/agora/rtm/jni/IImageMessage;)Ljava/lang/String;
.end method

.method public static final native IImageMessage_getHeight(JLio/agora/rtm/jni/IImageMessage;)I
.end method

.method public static final native IImageMessage_getMediaId(JLio/agora/rtm/jni/IImageMessage;)Ljava/lang/String;
.end method

.method public static final native IImageMessage_getSize(JLio/agora/rtm/jni/IImageMessage;)J
.end method

.method public static final native IImageMessage_getThumbnailData(JLio/agora/rtm/jni/IImageMessage;)[B
.end method

.method public static final native IImageMessage_getThumbnailHeight(JLio/agora/rtm/jni/IImageMessage;)I
.end method

.method public static final native IImageMessage_getThumbnailLength(JLio/agora/rtm/jni/IImageMessage;)J
.end method

.method public static final native IImageMessage_getThumbnailWidth(JLio/agora/rtm/jni/IImageMessage;)I
.end method

.method public static final native IImageMessage_getWidth(JLio/agora/rtm/jni/IImageMessage;)I
.end method

.method public static final native IImageMessage_setFileName(JLio/agora/rtm/jni/IImageMessage;Ljava/lang/String;)V
.end method

.method public static final native IImageMessage_setHeight(JLio/agora/rtm/jni/IImageMessage;I)V
.end method

.method public static final native IImageMessage_setSize(JLio/agora/rtm/jni/IImageMessage;J)V
.end method

.method public static final native IImageMessage_setThumbnail(JLio/agora/rtm/jni/IImageMessage;[BJ)V
.end method

.method public static final native IImageMessage_setThumbnailHeight(JLio/agora/rtm/jni/IImageMessage;I)V
.end method

.method public static final native IImageMessage_setThumbnailWidth(JLio/agora/rtm/jni/IImageMessage;I)V
.end method

.method public static final native IImageMessage_setWidth(JLio/agora/rtm/jni/IImageMessage;I)V
.end method

.method public static final native ILocalCallInvitation_getCalleeId(JLio/agora/rtm/jni/ILocalCallInvitation;)Ljava/lang/String;
.end method

.method public static final native ILocalCallInvitation_getChannelId(JLio/agora/rtm/jni/ILocalCallInvitation;)Ljava/lang/String;
.end method

.method public static final native ILocalCallInvitation_getContent(JLio/agora/rtm/jni/ILocalCallInvitation;)Ljava/lang/String;
.end method

.method public static final native ILocalCallInvitation_getResponse(JLio/agora/rtm/jni/ILocalCallInvitation;)Ljava/lang/String;
.end method

.method public static final native ILocalCallInvitation_getState(JLio/agora/rtm/jni/ILocalCallInvitation;)I
.end method

.method public static final native ILocalCallInvitation_release(JLio/agora/rtm/jni/ILocalCallInvitation;)V
.end method

.method public static final native ILocalCallInvitation_setChannelId(JLio/agora/rtm/jni/ILocalCallInvitation;Ljava/lang/String;)V
.end method

.method public static final native ILocalCallInvitation_setContent(JLio/agora/rtm/jni/ILocalCallInvitation;Ljava/lang/String;)V
.end method

.method public static final native IMessage_getMessageId(JLio/agora/rtm/jni/IMessage;)J
.end method

.method public static final native IMessage_getMessageType(JLio/agora/rtm/jni/IMessage;)I
.end method

.method public static final native IMessage_getRawMessageData(JLio/agora/rtm/jni/IMessage;)[B
.end method

.method public static final native IMessage_getRawMessageLength(JLio/agora/rtm/jni/IMessage;)I
.end method

.method public static final native IMessage_getServerReceivedTs(JLio/agora/rtm/jni/IMessage;)J
.end method

.method public static final native IMessage_getText(JLio/agora/rtm/jni/IMessage;)Ljava/lang/String;
.end method

.method public static final native IMessage_isOfflineMessage(JLio/agora/rtm/jni/IMessage;)Z
.end method

.method public static final native IMessage_release(JLio/agora/rtm/jni/IMessage;)V
.end method

.method public static final native IMessage_setText(JLio/agora/rtm/jni/IMessage;Ljava/lang/String;)V
.end method

.method public static final native IRemoteCallInvitation_getCallerId(JLio/agora/rtm/jni/IRemoteCallInvitation;)Ljava/lang/String;
.end method

.method public static final native IRemoteCallInvitation_getChannelId(JLio/agora/rtm/jni/IRemoteCallInvitation;)Ljava/lang/String;
.end method

.method public static final native IRemoteCallInvitation_getContent(JLio/agora/rtm/jni/IRemoteCallInvitation;)Ljava/lang/String;
.end method

.method public static final native IRemoteCallInvitation_getResponse(JLio/agora/rtm/jni/IRemoteCallInvitation;)Ljava/lang/String;
.end method

.method public static final native IRemoteCallInvitation_getState(JLio/agora/rtm/jni/IRemoteCallInvitation;)I
.end method

.method public static final native IRemoteCallInvitation_release(JLio/agora/rtm/jni/IRemoteCallInvitation;)V
.end method

.method public static final native IRemoteCallInvitation_setResponse(JLio/agora/rtm/jni/IRemoteCallInvitation;Ljava/lang/String;)V
.end method

.method public static final native IRtmCallEventHandler_change_ownership(Lio/agora/rtm/jni/IRtmCallEventHandler;JZ)V
.end method

.method public static final native IRtmCallEventHandler_director_connect(Lio/agora/rtm/jni/IRtmCallEventHandler;JZZ)V
.end method

.method public static final native IRtmCallManager_acceptRemoteInvitation(JLio/agora/rtm/jni/IRtmCallManager;JLio/agora/rtm/jni/IRemoteCallInvitation;)I
.end method

.method public static final native IRtmCallManager_cancelLocalInvitation(JLio/agora/rtm/jni/IRtmCallManager;JLio/agora/rtm/jni/ILocalCallInvitation;)I
.end method

.method public static final native IRtmCallManager_createLocalCallInvitation(JLio/agora/rtm/jni/IRtmCallManager;Ljava/lang/String;)J
.end method

.method public static final native IRtmCallManager_refuseRemoteInvitation(JLio/agora/rtm/jni/IRtmCallManager;JLio/agora/rtm/jni/IRemoteCallInvitation;)I
.end method

.method public static final native IRtmCallManager_release(JLio/agora/rtm/jni/IRtmCallManager;)V
.end method

.method public static final native IRtmCallManager_sendLocalInvitation(JLio/agora/rtm/jni/IRtmCallManager;JLio/agora/rtm/jni/ILocalCallInvitation;)I
.end method

.method public static final native IRtmServiceEventHandler_change_ownership(Lio/agora/rtm/jni/IRtmServiceEventHandler;JZ)V
.end method

.method public static final native IRtmServiceEventHandler_director_connect(Lio/agora/rtm/jni/IRtmServiceEventHandler;JZZ)V
.end method

.method public static final native IRtmService_addEventHandler(JLio/agora/rtm/jni/IRtmService;JLio/agora/rtm/jni/IRtmServiceEventHandler;)V
.end method

.method public static final native IRtmService_addOrUpdateChannelAttributes(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;JIJJ)I
.end method

.method public static final native IRtmService_addOrUpdateLocalUserAttributes(JLio/agora/rtm/jni/IRtmService;JIJ)I
.end method

.method public static final native IRtmService_cancelMediaDownload(JLio/agora/rtm/jni/IRtmService;J)I
.end method

.method public static final native IRtmService_cancelMediaUpload(JLio/agora/rtm/jni/IRtmService;J)I
.end method

.method public static final native IRtmService_clearChannelAttributes(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;JJ)I
.end method

.method public static final native IRtmService_clearLocalUserAttributes(JLio/agora/rtm/jni/IRtmService;J)I
.end method

.method public static final native IRtmService_createChannel(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;JLio/agora/rtm/jni/IChannelEventHandler;)J
.end method

.method public static final native IRtmService_createFileMessageByMediaId(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;)J
.end method

.method public static final native IRtmService_createFileMessageByUploading(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;J)I
.end method

.method public static final native IRtmService_createImageMessageByMediaId(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;)J
.end method

.method public static final native IRtmService_createImageMessageByUploading(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;J)I
.end method

.method public static final native IRtmService_createMessage__SWIG_0(JLio/agora/rtm/jni/IRtmService;)J
.end method

.method public static final native IRtmService_createMessage__SWIG_1(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;)J
.end method

.method public static final native IRtmService_createMessage__SWIG_2(JLio/agora/rtm/jni/IRtmService;[BI)J
.end method

.method public static final native IRtmService_createMessage__SWIG_3(JLio/agora/rtm/jni/IRtmService;[BILjava/lang/String;)J
.end method

.method public static final native IRtmService_deleteChannelAttributesByKeys(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;[Ljava/lang/String;IJJ)I
.end method

.method public static final native IRtmService_deleteLocalUserAttributesByKeys(JLio/agora/rtm/jni/IRtmService;[Ljava/lang/String;IJ)I
.end method

.method public static final native IRtmService_downloadMediaToFile(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;Ljava/lang/String;J)I
.end method

.method public static final native IRtmService_downloadMediaToMemory(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;J)I
.end method

.method public static final native IRtmService_getChannelAttributes(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;J)I
.end method

.method public static final native IRtmService_getChannelAttributesByKeys(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;[Ljava/lang/String;IJ)I
.end method

.method public static final native IRtmService_getChannelMemberCount(JLio/agora/rtm/jni/IRtmService;[Ljava/lang/String;IJ)I
.end method

.method public static final native IRtmService_getRtmCallManager(JLio/agora/rtm/jni/IRtmService;JLio/agora/rtm/jni/IRtmCallEventHandler;)J
.end method

.method public static final native IRtmService_getUserAttributes(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;J)I
.end method

.method public static final native IRtmService_getUserAttributesByKeys(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;[Ljava/lang/String;IJ)I
.end method

.method public static final native IRtmService_initialize(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;JLio/agora/rtm/jni/IRtmServiceEventHandler;)I
.end method

.method public static final native IRtmService_login(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static final native IRtmService_logout(JLio/agora/rtm/jni/IRtmService;)I
.end method

.method public static final native IRtmService_queryPeersBySubscriptionOption(JLio/agora/rtm/jni/IRtmService;IJ)I
.end method

.method public static final native IRtmService_queryPeersOnlineStatus(JLio/agora/rtm/jni/IRtmService;[Ljava/lang/String;IJ)I
.end method

.method public static final native IRtmService_release__SWIG_0(JLio/agora/rtm/jni/IRtmService;Z)V
.end method

.method public static final native IRtmService_release__SWIG_1(JLio/agora/rtm/jni/IRtmService;)V
.end method

.method public static final native IRtmService_removeEventHandler(JLio/agora/rtm/jni/IRtmService;JLio/agora/rtm/jni/IRtmServiceEventHandler;)V
.end method

.method public static final native IRtmService_renewToken(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;)I
.end method

.method public static final native IRtmService_sendMessageToPeer__SWIG_0(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;JLio/agora/rtm/jni/IMessage;)I
.end method

.method public static final native IRtmService_sendMessageToPeer__SWIG_1(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;JLio/agora/rtm/jni/IMessage;JLio/agora/rtm/jni/ISendMessageOptions;)I
.end method

.method public static final native IRtmService_setChannelAttributes(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;JIJJ)I
.end method

.method public static final native IRtmService_setLocalUserAttributes(JLio/agora/rtm/jni/IRtmService;JIJ)I
.end method

.method public static final native IRtmService_setLogFile(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;)I
.end method

.method public static final native IRtmService_setLogFileSize(JLio/agora/rtm/jni/IRtmService;I)I
.end method

.method public static final native IRtmService_setLogFilter(JLio/agora/rtm/jni/IRtmService;I)I
.end method

.method public static final native IRtmService_setParameters(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;)I
.end method

.method public static final native IRtmService_subscribePeersOnlineStatus(JLio/agora/rtm/jni/IRtmService;[Ljava/lang/String;IJ)I
.end method

.method public static final native IRtmService_unsubscribePeersOnlineStatus(JLio/agora/rtm/jni/IRtmService;[Ljava/lang/String;IJ)I
.end method

.method public static final native MediaOperationProgress_currentSize_get(JLio/agora/rtm/jni/MediaOperationProgress;)J
.end method

.method public static final native MediaOperationProgress_currentSize_set(JLio/agora/rtm/jni/MediaOperationProgress;J)V
.end method

.method public static final native MediaOperationProgress_totalSize_get(JLio/agora/rtm/jni/MediaOperationProgress;)J
.end method

.method public static final native MediaOperationProgress_totalSize_set(JLio/agora/rtm/jni/MediaOperationProgress;J)V
.end method

.method public static final native PeerOnlineStatus_isOnline_get(JLio/agora/rtm/jni/PeerOnlineStatus;)Z
.end method

.method public static final native PeerOnlineStatus_isOnline_set(JLio/agora/rtm/jni/PeerOnlineStatus;Z)V
.end method

.method public static final native PeerOnlineStatus_onlineState_get(JLio/agora/rtm/jni/PeerOnlineStatus;)I
.end method

.method public static final native PeerOnlineStatus_onlineState_set(JLio/agora/rtm/jni/PeerOnlineStatus;I)V
.end method

.method public static final native PeerOnlineStatus_peerId_get(JLio/agora/rtm/jni/PeerOnlineStatus;)Ljava/lang/String;
.end method

.method public static final native PeerOnlineStatus_peerId_set(JLio/agora/rtm/jni/PeerOnlineStatus;Ljava/lang/String;)V
.end method

.method public static final native RtmAttribute_key_get(JLio/agora/rtm/jni/IRtmAttribute;)Ljava/lang/String;
.end method

.method public static final native RtmAttribute_key_set(JLio/agora/rtm/jni/IRtmAttribute;Ljava/lang/String;)V
.end method

.method public static final native RtmAttribute_value_get(JLio/agora/rtm/jni/IRtmAttribute;)Ljava/lang/String;
.end method

.method public static final native RtmAttribute_value_set(JLio/agora/rtm/jni/IRtmAttribute;Ljava/lang/String;)V
.end method

.method public static final native RtmChannelAttribute_LastUpdateTs_get(JLio/agora/rtm/jni/IRtmChannelAttribute;)J
.end method

.method public static final native RtmChannelAttribute_LastUpdateUserId_get(JLio/agora/rtm/jni/IRtmChannelAttribute;)Ljava/lang/String;
.end method

.method public static final native RtmChannelAttribute_key_get(JLio/agora/rtm/jni/IRtmChannelAttribute;)Ljava/lang/String;
.end method

.method public static final native RtmChannelAttribute_key_set(JLio/agora/rtm/jni/IRtmChannelAttribute;Ljava/lang/String;)V
.end method

.method public static final native RtmChannelAttribute_value_get(JLio/agora/rtm/jni/IRtmChannelAttribute;)Ljava/lang/String;
.end method

.method public static final native RtmChannelAttribute_value_set(JLio/agora/rtm/jni/IRtmChannelAttribute;Ljava/lang/String;)V
.end method

.method public static final native RtmChannelMemberCount_channelID_get(JLio/agora/rtm/jni/IRtmChannelMemberCount;)Ljava/lang/String;
.end method

.method public static final native RtmChannelMemberCount_channelID_set(JLio/agora/rtm/jni/IRtmChannelMemberCount;Ljava/lang/String;)V
.end method

.method public static final native RtmChannelMemberCount_memberCount_get(JLio/agora/rtm/jni/IRtmChannelMemberCount;)I
.end method

.method public static final native RtmChannelMemberCount_memberCount_set(JLio/agora/rtm/jni/IRtmChannelMemberCount;I)V
.end method

.method public static final native RtmServiceContext_areaCode_get(JLio/agora/rtm/jni/RtmServiceContext;)I
.end method

.method public static final native RtmServiceContext_areaCode_set(JLio/agora/rtm/jni/RtmServiceContext;I)V
.end method

.method public static final native SendMessageOptions_enableHistoricalMessaging_get(JLio/agora/rtm/jni/ISendMessageOptions;)Z
.end method

.method public static final native SendMessageOptions_enableHistoricalMessaging_set(JLio/agora/rtm/jni/ISendMessageOptions;Z)V
.end method

.method public static final native SendMessageOptions_enableOfflineMessaging_get(JLio/agora/rtm/jni/ISendMessageOptions;)Z
.end method

.method public static final native SendMessageOptions_enableOfflineMessaging_set(JLio/agora/rtm/jni/ISendMessageOptions;Z)V
.end method

.method public static SwigDirector_IChannelEventHandler_onAttributesUpdated(Lio/agora/rtm/jni/IChannelEventHandler;JI)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_0

    .line 2
    new-instance v3, Lio/agora/rtm/jni/IRtmChannelAttribute;

    invoke-static {p1, p2, v2}, Lio/agora/common/AgoraServiceJNI;->getPointerArrayElement(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v1}, Lio/agora/rtm/jni/IRtmChannelAttribute;-><init>(JZ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lio/agora/rtm/jni/IChannelEventHandler;->onAttributesUpdated(Ljava/util/List;)V

    return-void
.end method

.method public static SwigDirector_IChannelEventHandler_onFileMessageReceived(Lio/agora/rtm/jni/IChannelEventHandler;Ljava/lang/String;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lio/agora/rtm/jni/IFileMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lio/agora/rtm/jni/IFileMessage;-><init>(JZ)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lio/agora/rtm/jni/IChannelEventHandler;->onFileMessageReceived(Ljava/lang/String;Lio/agora/rtm/jni/IFileMessage;)V

    return-void
.end method

.method public static SwigDirector_IChannelEventHandler_onGetMembers(Lio/agora/rtm/jni/IChannelEventHandler;JII)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    if-nez p4, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_0

    .line 2
    new-instance v3, Lio/agora/rtm/jni/IChannelMember;

    invoke-static {p1, p2, v2}, Lio/agora/common/AgoraServiceJNI;->getPointerArrayElement(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v1}, Lio/agora/rtm/jni/IChannelMember;-><init>(JZ)V

    .line 3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p4}, Lio/agora/rtm/jni/GET_MEMBERS_ERR;->swigToEnum(I)Lio/agora/rtm/jni/GET_MEMBERS_ERR;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/agora/rtm/jni/IChannelEventHandler;->onGetMembers(Ljava/util/List;Lio/agora/rtm/jni/GET_MEMBERS_ERR;)V

    return-void
.end method

.method public static SwigDirector_IChannelEventHandler_onImageMessageReceived(Lio/agora/rtm/jni/IChannelEventHandler;Ljava/lang/String;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lio/agora/rtm/jni/IImageMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lio/agora/rtm/jni/IImageMessage;-><init>(JZ)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lio/agora/rtm/jni/IChannelEventHandler;->onImageMessageReceived(Ljava/lang/String;Lio/agora/rtm/jni/IImageMessage;)V

    return-void
.end method

.method public static SwigDirector_IChannelEventHandler_onJoinFailure(Lio/agora/rtm/jni/IChannelEventHandler;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/agora/rtm/jni/JOIN_CHANNEL_ERR;->swigToEnum(I)Lio/agora/rtm/jni/JOIN_CHANNEL_ERR;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtm/jni/IChannelEventHandler;->onJoinFailure(Lio/agora/rtm/jni/JOIN_CHANNEL_ERR;)V

    return-void
.end method

.method public static SwigDirector_IChannelEventHandler_onJoinSuccess(Lio/agora/rtm/jni/IChannelEventHandler;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/agora/rtm/jni/IChannelEventHandler;->onJoinSuccess()V

    return-void
.end method

.method public static SwigDirector_IChannelEventHandler_onLeave(Lio/agora/rtm/jni/IChannelEventHandler;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->swigToEnum(I)Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtm/jni/IChannelEventHandler;->onLeave(Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;)V

    return-void
.end method

.method public static SwigDirector_IChannelEventHandler_onMemberCountUpdated(Lio/agora/rtm/jni/IChannelEventHandler;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/agora/rtm/jni/IChannelEventHandler;->onMemberCountUpdated(I)V

    return-void
.end method

.method public static SwigDirector_IChannelEventHandler_onMemberJoined(Lio/agora/rtm/jni/IChannelEventHandler;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lio/agora/rtm/jni/IChannelMember;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/agora/rtm/jni/IChannelMember;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lio/agora/rtm/jni/IChannelEventHandler;->onMemberJoined(Lio/agora/rtm/jni/IChannelMember;)V

    return-void
.end method

.method public static SwigDirector_IChannelEventHandler_onMemberLeft(Lio/agora/rtm/jni/IChannelEventHandler;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lio/agora/rtm/jni/IChannelMember;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/agora/rtm/jni/IChannelMember;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lio/agora/rtm/jni/IChannelEventHandler;->onMemberLeft(Lio/agora/rtm/jni/IChannelMember;)V

    return-void
.end method

.method public static SwigDirector_IChannelEventHandler_onMessageReceived(Lio/agora/rtm/jni/IChannelEventHandler;Ljava/lang/String;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lio/agora/rtm/jni/IMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lio/agora/rtm/jni/IMessage;-><init>(JZ)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lio/agora/rtm/jni/IChannelEventHandler;->onMessageReceived(Ljava/lang/String;Lio/agora/rtm/jni/IMessage;)V

    return-void
.end method

.method public static SwigDirector_IChannelEventHandler_onSendMessageResult(Lio/agora/rtm/jni/IChannelEventHandler;JI)V
    .locals 0

    .line 1
    invoke-static {p3}, Lio/agora/rtm/jni/CHANNEL_MESSAGE_ERR_CODE;->swigToEnum(I)Lio/agora/rtm/jni/CHANNEL_MESSAGE_ERR_CODE;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lio/agora/rtm/jni/IChannelEventHandler;->onSendMessageResult(JLio/agora/rtm/jni/CHANNEL_MESSAGE_ERR_CODE;)V

    return-void
.end method

.method public static SwigDirector_IRtmCallEventHandler_onLocalInvitationAccepted(Lio/agora/rtm/jni/IRtmCallEventHandler;JLjava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lio/agora/rtm/jni/ILocalCallInvitation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/agora/rtm/jni/ILocalCallInvitation;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1, p3}, Lio/agora/rtm/jni/IRtmCallEventHandler;->onLocalInvitationAccepted(Lio/agora/rtm/jni/ILocalCallInvitation;Ljava/lang/String;)V

    return-void
.end method

.method public static SwigDirector_IRtmCallEventHandler_onLocalInvitationCanceled(Lio/agora/rtm/jni/IRtmCallEventHandler;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lio/agora/rtm/jni/ILocalCallInvitation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/agora/rtm/jni/ILocalCallInvitation;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lio/agora/rtm/jni/IRtmCallEventHandler;->onLocalInvitationCanceled(Lio/agora/rtm/jni/ILocalCallInvitation;)V

    return-void
.end method

.method public static SwigDirector_IRtmCallEventHandler_onLocalInvitationFailure(Lio/agora/rtm/jni/IRtmCallEventHandler;JI)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lio/agora/rtm/jni/ILocalCallInvitation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/agora/rtm/jni/ILocalCallInvitation;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    invoke-static {p3}, Lio/agora/rtm/jni/LOCAL_INVITATION_ERR_CODE;->swigToEnum(I)Lio/agora/rtm/jni/LOCAL_INVITATION_ERR_CODE;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/agora/rtm/jni/IRtmCallEventHandler;->onLocalInvitationFailure(Lio/agora/rtm/jni/ILocalCallInvitation;Lio/agora/rtm/jni/LOCAL_INVITATION_ERR_CODE;)V

    return-void
.end method

.method public static SwigDirector_IRtmCallEventHandler_onLocalInvitationReceivedByPeer(Lio/agora/rtm/jni/IRtmCallEventHandler;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lio/agora/rtm/jni/ILocalCallInvitation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/agora/rtm/jni/ILocalCallInvitation;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lio/agora/rtm/jni/IRtmCallEventHandler;->onLocalInvitationReceivedByPeer(Lio/agora/rtm/jni/ILocalCallInvitation;)V

    return-void
.end method

.method public static SwigDirector_IRtmCallEventHandler_onLocalInvitationRefused(Lio/agora/rtm/jni/IRtmCallEventHandler;JLjava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lio/agora/rtm/jni/ILocalCallInvitation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/agora/rtm/jni/ILocalCallInvitation;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1, p3}, Lio/agora/rtm/jni/IRtmCallEventHandler;->onLocalInvitationRefused(Lio/agora/rtm/jni/ILocalCallInvitation;Ljava/lang/String;)V

    return-void
.end method

.method public static SwigDirector_IRtmCallEventHandler_onRemoteInvitationAccepted(Lio/agora/rtm/jni/IRtmCallEventHandler;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lio/agora/rtm/jni/IRemoteCallInvitation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/agora/rtm/jni/IRemoteCallInvitation;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lio/agora/rtm/jni/IRtmCallEventHandler;->onRemoteInvitationAccepted(Lio/agora/rtm/jni/IRemoteCallInvitation;)V

    return-void
.end method

.method public static SwigDirector_IRtmCallEventHandler_onRemoteInvitationCanceled(Lio/agora/rtm/jni/IRtmCallEventHandler;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lio/agora/rtm/jni/IRemoteCallInvitation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/agora/rtm/jni/IRemoteCallInvitation;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lio/agora/rtm/jni/IRtmCallEventHandler;->onRemoteInvitationCanceled(Lio/agora/rtm/jni/IRemoteCallInvitation;)V

    return-void
.end method

.method public static SwigDirector_IRtmCallEventHandler_onRemoteInvitationFailure(Lio/agora/rtm/jni/IRtmCallEventHandler;JI)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lio/agora/rtm/jni/IRemoteCallInvitation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/agora/rtm/jni/IRemoteCallInvitation;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    invoke-static {p3}, Lio/agora/rtm/jni/REMOTE_INVITATION_ERR_CODE;->swigToEnum(I)Lio/agora/rtm/jni/REMOTE_INVITATION_ERR_CODE;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/agora/rtm/jni/IRtmCallEventHandler;->onRemoteInvitationFailure(Lio/agora/rtm/jni/IRemoteCallInvitation;Lio/agora/rtm/jni/REMOTE_INVITATION_ERR_CODE;)V

    return-void
.end method

.method public static SwigDirector_IRtmCallEventHandler_onRemoteInvitationReceived(Lio/agora/rtm/jni/IRtmCallEventHandler;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lio/agora/rtm/jni/IRemoteCallInvitation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/agora/rtm/jni/IRemoteCallInvitation;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lio/agora/rtm/jni/IRtmCallEventHandler;->onRemoteInvitationReceived(Lio/agora/rtm/jni/IRemoteCallInvitation;)V

    return-void
.end method

.method public static SwigDirector_IRtmCallEventHandler_onRemoteInvitationRefused(Lio/agora/rtm/jni/IRtmCallEventHandler;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lio/agora/rtm/jni/IRemoteCallInvitation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/agora/rtm/jni/IRemoteCallInvitation;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lio/agora/rtm/jni/IRtmCallEventHandler;->onRemoteInvitationRefused(Lio/agora/rtm/jni/IRemoteCallInvitation;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onAddOrUpdateChannelAttributesResult(Lio/agora/rtm/jni/IRtmServiceEventHandler;JI)V
    .locals 0

    .line 1
    invoke-static {p3}, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->swigToEnum(I)Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onAddOrUpdateChannelAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onAddOrUpdateLocalUserAttributesResult(Lio/agora/rtm/jni/IRtmServiceEventHandler;JI)V
    .locals 0

    .line 1
    invoke-static {p3}, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->swigToEnum(I)Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onAddOrUpdateLocalUserAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onClearChannelAttributesResult(Lio/agora/rtm/jni/IRtmServiceEventHandler;JI)V
    .locals 0

    .line 1
    invoke-static {p3}, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->swigToEnum(I)Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onClearChannelAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onClearLocalUserAttributesResult(Lio/agora/rtm/jni/IRtmServiceEventHandler;JI)V
    .locals 0

    .line 1
    invoke-static {p3}, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->swigToEnum(I)Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onClearLocalUserAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onConnectionStateChanged(Lio/agora/rtm/jni/IRtmServiceEventHandler;II)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/agora/rtm/jni/CONNECTION_STATE;->swigToEnum(I)Lio/agora/rtm/jni/CONNECTION_STATE;

    move-result-object p1

    invoke-static {p2}, Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;->swigToEnum(I)Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onConnectionStateChanged(Lio/agora/rtm/jni/CONNECTION_STATE;Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onDeleteChannelAttributesResult(Lio/agora/rtm/jni/IRtmServiceEventHandler;JI)V
    .locals 0

    .line 1
    invoke-static {p3}, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->swigToEnum(I)Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onDeleteChannelAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onDeleteLocalUserAttributesResult(Lio/agora/rtm/jni/IRtmServiceEventHandler;JI)V
    .locals 0

    .line 1
    invoke-static {p3}, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->swigToEnum(I)Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onDeleteLocalUserAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onFileMediaUploadResult(Lio/agora/rtm/jni/IRtmServiceEventHandler;JJI)V
    .locals 2

    .line 1
    new-instance v0, Lio/agora/rtm/jni/IFileMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p4, v1}, Lio/agora/rtm/jni/IFileMessage;-><init>(JZ)V

    invoke-static {p5}, Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;->swigToEnum(I)Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;

    move-result-object p3

    invoke-virtual {p0, p1, p2, v0, p3}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onFileMediaUploadResult(JLio/agora/rtm/jni/IFileMessage;Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onFileMessageReceivedFromPeer(Lio/agora/rtm/jni/IRtmServiceEventHandler;Ljava/lang/String;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lio/agora/rtm/jni/IFileMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lio/agora/rtm/jni/IFileMessage;-><init>(JZ)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onFileMessageReceivedFromPeer(Ljava/lang/String;Lio/agora/rtm/jni/IFileMessage;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onGetChannelAttributesResult(Lio/agora/rtm/jni/IRtmServiceEventHandler;J[JII)V
    .locals 6

    .line 1
    new-array v3, p4, [Lio/agora/rtm/jni/IRtmChannelAttribute;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_0

    .line 2
    new-instance v2, Lio/agora/rtm/jni/IRtmChannelAttribute;

    aget-wide v4, p3, v1

    invoke-direct {v2, v4, v5, v0}, Lio/agora/rtm/jni/IRtmChannelAttribute;-><init>(JZ)V

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p5}, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->swigToEnum(I)Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onGetChannelAttributesResult(J[Lio/agora/rtm/jni/IRtmChannelAttribute;ILio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onGetChannelMemberCountResult(Lio/agora/rtm/jni/IRtmServiceEventHandler;J[JII)V
    .locals 6

    .line 1
    new-array v3, p4, [Lio/agora/rtm/jni/IRtmChannelMemberCount;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_0

    .line 2
    new-instance v2, Lio/agora/rtm/jni/IRtmChannelMemberCount;

    aget-wide v4, p3, v1

    invoke-direct {v2, v4, v5, v0}, Lio/agora/rtm/jni/IRtmChannelMemberCount;-><init>(JZ)V

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p5}, Lio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;->swigToEnum(I)Lio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onGetChannelMemberCountResult(J[Lio/agora/rtm/jni/IRtmChannelMemberCount;ILio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onGetUserAttributesResult(Lio/agora/rtm/jni/IRtmServiceEventHandler;JLjava/lang/String;[JII)V
    .locals 7

    .line 1
    new-array v4, p5, [Lio/agora/rtm/jni/IRtmAttribute;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p5, :cond_0

    .line 2
    new-instance v2, Lio/agora/rtm/jni/IRtmAttribute;

    aget-wide v5, p4, v1

    invoke-direct {v2, v5, v6, v0}, Lio/agora/rtm/jni/IRtmAttribute;-><init>(JZ)V

    aput-object v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p6}, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->swigToEnum(I)Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onGetUserAttributesResult(JLjava/lang/String;[Lio/agora/rtm/jni/IRtmAttribute;ILio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onImageMediaUploadResult(Lio/agora/rtm/jni/IRtmServiceEventHandler;JJI)V
    .locals 2

    .line 1
    new-instance v0, Lio/agora/rtm/jni/IImageMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p4, v1}, Lio/agora/rtm/jni/IImageMessage;-><init>(JZ)V

    invoke-static {p5}, Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;->swigToEnum(I)Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;

    move-result-object p3

    invoke-virtual {p0, p1, p2, v0, p3}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onImageMediaUploadResult(JLio/agora/rtm/jni/IImageMessage;Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onImageMessageReceivedFromPeer(Lio/agora/rtm/jni/IRtmServiceEventHandler;Ljava/lang/String;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lio/agora/rtm/jni/IImageMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lio/agora/rtm/jni/IImageMessage;-><init>(JZ)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onImageMessageReceivedFromPeer(Ljava/lang/String;Lio/agora/rtm/jni/IImageMessage;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onLoginFailure(Lio/agora/rtm/jni/IRtmServiceEventHandler;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/agora/rtm/jni/LOGIN_ERR_CODE;->swigToEnum(I)Lio/agora/rtm/jni/LOGIN_ERR_CODE;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onLoginFailure(Lio/agora/rtm/jni/LOGIN_ERR_CODE;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onLoginSuccess(Lio/agora/rtm/jni/IRtmServiceEventHandler;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onLoginSuccess()V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onLogout(Lio/agora/rtm/jni/IRtmServiceEventHandler;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->swigToEnum(I)Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onLogout(Lio/agora/rtm/jni/LOGOUT_ERR_CODE;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onMediaCancelResult(Lio/agora/rtm/jni/IRtmServiceEventHandler;JI)V
    .locals 0

    .line 1
    invoke-static {p3}, Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;->swigToEnum(I)Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onMediaCancelResult(JLio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onMediaDownloadToFileResult(Lio/agora/rtm/jni/IRtmServiceEventHandler;JI)V
    .locals 0

    .line 1
    invoke-static {p3}, Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;->swigToEnum(I)Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onMediaDownloadToFileResult(JLio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onMediaDownloadToMemoryResult(Lio/agora/rtm/jni/IRtmServiceEventHandler;J[BI)V
    .locals 0

    .line 1
    invoke-static {p4}, Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;->swigToEnum(I)Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onMediaDownloadToMemoryResult(J[BLio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onMediaDownloadingProgress(Lio/agora/rtm/jni/IRtmServiceEventHandler;JJ)V
    .locals 2

    .line 1
    new-instance v0, Lio/agora/rtm/jni/MediaOperationProgress;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p4, v1}, Lio/agora/rtm/jni/MediaOperationProgress;-><init>(JZ)V

    invoke-virtual {p0, p1, p2, v0}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onMediaDownloadingProgress(JLio/agora/rtm/jni/MediaOperationProgress;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onMediaUploadingProgress(Lio/agora/rtm/jni/IRtmServiceEventHandler;JJ)V
    .locals 2

    .line 1
    new-instance v0, Lio/agora/rtm/jni/MediaOperationProgress;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p4, v1}, Lio/agora/rtm/jni/MediaOperationProgress;-><init>(JZ)V

    invoke-virtual {p0, p1, p2, v0}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onMediaUploadingProgress(JLio/agora/rtm/jni/MediaOperationProgress;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onMessageReceivedFromPeer(Lio/agora/rtm/jni/IRtmServiceEventHandler;Ljava/lang/String;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lio/agora/rtm/jni/IMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lio/agora/rtm/jni/IMessage;-><init>(JZ)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onMessageReceivedFromPeer(Ljava/lang/String;Lio/agora/rtm/jni/IMessage;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onPeersOnlineStatusChanged(Lio/agora/rtm/jni/IRtmServiceEventHandler;[JI)V
    .locals 6

    .line 1
    new-array v0, p2, [Lio/agora/rtm/jni/PeerOnlineStatus;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_0

    .line 2
    new-instance v3, Lio/agora/rtm/jni/PeerOnlineStatus;

    aget-wide v4, p1, v2

    invoke-direct {v3, v4, v5, v1}, Lio/agora/rtm/jni/PeerOnlineStatus;-><init>(JZ)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v0, p2}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onPeersOnlineStatusChanged([Lio/agora/rtm/jni/PeerOnlineStatus;I)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onQueryPeersBySubscriptionOptionResult(Lio/agora/rtm/jni/IRtmServiceEventHandler;J[Ljava/lang/Object;II)V
    .locals 6

    .line 1
    new-array v3, p4, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    .line 2
    aget-object v1, p3, v0

    check-cast v1, Ljava/lang/String;

    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p5}, Lio/agora/rtm/jni/QUERY_PEERS_BY_SUBSCRIPTION_OPTION_ERR;->swigToEnum(I)Lio/agora/rtm/jni/QUERY_PEERS_BY_SUBSCRIPTION_OPTION_ERR;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onQueryPeersBySubscriptionOptionResult(J[Ljava/lang/String;ILio/agora/rtm/jni/QUERY_PEERS_BY_SUBSCRIPTION_OPTION_ERR;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onQueryPeersOnlineStatusResult(Lio/agora/rtm/jni/IRtmServiceEventHandler;J[JII)V
    .locals 6

    .line 1
    new-array v3, p4, [Lio/agora/rtm/jni/PeerOnlineStatus;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_0

    .line 2
    new-instance v2, Lio/agora/rtm/jni/PeerOnlineStatus;

    aget-wide v4, p3, v1

    invoke-direct {v2, v4, v5, v0}, Lio/agora/rtm/jni/PeerOnlineStatus;-><init>(JZ)V

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p5}, Lio/agora/rtm/jni/QUERY_PEERS_ONLINE_STATUS_ERR;->swigToEnum(I)Lio/agora/rtm/jni/QUERY_PEERS_ONLINE_STATUS_ERR;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onQueryPeersOnlineStatusResult(J[Lio/agora/rtm/jni/PeerOnlineStatus;ILio/agora/rtm/jni/QUERY_PEERS_ONLINE_STATUS_ERR;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onRenewTokenResult(Lio/agora/rtm/jni/IRtmServiceEventHandler;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p2}, Lio/agora/rtm/jni/RENEW_TOKEN_ERR_CODE;->swigToEnum(I)Lio/agora/rtm/jni/RENEW_TOKEN_ERR_CODE;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onRenewTokenResult(Ljava/lang/String;Lio/agora/rtm/jni/RENEW_TOKEN_ERR_CODE;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onSendMessageResult(Lio/agora/rtm/jni/IRtmServiceEventHandler;JI)V
    .locals 0

    .line 1
    invoke-static {p3}, Lio/agora/rtm/jni/PEER_MESSAGE_ERR_CODE;->swigToEnum(I)Lio/agora/rtm/jni/PEER_MESSAGE_ERR_CODE;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onSendMessageResult(JLio/agora/rtm/jni/PEER_MESSAGE_ERR_CODE;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onSetChannelAttributesResult(Lio/agora/rtm/jni/IRtmServiceEventHandler;JI)V
    .locals 0

    .line 1
    invoke-static {p3}, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->swigToEnum(I)Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onSetChannelAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onSetLocalUserAttributesResult(Lio/agora/rtm/jni/IRtmServiceEventHandler;JI)V
    .locals 0

    .line 1
    invoke-static {p3}, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->swigToEnum(I)Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onSetLocalUserAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onSubscriptionRequestResult(Lio/agora/rtm/jni/IRtmServiceEventHandler;JI)V
    .locals 0

    .line 1
    invoke-static {p3}, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;->swigToEnum(I)Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onSubscriptionRequestResult(JLio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;)V

    return-void
.end method

.method public static SwigDirector_IRtmServiceEventHandler_onTokenExpired(Lio/agora/rtm/jni/IRtmServiceEventHandler;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->onTokenExpired()V

    return-void
.end method

.method public static final native delete_ChannelAttributeOptions(J)V
.end method

.method public static final native delete_IChannelEventHandler(J)V
.end method

.method public static final native delete_IFileMessage(J)V
.end method

.method public static final native delete_IImageMessage(J)V
.end method

.method public static final native delete_IRtmCallEventHandler(J)V
.end method

.method public static final native delete_IRtmServiceEventHandler(J)V
.end method

.method public static final native delete_MediaOperationProgress(J)V
.end method

.method public static final native delete_PeerOnlineStatus(J)V
.end method

.method public static final native delete_RtmAttribute(J)V
.end method

.method public static final native delete_RtmChannelAttribute(J)V
.end method

.method public static final native delete_RtmChannelMemberCount(J)V
.end method

.method public static final native delete_RtmServiceContext(J)V
.end method

.method public static final native delete_SendMessageOptions(J)V
.end method

.method public static getLocalInvitationKey(Lio/agora/rtm/jni/ILocalCallInvitation;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lio/agora/rtm/jni/ILocalCallInvitation;->getCPtr(Lio/agora/rtm/jni/ILocalCallInvitation;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRemoteInvitationKey(Lio/agora/rtm/jni/IRemoteCallInvitation;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lio/agora/rtm/jni/IRemoteCallInvitation;->getCPtr(Lio/agora/rtm/jni/IRemoteCallInvitation;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final native new_ChannelAttributeOptions()J
.end method

.method public static final native new_IChannelEventHandler()J
.end method

.method public static final native new_IRtmCallEventHandler()J
.end method

.method public static final native new_IRtmServiceEventHandler()J
.end method

.method public static final native new_MediaOperationProgress()J
.end method

.method public static final native new_PeerOnlineStatus()J
.end method

.method public static final native new_RtmAttribute()J
.end method

.method public static final native new_RtmChannelAttribute(J)J
.end method

.method public static final native new_RtmChannelMemberCount()J
.end method

.method public static final native new_RtmServiceContext()J
.end method

.method public static final native new_SendMessageOptions()J
.end method

.method public static final native setRtmServiceContext(JLio/agora/rtm/jni/RtmServiceContext;)I
.end method

.method public static swigToEnumOnError(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(ITR;)TR;"
        }
    .end annotation

    const-string v0, "No enum "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". Use "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " instead"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SWIG"

    invoke-static {v0, p0}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final native swig_module_init()V
.end method
