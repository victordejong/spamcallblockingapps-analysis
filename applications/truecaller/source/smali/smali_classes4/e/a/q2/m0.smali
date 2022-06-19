.class public final Le/a/q2/m0;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/util/List<",
        "+",
        "Le/a/q2/p0;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.analytics.MessageAnalyticsDataHelperImpl$getMessageAnalyticInfoList$2"
    f = "MessageAnalyticsDataHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/q2/l0;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Z

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/q2/l0;Ljava/util/List;ZLjava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/q2/m0;->e:Le/a/q2/l0;

    iput-object p2, p0, Le/a/q2/m0;->f:Ljava/util/List;

    iput-boolean p3, p0, Le/a/q2/m0;->g:Z

    iput-object p4, p0, Le/a/q2/m0;->h:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/q2/m0;

    iget-object v1, p0, Le/a/q2/m0;->e:Le/a/q2/l0;

    iget-object v2, p0, Le/a/q2/m0;->f:Ljava/util/List;

    iget-boolean v3, p0, Le/a/q2/m0;->g:Z

    iget-object v4, p0, Le/a/q2/m0;->h:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/q2/m0;-><init>(Le/a/q2/l0;Ljava/util/List;ZLjava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/q2/m0;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/q2/m0;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/q2/m0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v1, p0

    const-string v0, "transportInfo"

    const-string v2, "message.entities"

    .line 1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    iget-object v4, v1, Le/a/q2/m0;->e:Le/a/q2/l0;

    .line 4
    iget-object v5, v4, Le/a/q2/l0;->b:Landroid/content/ContentResolver;

    .line 5
    invoke-static {}, Le/a/b0/q/g0;->z()Landroid/net/Uri;

    move-result-object v6

    const-string v4, "_id IN ("

    .line 6
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v1, Le/a/q2/m0;->f:Ljava/util/List;

    sget-object v13, Le/a/q2/m0$a;->b:Le/a/q2/m0$a;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v14, 0x1f

    invoke-static/range {v7 .. v14}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x29

    invoke-static {v4, v7, v8}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v8

    .line 7
    iget-object v4, v1, Le/a/q2/m0;->f:Ljava/util/List;

    .line 8
    new-instance v7, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v4, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 10
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 11
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 12
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    const-string v7, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v4, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v9, v4

    check-cast v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 13
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 14
    iget-object v5, v1, Le/a/q2/m0;->e:Le/a/q2/l0;

    .line 15
    iget-object v5, v5, Le/a/q2/l0;->c:Le/a/a/g/g;

    .line 16
    invoke-interface {v5, v4}, Le/a/a/g/g;->i(Landroid/database/Cursor;)Le/a/a/g/j0/q;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 17
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 18
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1e

    .line 19
    invoke-interface {v4}, Le/a/a/g/j0/q;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v6

    const-string v8, "this.message"

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-wide v8, v6, Lcom/truecaller/messaging/data/types/Message;->b:J

    .line 21
    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v8, v9}, Ljava/lang/Long;-><init>(J)V

    .line 22
    invoke-virtual {v3, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    .line 23
    iget-object v8, v1, Le/a/q2/m0;->e:Le/a/q2/l0;

    iget-wide v11, v6, Lcom/truecaller/messaging/data/types/Message;->b:J

    .line 24
    iget-object v13, v8, Le/a/q2/l0;->b:Landroid/content/ContentResolver;

    .line 25
    invoke-static {v11, v12}, Le/a/b0/q/g0;->g(J)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 26
    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v9, :cond_2

    .line 27
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v8, v8, Le/a/q2/l0;->c:Le/a/a/g/g;

    invoke-interface {v8, v9}, Le/a/a/g/g;->t(Landroid/database/Cursor;)Le/a/a/g/j0/a;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Le/a/a/g/j0/a;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_1
    move-object v8, v7

    :goto_2
    :try_start_2
    invoke-static {v9, v7}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v7, v8

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-static {v9, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 28
    :cond_2
    :goto_3
    invoke-interface {v3, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v7

    .line 29
    :cond_3
    check-cast v8, Lcom/truecaller/messaging/data/types/Conversation;

    .line 30
    iget-object v7, v1, Le/a/q2/m0;->e:Le/a/q2/l0;

    .line 31
    iget-object v7, v7, Le/a/q2/l0;->d:Le/a/u3/g;

    .line 32
    invoke-virtual {v7}, Le/a/u3/g;->h0()Le/a/u3/b;

    move-result-object v7

    invoke-interface {v7}, Le/a/u3/b;->isEnabled()Z

    move-result v7

    iget v9, v6, Lcom/truecaller/messaging/data/types/Message;->t:I

    iget-object v10, v1, Le/a/q2/m0;->e:Le/a/q2/l0;

    .line 33
    iget-boolean v10, v10, Le/a/q2/l0;->e:Z

    .line 34
    invoke-static {v8, v7, v9, v10}, Le/a/a/i1/a;->a(Lcom/truecaller/messaging/data/types/Conversation;ZIZ)Lcom/truecaller/messaging/data/types/InboxTab;

    move-result-object v7

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eq v7, v9, :cond_7

    const/4 v9, 0x3

    if-eq v7, v9, :cond_6

    if-eq v7, v8, :cond_5

    :goto_4
    const-string v7, "personal"

    goto :goto_5

    :cond_5
    const-string v7, "promotional"

    goto :goto_5

    :cond_6
    const-string v7, "spam"

    goto :goto_5

    :cond_7
    const-string v7, "business"

    .line 35
    :goto_5
    iget v8, v6, Lcom/truecaller/messaging/data/types/Message;->k:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v9, "auto"

    const-string v10, "markAsRead"

    const-string v11, "transportInfo.getMessageEventId(DateTime(date))"

    const/4 v12, 0x2

    const-string v13, "message.participant"

    if-ne v8, v12, :cond_15

    .line 36
    :try_start_5
    iget-object v8, v6, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    invoke-static {v8, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    array-length v12, v8

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v12, :cond_a

    aget-object v15, v8, v14

    .line 38
    invoke-virtual {v15}, Lcom/truecaller/messaging/data/types/Entity;->r()Z

    move-result v16

    if-nez v16, :cond_8

    const/16 v16, 0x1

    goto :goto_7

    :cond_8
    const/16 v16, 0x0

    .line 39
    :goto_7
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 40
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_a
    const/4 v15, 0x0

    :goto_8
    if-eqz v15, :cond_b

    .line 41
    iget-object v8, v15, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    goto :goto_9

    :cond_b
    const/4 v8, 0x0

    .line 42
    :goto_9
    invoke-interface {v4}, Le/a/a/g/j0/q;->h0()Lcom/truecaller/messaging/data/types/TransportInfo;

    move-result-object v12

    new-instance v14, Lw3/b/a/b;

    move-object/from16 p1, v9

    move-object v15, v10

    invoke-interface {v4}, Le/a/a/g/j0/q;->C1()J

    move-result-wide v9

    invoke-direct {v14, v9, v10}, Lw3/b/a/b;-><init>(J)V

    invoke-interface {v12, v14}, Lcom/truecaller/messaging/data/types/TransportInfo;->T1(Lw3/b/a/b;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v10, v6, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v10, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "$this$toSenderImId"

    .line 44
    invoke-static {v10, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget v11, v10, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_c

    iget-object v10, v10, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v11, "normalizedAddress"

    goto :goto_b

    :cond_c
    iget-object v10, v10, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    if-eqz v10, :cond_d

    goto :goto_a

    :cond_d
    const-string v10, ""

    :goto_a
    const-string v11, "imPeerId ?: \"\""

    :goto_b
    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v11, v1, Le/a/q2/m0;->e:Le/a/q2/l0;

    move-object/from16 v16, v15

    iget-wide v14, v6, Lcom/truecaller/messaging/data/types/Message;->b:J

    invoke-static {v11, v14, v15}, Le/a/q2/l0;->a(Le/a/q2/l0;J)Ljava/lang/String;

    move-result-object v11

    .line 47
    invoke-static {v8}, Le/m/d/y/n;->r1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v8, :cond_e

    const-string v14, "contentType"

    .line 48
    invoke-static {v8, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "text/vnd.plain-file"

    const/4 v15, 0x1

    .line 49
    invoke-static {v14, v8, v15}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_f

    const-string v8, "text/plain"

    goto :goto_c

    :cond_e
    const/4 v8, 0x0

    :cond_f
    :goto_c
    move-object v14, v8

    .line 50
    iget-object v8, v6, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    invoke-static {v8, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    array-length v15, v8

    const/16 v17, 0x0

    move-object/from16 v24, v2

    move/from16 v2, v17

    :goto_d
    if-ge v2, v15, :cond_11

    aget-object v17, v8, v2

    .line 52
    invoke-virtual/range {v17 .. v17}, Lcom/truecaller/messaging/data/types/Entity;->r()Z

    move-result v17

    .line 53
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 54
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_10

    const/4 v2, 0x1

    goto :goto_e

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_11
    const/4 v2, 0x0

    .line 55
    :goto_e
    iget-boolean v15, v6, Lcom/truecaller/messaging/data/types/Message;->A:Z

    .line 56
    iget-object v8, v6, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v8, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/data/entity/messaging/Participant;->l()Z

    move-result v8

    .line 57
    invoke-interface {v4}, Le/a/a/g/j0/q;->C1()J

    move-result-wide v17

    move-object/from16 v25, v3

    .line 58
    iget-boolean v3, v1, Le/a/q2/m0;->g:Z

    if-eqz v3, :cond_12

    move-object/from16 v19, p1

    goto :goto_f

    :cond_12
    move-object/from16 v19, v16

    .line 59
    :goto_f
    iget-object v3, v1, Le/a/q2/m0;->h:Ljava/lang/String;

    move-object/from16 v26, v5

    .line 60
    iget-object v5, v6, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v5, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Le/m/d/y/n;->u1(Lcom/truecaller/data/entity/messaging/Participant;)Le/a/l5/a/m3;

    move-result-object v21

    .line 61
    invoke-static {v6}, Le/a/c/p/a;->D1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, "urgent"

    goto :goto_10

    :cond_13
    const-string v5, "regular"

    :goto_10
    move-object/from16 v23, v5

    .line 62
    new-instance v5, Le/a/q2/p0$b;

    if-eqz v8, :cond_14

    const/4 v6, 0x1

    goto :goto_11

    :cond_14
    const/4 v6, 0x0

    :goto_11
    move/from16 v16, v6

    move-object v8, v5

    move-object v13, v14

    move v14, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v7

    invoke-direct/range {v8 .. v23}, Le/a/q2/p0$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZJLjava/lang/String;Ljava/lang/String;Le/a/l5/a/m3;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_15
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v5

    move-object/from16 p1, v9

    move-object/from16 v16, v10

    .line 63
    new-instance v5, Le/a/q2/p0$a;

    .line 64
    invoke-interface {v4}, Le/a/a/g/j0/q;->h0()Lcom/truecaller/messaging/data/types/TransportInfo;

    move-result-object v2

    new-instance v3, Lw3/b/a/b;

    invoke-interface {v4}, Le/a/a/g/j0/q;->C1()J

    move-result-wide v8

    invoke-direct {v3, v8, v9}, Lw3/b/a/b;-><init>(J)V

    invoke-interface {v2, v3}, Lcom/truecaller/messaging/data/types/TransportInfo;->T1(Lw3/b/a/b;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget v2, v6, Lcom/truecaller/messaging/data/types/Message;->k:I

    invoke-interface {v4}, Le/a/a/g/j0/q;->h0()Lcom/truecaller/messaging/data/types/TransportInfo;

    move-result-object v3

    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_1c

    const/4 v8, 0x1

    if-eq v2, v8, :cond_1b

    if-eq v2, v12, :cond_1a

    const/4 v8, 0x4

    if-eq v2, v8, :cond_1c

    const/4 v8, 0x5

    if-eq v2, v8, :cond_16

    const-string v2, "unknown"

    goto :goto_12

    .line 67
    :cond_16
    check-cast v3, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;

    const-string v2, "info"

    .line 68
    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget v2, v3, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->d:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_19

    if-eq v2, v12, :cond_18

    const/4 v3, 0x4

    if-eq v2, v3, :cond_17

    const-string v2, "call"

    goto :goto_12

    :cond_17
    const-string v2, "voip"

    goto :goto_12

    :cond_18
    const-string v2, "whatsapp"

    goto :goto_12

    :cond_19
    const-string v2, "flash"

    goto :goto_12

    :cond_1a
    const-string v2, "im"

    goto :goto_12

    :cond_1b
    const-string v2, "mms"

    goto :goto_12

    :cond_1c
    const-string v2, "sms"

    :goto_12
    move-object v10, v2

    .line 70
    iget-object v2, v6, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v11, v2, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    .line 71
    iget v2, v2, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    invoke-static {v2}, Le/m/d/y/n;->w1(I)Ljava/lang/String;

    move-result-object v12

    .line 72
    invoke-interface {v4}, Le/a/a/g/j0/q;->C1()J

    move-result-wide v2

    .line 73
    iget-boolean v8, v1, Le/a/q2/m0;->g:Z

    if-eqz v8, :cond_1d

    move-object/from16 v15, p1

    goto :goto_13

    :cond_1d
    move-object/from16 v15, v16

    .line 74
    :goto_13
    iget-object v14, v1, Le/a/q2/m0;->h:Ljava/lang/String;

    .line 75
    iget-object v6, v6, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v6, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Le/m/d/y/n;->u1(Lcom/truecaller/data/entity/messaging/Participant;)Le/a/l5/a/m3;

    move-result-object v17

    move-object v8, v5

    move-object v6, v14

    move-wide v13, v2

    move-object/from16 v16, v6

    move-object/from16 v18, v7

    .line 76
    invoke-direct/range {v8 .. v18}, Le/a/q2/p0$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Le/a/l5/a/m3;Ljava/lang/String;)V

    :goto_14
    move-object/from16 v2, v26

    .line 77
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v5, v2

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    goto/16 :goto_1

    :cond_1e
    move-object v2, v5

    .line 78
    invoke-static {v4, v7}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 79
    invoke-static {v2}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_15

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 80
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v4, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 81
    :cond_1f
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    :goto_15
    return-object v0
.end method
