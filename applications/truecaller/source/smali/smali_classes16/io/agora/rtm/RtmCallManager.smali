.class public abstract Lio/agora/rtm/RtmCallManager;
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
.method public abstract acceptRemoteInvitation(Lio/agora/rtm/RemoteInvitation;Lio/agora/rtm/ResultCallback;)V
    .param p1    # Lio/agora/rtm/RemoteInvitation;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/RemoteInvitation;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract cancelLocalInvitation(Lio/agora/rtm/LocalInvitation;Lio/agora/rtm/ResultCallback;)V
    .param p1    # Lio/agora/rtm/LocalInvitation;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/LocalInvitation;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createLocalInvitation(Ljava/lang/String;)Lio/agora/rtm/LocalInvitation;
    .param p1    # Ljava/lang/String;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lio/agora/common/annotation/Nullable;
    .end annotation
.end method

.method public abstract refuseRemoteInvitation(Lio/agora/rtm/RemoteInvitation;Lio/agora/rtm/ResultCallback;)V
    .param p1    # Lio/agora/rtm/RemoteInvitation;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/RemoteInvitation;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendLocalInvitation(Lio/agora/rtm/LocalInvitation;Lio/agora/rtm/ResultCallback;)V
    .param p1    # Lio/agora/rtm/LocalInvitation;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/LocalInvitation;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setEventListener(Lio/agora/rtm/RtmCallEventListener;)V
.end method
