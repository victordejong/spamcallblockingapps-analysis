.class public Lio/agora/rtm/internal/RtmMessageImpl;
.super Lio/agora/rtm/RtmMessage;
.source "SourceFile"


# instance fields
.field private isOfflineMessage:Z

.field private msgType:I

.field private rawData:[B

.field private serverReceivedTs:J

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/agora/rtm/RtmMessage;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lio/agora/rtm/internal/RtmMessageImpl;->text:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    iput-object v1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->rawData:[B

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->serverReceivedTs:J

    .line 5
    iput-boolean v0, p0, Lio/agora/rtm/internal/RtmMessageImpl;->isOfflineMessage:Z

    .line 6
    iput v0, p0, Lio/agora/rtm/internal/RtmMessageImpl;->msgType:I

    .line 7
    iput-object p1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->text:Ljava/lang/String;

    const/4 p1, 0x1

    .line 8
    iput p1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->msgType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 3

    .line 9
    invoke-direct {p0}, Lio/agora/rtm/RtmMessage;-><init>()V

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lio/agora/rtm/internal/RtmMessageImpl;->text:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 11
    iput-object v1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->rawData:[B

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->serverReceivedTs:J

    .line 13
    iput-boolean v0, p0, Lio/agora/rtm/internal/RtmMessageImpl;->isOfflineMessage:Z

    .line 14
    iput v0, p0, Lio/agora/rtm/internal/RtmMessageImpl;->msgType:I

    .line 15
    iput-object p1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->text:Ljava/lang/String;

    const/4 p1, 0x1

    .line 16
    iput p1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->msgType:I

    .line 17
    iput-wide p2, p0, Lio/agora/rtm/internal/RtmMessageImpl;->serverReceivedTs:J

    .line 18
    iput-boolean p4, p0, Lio/agora/rtm/internal/RtmMessageImpl;->isOfflineMessage:Z

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .line 19
    invoke-direct {p0}, Lio/agora/rtm/RtmMessage;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lio/agora/rtm/internal/RtmMessageImpl;->text:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 21
    iput-object v1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->rawData:[B

    const-wide/16 v1, 0x0

    .line 22
    iput-wide v1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->serverReceivedTs:J

    .line 23
    iput-boolean v0, p0, Lio/agora/rtm/internal/RtmMessageImpl;->isOfflineMessage:Z

    .line 24
    iput v0, p0, Lio/agora/rtm/internal/RtmMessageImpl;->msgType:I

    .line 25
    iput-object p1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->rawData:[B

    const/4 p1, 0x2

    .line 26
    iput p1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->msgType:I

    return-void
.end method

.method public constructor <init>([BJZ)V
    .locals 3

    .line 36
    invoke-direct {p0}, Lio/agora/rtm/RtmMessage;-><init>()V

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lio/agora/rtm/internal/RtmMessageImpl;->text:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 38
    iput-object v1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->rawData:[B

    const-wide/16 v1, 0x0

    .line 39
    iput-wide v1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->serverReceivedTs:J

    .line 40
    iput-boolean v0, p0, Lio/agora/rtm/internal/RtmMessageImpl;->isOfflineMessage:Z

    .line 41
    iput v0, p0, Lio/agora/rtm/internal/RtmMessageImpl;->msgType:I

    .line 42
    iput-object p1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->rawData:[B

    const/4 p1, 0x2

    .line 43
    iput p1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->msgType:I

    .line 44
    iput-wide p2, p0, Lio/agora/rtm/internal/RtmMessageImpl;->serverReceivedTs:J

    .line 45
    iput-boolean p4, p0, Lio/agora/rtm/internal/RtmMessageImpl;->isOfflineMessage:Z

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Lio/agora/rtm/RtmMessage;-><init>()V

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lio/agora/rtm/internal/RtmMessageImpl;->text:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 29
    iput-object v1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->rawData:[B

    const-wide/16 v1, 0x0

    .line 30
    iput-wide v1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->serverReceivedTs:J

    .line 31
    iput-boolean v0, p0, Lio/agora/rtm/internal/RtmMessageImpl;->isOfflineMessage:Z

    .line 32
    iput v0, p0, Lio/agora/rtm/internal/RtmMessageImpl;->msgType:I

    .line 33
    iput-object p1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->rawData:[B

    .line 34
    iput-object p2, p0, Lio/agora/rtm/internal/RtmMessageImpl;->text:Ljava/lang/String;

    const/4 p1, 0x2

    .line 35
    iput p1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->msgType:I

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;JZ)V
    .locals 3

    .line 46
    invoke-direct {p0}, Lio/agora/rtm/RtmMessage;-><init>()V

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lio/agora/rtm/internal/RtmMessageImpl;->text:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 48
    iput-object v1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->rawData:[B

    const-wide/16 v1, 0x0

    .line 49
    iput-wide v1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->serverReceivedTs:J

    .line 50
    iput-boolean v0, p0, Lio/agora/rtm/internal/RtmMessageImpl;->isOfflineMessage:Z

    .line 51
    iput v0, p0, Lio/agora/rtm/internal/RtmMessageImpl;->msgType:I

    .line 52
    iput-object p1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->rawData:[B

    .line 53
    iput-object p2, p0, Lio/agora/rtm/internal/RtmMessageImpl;->text:Ljava/lang/String;

    const/4 p1, 0x2

    .line 54
    iput p1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->msgType:I

    .line 55
    iput-wide p3, p0, Lio/agora/rtm/internal/RtmMessageImpl;->serverReceivedTs:J

    .line 56
    iput-boolean p5, p0, Lio/agora/rtm/internal/RtmMessageImpl;->isOfflineMessage:Z

    return-void
.end method


# virtual methods
.method public getMessageType()I
    .locals 1

    .line 1
    iget v0, p0, Lio/agora/rtm/internal/RtmMessageImpl;->msgType:I

    return v0
.end method

.method public getRawMessage()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmMessageImpl;->rawData:[B

    return-object v0
.end method

.method public getServerReceivedTs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/internal/RtmMessageImpl;->serverReceivedTs:J

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmMessageImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isOfflineMessage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/agora/rtm/internal/RtmMessageImpl;->isOfflineMessage:Z

    return v0
.end method

.method public setRawMessage([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->rawData:[B

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->msgType:I

    return-void
.end method

.method public setRawMessage([BLjava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/agora/rtm/internal/RtmMessageImpl;->setRawMessage([B)V

    .line 4
    iput-object p2, p0, Lio/agora/rtm/internal/RtmMessageImpl;->text:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtm/internal/RtmMessageImpl;->text:Ljava/lang/String;

    return-void
.end method
