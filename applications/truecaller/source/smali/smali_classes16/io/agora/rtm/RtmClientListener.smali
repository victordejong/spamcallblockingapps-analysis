.class public interface abstract Lio/agora/rtm/RtmClientListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onConnectionStateChanged(II)V
.end method

.method public abstract onFileMessageReceivedFromPeer(Lio/agora/rtm/RtmFileMessage;Ljava/lang/String;)V
.end method

.method public abstract onImageMessageReceivedFromPeer(Lio/agora/rtm/RtmImageMessage;Ljava/lang/String;)V
.end method

.method public abstract onMediaDownloadingProgress(Lio/agora/rtm/RtmMediaOperationProgress;J)V
.end method

.method public abstract onMediaUploadingProgress(Lio/agora/rtm/RtmMediaOperationProgress;J)V
.end method

.method public abstract onMessageReceived(Lio/agora/rtm/RtmMessage;Ljava/lang/String;)V
.end method

.method public abstract onPeersOnlineStatusChanged(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onTokenExpired()V
.end method
