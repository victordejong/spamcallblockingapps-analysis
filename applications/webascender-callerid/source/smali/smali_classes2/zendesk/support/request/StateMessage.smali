.class Lzendesk/support/request/StateMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private final date:Ljava/util/Date;

.field private final htmlBody:Ljava/lang/String;

.field private final id:J

.field private final plainBody:Ljava/lang/String;

.field private final state:Lzendesk/support/request/StateMessageStatus;

.field private final userId:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JJLzendesk/support/request/StateMessageStatus;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "JJ",
            "Lzendesk/support/request/StateMessageStatus;",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lzendesk/support/request/StateMessage;->htmlBody:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lzendesk/support/request/StateMessage;->plainBody:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lzendesk/support/request/StateMessage;->date:Ljava/util/Date;

    .line 13
    iput-wide p4, p0, Lzendesk/support/request/StateMessage;->id:J

    .line 14
    iput-wide p6, p0, Lzendesk/support/request/StateMessage;->userId:J

    .line 15
    iput-object p8, p0, Lzendesk/support/request/StateMessage;->state:Lzendesk/support/request/StateMessageStatus;

    .line 16
    iput-object p9, p0, Lzendesk/support/request/StateMessage;->attachments:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lzendesk/support/request/StateMessage;->htmlBody:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lzendesk/support/request/StateMessage;->plainBody:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lzendesk/support/request/StateMessage;->date:Ljava/util/Date;

    .line 5
    invoke-static {}, Lzendesk/support/IdUtil;->newLongId()J

    move-result-wide v0

    iput-wide v0, p0, Lzendesk/support/request/StateMessage;->id:J

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lzendesk/support/request/StateMessage;->userId:J

    .line 7
    invoke-static {}, Lzendesk/support/request/StateMessageStatus;->pending()Lzendesk/support/request/StateMessageStatus;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/StateMessage;->state:Lzendesk/support/request/StateMessageStatus;

    .line 8
    iput-object p2, p0, Lzendesk/support/request/StateMessage;->attachments:Ljava/util/List;

    return-void
.end method

.method static convert(Ljava/util/List;Lzendesk/support/request/StateIdMapper;Ljava/util/Map;)Lf/h/k/c;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/CommentResponse;",
            ">;",
            "Lzendesk/support/request/StateIdMapper;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;)",
            "Lf/h/k/c<",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateMessage;",
            ">;",
            "Lzendesk/support/request/StateIdMapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v3, p1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzendesk/support/CommentResponse;

    .line 3
    invoke-virtual {v4}, Lzendesk/support/CommentResponse;->getId()Ljava/lang/Long;

    move-result-object v5

    .line 4
    invoke-virtual {v4}, Lzendesk/support/CommentResponse;->getAuthorId()Ljava/lang/Long;

    move-result-object v6

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 5
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v4}, Lzendesk/support/CommentResponse;->getAttachments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lzendesk/support/Attachment;

    .line 7
    invoke-virtual {v8}, Lzendesk/support/Attachment;->getId()Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 8
    invoke-virtual {v8}, Lzendesk/support/Attachment;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v3, v5}, Lzendesk/support/request/StateIdMapper;->hasLocalId(Ljava/lang/Long;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 10
    invoke-virtual {v3, v5}, Lzendesk/support/request/StateIdMapper;->getLocalId(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_2

    .line 11
    :cond_3
    invoke-static {}, Lzendesk/support/IdUtil;->newLongId()J

    move-result-wide v7

    .line 12
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v5, v9}, Lzendesk/support/request/StateIdMapper;->addIdMapping(Ljava/lang/Long;Ljava/lang/Long;)Lzendesk/support/request/StateIdMapper;

    move-result-object v3

    :goto_2
    move-wide v11, v7

    .line 13
    new-instance v5, Lzendesk/support/request/StateMessage;

    .line 14
    invoke-virtual {v4}, Lzendesk/support/CommentResponse;->getHtmlBody()Ljava/lang/String;

    move-result-object v8

    .line 15
    invoke-virtual {v4}, Lzendesk/support/CommentResponse;->getBody()Ljava/lang/String;

    move-result-object v9

    .line 16
    invoke-virtual {v4}, Lzendesk/support/CommentResponse;->getCreatedAt()Ljava/util/Date;

    move-result-object v10

    .line 17
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 18
    invoke-static {}, Lzendesk/support/request/StateMessageStatus;->delivered()Lzendesk/support/request/StateMessageStatus;

    move-result-object v4

    move-object v7, v5

    move-object v6, v15

    move-object v15, v4

    move-object/from16 v16, v6

    invoke-direct/range {v7 .. v16}, Lzendesk/support/request/StateMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JJLzendesk/support/request/StateMessageStatus;Ljava/util/List;)V

    .line 19
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 20
    :cond_4
    invoke-virtual {v3}, Lzendesk/support/request/StateIdMapper;->copy()Lzendesk/support/request/StateIdMapper;

    move-result-object v0

    invoke-static {v1, v0}, Lf/h/k/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Lf/h/k/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_e

    .line 1
    const-class v2, Lzendesk/support/request/StateMessage;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_5

    .line 2
    :cond_1
    check-cast p1, Lzendesk/support/request/StateMessage;

    .line 3
    iget-wide v2, p0, Lzendesk/support/request/StateMessage;->id:J

    iget-wide v4, p1, Lzendesk/support/request/StateMessage;->id:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 4
    :cond_2
    iget-wide v2, p0, Lzendesk/support/request/StateMessage;->userId:J

    iget-wide v4, p1, Lzendesk/support/request/StateMessage;->userId:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v2, p0, Lzendesk/support/request/StateMessage;->htmlBody:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lzendesk/support/request/StateMessage;->htmlBody:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lzendesk/support/request/StateMessage;->htmlBody:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_0
    return v1

    .line 6
    :cond_5
    iget-object v2, p0, Lzendesk/support/request/StateMessage;->plainBody:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lzendesk/support/request/StateMessage;->plainBody:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_6
    iget-object v2, p1, Lzendesk/support/request/StateMessage;->plainBody:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_1
    return v1

    .line 7
    :cond_7
    iget-object v2, p0, Lzendesk/support/request/StateMessage;->date:Ljava/util/Date;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lzendesk/support/request/StateMessage;->date:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_2

    :cond_8
    iget-object v2, p1, Lzendesk/support/request/StateMessage;->date:Ljava/util/Date;

    if-eqz v2, :cond_9

    :goto_2
    return v1

    .line 8
    :cond_9
    iget-object v2, p0, Lzendesk/support/request/StateMessage;->state:Lzendesk/support/request/StateMessageStatus;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lzendesk/support/request/StateMessage;->state:Lzendesk/support/request/StateMessageStatus;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_3

    :cond_a
    iget-object v2, p1, Lzendesk/support/request/StateMessage;->state:Lzendesk/support/request/StateMessageStatus;

    if-eqz v2, :cond_b

    :goto_3
    return v1

    .line 9
    :cond_b
    iget-object v2, p0, Lzendesk/support/request/StateMessage;->attachments:Ljava/util/List;

    iget-object p1, p1, Lzendesk/support/request/StateMessage;->attachments:Ljava/util/List;

    if-eqz v2, :cond_c

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_c
    if-nez p1, :cond_d

    goto :goto_4

    :cond_d
    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_e
    :goto_5
    return v1
