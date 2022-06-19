.class public final Le/a/a/c/s3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/r3;


# instance fields
.field public final a:Le/a/q2/a;

.field public final b:Le/a/q2/i0;

.field public final c:Le/a/a/w0/a;

.field public final d:Le/a/c/e/c;


# direct methods
.method public constructor <init>(Le/a/q2/a;Le/a/q2/i0;Le/a/a/w0/a;Le/a/c/e/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageAnalytics"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesMonitor"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsAnalyticsManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/s3;->a:Le/a/q2/a;

    iput-object p2, p0, Le/a/a/c/s3;->b:Le/a/q2/i0;

    iput-object p3, p0, Le/a/a/c/s3;->c:Le/a/a/w0/a;

    iput-object p4, p0, Le/a/a/c/s3;->d:Le/a/c/e/c;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p1, "personal"

    goto :goto_0

    :cond_0
    const-string p1, "promotional"

    goto :goto_0

    :cond_1
    const-string p1, "spam"

    goto :goto_0

    :cond_2
    const-string p1, "other"

    :goto_0
    return-object p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 10

    const-string v5, "type"

    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v7, p0, Le/a/a/c/s3;->b:Le/a/q2/i0;

    const-string v8, "ConversationPickerClick"

    .line 2
    invoke-static {v8, v5}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v9

    const-string v1, "name"

    const-string v3, "value"

    move-object v0, v5

    move-object v2, p1

    move-object v4, v9

    move-object v6, p1

    .line 3
    invoke-static/range {v0 .. v6}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    const-string v0, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 4
    invoke-static {v8, p1, v9, v0, v7}, Le/d/c/a/a;->O0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/i0;)V

    return-void
.end method

.method public c(Ljava/util/List;Ljava/lang/String;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    const-string v0, "messages"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/data/types/Message;

    .line 2
    iget-object v1, p0, Le/a/a/c/s3;->b:Le/a/q2/i0;

    invoke-interface {v1, v0, p2, p3, p4}, Le/a/q2/i0;->p(Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;I)V
    .locals 9

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/a/c/s3;->c:Le/a/a/w0/a;

    .line 2
    iget-object v2, p1, Lcom/truecaller/messaging/data/types/Message;->q:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-array p2, v0, [Lcom/truecaller/data/entity/messaging/Participant;

    :goto_0
    move-object v5, p2

    .line 3
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    const-string v3, "message.entities"

    invoke-static {p2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    array-length v4, p2

    move v6, v0

    :goto_1
    if-ge v6, v4, :cond_2

    aget-object v7, p2, v6

    instance-of v8, v7, Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v8, :cond_1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    new-array p2, v0, [Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 6
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v6, p2

    check-cast v6, [Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 7
    iget-boolean v7, p1, Lcom/truecaller/messaging/data/types/Message;->A:Z

    const-string v3, "conversation"

    move v4, p3

    .line 8
    invoke-interface/range {v1 .. v7}, Le/a/a/w0/a;->i(Ljava/lang/String;Ljava/lang/String;I[Lcom/truecaller/data/entity/messaging/Participant;[Lcom/truecaller/messaging/data/types/BinaryEntity;Z)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 10

    const-string v5, "action"

    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v7, p0, Le/a/a/c/s3;->b:Le/a/q2/i0;

    const-string v8, "VoiceClipPlayback"

    const-string v0, "type"

    .line 2
    invoke-static {v8, v0}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v9

    const-string v1, "name"

    const-string v3, "value"

    move-object v0, v5

    move-object v2, p1

    move-object v4, v9

    move-object v6, p1

    .line 3
    invoke-static/range {v0 .. v6}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    const-string v0, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 4
    invoke-static {v8, p1, v9, v0, v7}, Le/d/c/a/a;->O0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/i0;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 10

    const-string v5, "action"

    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v7, p0, Le/a/a/c/s3;->b:Le/a/q2/i0;

    const-string v8, "VoiceClipSend"

    const-string v0, "type"

    .line 2
    invoke-static {v8, v0}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v9

    const-string v1, "name"

    const-string v3, "value"

    move-object v0, v5

    move-object v2, p1

    move-object v4, v9

    move-object v6, p1

    .line 3
    invoke-static/range {v0 .. v6}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    const-string v0, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 4
    invoke-static {v8, p1, v9, v0, v7}, Le/d/c/a/a;->O0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/i0;)V

    return-void
.end method
