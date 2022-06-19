.class public Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;
.super Lio/agora/rtc/internal/Marshallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/RtcEngineMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PLocalVideoStat"
.end annotation


# instance fields
.field public stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/internal/Marshallable;-><init>()V

    .line 2
    new-instance v0, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    invoke-direct {v0}, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

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

.method public marshall()[B
    .locals 1

    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->sentBitrate:I

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->pushInt(I)V

    .line 3
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->sentFrameRate:I

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->pushInt(I)V

    .line 4
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->encoderOutputFrameRate:I

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->pushInt(I)V

    .line 5
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->rendererOutputFrameRate:I

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->pushInt(I)V

    .line 6
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->targetBitrate:I

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->pushInt(I)V

    .line 7
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->targetFrameRate:I

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->pushInt(I)V

    .line 8
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->qualityAdaptIndication:I

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->pushInt(I)V

    .line 9
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->encodedBitrate:I

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->pushInt(I)V

    .line 10
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->encodedFrameWidth:I

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->pushInt(I)V

    .line 11
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->encodedFrameHeight:I

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->pushInt(I)V

    .line 12
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->encodedFrameCount:I

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->pushInt(I)V

    .line 13
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->codecType:I

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->pushByte(B)V

    .line 14
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->txPacketLossRate:I

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->pushShort(S)V

    .line 15
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->captureFrameRate:I

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->pushInt(I)V

    .line 16
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->captureBrightnessLevel:I

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->pushByte(B)V

    .line 17
    invoke-super {p0}, Lio/agora/rtc/internal/Marshallable;->marshall()[B

    move-result-object v0

    return-object v0
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

.method public unmarshall([B)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->unmarshall([B)V

    .line 3
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->popInt()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->sentBitrate:I

    .line 4
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->popInt()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->sentFrameRate:I

    .line 5
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->popInt()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->encoderOutputFrameRate:I

    .line 6
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->popInt()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->rendererOutputFrameRate:I

    .line 7
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->popInt()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->targetBitrate:I

    .line 8
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->popInt()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->targetFrameRate:I

    .line 9
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->popInt()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->qualityAdaptIndication:I

    .line 10
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->popInt()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->encodedBitrate:I

    .line 11
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->popInt()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->encodedFrameWidth:I

    .line 12
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->popInt()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->encodedFrameHeight:I

    .line 13
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->popInt()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->encodedFrameCount:I

    .line 14
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->popByte()B

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->codecType:I

    .line 15
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->popShort()S

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->txPacketLossRate:I

    .line 16
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->popInt()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->captureFrameRate:I

    .line 17
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->popByte()B

    move-result v0

    iput v0, p1, Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;->captureBrightnessLevel:I

    return-void
.end method
