.class public Lio/agora/rtm/internal/RtmFileMessageImpl;
.super Lio/agora/rtm/RtmFileMessage;
.source "SourceFile"


# instance fields
.field private fileName:Ljava/lang/String;

.field private isOfflineMessage:Z

.field private mediaId:Ljava/lang/String;

.field private serverReceivedTs:J

.field private size:J

.field private text:Ljava/lang/String;

.field private thumbnail:[B


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lio/agora/rtm/RtmFileMessage;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lio/agora/rtm/internal/RtmFileMessageImpl;->text:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lio/agora/rtm/internal/RtmFileMessageImpl;->serverReceivedTs:J

    const/4 v3, 0x0

    .line 4
    iput-boolean v3, p0, Lio/agora/rtm/internal/RtmFileMessageImpl;->isOfflineMessage:Z

    .line 5
    iput-wide v1, p0, Lio/agora/rtm/internal/RtmFileMessageImpl;->size:J

    .line 6
    iput-object v0, p0, Lio/agora/rtm/internal/RtmFileMessageImpl;->mediaId:Ljava/lang/String;

    new-array v1, v3, [B

    .line 7
    iput-object v1, p0, Lio/agora/rtm/internal/RtmFileMessageImpl;->thumbnail:[B

    .line 8
    iput-object v0, p0, Lio/agora/rtm/internal/RtmFileMessageImpl;->fileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmFileMessageImpl;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmFileMessageImpl;->mediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getRawMessage()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServerReceivedTs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/internal/RtmFileMessageImpl;->serverReceivedTs:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/internal/RtmFileMessageImpl;->size:J

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmFileMessageImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmFileMessageImpl;->thumbnail:[B

    return-object v0
.end method

.method public isOfflineMessage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/agora/rtm/internal/RtmFileMessageImpl;->isOfflineMessage:Z

    return v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtm/internal/RtmFileMessageImpl;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setIsOfflineMessage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/agora/rtm/internal/RtmFileMessageImpl;->isOfflineMessage:Z

    return-void
.end method

.method public setMediaId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtm/internal/RtmFileMessageImpl;->mediaId:Ljava/lang/String;

    return-void
.end method

.method public setRawMessage([B)V
    .locals 0

    return-void
.end method

.method public setRawMessage([BLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setServerReceivedTs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/agora/rtm/internal/RtmFileMessageImpl;->serverReceivedTs:J

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/agora/rtm/internal/RtmFileMessageImpl;->size:J

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtm/internal/RtmFileMessageImpl;->text:Ljava/lang/String;

    return-void
.end method

.method public setThumbnail([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtm/internal/RtmFileMessageImpl;->thumbnail:[B

    return-void
.end method