.end method

.method getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/request/StateMessage;->attachments:Ljava/util/List;

    return-object v0
.end method

.method getBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/StateMessage;->plainBody:Ljava/lang/String;

    invoke-static {v0}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzendesk/support/request/StateMessage;->plainBody:Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lzendesk/support/request/StateMessage;->getAttachments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lzendesk/support/request/UtilsAttachment;->getMessageBodyForAttachments(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method getDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/StateMessage;->date:Ljava/util/Date;

    return-object v0
.end method

.method getHtmlBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/StateMessage;->htmlBody:Ljava/lang/String;

    return-object v0
.end method

.method getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lzendesk/support/request/StateMessage;->id:J

    return-wide v0
.end method

.method getPlainBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/StateMessage;->plainBody:Ljava/lang/String;

    return-object v0
.end method

.method getState()Lzendesk/support/request/StateMessageStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/StateMessage;->state:Lzendesk/support/request/StateMessageStatus;

    return-object v0
.end method

.method getUserId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lzendesk/support/request/StateMessage;->userId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lzendesk/support/request/StateMessage;->htmlBody:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lzendesk/support/request/StateMessage;->plainBody:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lzendesk/support/request/StateMessage;->date:Ljava/util/Date;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lzendesk/support/request/StateMessage;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lzendesk/support/request/StateMessage;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lzendesk/support/request/StateMessage;->state:Lzendesk/support/request/StateMessageStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lzendesk/support/request/StateMessage;->attachments:Ljava/util/List;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message{htmlBody=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzendesk/support/request/StateMessage;->htmlBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", plainBody=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzendesk/support/request/StateMessage;->plainBody:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzendesk/support/request/StateMessage;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lzendesk/support/request/StateMessage;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lzendesk/support/request/StateMessage;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzendesk/support/request/StateMessage;->state:Lzendesk/support/request/StateMessageStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method withAttachments(Ljava/util/List;)Lzendesk/support/request/StateMessage;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;)",
            "Lzendesk/support/request/StateMessage;"
        }
    .end annotation

    .line 1
    new-instance v10, Lzendesk/support/request/StateMessage;

    iget-object v1, p0, Lzendesk/support/request/StateMessage;->htmlBody:Ljava/lang/String;

    iget-object v2, p0, Lzendesk/support/request/StateMessage;->plainBody:Ljava/lang/String;

    iget-object v3, p0, Lzendesk/support/request/StateMessage;->date:Ljava/util/Date;

    iget-wide v4, p0, Lzendesk/support/request/StateMessage;->id:J

    iget-wide v6, p0, Lzendesk/support/request/StateMessage;->userId:J

    iget-object v8, p0, Lzendesk/support/request/StateMessage;->state:Lzendesk/support/request/StateMessageStatus;

    move-object v0, v10

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lzendesk/support/request/StateMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JJLzendesk/support/request/StateMessageStatus;Ljava/util/List;)V

    return-object v10
