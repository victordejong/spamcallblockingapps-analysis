.class public abstract Lio/agora/rtm/RtmMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getMessageType()I
.end method

.method public abstract getRawMessage()[B
.end method

.method public abstract getServerReceivedTs()J
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract isOfflineMessage()Z
.end method

.method public abstract setRawMessage([B)V
.end method

.method public abstract setRawMessage([BLjava/lang/String;)V
.end method

.method public abstract setText(Ljava/lang/String;)V
.end method
