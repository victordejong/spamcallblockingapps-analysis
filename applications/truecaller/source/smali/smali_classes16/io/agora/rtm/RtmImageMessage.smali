.class public abstract Lio/agora/rtm/RtmImageMessage;
.super Lio/agora/rtm/RtmMessage;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtm/RtmMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getMediaId()Ljava/lang/String;
.end method

.method public abstract getSize()J
.end method

.method public abstract getThumbnail()[B
.end method

.method public abstract getThumbnailHeight()I
.end method

.method public abstract getThumbnailWidth()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract setFileName(Ljava/lang/String;)V
.end method

.method public abstract setHeight(I)V
.end method

.method public abstract setThumbnail([B)V
.end method

.method public abstract setThumbnailHeight(I)V
.end method

.method public abstract setThumbnailWidth(I)V
.end method

.method public abstract setWidth(I)V
.end method