.end method

.method withDelivered()Lzendesk/support/request/StateMessage;
    .locals 11

    .line 1
    new-instance v10, Lzendesk/support/request/StateMessage;

    iget-object v1, p0, Lzendesk/support/request/StateMessage;->htmlBody:Ljava/lang/String;

    iget-object v2, p0, Lzendesk/support/request/StateMessage;->plainBody:Ljava/lang/String;

    iget-object v3, p0, Lzendesk/support/request/StateMessage;->date:Ljava/util/Date;

    iget-wide v4, p0, Lzendesk/support/request/StateMessage;->id:J

    iget-wide v6, p0, Lzendesk/support/request/StateMessage;->userId:J

    invoke-static {}, Lzendesk/support/request/StateMessageStatus;->delivered()Lzendesk/support/request/StateMessageStatus;

    move-result-object v8

    iget-object v9, p0, Lzendesk/support/request/StateMessage;->attachments:Ljava/util/List;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lzendesk/support/request/StateMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JJLzendesk/support/request/StateMessageStatus;Ljava/util/List;)V

    return-object v10
.end method

.method withError(Lcom/zendesk/service/a;)Lzendesk/support/request/StateMessage;
    .locals 11

    .line 1
    new-instance v10, Lzendesk/support/request/StateMessage;

    iget-object v1, p0, Lzendesk/support/request/StateMessage;->htmlBody:Ljava/lang/String;

    iget-object v2, p0, Lzendesk/support/request/StateMessage;->plainBody:Ljava/lang/String;

    iget-object v3, p0, Lzendesk/support/request/StateMessage;->date:Ljava/util/Date;

    iget-wide v4, p0, Lzendesk/support/request/StateMessage;->id:J

    iget-wide v6, p0, Lzendesk/support/request/StateMessage;->userId:J

    invoke-interface {p1}, Lcom/zendesk/service/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lzendesk/support/request/StateMessageStatus;->error(Ljava/lang/String;)Lzendesk/support/request/StateMessageStatus;

    move-result-object v8

    iget-object v9, p0, Lzendesk/support/request/StateMessage;->attachments:Ljava/util/List;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lzendesk/support/request/StateMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JJLzendesk/support/request/StateMessageStatus;Ljava/util/List;)V

    return-object v10
.end method

.method withPending()Lzendesk/support/request/StateMessage;
    .locals 11

    .line 1
    new-instance v10, Lzendesk/support/request/StateMessage;

    iget-object v1, p0, Lzendesk/support/request/StateMessage;->htmlBody:Ljava/lang/String;

    iget-object v2, p0, Lzendesk/support/request/StateMessage;->plainBody:Ljava/lang/String;

    iget-object v3, p0, Lzendesk/support/request/StateMessage;->date:Ljava/util/Date;

    iget-wide v4, p0, Lzendesk/support/request/StateMessage;->id:J

    iget-wide v6, p0, Lzendesk/support/request/StateMessage;->userId:J

    invoke-static {}, Lzendesk/support/request/StateMessageStatus;->pending()Lzendesk/support/request/StateMessageStatus;

    move-result-object v8

    iget-object v9, p0, Lzendesk/support/request/StateMessage;->attachments:Ljava/util/List;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lzendesk/support/request/StateMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JJLzendesk/support/request/StateMessageStatus;Ljava/util/List;)V

    return-object v10
.end method

.method withUpdatedAttachment(Lzendesk/support/request/StateRequestAttachment;)Lzendesk/support/request/StateMessage;
    .locals 10

    .line 1
    new-instance v9, Ljava/util/ArrayList;

    iget-object v0, p0, Lzendesk/support/request/StateMessage;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v0, p0, Lzendesk/support/request/StateMessage;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/request/StateRequestAttachment;

    .line 3
    invoke-virtual {v1}, Lzendesk/support/request/StateRequestAttachment;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getId()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    move-object v1, p1

    :cond_0
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Lzendesk/support/request/StateMessage;

    iget-object v1, p0, Lzendesk/support/request/StateMessage;->htmlBody:Ljava/lang/String;

    iget-object v2, p0, Lzendesk/support/request/StateMessage;->plainBody:Ljava/lang/String;

    iget-object v3, p0, Lzendesk/support/request/StateMessage;->date:Ljava/util/Date;

    iget-wide v4, p0, Lzendesk/support/request/StateMessage;->id:J

    iget-wide v6, p0, Lzendesk/support/request/StateMessage;->userId:J

    iget-object v8, p0, Lzendesk/support/request/StateMessage;->state:Lzendesk/support/request/StateMessageStatus;

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lzendesk/support/request/StateMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JJLzendesk/support/request/StateMessageStatus;Ljava/util/List;)V

    return-object p1
.end method
