.class public Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/beans/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReplyTo"
.end annotation


# instance fields
.field private originalMessageId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;)J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;->originalMessageId:J

    return-wide v0
.end method


# virtual methods
.method public getOriginalMessageId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;->originalMessageId:J

    return-wide v0
.end method

.method public setOriginalMessageId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;->originalMessageId:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ReplyTo{originalMessageId="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;->originalMessageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
