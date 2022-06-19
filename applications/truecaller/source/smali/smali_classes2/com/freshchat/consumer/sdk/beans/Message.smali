.class public Lcom/freshchat/consumer/sdk/beans/Message;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;,
        Lcom/freshchat/consumer/sdk/beans/Message$MessageType;,
        Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    }
.end annotation


# static fields
.field public static final DO_NOT_DISPLAY:I = -0x1

.field public static final DO_NOT_TRANSLATE:I = 0x0

.field public static final MESSAGE_READ:I = 0x1

.field public static final MESSAGE_UNREAD:I = 0x0

.field public static final MUST_TRANSLATE:I = 0x1

.field public static final MUST_TRANSLATE_BUT_TRANSLATION_FAILED:I = 0x2

.field public static final RESPONSE_GIVEN:I = 0x1

.field public static final RESPONSE_PENDING:I = 0x0

.field public static final SHOULD_DELETE:I = 0x1

.field public static final SHOULD_NOT_DELETE:I = 0x0

.field public static final SOURCE_MOBILE:I = 0x2

.field public static final UPLOAD_STATE_PENDING:I = 0x0

.field public static final UPLOAD_STATE_UPLOADED:I = 0x1


# instance fields
.field private alias:Ljava/lang/String;

.field private channelId:J

.field private conversationId:J

.field private createdMillis:J

.field private flowStepId:Ljava/lang/String;

.field private id:J
    .annotation runtime Le/m/e/d0/b;
        value = "messageId"
    .end annotation
.end field

.field private internalMeta:Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

.field private isResponded:Z

.field private marketingId:J

.field private messageFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;"
        }
    .end annotation
.end field

.field private messageType:I

.field private messageUserAlias:Ljava/lang/String;

.field private messageUserName:Ljava/lang/String;

.field private messageUserProfilePic:Ljava/lang/String;

.field private messageUserType:I

.field private read:Z
    .annotation runtime Le/m/e/d0/b;
        value = "readByUser"
    .end annotation
.end field

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

.field private triggeredRuleIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/TriggeredRuleId;",
            ">;"
        }
    .end annotation
.end field

.field private transient uploadState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->source:I

    return-void
.end method

