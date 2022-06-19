.class public Lcom/freshchat/consumer/sdk/beans/TriggeredRuleId;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private flowId:Ljava/lang/String;

.field private flowVersionId:Ljava/lang/String;

.field private serviceAccountId:J

.field private timeDiffInMillis:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlowId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/TriggeredRuleId;->flowId:Ljava/lang/String;

    return-object v0
.end method

.method public getFlowVersionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/TriggeredRuleId;->flowVersionId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceAccountId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/TriggeredRuleId;->serviceAccountId:J

    return-wide v0
.end method

.method public getTimeDiffInMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/TriggeredRuleId;->timeDiffInMillis:J

    return-wide v0
.end method

.method public setFlowId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/TriggeredRuleId;->flowId:Ljava/lang/String;

    return-void
.end method

.method public setFlowVersionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/TriggeredRuleId;->flowVersionId:Ljava/lang/String;

    return-void
.end method

.method public setServiceAccountId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/TriggeredRuleId;->serviceAccountId:J

    return-void
.end method

.method public setTimeDiffInMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/TriggeredRuleId;->timeDiffInMillis:J

    return-void
.end method
