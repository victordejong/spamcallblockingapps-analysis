.class public final Lcom/freshchat/consumer/sdk/FreshchatConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final appId:Ljava/lang/String;

.field private final appKey:Ljava/lang/String;

.field private cameraCaptureEnabled:Z

.field private domain:Ljava/lang/String;

.field private gallerySelectionEnabled:Z

.field private responseExpectationEnabled:Z

.field private teamMemberInfoVisible:Z

.field private userEventsTrackingEnabled:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/FreshchatConfig;->responseExpectationEnabled:Z

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/FreshchatConfig;->teamMemberInfoVisible:Z

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/FreshchatConfig;->cameraCaptureEnabled:Z

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/FreshchatConfig;->gallerySelectionEnabled:Z

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/FreshchatConfig;->userEventsTrackingEnabled:Z

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/FreshchatConfig;->appId:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/FreshchatConfig;->appKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/FreshchatConfig;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/FreshchatConfig;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/FreshchatConfig;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public isCameraCaptureEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/FreshchatConfig;->cameraCaptureEnabled:Z

    return v0
.end method

.method public isGallerySelectionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/FreshchatConfig;->gallerySelectionEnabled:Z

    return v0
.end method

.method public isResponseExpectationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/FreshchatConfig;->responseExpectationEnabled:Z

    return v0
.end method

.method public isTeamMemberInfoVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/FreshchatConfig;->teamMemberInfoVisible:Z

    return v0
.end method

.method public isUserEventsTrackingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/FreshchatConfig;->userEventsTrackingEnabled:Z

    return v0
.end method

.method public setCameraCaptureEnabled(Z)Lcom/freshchat/consumer/sdk/FreshchatConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/FreshchatConfig;->cameraCaptureEnabled:Z

    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/FreshchatConfig;->domain:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setGallerySelectionEnabled(Z)Lcom/freshchat/consumer/sdk/FreshchatConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/FreshchatConfig;->gallerySelectionEnabled:Z

    return-object p0
.end method

.method public setResponseExpectationEnabled(Z)Lcom/freshchat/consumer/sdk/FreshchatConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/FreshchatConfig;->responseExpectationEnabled:Z

    return-object p0
.end method

.method public setTeamMemberInfoVisible(Z)Lcom/freshchat/consumer/sdk/FreshchatConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/FreshchatConfig;->teamMemberInfoVisible:Z

    return-object p0
.end method

.method public setUserEventsTrackingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/FreshchatConfig;->userEventsTrackingEnabled:Z

    return-void
.end method
