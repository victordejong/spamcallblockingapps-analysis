.class public final Le/a/a/k/a/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/a/i;


# instance fields
.field public final a:I

.field public final b:Le/a/a/k/a/s1;

.field public final c:Landroid/content/ContentResolver;

.field public final d:Le/a/a/i0;

.field public final e:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public f:Le/a/a/k/a/a/z;


# direct methods
.method public constructor <init>(Le/a/a/k/a/s1;Landroid/content/ContentResolver;Le/a/a/i0;Le/a/r2/f;Le/a/a/k/a/a/z;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/a/s1;",
            "Landroid/content/ContentResolver;",
            "Le/a/a/i0;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/a/k/a/a/z;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "messengerStubManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imUnprocessedHistoryManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/a/k;->b:Le/a/a/k/a/s1;

    iput-object p2, p0, Le/a/a/k/a/a/k;->c:Landroid/content/ContentResolver;

    iput-object p3, p0, Le/a/a/k/a/a/k;->d:Le/a/a/i0;

    iput-object p4, p0, Le/a/a/k/a/a/k;->e:Le/a/r2/f;

    iput-object p5, p0, Le/a/a/k/a/a/k;->f:Le/a/a/k/a/a/z;

    .line 2
    invoke-interface {p3}, Le/a/a/i0;->f2()I

    move-result p1

    iput p1, p0, Le/a/a/k/a/a/k;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "groupId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/k;->c:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "history_status"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string p1, "im_group_id=? AND history_status = 2"

    .line 4
    invoke-virtual {v0, v1, v2, p1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return v3
.end method

.method public b(Lcom/truecaller/messaging/data/types/ImGroupInfo;Ls1/z/b/l;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/ImGroupInfo;",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/api/services/messenger/v1/events/Event;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v0, p2

    const-string v1, "groupInfo"

    invoke-static {v11, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "consumer"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v1, v11, Lcom/truecaller/messaging/data/types/ImGroupInfo;->i:I

    const/4 v12, 0x3

    if-eq v1, v12, :cond_d

    const/4 v13, 0x4

    const/4 v14, 0x1

    if-eq v1, v14, :cond_0

    if-eq v1, v13, :cond_0

    goto/16 :goto_8

    .line 2
    :cond_0
    iget-wide v1, v11, Lcom/truecaller/messaging/data/types/ImGroupInfo;->k:J

    .line 3
    iget-object v3, v10, Le/a/a/k/a/a/k;->d:Le/a/a/i0;

    invoke-interface {v3}, Le/a/a/i0;->N1()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 4
    iget-object v0, v11, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v10, v0, v12}, Le/a/a/k/a/a/k;->d(Ljava/lang/String;I)Z

    .line 6
    iget-object v0, v10, Le/a/a/k/a/a/k;->f:Le/a/a/k/a/a/z;

    .line 7
    iget-object v1, v11, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 8
    iget-wide v2, v11, Lcom/truecaller/messaging/data/types/ImGroupInfo;->j:J

    .line 9
    invoke-interface {v0, v1, v2, v3}, Le/a/a/k/a/a/z;->c(Ljava/lang/String;J)V

    return-void

    .line 10
    :cond_1
    iget-object v1, v10, Le/a/a/k/a/a/k;->b:Le/a/a/k/a/s1;

    const/4 v15, 0x0

    invoke-static {v1, v15, v14, v15}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v1

    check-cast v1, Le/a/t2/a/e/a/b$a;

    if-eqz v1, :cond_d

    .line 11
    iget-object v2, v11, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    const/4 v9, 0x2

    .line 12
    invoke-virtual {v10, v2, v9}, Le/a/a/k/a/a/k;->d(Ljava/lang/String;I)Z

    .line 13
    iget-wide v2, v11, Lcom/truecaller/messaging/data/types/ImGroupInfo;->j:J

    .line 14
    iget v4, v10, Le/a/a/k/a/a/k;->a:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 15
    :try_start_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/GetEvents$Request;->newBuilder()Lcom/truecaller/api/services/messenger/v1/GetEvents$Request$a;

    move-result-object v2

    .line 16
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;

    move-result-object v3

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group$a;

    move-result-object v6

    .line 17
    iget-object v9, v11, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 18
    invoke-virtual {v6, v9}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group$a;->a(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group$a;

    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v6

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;

    .line 19
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 20
    iget-object v9, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v9, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    invoke-static {v9, v6}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->access$2100(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;)V

    .line 21
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    .line 22
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 23
    iget-object v6, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/GetEvents$Request;

    invoke-static {v6, v3}, Lcom/truecaller/api/services/messenger/v1/GetEvents$Request;->access$100(Lcom/truecaller/api/services/messenger/v1/GetEvents$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V

    .line 24
    iget-wide v13, v11, Lcom/truecaller/messaging/data/types/ImGroupInfo;->j:J

    .line 25
    iget v3, v10, Le/a/a/k/a/a/k;->a:I

    int-to-long v4, v3

    div-long v19, v13, v4

    const-wide/16 v17, 0x0

    cmp-long v6, v19, v17

    if-lez v6, :cond_2

    goto :goto_0

    .line 26
    :cond_2
    rem-long/2addr v13, v4

    long-to-int v3, v13

    .line 27
    :goto_0
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 28
    iget-object v4, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/GetEvents$Request;

    invoke-static {v4, v3}, Lcom/truecaller/api/services/messenger/v1/GetEvents$Request;->access$600(Lcom/truecaller/api/services/messenger/v1/GetEvents$Request;I)V

    .line 29
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 30
    iget-object v3, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/GetEvents$Request;

    invoke-static {v3, v7, v8}, Lcom/truecaller/api/services/messenger/v1/GetEvents$Request;->access$400(Lcom/truecaller/api/services/messenger/v1/GetEvents$Request;J)V

    .line 31
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    .line 32
    check-cast v2, Lcom/truecaller/api/services/messenger/v1/GetEvents$Request;

    .line 33
    invoke-virtual {v1, v2}, Le/a/t2/a/e/a/b$a;->h(Lcom/truecaller/api/services/messenger/v1/GetEvents$Request;)Lcom/truecaller/api/services/messenger/v1/GetEvents$Response;

    move-result-object v13

    const-string v1, "stub.getEvents(request)"

    invoke-static {v13, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    invoke-virtual {v13}, Lcom/truecaller/api/services/messenger/v1/GetEvents$Response;->getEventsCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 35
    iget-object v0, v11, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 36
    invoke-virtual {v10, v0, v12}, Le/a/a/k/a/a/k;->d(Ljava/lang/String;I)Z

    return-void

    .line 37
    :cond_3
    invoke-virtual {v13}, Lcom/truecaller/api/services/messenger/v1/GetEvents$Response;->getEventsList()Ljava/util/List;

    move-result-object v1

    const-string v14, "response.eventsList"

    invoke-static {v1, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ls1/u/i;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 38
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "it"

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/events/Event;

    .line 39
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 40
    :cond_4
    invoke-virtual {v13}, Lcom/truecaller/api/services/messenger/v1/GetEvents$Response;->getEventsList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/16 v17, 0x0

    if-eqz v1, :cond_5

    move/from16 v1, v17

    goto :goto_4

    .line 42
    :cond_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move/from16 v1, v17

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/events/Event;

    .line 43
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getPayloadCase()Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    move-result-object v2

    sget-object v4, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->MESSAGE_SENT:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    if-ne v2, v4, :cond_7

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    move/from16 v2, v17

    :goto_3
    if-eqz v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {}, Ls1/u/i;->M0()V

    throw v15

    .line 44
    :cond_9
    :goto_4
    iget-wide v2, v11, Lcom/truecaller/messaging/data/types/ImGroupInfo;->k:J

    int-to-long v0, v1

    add-long v18, v2, v0

    .line 45
    invoke-virtual {v13}, Lcom/truecaller/api/services/messenger/v1/GetEvents$Response;->getEventsList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "response.eventsList.first()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/events/Event;

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getContextSeq()J

    move-result-wide v2

    .line 46
    iget-object v1, v11, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/16 v20, 0x10

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v5, v18

    move-wide/from16 v22, v7

    move-object v7, v9

    move/from16 v8, v20

    const/16 v16, 0x2

    move-object/from16 v9, v21

    .line 47
    invoke-static/range {v0 .. v9}, Le/a/c/p/a;->v3(Le/a/a/k/a/a/i;Ljava/lang/String;JIJLjava/lang/Integer;ILjava/lang/Object;)Z

    .line 48
    iget-object v0, v11, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 49
    invoke-virtual {v13}, Lcom/truecaller/api/services/messenger/v1/GetEvents$Response;->getEventsCount()I

    move-result v1

    invoke-virtual {v13}, Lcom/truecaller/api/services/messenger/v1/GetEvents$Response;->getEventsList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v4, Le/a/a/k/a/a/j;->b:Le/a/a/k/a/a/j;

    invoke-static {v3, v4}, Le/q/f/a/d/a;->s3(Ljava/util/Map;Ls1/z/b/l;)Ljava/util/Map;

    move-result-object v3

    .line 51
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/events/Event;

    .line 52
    invoke-virtual {v4}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getPayloadCase()Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getPayloadCase()Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v6, 0x1

    add-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 53
    :cond_a
    iget-object v2, v10, Le/a/a/k/a/a/k;->d:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->f2()I

    move-result v2

    if-lt v1, v2, :cond_c

    iget-object v1, v10, Le/a/a/k/a/a/k;->d:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->N1()I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, v18, v1

    if-ltz v1, :cond_b

    goto :goto_6

    :cond_b
    move/from16 v1, v17

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v1, 0x1

    .line 54
    :goto_7
    sget-object v2, Le/a/l5/a/t0;->g:Lorg/apache/avro/Schema;

    new-instance v2, Le/a/l5/a/t0$b;

    invoke-direct {v2, v15}, Le/a/l5/a/t0$b;-><init>(Le/a/l5/a/t0$a;)V

    .line 55
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    aget-object v4, v4, v16

    invoke-virtual {v2, v4, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 56
    iput-object v0, v2, Le/a/l5/a/t0$b;->a:Ljava/lang/CharSequence;

    .line 57
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v4, 0x1

    aput-boolean v4, v0, v16

    move-wide/from16 v5, v22

    long-to-int v0, v5

    .line 58
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 59
    iput v0, v2, Le/a/l5/a/t0$b;->c:I

    .line 60
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v4, v0, v6

    .line 61
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v12

    invoke-virtual {v2, v0, v3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 62
    iput-object v3, v2, Le/a/l5/a/t0$b;->b:Ljava/util/Map;

    .line 63
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v4, v0, v12

    .line 64
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v3, 0x5

    aget-object v0, v0, v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 65
    iput-boolean v1, v2, Le/a/l5/a/t0$b;->d:Z

    .line 66
    invoke-virtual {v2}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v4, v0, v3

    .line 67
    invoke-virtual {v2}, Le/a/l5/a/t0$b;->a()Le/a/l5/a/t0;

    move-result-object v0

    .line 68
    iget-object v1, v10, Le/a/a/k/a/a/k;->e:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/q2/a0;

    invoke-interface {v1, v0}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void

    .line 69
    :catch_0
    iget-object v1, v11, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 70
    iget-wide v2, v11, Lcom/truecaller/messaging/data/types/ImGroupInfo;->j:J

    const/4 v4, 0x4

    .line 71
    iget-wide v5, v11, Lcom/truecaller/messaging/data/types/ImGroupInfo;->k:J

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object/from16 v0, p0

    .line 72
    invoke-static/range {v0 .. v9}, Le/a/c/p/a;->v3(Le/a/a/k/a/a/i;Ljava/lang/String;JIJLjava/lang/Integer;ILjava/lang/Object;)Z

    :cond_d
    :goto_8
    return-void
.end method

.method public c(Ljava/lang/String;JIJLjava/lang/Integer;)Z
    .locals 1

    const-string v0, "groupId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "history_sequence_num"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "history_status"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "history_message_count"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p7, :cond_0

    const-string p2, "join_mode"

    .line 5
    invoke-virtual {v0, p2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    :cond_0
    iget-object p2, p0, Le/a/a/k/a/a/k;->c:Landroid/content/ContentResolver;

    .line 7
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object p3

    const/4 p4, 0x1

    new-array p5, p4, [Ljava/lang/String;

    const/4 p6, 0x0

    aput-object p1, p5, p6

    const-string p1, "im_group_id=?"

    .line 8
    invoke-virtual {p2, p3, v0, p1, p5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move p4, p6

    :goto_0
    return p4
.end method

.method public final d(Ljava/lang/String;I)Z
    .locals 5

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "history_status"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    iget-object p2, p0, Le/a/a/k/a/a/k;->c:Landroid/content/ContentResolver;

    .line 4
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "im_group_id=?"

    .line 5
    invoke-virtual {p2, v1, v0, p1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    return v2
.end method
