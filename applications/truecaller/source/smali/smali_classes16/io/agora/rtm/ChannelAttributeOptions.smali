.class public Lio/agora/rtm/ChannelAttributeOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private enableNotificationToChannelMembers:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lio/agora/rtm/ChannelAttributeOptions;->enableNotificationToChannelMembers:Z

    return-void
.end method


# virtual methods
.method public getEnableNotificationToChannelMembers()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/agora/rtm/ChannelAttributeOptions;->enableNotificationToChannelMembers:Z

    return v0
.end method

.method public setEnableNotificationToChannelMembers(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/agora/rtm/ChannelAttributeOptions;->enableNotificationToChannelMembers:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ChannelAttributeOptions {enableNotificationToChannelMembers: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/agora/rtm/ChannelAttributeOptions;->enableNotificationToChannelMembers:Z

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
