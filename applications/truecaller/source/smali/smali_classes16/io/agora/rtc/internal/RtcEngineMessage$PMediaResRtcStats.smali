.class public Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;
.super Lio/agora/rtc/internal/Marshallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/RtcEngineMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PMediaResRtcStats"
.end annotation


# instance fields
.field public cpuAppUsage:I

.field public cpuTotalUsage:I

.field public gatewayRtt:I

.field public lastmileDelay:I

.field public memoryAppUsageInKbytes:I

.field public memoryAppUsageRatio:I

.field public memoryTotalUsageRatio:I

.field public rxAudioBytes:I

.field public rxAudioKBitRate:I

.field public rxKBitRate:I

.field public rxPacketLossRate:I

.field public rxVideoBytes:I

.field public rxVideoKBitRate:I

.field public totalDuration:I

.field public totalRxBytes:I

.field public totalTxBytes:I

.field public txAudioBytes:I

.field public txAudioKBitRate:I

.field public txKBitRate:I

.field public txPacketLossRate:I

.field public txVideoBytes:I

.field public txVideoKBitRate:I

.field public users:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/internal/Marshallable;-><init>()V

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
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->unmarshall([B)V

    .line 3
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->totalDuration:I

    .line 4
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->totalTxBytes:I

    .line 5
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->totalRxBytes:I

    .line 6
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->txAudioBytes:I

    .line 7
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->rxAudioBytes:I

    .line 8
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->txVideoBytes:I

    .line 9
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->rxVideoBytes:I

    .line 10
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->popShort()S

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->txKBitRate:I

    .line 11
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->popShort()S

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->rxKBitRate:I

    .line 12
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->popShort()S

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->txAudioKBitRate:I

    .line 13
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->popShort()S

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->rxAudioKBitRate:I

    .line 14
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->popShort()S

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->txVideoKBitRate:I

    .line 15
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->popShort()S

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->rxVideoKBitRate:I

    .line 16
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->popShort()S

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->lastmileDelay:I

    .line 17
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->popShort()S

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->txPacketLossRate:I

    .line 18
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->popShort()S

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->rxPacketLossRate:I

    .line 19
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->cpuTotalUsage:I

    .line 20
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->cpuAppUsage:I

    .line 21
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->users:I

    .line 22
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->gatewayRtt:I

    .line 23
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->memoryTotalUsageRatio:I

    .line 24
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->memoryAppUsageRatio:I

    .line 25
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->memoryAppUsageInKbytes:I

    return-void
.end method
