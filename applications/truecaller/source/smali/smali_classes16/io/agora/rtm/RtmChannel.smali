.class public abstract Lio/agora/rtm/RtmChannel;
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
.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getMembers(Lio/agora/rtm/ResultCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/util/List<",
            "Lio/agora/rtm/RtmChannelMember;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract join(Lio/agora/rtm/ResultCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract leave(Lio/agora/rtm/ResultCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract sendMessage(Lio/agora/rtm/RtmMessage;Lio/agora/rtm/ResultCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/RtmMessage;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendMessage(Lio/agora/rtm/RtmMessage;Lio/agora/rtm/SendMessageOptions;Lio/agora/rtm/ResultCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/RtmMessage;",
            "Lio/agora/rtm/SendMessageOptions;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
