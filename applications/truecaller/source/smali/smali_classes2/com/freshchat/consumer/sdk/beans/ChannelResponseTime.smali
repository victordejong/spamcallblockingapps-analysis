.class public Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;
    }
.end annotation


# instance fields
.field private channelId:J

.field private customResponseTimeMessage:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "customRespMsg"
    .end annotation
.end field

.field private responseTime:J

.field private responseTimeType:Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->channelId:J

    iput-wide p3, p0, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->responseTime:J

    return-void
.end method


# virtual methods
.method public getChannelId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->channelId:J

    return-wide v0
.end method

.method public getCustomResponseTimeMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->customResponseTimeMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseTime()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->responseTime:J

    return-wide v0
.end method

.method public getResponseTimeType()Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->responseTimeType:Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;

    return-object v0
.end method

.method public setChannelId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->channelId:J

    return-void
.end method

.method public setCustomResponseTimeMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->customResponseTimeMessage:Ljava/lang/String;

    return-void
.end method

.method public setResponseTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->responseTime:J

    return-void
.end method

.method public setResponseTimeType(Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->responseTimeType:Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ChannelResponseTime{channelId="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->channelId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", responseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->responseTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", customResponseTimeMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->customResponseTimeMessage:Ljava/lang/String;

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