.method public static synthetic access$1002(Lcom/freshchat/consumer/sdk/beans/Message;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->read:Z

    return p1
.end method

.method public static synthetic access$102(Lcom/freshchat/consumer/sdk/beans/Message;J)J
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->id:J

    return-wide p1
.end method

.method public static synthetic access$1102(Lcom/freshchat/consumer/sdk/beans/Message;J)J
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->createdMillis:J

    return-wide p1
.end method

.method public static synthetic access$1202(Lcom/freshchat/consumer/sdk/beans/Message;I)I
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->uploadState:I

    return p1
.end method

.method public static synthetic access$1302(Lcom/freshchat/consumer/sdk/beans/Message;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->replyFragments:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$1402(Lcom/freshchat/consumer/sdk/beans/Message;Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;)Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->internalMeta:Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

    return-object p1
.end method

.method public static synthetic access$1502(Lcom/freshchat/consumer/sdk/beans/Message;Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;)Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->replyTo:Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;

    return-object p1
.end method

.method public static synthetic access$1602(Lcom/freshchat/consumer/sdk/beans/Message;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->isResponded:Z

    return p1
.end method

.method public static synthetic access$1702(Lcom/freshchat/consumer/sdk/beans/Message;I)I
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->shouldTranslate:I

    return p1
.end method

.method public static synthetic access$1802(Lcom/freshchat/consumer/sdk/beans/Message;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->flowStepId:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1902(Lcom/freshchat/consumer/sdk/beans/Message;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserName:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$2002(Lcom/freshchat/consumer/sdk/beans/Message;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserProfilePic:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/freshchat/consumer/sdk/beans/Message;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->alias:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/freshchat/consumer/sdk/beans/Message;J)J
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->channelId:J

    return-wide p1
.end method

.method public static synthetic access$402(Lcom/freshchat/consumer/sdk/beans/Message;J)J
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->marketingId:J

    return-wide p1
.end method

.method public static synthetic access$502(Lcom/freshchat/consumer/sdk/beans/Message;I)I
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageType:I

    return p1
.end method

.method public static synthetic access$602(Lcom/freshchat/consumer/sdk/beans/Message;J)J
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->conversationId:J

    return-wide p1
.end method

.method public static synthetic access$702(Lcom/freshchat/consumer/sdk/beans/Message;I)I
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserType:I

    return p1
.end method

.method public static synthetic access$802(Lcom/freshchat/consumer/sdk/beans/Message;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserAlias:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$902(Lcom/freshchat/consumer/sdk/beans/Message;I)I
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->source:I

    return p1
.end method


# virtual methods
.method public addMessageFragment(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_6

    :cond_1
    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Message;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v2

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->replyFragments:Ljava/util/List;

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v3

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/beans/Message;->internalMeta:Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

    if-nez v4, :cond_2

    iget-object v4, p1, Lcom/freshchat/consumer/sdk/beans/Message;->internalMeta:Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

    if-nez v4, :cond_2

    move v4, v0

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    iget-wide v5, p0, Lcom/freshchat/consumer/sdk/beans/Message;->marketingId:J

    iget-wide v7, p1, Lcom/freshchat/consumer/sdk/beans/Message;->marketingId:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    iget-wide v5, p0, Lcom/freshchat/consumer/sdk/beans/Message;->channelId:J

    iget-wide v7, p1, Lcom/freshchat/consumer/sdk/beans/Message;->channelId:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    iget-wide v5, p0, Lcom/freshchat/consumer/sdk/beans/Message;->conversationId:J

    iget-wide v7, p1, Lcom/freshchat/consumer/sdk/beans/Message;->conversationId:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    iget v5, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserType:I

    iget v6, p1, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserType:I

    if-ne v5, v6, :cond_4

    iget v5, p0, Lcom/freshchat/consumer/sdk/beans/Message;->source:I

    iget v6, p1, Lcom/freshchat/consumer/sdk/beans/Message;->source:I

    if-ne v5, v6, :cond_4

    iget-boolean v5, p0, Lcom/freshchat/consumer/sdk/beans/Message;->read:Z

    iget-boolean v6, p1, Lcom/freshchat/consumer/sdk/beans/Message;->read:Z

    if-ne v5, v6, :cond_4

    iget-wide v5, p0, Lcom/freshchat/consumer/sdk/beans/Message;->createdMillis:J

    iget-wide v7, p1, Lcom/freshchat/consumer/sdk/beans/Message;->createdMillis:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    iget v5, p0, Lcom/freshchat/consumer/sdk/beans/Message;->uploadState:I

    iget v6, p1, Lcom/freshchat/consumer/sdk/beans/Message;->uploadState:I

    if-ne v5, v6, :cond_4

    iget v5, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageType:I

    iget v6, p1, Lcom/freshchat/consumer/sdk/beans/Message;->messageType:I

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/beans/Message;->alias:Ljava/lang/String;

    iget-object v6, p1, Lcom/freshchat/consumer/sdk/beans/Message;->alias:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserAlias:Ljava/lang/String;

    iget-object v6, p1, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserAlias:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p1, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    invoke-static {v5}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v5

    if-ne v2, v5, :cond_4

    iget-object v5, p1, Lcom/freshchat/consumer/sdk/beans/Message;->replyFragments:Ljava/util/List;

    invoke-static {v5}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v5

    if-ne v3, v5, :cond_4

    if-nez v4, :cond_3

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->internalMeta:Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/freshchat/consumer/sdk/beans/Message;->internalMeta:Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

    if-eqz v3, :cond_4

    :cond_3
    iget-wide v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->id:J

    iget-wide v5, p1, Lcom/freshchat/consumer/sdk/beans/Message;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->isResponded:Z

    iget-boolean v4, p1, Lcom/freshchat/consumer/sdk/beans/Message;->isResponded:Z

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->shouldTranslate:I

    iget v4, p1, Lcom/freshchat/consumer/sdk/beans/Message;->shouldTranslate:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->flowStepId:Ljava/lang/String;

    iget-object v4, p1, Lcom/freshchat/consumer/sdk/beans/Message;->flowStepId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserName:Ljava/lang/String;

    iget-object v4, p1, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserProfilePic:Ljava/lang/String;

    iget-object v4, p1, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserProfilePic:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v0

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/freshchat/consumer/sdk/beans/Message;->replyTo:Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_5

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;->access$000(Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;)J

    move-result-wide v7

    goto :goto_2

    :cond_5
    move-wide v7, v5

    :goto_2
    iget-object v4, p1, Lcom/freshchat/consumer/sdk/beans/Message;->replyTo:Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;

    if-eqz v4, :cond_6

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;->access$000(Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;)J

    move-result-wide v5

    :cond_6
    if-eqz v3, :cond_7

    cmp-long v3, v7, v5

    if-nez v3, :cond_7

    move v3, v0

    goto :goto_3

    :cond_7
    move v3, v1

    :goto_3
    if-nez v3, :cond_8

    return v1

    :cond_8
    iget-object v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    if-eqz v3, :cond_b

    iget-object v3, p1, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    if-nez v3, :cond_9

    goto :goto_5

    :cond_9
    move v3, v1

    :goto_4
    if-ge v3, v2, :cond_b

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageFragments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    return v1

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    :goto_5
    return v0

    :cond_c
    :goto_6
    return v1
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->channelId:J

    return-wide v0
.end method

.method public getConversationId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->conversationId:J

    return-wide v0
.end method

.method public getCreatedMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->createdMillis:J

    return-wide v0
.end method

.method public getFlowStepId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->flowStepId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->id:J

    return-wide v0
.end method

.method public getInternalMeta()Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->internalMeta:Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

    return-object v0
.end method

.method public getMarketingId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->marketingId:J

    return-wide v0
.end method

.method public getMessageFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageType:I

    return v0
.end method

.method public getMessageUserAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageUserProfilePic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserProfilePic:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageUserType()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserType:I

    return v0
.end method

.method public getReplyFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->replyFragments:Ljava/util/List;

    return-object v0
.end method

.method public getReplyTo()Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->replyTo:Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;

    return-object v0
.end method

.method public getShouldTranslate()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->shouldTranslate:I

    return v0
.end method

.method public getTriggeredRuleIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/TriggeredRuleId;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->triggeredRuleIds:Ljava/util/List;

    return-object v0
.end method

.method public getUploadState()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->uploadState:I

    return v0
.end method

.method public isRead()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->read:Z

    return v0
.end method

.method public isResponded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->isResponded:Z

    return v0
.end method

.method public isUploaded()Z
    .locals 2

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->uploadState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUserMessage()Z
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->alias:Ljava/lang/String;

    return-void
.end method

.method public setChannelId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->channelId:J

    return-void
.end method

.method public setConversationId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->conversationId:J

    return-void
.end method

.method public setCreatedMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->createdMillis:J

    return-void
.end method

.method public setFlowStepId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->flowStepId:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->id:J

    return-void
.end method

.method public setInternalMeta(Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->internalMeta:Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

    return-void
.end method

.method public setMarketingId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->marketingId:J

    return-void
.end method

.method public setMessageFragments(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    :cond_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public setMessageType(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageType:I

    return-void
.end method

.method public setMessageUserAlias(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserAlias:Ljava/lang/String;

    return-void
.end method

.method public setMessageUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserName:Ljava/lang/String;

    return-void
.end method

.method public setMessageUserProfilePic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserProfilePic:Ljava/lang/String;

    return-void
.end method

.method public setMessageUserType(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserType:I

    return-void
.end method

.method public setRead(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->read:Z

    return-void
.end method

.method public setReplyFragments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->replyFragments:Ljava/util/List;

    return-void
.end method

.method public setReplyTo(Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->replyTo:Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;

    return-void
.end method

.method public setResponded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->isResponded:Z

    return-void
.end method

.method public setShouldTranslate(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->shouldTranslate:I

    return-void
.end method

.method public setTriggeredRuleIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/TriggeredRuleId;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->triggeredRuleIds:Ljava/util/List;

    return-void
.end method

.method public setUploadState(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->uploadState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, "Message{"

    const-string v1, "alias=\'"

    invoke-static {v0, v1}, Le/d/c/a/a;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->alias:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", marketingId="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-wide v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->marketingId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->id:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", channelId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->channelId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", messageType= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", conversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/freshchat/consumer/sdk/beans/Message;->conversationId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", messageUserType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageUserAlias=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserAlias:Ljava/lang/String;

    const-string v3, ", source="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->source:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", read="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->read:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", createdMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->createdMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uploadState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->uploadState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageFragments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageFragments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", replyFragments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->replyFragments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", internalMeta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->internalMeta:Lcom/freshchat/consumer/sdk/beans/MessageInternalMeta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", replyTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->replyTo:Lcom/freshchat/consumer/sdk/beans/Message$ReplyTo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isResponded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->isResponded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldTranslate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->shouldTranslate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flowStepId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->flowStepId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", messageUserName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", messageUserProfilePic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Message;->messageUserProfilePic:Ljava/lang/String;

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
