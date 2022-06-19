.class public Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;
.super Lio/agora/rtc/internal/Marshallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/RtcEngineMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaNetworkInfo"
.end annotation


# instance fields
.field public asu:I

.field public bssid:Ljava/lang/String;

.field public dnsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public frequency:I

.field public gatewayIp4:Ljava/lang/String;

.field public gatewayIp6:Ljava/lang/String;

.field public linkspeed:I

.field public localIp4:Ljava/lang/String;

.field public localIp6:Ljava/lang/String;

.field public networkSubtype:I

.field public networkType:I

.field public rssi:I

.field public signalLevel:I

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/internal/Marshallable;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->localIp4:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->gatewayIp4:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->localIp6:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->gatewayIp6:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->ssid:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->bssid:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->dnsList:Ljava/util/ArrayList;

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

.method public marshall(Lio/agora/rtc/internal/Marshallable;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->localIp4:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushBytes([B)V

    .line 3
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->gatewayIp4:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushBytes([B)V

    .line 4
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->localIp6:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushBytes([B)V

    .line 5
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->gatewayIp6:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushBytes([B)V

    .line 6
    iget v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->networkType:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 7
    iget v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->networkSubtype:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 8
    iget v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->signalLevel:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 9
    iget v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->rssi:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 10
    iget v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->asu:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 11
    iget v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->frequency:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 12
    iget v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->linkspeed:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushInt(I)V

    .line 13
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->ssid:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushBytes([B)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushBytes([B)V

    .line 16
    :goto_0
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->bssid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushBytes([B)V

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushBytes([B)V

    .line 19
    :goto_1
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->dnsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushStringArray(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 21
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/Marshallable;->pushStringArray(Ljava/util/ArrayList;)V

    :goto_2
    return-void
.end method

.method public bridge synthetic marshall(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/agora/rtc/internal/Marshallable;->marshall(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public marshall()[B
    .locals 1

    .line 22
    invoke-virtual {p0, p0}, Lio/agora/rtc/internal/RtcEngineMessage$MediaNetworkInfo;->marshall(Lio/agora/rtc/internal/Marshallable;)V

    .line 23
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

    return-void
.end method
