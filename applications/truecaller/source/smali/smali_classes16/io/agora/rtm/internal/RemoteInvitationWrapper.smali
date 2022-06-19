.class public Lio/agora/rtm/internal/RemoteInvitationWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtm/RemoteInvitation;


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteInvitationWrapper"


# instance fields
.field private callerId:Ljava/lang/String;

.field public invitationNative:Lio/agora/rtm/jni/IRemoteCallInvitation;

.field private response:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/agora/rtm/jni/IRemoteCallInvitation;)V
    .locals 1
    .param p1    # Lio/agora/rtm/jni/IRemoteCallInvitation;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lio/agora/rtm/internal/RemoteInvitationWrapper;->callerId:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lio/agora/rtm/internal/RemoteInvitationWrapper;->response:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lio/agora/rtm/internal/RemoteInvitationWrapper;->invitationNative:Lio/agora/rtm/jni/IRemoteCallInvitation;

    return-void
.end method

.method private isNativeNull()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RemoteInvitationWrapper;->invitationNative:Lio/agora/rtm/jni/IRemoteCallInvitation;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/agora/rtm/internal/RemoteInvitationWrapper;->TAG:Ljava/lang/String;

    const-string v1, "native is null!"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    invoke-direct {p0}, Lio/agora/rtm/internal/RemoteInvitationWrapper;->isNativeNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/agora/rtm/internal/RemoteInvitationWrapper;->invitationNative:Lio/agora/rtm/jni/IRemoteCallInvitation;

    invoke-virtual {v0}, Lio/agora/rtm/jni/IRemoteCallInvitation;->release()V

    :cond_0
    return-void
.end method

.method public getCallerId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RemoteInvitationWrapper;->callerId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RemoteInvitationWrapper;->isNativeNull()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/agora/rtm/internal/RemoteInvitationWrapper;->invitationNative:Lio/agora/rtm/jni/IRemoteCallInvitation;

    invoke-virtual {v0}, Lio/agora/rtm/jni/IRemoteCallInvitation;->getCallerId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/agora/rtm/internal/RemoteInvitationWrapper;->callerId:Ljava/lang/String;

    .line 3
    :cond_2
    iget-object v0, p0, Lio/agora/rtm/internal/RemoteInvitationWrapper;->callerId:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/agora/rtm/internal/RemoteInvitationWrapper;->isNativeNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/agora/rtm/internal/RemoteInvitationWrapper;->invitationNative:Lio/agora/rtm/jni/IRemoteCallInvitation;

    invoke-virtual {v0}, Lio/agora/rtm/jni/IRemoteCallInvitation;->getChannelId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/agora/rtm/internal/RemoteInvitationWrapper;->isNativeNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/agora/rtm/internal/RemoteInvitationWrapper;->invitationNative:Lio/agora/rtm/jni/IRemoteCallInvitation;

    invoke-virtual {v0}, Lio/agora/rtm/jni/IRemoteCallInvitation;->getContent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RemoteInvitationWrapper;->response:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/agora/rtm/internal/RemoteInvitationWrapper;->isNativeNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/agora/rtm/internal/RemoteInvitationWrapper;->invitationNative:Lio/agora/rtm/jni/IRemoteCallInvitation;

    .line 2
    invoke-virtual {v0}, Lio/agora/rtm/jni/IRemoteCallInvitation;->getState()Lio/agora/rtm/jni/REMOTE_INVITATION_STATE;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/rtm/jni/REMOTE_INVITATION_STATE;->swigValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/agora/rtm/internal/RemoteInvitationWrapper;->response:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lio/agora/rtm/internal/RemoteInvitationWrapper;->isNativeNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/agora/rtm/internal/RemoteInvitationWrapper;->invitationNative:Lio/agora/rtm/jni/IRemoteCallInvitation;

    invoke-virtual {v0, p1}, Lio/agora/rtm/jni/IRemoteCallInvitation;->setResponse(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "remoteInvitation {callerId: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/agora/rtm/internal/RemoteInvitationWrapper;->getCallerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", channelId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/agora/rtm/internal/RemoteInvitationWrapper;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
