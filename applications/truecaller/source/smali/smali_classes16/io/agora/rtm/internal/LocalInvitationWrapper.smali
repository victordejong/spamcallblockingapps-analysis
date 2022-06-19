.class public Lio/agora/rtm/internal/LocalInvitationWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtm/LocalInvitation;


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalInvitationWrapper"


# instance fields
.field private calleeId:Ljava/lang/String;

.field private channelId:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field public invitationNative:Lio/agora/rtm/jni/ILocalCallInvitation;


# direct methods
.method private constructor <init>(Lio/agora/rtm/jni/ILocalCallInvitation;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lio/agora/rtm/internal/LocalInvitationWrapper;->content:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lio/agora/rtm/internal/LocalInvitationWrapper;->channelId:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lio/agora/rtm/internal/LocalInvitationWrapper;->invitationNative:Lio/agora/rtm/jni/ILocalCallInvitation;

    .line 5
    iput-object p2, p0, Lio/agora/rtm/internal/LocalInvitationWrapper;->calleeId:Ljava/lang/String;

    return-void
.end method

.method public static create(Lio/agora/rtm/jni/IRtmCallManager;Ljava/lang/String;)Lio/agora/rtm/internal/LocalInvitationWrapper;
    .locals 1
    .param p0    # Lio/agora/rtm/jni/IRtmCallManager;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lio/agora/rtm/jni/IRtmCallManager;->createLocalCallInvitation(Ljava/lang/String;)Lio/agora/rtm/jni/ILocalCallInvitation;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lio/agora/rtm/internal/LocalInvitationWrapper;

    invoke-direct {v0, p0, p1}, Lio/agora/rtm/internal/LocalInvitationWrapper;-><init>(Lio/agora/rtm/jni/ILocalCallInvitation;Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private isNativeNull()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/LocalInvitationWrapper;->invitationNative:Lio/agora/rtm/jni/ILocalCallInvitation;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/agora/rtm/internal/LocalInvitationWrapper;->TAG:Ljava/lang/String;

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
    invoke-direct {p0}, Lio/agora/rtm/internal/LocalInvitationWrapper;->isNativeNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/agora/rtm/internal/LocalInvitationWrapper;->invitationNative:Lio/agora/rtm/jni/ILocalCallInvitation;

    invoke-virtual {v0}, Lio/agora/rtm/jni/ILocalCallInvitation;->release()V

    :cond_0
    return-void
.end method

.method public getCalleeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/LocalInvitationWrapper;->calleeId:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/LocalInvitationWrapper;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/LocalInvitationWrapper;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/agora/rtm/internal/LocalInvitationWrapper;->isNativeNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/agora/rtm/internal/LocalInvitationWrapper;->invitationNative:Lio/agora/rtm/jni/ILocalCallInvitation;

    invoke-virtual {v0}, Lio/agora/rtm/jni/ILocalCallInvitation;->getResponse()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/agora/rtm/internal/LocalInvitationWrapper;->isNativeNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/agora/rtm/internal/LocalInvitationWrapper;->invitationNative:Lio/agora/rtm/jni/ILocalCallInvitation;

    .line 2
    invoke-virtual {v0}, Lio/agora/rtm/jni/ILocalCallInvitation;->getState()Lio/agora/rtm/jni/LOCAL_INVITATION_STATE;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/rtm/jni/LOCAL_INVITATION_STATE;->swigValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/agora/rtm/internal/LocalInvitationWrapper;->channelId:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lio/agora/rtm/internal/LocalInvitationWrapper;->isNativeNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/agora/rtm/internal/LocalInvitationWrapper;->invitationNative:Lio/agora/rtm/jni/ILocalCallInvitation;

    invoke-virtual {v0, p1}, Lio/agora/rtm/jni/ILocalCallInvitation;->setChannelId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/agora/rtm/internal/LocalInvitationWrapper;->content:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lio/agora/rtm/internal/LocalInvitationWrapper;->isNativeNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/agora/rtm/internal/LocalInvitationWrapper;->invitationNative:Lio/agora/rtm/jni/ILocalCallInvitation;

    invoke-virtual {v0, p1}, Lio/agora/rtm/jni/ILocalCallInvitation;->setContent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "localInvitation {callee: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/agora/rtm/internal/LocalInvitationWrapper;->getCalleeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", channelId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/agora/rtm/internal/LocalInvitationWrapper;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
