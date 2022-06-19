.class public Lio/agora/rtm/jni/IRtmService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lio/agora/rtm/jni/IRtmService;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lio/agora/rtm/jni/IRtmService;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static setRtmServiceContext(Lio/agora/rtm/RtmServiceContext;)I
    .locals 3

    .line 1
    new-instance v0, Lio/agora/rtm/jni/RtmServiceContext;

    invoke-direct {v0}, Lio/agora/rtm/jni/RtmServiceContext;-><init>()V

    .line 2
    iget p0, p0, Lio/agora/rtm/RtmServiceContext;->areaCode:I

    invoke-virtual {v0, p0}, Lio/agora/rtm/jni/RtmServiceContext;->setAreaCode(I)V

    .line 3
    invoke-static {v0}, Lio/agora/rtm/jni/RtmServiceContext;->getCPtr(Lio/agora/rtm/jni/RtmServiceContext;)J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->setRtmServiceContext(JLio/agora/rtm/jni/RtmServiceContext;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public addEventHandler(Lio/agora/rtm/jni/IRtmServiceEventHandler;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {p1}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->getCPtr(Lio/agora/rtm/jni/IRtmServiceEventHandler;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_addEventHandler(JLio/agora/rtm/jni/IRtmService;JLio/agora/rtm/jni/IRtmServiceEventHandler;)V

    return-void
.end method

.method public addOrUpdateChannelAttributes(Ljava/lang/String;[Lio/agora/rtm/jni/IRtmChannelAttribute;Lio/agora/rtm/jni/IChannelAttributeOptions;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I
    .locals 14

    move-object/from16 v0, p2

    .line 1
    array-length v6, v0

    .line 2
    invoke-static {v6}, Lio/agora/common/AgoraServiceJNI;->newPointerArray(I)J

    move-result-wide v11

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_0

    .line 3
    aget-object v2, v0, v1

    .line 4
    invoke-static {v2}, Lio/agora/rtm/jni/IRtmChannelAttribute;->getCPtr(Lio/agora/rtm/jni/IRtmChannelAttribute;)J

    move-result-wide v2

    invoke-static {v11, v12, v1, v2, v3}, Lio/agora/common/AgoraServiceJNI;->setPointerArrayElement(JIJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v13, p0

    .line 5
    iget-wide v0, v13, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static/range {p3 .. p3}, Lio/agora/rtm/jni/IChannelAttributeOptions;->getCPtr(Lio/agora/rtm/jni/IChannelAttributeOptions;)J

    move-result-wide v7

    invoke-static/range {p4 .. p4}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->getCPtr(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v9

    move-object v2, p0

    move-object v3, p1

    move-wide v4, v11

    invoke-static/range {v0 .. v10}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_addOrUpdateChannelAttributes(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;JIJJ)I

    move-result v0

    .line 6
    invoke-static {v11, v12}, Lio/agora/common/AgoraServiceJNI;->deletePointerArray(J)V

    return v0
.end method

.method public addOrUpdateLocalUserAttributes([Lio/agora/rtm/jni/IRtmAttribute;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I
    .locals 10

    .line 1
    array-length v5, p1

    .line 2
    invoke-static {v5}, Lio/agora/common/AgoraServiceJNI;->newPointerArray(I)J

    move-result-wide v8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    .line 3
    aget-object v1, p1, v0

    .line 4
    invoke-static {v1}, Lio/agora/rtm/jni/IRtmAttribute;->getCPtr(Lio/agora/rtm/jni/IRtmAttribute;)J

    move-result-wide v1

    invoke-static {v8, v9, v0, v1, v2}, Lio/agora/common/AgoraServiceJNI;->setPointerArrayElement(JIJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {p2}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->getCPtr(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v6

    move-object v2, p0

    move-wide v3, v8

    invoke-static/range {v0 .. v7}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_addOrUpdateLocalUserAttributes(JLio/agora/rtm/jni/IRtmService;JIJ)I

    move-result p1

    .line 6
    invoke-static {v8, v9}, Lio/agora/common/AgoraServiceJNI;->deletePointerArray(J)V

    return p1
.end method

.method public cancelMediaDownload(J)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_cancelMediaDownload(JLio/agora/rtm/jni/IRtmService;J)I

    move-result p1

    return p1
.end method

.method public cancelMediaUpload(J)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_cancelMediaUpload(JLio/agora/rtm/jni/IRtmService;J)I

    move-result p1

    return p1
.end method

.method public clearChannelAttributes(Ljava/lang/String;Lio/agora/rtm/jni/IChannelAttributeOptions;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I
    .locals 8

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {p2}, Lio/agora/rtm/jni/IChannelAttributeOptions;->getCPtr(Lio/agora/rtm/jni/IChannelAttributeOptions;)J

    move-result-wide v4

    invoke-static {p3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->getCPtr(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v6

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_clearChannelAttributes(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;JJ)I

    move-result p1

    return p1
.end method

.method public clearLocalUserAttributes(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {p1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->getCPtr(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_clearLocalUserAttributes(JLio/agora/rtm/jni/IRtmService;J)I

    move-result p1

    return p1
.end method

.method public createChannel(Ljava/lang/String;Lio/agora/rtm/jni/IChannelEventHandler;)Lio/agora/rtm/jni/IChannel;
    .locals 7

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {p2}, Lio/agora/rtm/jni/IChannelEventHandler;->getCPtr(Lio/agora/rtm/jni/IChannelEventHandler;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_createChannel(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;JLio/agora/rtm/jni/IChannelEventHandler;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lio/agora/rtm/jni/IChannel;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lio/agora/rtm/jni/IChannel;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public createFileMessageByMediaId(Ljava/lang/String;)Lio/agora/rtm/jni/IFileMessage;
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_createFileMessageByMediaId(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lio/agora/rtm/jni/IFileMessage;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lio/agora/rtm/jni/IFileMessage;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public createFileMessageByUploading(Ljava/lang/String;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {p2}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->getCPtr(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_createFileMessageByUploading(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public createImageMessageByMediaId(Ljava/lang/String;)Lio/agora/rtm/jni/IImageMessage;
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_createImageMessageByMediaId(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lio/agora/rtm/jni/IImageMessage;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lio/agora/rtm/jni/IImageMessage;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public createImageMessageByUploading(Ljava/lang/String;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {p2}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->getCPtr(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_createImageMessageByUploading(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public createMessage()Lio/agora/rtm/jni/IMessage;
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_createMessage__SWIG_0(JLio/agora/rtm/jni/IRtmService;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v2, Lio/agora/rtm/jni/IMessage;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lio/agora/rtm/jni/IMessage;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public createMessage(Ljava/lang/String;)Lio/agora/rtm/jni/IMessage;
    .locals 4

    .line 3
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_createMessage__SWIG_1(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lio/agora/rtm/jni/IMessage;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lio/agora/rtm/jni/IMessage;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public createMessage([BI)Lio/agora/rtm/jni/IMessage;
    .locals 2

    .line 5
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_createMessage__SWIG_2(JLio/agora/rtm/jni/IRtmService;[BI)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lio/agora/rtm/jni/IMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/agora/rtm/jni/IMessage;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public createMessage([BILjava/lang/String;)Lio/agora/rtm/jni/IMessage;
    .locals 6

    .line 7
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_createMessage__SWIG_3(JLio/agora/rtm/jni/IRtmService;[BILjava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p3, Lio/agora/rtm/jni/IMessage;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Lio/agora/rtm/jni/IMessage;-><init>(JZ)V

    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method public declared-synchronized delete()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCMemOwn:Z

    if-nez v0, :cond_0

    .line 3
    iput-wide v2, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCMemOwn:Z

    .line 5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "C++ destructor does not have public access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteChannelAttributesByKeys(Ljava/lang/String;[Ljava/lang/String;Lio/agora/rtm/jni/IChannelAttributeOptions;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I
    .locals 10

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    array-length v5, p2

    invoke-static {p3}, Lio/agora/rtm/jni/IChannelAttributeOptions;->getCPtr(Lio/agora/rtm/jni/IChannelAttributeOptions;)J

    move-result-wide v6

    invoke-static {p4}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->getCPtr(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v9}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_deleteChannelAttributesByKeys(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;[Ljava/lang/String;IJJ)I

    move-result p1

    return p1
.end method

.method public deleteLocalUserAttributesByKeys([Ljava/lang/String;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I
    .locals 7

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    array-length v4, p1

    invoke-static {p2}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->getCPtr(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_deleteLocalUserAttributesByKeys(JLio/agora/rtm/jni/IRtmService;[Ljava/lang/String;IJ)I

    move-result p1

    return p1
.end method

.method public downloadMediaToFile(Ljava/lang/String;Ljava/lang/String;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I
    .locals 7

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {p3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->getCPtr(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_downloadMediaToFile(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public downloadMediaToMemory(Ljava/lang/String;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {p2}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->getCPtr(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_downloadMediaToMemory(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public getChannelAttributes(Ljava/lang/String;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {p2}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->getCPtr(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_getChannelAttributes(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public getChannelAttributesByKeys(Ljava/lang/String;[Ljava/lang/String;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I
    .locals 8

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    array-length v5, p2

    invoke-static {p3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->getCPtr(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v7}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_getChannelAttributesByKeys(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;[Ljava/lang/String;IJ)I

    move-result p1

    return p1
.end method

.method public getChannelMemberCount([Ljava/lang/String;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I
    .locals 7

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    array-length v4, p1

    invoke-static {p2}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->getCPtr(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_getChannelMemberCount(JLio/agora/rtm/jni/IRtmService;[Ljava/lang/String;IJ)I

    move-result p1

    return p1
.end method

.method public getMediaDownloadingPercentage(J)D
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getMediaUploadingPercentage(J)D
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getRtmCallManager(Lio/agora/rtm/jni/IRtmCallEventHandler;)Lio/agora/rtm/jni/IRtmCallManager;
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {p1}, Lio/agora/rtm/jni/IRtmCallEventHandler;->getCPtr(Lio/agora/rtm/jni/IRtmCallEventHandler;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_getRtmCallManager(JLio/agora/rtm/jni/IRtmService;JLio/agora/rtm/jni/IRtmCallEventHandler;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lio/agora/rtm/jni/IRtmCallManager;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lio/agora/rtm/jni/IRtmCallManager;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public getUserAttributes(Ljava/lang/String;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {p2}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->getCPtr(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_getUserAttributes(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public getUserAttributesByKeys(Ljava/lang/String;[Ljava/lang/String;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I
    .locals 8

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    array-length v5, p2

    invoke-static {p3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->getCPtr(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v7}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_getUserAttributesByKeys(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;[Ljava/lang/String;IJ)I

    move-result p1

    return p1
.end method

.method public initialize(Ljava/lang/String;Lio/agora/rtm/jni/IRtmServiceEventHandler;)I
    .locals 7

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {p2}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->getCPtr(Lio/agora/rtm/jni/IRtmServiceEventHandler;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_initialize(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;JLio/agora/rtm/jni/IRtmServiceEventHandler;)I

    move-result p1

    return p1
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_login(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public logout()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_logout(JLio/agora/rtm/jni/IRtmService;)I

    move-result v0

    return v0
.end method

.method public queryPeersBySubscriptionOption(Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-virtual {p1}, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;->swigValue()I

    move-result v3

    invoke-static {p2}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->getCPtr(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v4

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_queryPeersBySubscriptionOption(JLio/agora/rtm/jni/IRtmService;IJ)I

    move-result p1

    return p1
.end method

.method public queryPeersOnlineStatus([Ljava/lang/String;ILio/agora/rtm/jni/SWIGTYPE_p_long_long;)I
    .locals 7

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {p3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->getCPtr(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_queryPeersOnlineStatus(JLio/agora/rtm/jni/IRtmService;[Ljava/lang/String;IJ)I

    move-result p1

    return p1
.end method

.method public release()V
    .locals 2

    .line 2
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_release__SWIG_1(JLio/agora/rtm/jni/IRtmService;)V

    return-void
.end method

.method public release(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_release__SWIG_0(JLio/agora/rtm/jni/IRtmService;Z)V

    return-void
.end method

.method public removeEventHandler(Lio/agora/rtm/jni/IRtmServiceEventHandler;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {p1}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->getCPtr(Lio/agora/rtm/jni/IRtmServiceEventHandler;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_removeEventHandler(JLio/agora/rtm/jni/IRtmService;JLio/agora/rtm/jni/IRtmServiceEventHandler;)V

    return-void
.end method

.method public renewToken(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_renewToken(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendMessageToPeer(Ljava/lang/String;Lio/agora/rtm/jni/IMessage;)I
    .locals 7

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {p2}, Lio/agora/rtm/jni/IMessage;->getCPtr(Lio/agora/rtm/jni/IMessage;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_sendMessageToPeer__SWIG_0(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;JLio/agora/rtm/jni/IMessage;)I

    move-result p1

    return p1
.end method

.method public sendMessageToPeer(Ljava/lang/String;Lio/agora/rtm/jni/IMessage;Lio/agora/rtm/jni/ISendMessageOptions;)I
    .locals 10

    .line 2
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {p2}, Lio/agora/rtm/jni/IMessage;->getCPtr(Lio/agora/rtm/jni/IMessage;)J

    move-result-wide v4

    invoke-static {p3}, Lio/agora/rtm/jni/ISendMessageOptions;->getCPtr(Lio/agora/rtm/jni/ISendMessageOptions;)J

    move-result-wide v7

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v9, p3

    invoke-static/range {v0 .. v9}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_sendMessageToPeer__SWIG_1(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;JLio/agora/rtm/jni/IMessage;JLio/agora/rtm/jni/ISendMessageOptions;)I

    move-result p1

    return p1
.end method

.method public setChannelAttributes(Ljava/lang/String;[Lio/agora/rtm/jni/IRtmChannelAttribute;Lio/agora/rtm/jni/IChannelAttributeOptions;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I
    .locals 14

    move-object/from16 v0, p2

    .line 1
    array-length v6, v0

    .line 2
    invoke-static {v6}, Lio/agora/common/AgoraServiceJNI;->newPointerArray(I)J

    move-result-wide v11

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_0

    .line 3
    aget-object v2, v0, v1

    .line 4
    invoke-static {v2}, Lio/agora/rtm/jni/IRtmChannelAttribute;->getCPtr(Lio/agora/rtm/jni/IRtmChannelAttribute;)J

    move-result-wide v2

    invoke-static {v11, v12, v1, v2, v3}, Lio/agora/common/AgoraServiceJNI;->setPointerArrayElement(JIJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v13, p0

    .line 5
    iget-wide v0, v13, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static/range {p3 .. p3}, Lio/agora/rtm/jni/IChannelAttributeOptions;->getCPtr(Lio/agora/rtm/jni/IChannelAttributeOptions;)J

    move-result-wide v7

    invoke-static/range {p4 .. p4}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->getCPtr(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v9

    move-object v2, p0

    move-object v3, p1

    move-wide v4, v11

    invoke-static/range {v0 .. v10}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_setChannelAttributes(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;JIJJ)I

    move-result v0

    .line 6
    invoke-static {v11, v12}, Lio/agora/common/AgoraServiceJNI;->deletePointerArray(J)V

    return v0
.end method

.method public setLocalUserAttributes([Lio/agora/rtm/jni/IRtmAttribute;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I
    .locals 10

    .line 1
    array-length v5, p1

    .line 2
    invoke-static {v5}, Lio/agora/common/AgoraServiceJNI;->newPointerArray(I)J

    move-result-wide v8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    .line 3
    aget-object v1, p1, v0

    .line 4
    invoke-static {v1}, Lio/agora/rtm/jni/IRtmAttribute;->getCPtr(Lio/agora/rtm/jni/IRtmAttribute;)J

    move-result-wide v1

    invoke-static {v8, v9, v0, v1, v2}, Lio/agora/common/AgoraServiceJNI;->setPointerArrayElement(JIJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {p2}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->getCPtr(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v6

    move-object v2, p0

    move-wide v3, v8

    invoke-static/range {v0 .. v7}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_setLocalUserAttributes(JLio/agora/rtm/jni/IRtmService;JIJ)I

    move-result p1

    .line 6
    invoke-static {v8, v9}, Lio/agora/common/AgoraServiceJNI;->deletePointerArray(J)V

    return p1
.end method

.method public setLogFile(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_setLogFile(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setLogFileSize(I)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_setLogFileSize(JLio/agora/rtm/jni/IRtmService;I)I

    move-result p1

    return p1
.end method

.method public setLogFilter(I)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_setLogFilter(JLio/agora/rtm/jni/IRtmService;I)I

    move-result p1

    return p1
.end method

.method public setParameters(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_setParameters(JLio/agora/rtm/jni/IRtmService;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public subscribePeersOnlineStatus([Ljava/lang/String;ILio/agora/rtm/jni/SWIGTYPE_p_long_long;)I
    .locals 7

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {p3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->getCPtr(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_subscribePeersOnlineStatus(JLio/agora/rtm/jni/IRtmService;[Ljava/lang/String;IJ)I

    move-result p1

    return p1
.end method

.method public unsubscribePeersOnlineStatus([Ljava/lang/String;ILio/agora/rtm/jni/SWIGTYPE_p_long_long;)I
    .locals 7

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmService;->swigCPtr:J

    invoke-static {p3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->getCPtr(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v5

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmService_unsubscribePeersOnlineStatus(JLio/agora/rtm/jni/IRtmService;[Ljava/lang/String;IJ)I

    move-result p1

    return p1
.end method
