.class public interface abstract Lio/agora/rtm/RtmChannelListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onAttributesUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/agora/rtm/RtmChannelAttribute;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onFileMessageReceived(Lio/agora/rtm/RtmFileMessage;Lio/agora/rtm/RtmChannelMember;)V
.end method

.method public abstract onImageMessageReceived(Lio/agora/rtm/RtmImageMessage;Lio/agora/rtm/RtmChannelMember;)V
.end method

.method public abstract onMemberCountUpdated(I)V
.end method

.method public abstract onMemberJoined(Lio/agora/rtm/RtmChannelMember;)V
.end method

.method public abstract onMemberLeft(Lio/agora/rtm/RtmChannelMember;)V
.end method

.method public abstract onMessageReceived(Lio/agora/rtm/RtmMessage;Lio/agora/rtm/RtmChannelMember;)V
.end method
