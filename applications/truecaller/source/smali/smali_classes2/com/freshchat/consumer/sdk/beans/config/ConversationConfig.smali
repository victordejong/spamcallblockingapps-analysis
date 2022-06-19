.class public Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig$AgentAvatarType;
    }
.end annotation


# instance fields
.field private activeConvFetchBackoffRatio:D

.field private activeConvWindow:J

.field private launchDeeplinkFromNotification:Z

.field private reopenedMsgTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private resolvedMsgTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveConvFetchBackoffRatio()D
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->activeConvFetchBackoffRatio:D

    return-wide v0
.end method

.method public getActiveConvWindow()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->activeConvWindow:J

    return-wide v0
.end method

.method public getReopenedMsgtypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->reopenedMsgTypes:Ljava/util/Set;

    return-object v0
.end method

.method public getResolvedMsgTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->resolvedMsgTypes:Ljava/util/Set;

    return-object v0
.end method

.method public setActiveConvFetchBackoffRatio(D)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->activeConvFetchBackoffRatio:D

    return-void
.end method

.method public setActiveConvWindow(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->activeConvWindow:J

    return-void
.end method

.method public setLaunchDeeplinkFromNotification(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->launchDeeplinkFromNotification:Z

    return-void
.end method

.method public setReopenedMsgtypes(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->reopenedMsgTypes:Ljava/util/Set;

    return-void
.end method

.method public setResolvedMsgTypes(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->resolvedMsgTypes:Ljava/util/Set;

    return-void
.end method

.method public shouldLaunchDeeplinkFromNotification()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->launchDeeplinkFromNotification:Z

    return v0
.end method
