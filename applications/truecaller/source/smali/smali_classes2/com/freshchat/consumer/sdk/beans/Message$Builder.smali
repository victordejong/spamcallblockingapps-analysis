.class public Lcom/freshchat/consumer/sdk/beans/Message$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/beans/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private alias:Ljava/lang/String;

.field private channelId:J

.field private createdMillis:J

.field private flowStepId:Ljava/lang/String;

.field private hostConversationId:J

.field private id:J

.field private internalMeta:Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

.field private isResponded:Z

.field private marketingId:J

.field private messageType:I

.field private messageUserAlias:Ljava/lang/String;

.field private messageUserName:Ljava/lang/String;

.field private messageUserProfilePic:Ljava/lang/String;

.field private messageUserType:I

.field private read:Z

.field private replyFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;"
        }
    .end annotation
.end field

.field private replyTo:Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;

.field private shouldTranslate:I

.field private source:I

.field private uploadState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->source:I

    return-void
.end method


# virtual methods
.method public alias(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->alias:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 3

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/Message;-><init>()V

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->id:J

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/beans/Message;->access$102(Lcom/freshchat/consumer/sdk/beans/Message;J)J

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->alias:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->access$202(Lcom/freshchat/consumer/sdk/beans/Message;Ljava/lang/String;)Ljava/lang/String;

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->channelId:J

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/beans/Message;->access$302(Lcom/freshchat/consumer/sdk/beans/Message;J)J

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->marketingId:J

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/beans/Message;->access$402(Lcom/freshchat/consumer/sdk/beans/Message;J)J

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->messageType:I

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->access$502(Lcom/freshchat/consumer/sdk/beans/Message;I)I

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->hostConversationId:J

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/beans/Message;->access$602(Lcom/freshchat/consumer/sdk/beans/Message;J)J

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->messageUserType:I

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->access$702(Lcom/freshchat/consumer/sdk/beans/Message;I)I

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->messageUserAlias:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->access$802(Lcom/freshchat/consumer/sdk/beans/Message;Ljava/lang/String;)Ljava/lang/String;

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->source:I

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->access$902(Lcom/freshchat/consumer/sdk/beans/Message;I)I

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->read:Z

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->access$1002(Lcom/freshchat/consumer/sdk/beans/Message;Z)Z

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->createdMillis:J

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/beans/Message;->access$1102(Lcom/freshchat/consumer/sdk/beans/Message;J)J

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->uploadState:I

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->access$1202(Lcom/freshchat/consumer/sdk/beans/Message;I)I

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->replyFragments:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->access$1302(Lcom/freshchat/consumer/sdk/beans/Message;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->internalMeta:Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->access$1402(Lcom/freshchat/consumer/sdk/beans/Message;Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;)Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->replyTo:Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->access$1502(Lcom/freshchat/consumer/sdk/beans/Message;Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;)Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->isResponded:Z

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->access$1602(Lcom/freshchat/consumer/sdk/beans/Message;Z)Z

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->shouldTranslate:I

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->access$1702(Lcom/freshchat/consumer/sdk/beans/Message;I)I

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->flowStepId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->access$1802(Lcom/freshchat/consumer/sdk/beans/Message;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->messageUserName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->access$1902(Lcom/freshchat/consumer/sdk/beans/Message;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->messageUserProfilePic:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->access$2002(Lcom/freshchat/consumer/sdk/beans/Message;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public channelId(J)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->channelId:J

    return-object p0
.end method

.method public createdMillis(J)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->createdMillis:J

    return-object p0
.end method

.method public hostConversationId(J)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->hostConversationId:J

    return-object p0
.end method

.method public id(J)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->id:J

    return-object p0
.end method

.method public internalMeta(Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->internalMeta:Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

    return-object p0
.end method

.method public isResponded(Z)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->isResponded:Z

    return-object p0
.end method

.method public marketingId(J)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->marketingId:J

    return-object p0
.end method

.method public messageType(I)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->messageType:I

    return-object p0
.end method

.method public messageUserAlias(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->messageUserAlias:Ljava/lang/String;

    return-object p0
.end method

.method public messageUserType(I)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->messageUserType:I

    return-object p0
.end method

.method public read(Z)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->read:Z

    return-object p0
.end method

.method public replyFragments(Ljava/util/List;)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;)",
            "Lcom/freshchat/consumer/sdk/beans/Message$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->replyFragments:Ljava/util/List;

    return-object p0
.end method

.method public replyTo(Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->replyTo:Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;

    return-object p0
.end method

.method public setFlowStepId(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->flowStepId:Ljava/lang/String;

    return-object p0
.end method

.method public setMessageUserName(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->messageUserName:Ljava/lang/String;

    return-object p0
.end method

.method public setMessageUserProfilePic(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->messageUserProfilePic:Ljava/lang/String;

    return-object p0
.end method

.method public setShouldTranslate(I)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->shouldTranslate:I

    return-object p0
.end method

.method public uploadState(I)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->uploadState:I

    return-object p0
.end method
