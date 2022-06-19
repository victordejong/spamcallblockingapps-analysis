.class public Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;
.super Lio/agora/rtc/internal/Marshallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/RtcEngineMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PLiveTranscoding"
.end annotation


# static fields
.field private static final SERVER_TYPE:S = 0x0s

.field private static final URI:S = 0x17s


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/internal/Marshallable;-><init>()V

    return-void
.end method

.method private marshall(Lio/agora/rtc/internal/Marshallable;Lio/agora/rtc/live/LiveTranscoding;)V
    .locals 3

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushShort(S)V

    const/16 v1, 0x17

    .line 4
    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushShort(S)V

    .line 5
    iget v1, p2, Lio/agora/rtc/live/LiveTranscoding;->width:I

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 6
    iget v1, p2, Lio/agora/rtc/live/LiveTranscoding;->height:I

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 7
    iget v1, p2, Lio/agora/rtc/live/LiveTranscoding;->videoGop:I

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 8
    iget v1, p2, Lio/agora/rtc/live/LiveTranscoding;->videoFramerate:I

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 9
    iget-object v1, p2, Lio/agora/rtc/live/LiveTranscoding;->videoCodecProfile:Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;

    invoke-static {v1}, Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;->getValue(Lio/agora/rtc/live/LiveTranscoding$VideoCodecProfileType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 10
    iget-object v1, p2, Lio/agora/rtc/live/LiveTranscoding;->videoCodecType:Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;

    invoke-static {v1}, Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;->getValue(Lio/agora/rtc/live/LiveTranscoding$VideoCodecType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 11
    iget v1, p2, Lio/agora/rtc/live/LiveTranscoding;->videoBitrate:I

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v2, p2, Lio/agora/rtc/live/LiveTranscoding;->watermark:Lio/agora/rtc/video/AgoraImage;

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_0
    invoke-virtual {p2}, Lio/agora/rtc/live/LiveTranscoding;->getWatermarkList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lio/agora/rtc/live/LiveTranscoding;->getWatermarkList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 16
    invoke-virtual {p2}, Lio/agora/rtc/live/LiveTranscoding;->getWatermarkList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {p0, v2}, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;->pushShort(S)V

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/rtc/video/AgoraImage;

    .line 19
    invoke-direct {p0, p1, v2}, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;->marshallImage(Lio/agora/rtc/internal/Marshallable;Lio/agora/rtc/video/AgoraImage;)V

    goto :goto_0

    .line 20
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v2, p2, Lio/agora/rtc/live/LiveTranscoding;->backgroundImage:Lio/agora/rtc/video/AgoraImage;

    if-eqz v2, :cond_3

    .line 22
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_3
    invoke-virtual {p2}, Lio/agora/rtc/live/LiveTranscoding;->getBackgroundImageList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lio/agora/rtc/live/LiveTranscoding;->getBackgroundImageList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 24
    invoke-virtual {p2}, Lio/agora/rtc/live/LiveTranscoding;->getBackgroundImageList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {p0, v2}, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;->pushShort(S)V

    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/rtc/video/AgoraImage;

    .line 27
    invoke-direct {p0, p1, v2}, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;->marshallImage(Lio/agora/rtc/internal/Marshallable;Lio/agora/rtc/video/AgoraImage;)V

    goto :goto_1

    .line 28
    :cond_5
    iget-boolean v1, p2, Lio/agora/rtc/live/LiveTranscoding;->lowLatency:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushBool(Ljava/lang/Boolean;)V

    .line 29
    iget-object v1, p2, Lio/agora/rtc/live/LiveTranscoding;->audioSampleRate:Lio/agora/rtc/live/LiveTranscoding$AudioSampleRateType;

    invoke-static {v1}, Lio/agora/rtc/live/LiveTranscoding$AudioSampleRateType;->getValue(Lio/agora/rtc/live/LiveTranscoding$AudioSampleRateType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 30
    iget v1, p2, Lio/agora/rtc/live/LiveTranscoding;->audioBitrate:I

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 31
    iget v1, p2, Lio/agora/rtc/live/LiveTranscoding;->audioChannels:I

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 32
    iget-object v1, p2, Lio/agora/rtc/live/LiveTranscoding;->audioCodecProfile:Lio/agora/rtc/live/LiveTranscoding$AudioCodecProfileType;

    invoke-static {v1}, Lio/agora/rtc/live/LiveTranscoding$AudioCodecProfileType;->getValue(Lio/agora/rtc/live/LiveTranscoding$AudioCodecProfileType;)I

    move-result v1

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 33
    iget v1, p2, Lio/agora/rtc/live/LiveTranscoding;->backgroundColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 34
    iget-object v1, p2, Lio/agora/rtc/live/LiveTranscoding;->userConfigExtraInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_6

    .line 35
    iput-object v2, p2, Lio/agora/rtc/live/LiveTranscoding;->userConfigExtraInfo:Ljava/lang/String;

    .line 36
    :cond_6
    iget-object v1, p2, Lio/agora/rtc/live/LiveTranscoding;->userConfigExtraInfo:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushString16(Ljava/lang/String;)V

    .line 37
    iget-object v1, p2, Lio/agora/rtc/live/LiveTranscoding;->metadata:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 38
    iput-object v2, p2, Lio/agora/rtc/live/LiveTranscoding;->metadata:Ljava/lang/String;

    .line 39
    :cond_7
    iget-object v1, p2, Lio/agora/rtc/live/LiveTranscoding;->metadata:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushString16(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2}, Lio/agora/rtc/live/LiveTranscoding;->getUsers()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Lio/agora/rtc/live/LiveTranscoding;->getUsers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 41
    invoke-virtual {p2}, Lio/agora/rtc/live/LiveTranscoding;->getUserCount()I

    move-result v0

    int-to-short v0, v0

    .line 42
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;->pushShort(S)V

    .line 43
    invoke-virtual {p2}, Lio/agora/rtc/live/LiveTranscoding;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;

    .line 44
    invoke-direct {p0, p1, v1}, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;->marshallUserConfig(Lio/agora/rtc/internal/Marshallable;Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;)V

    goto :goto_2

    :cond_8
    int-to-short v0, v0

    .line 45
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;->pushShort(S)V

    .line 46
    :cond_9
    invoke-virtual {p2}, Lio/agora/rtc/live/LiveTranscoding;->getAdvancedFeatures()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;->pushShort(S)V

    .line 47
    invoke-virtual {p2}, Lio/agora/rtc/live/LiveTranscoding;->getAdvancedFeatures()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lio/agora/rtc/internal/Marshallable;->pushString16(Ljava/lang/String;)V

    .line 49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushBool(Ljava/lang/Boolean;)V

    goto :goto_3

    :cond_a
    return-void
.end method

.method private marshallImage(Lio/agora/rtc/internal/Marshallable;Lio/agora/rtc/video/AgoraImage;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lio/agora/rtc/video/AgoraImage;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushString16(Ljava/lang/String;)V

    .line 2
    iget v0, p2, Lio/agora/rtc/video/AgoraImage;->x:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 3
    iget v0, p2, Lio/agora/rtc/video/AgoraImage;->y:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 4
    iget v0, p2, Lio/agora/rtc/video/AgoraImage;->width:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 5
    iget v0, p2, Lio/agora/rtc/video/AgoraImage;->height:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 6
    iget v0, p2, Lio/agora/rtc/video/AgoraImage;->zOrder:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 7
    iget-wide v0, p2, Lio/agora/rtc/video/AgoraImage;->alpha:D

    invoke-virtual {p1, v0, v1}, Lio/agora/rtc/internal/Marshallable;->pushDouble(D)V

    return-void
.end method

.method private marshallUserConfig(Lio/agora/rtc/internal/Marshallable;Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;)V
    .locals 2

    .line 1
    iget v0, p2, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;->uid:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 2
    iget v0, p2, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;->x:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 3
    iget v0, p2, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;->y:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 4
    iget v0, p2, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;->width:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 5
    iget v0, p2, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;->height:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 6
    iget v0, p2, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;->zOrder:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 7
    iget v0, p2, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;->alpha:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lio/agora/rtc/internal/Marshallable;->pushDouble(D)V

    .line 8
    iget p2, p2, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;->audioChannel:I

    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    .line 1
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->clear()V

    return-void
.end method

.method public bridge synthetic getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic marshall(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->marshall(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public bridge synthetic marshall()[B
    .locals 1

    .line 2
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->marshall()[B

    move-result-object v0

    return-object v0
.end method

.method public marshall(Lio/agora/rtc/live/LiveTranscoding;)[B
    .locals 0

    .line 50
    invoke-direct {p0, p0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;->marshall(Lio/agora/rtc/internal/Marshallable;Lio/agora/rtc/live/LiveTranscoding;)V

    .line 51
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->marshall()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic popAll()[B
    .locals 1

    .line 1
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popAll()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic popBool()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popBool()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic popByte()B
    .locals 1

    .line 1
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popByte()B

    move-result v0

    return v0
.end method

.method public bridge synthetic popBytes()[B
    .locals 1

    .line 1
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic popBytes32()[B
    .locals 1

    .line 1
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popBytes32()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic popInt()I
    .locals 1

    .line 1
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popInt()I

    move-result v0

    return v0
.end method

.method public bridge synthetic popInt64()J
    .locals 2

    .line 1
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic popIntArray()[I
    .locals 1

    .line 1
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popIntArray()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic popShort()S
    .locals 1

    .line 1
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popShort()S

    move-result v0

    return v0
.end method

.method public bridge synthetic popShortArray()[S
    .locals 1

    .line 1
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popShortArray()[S

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic popString16()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popString16()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic popString16UTF8()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->popString16UTF8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pushBool(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushBool(Ljava/lang/Boolean;)V

    return-void
.end method

.method public bridge synthetic pushByte(B)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushByte(B)V

    return-void
.end method

.method public bridge synthetic pushBytes([B)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushBytes([B)V

    return-void
.end method

.method public bridge synthetic pushBytes32([B)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushBytes32([B)V

    return-void
.end method

.method public bridge synthetic pushDouble(D)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/Marshallable;->pushDouble(D)V

    return-void
.end method

.method public bridge synthetic pushInt(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    return-void
.end method

.method public bridge synthetic pushInt64(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/Marshallable;->pushInt64(J)V

    return-void
.end method

.method public bridge synthetic pushIntArray([I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushIntArray([I)V

    return-void
.end method

.method public bridge synthetic pushIntArray([Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushIntArray([Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic pushShort(S)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushShort(S)V

    return-void
.end method

.method public bridge synthetic pushShortArray([S)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushShortArray([S)V

    return-void
.end method

.method public bridge synthetic pushString16(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushString16(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic pushStringArray(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->pushStringArray(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bridge synthetic unmarshall(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->unmarshall(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public bridge synthetic unmarshall([B)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->unmarshall([B)V

    return-void
.end method
