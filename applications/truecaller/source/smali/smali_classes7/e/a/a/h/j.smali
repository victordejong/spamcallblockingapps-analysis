.class public final Le/a/a/h/j;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.groupinfo.GroupInfoPresenter$loadImportantMessageInfo$1"
    f = "GroupInfoPresenter.kt"
    l = {
        0xfb
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/h/i;


# direct methods
.method public constructor <init>(Le/a/a/h/i;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/h/j;->f:Le/a/a/h/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/a/h/j;

    iget-object v0, p0, Le/a/a/h/j;->f:Le/a/a/h/i;

    invoke-direct {p1, v0, p2}, Le/a/a/h/j;-><init>(Le/a/a/h/i;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/h/j;

    iget-object v0, p0, Le/a/a/h/j;->f:Le/a/a/h/i;

    invoke-direct {p1, v0, p2}, Le/a/a/h/j;-><init>(Le/a/a/h/i;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/h/j;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v1, Le/a/a/h/j;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto/16 :goto_a

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v1, Le/a/a/h/j;->f:Le/a/a/h/i;

    .line 5
    iget-object v4, v2, Le/a/a/h/i;->w:Le/a/a/h/c;

    .line 6
    iget-object v2, v2, Le/a/a/h/i;->j:Lcom/truecaller/messaging/data/types/Conversation;

    .line 7
    iget-wide v5, v2, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    iput v3, v1, Le/a/a/h/j;->e:I

    check-cast v4, Le/a/a/h/e;

    .line 8
    iget-object v7, v4, Le/a/a/h/e;->a:Landroid/content/ContentResolver;

    .line 9
    invoke-static {}, Le/a/b0/q/g0;->y()Landroid/net/Uri;

    move-result-object v8

    const-string v2, "DISTINCT participant_id"

    .line 10
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v9

    new-array v11, v3, [Ljava/lang/String;

    .line 11
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v11, v5

    const/4 v12, 0x0

    const-string v10, "conversation_id = ? AND important"

    .line 12
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    .line 13
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 14
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 15
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 16
    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v8, v9}, Ljava/lang/Long;-><init>(J)V

    .line 17
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {v2, v6}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v2, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 19
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    :cond_3
    move-object v2, v6

    :goto_1
    if-eqz v2, :cond_5

    .line 20
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    move v3, v5

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    goto/16 :goto_9

    .line 21
    :cond_6
    iget-object v3, v4, Le/a/a/h/e;->a:Landroid/content/ContentResolver;

    .line 22
    invoke-static {}, Le/a/m0/a1$k;->I()Landroid/net/Uri;

    move-result-object v15

    const-string v7, "DISTINCT _id"

    const-string v8, "*"

    .line 23
    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v16

    const-string v7, "_id IN ("

    .line 24
    invoke-static {v7}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v13, Le/a/a/h/d;->b:Le/a/a/h/d;

    const/16 v17, 0x1f

    move-object v7, v2

    move-object v6, v14

    move/from16 v14, v17

    invoke-static/range {v7 .. v14}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ") GROUP BY _id"

    invoke-static {v6, v7, v8}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 25
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v2, v7}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 27
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 28
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-array v2, v5, [Ljava/lang/String;

    .line 29
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v6, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v2, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, [Ljava/lang/String;

    const/4 v12, 0x0

    move-object v7, v3

    move-object v8, v15

    move-object/from16 v9, v16

    .line 30
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 31
    iget-object v3, v4, Le/a/a/h/e;->b:Le/a/a/g/g;

    invoke-interface {v3, v2}, Le/a/a/g/g;->k(Landroid/database/Cursor;)Le/a/a/g/j0/c0;

    move-result-object v2

    .line 32
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez v2, :cond_9

    :cond_8
    const/4 v4, 0x0

    goto :goto_8

    .line 33
    :cond_9
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 34
    invoke-interface {v2}, Le/a/a/g/j0/c0;->g1()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v6

    const-string v7, "participant"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget v7, v6, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_c

    iget-object v7, v6, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v8, "normalizedAddress"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_a

    const/4 v7, 0x1

    goto :goto_5

    :cond_a
    move v7, v5

    :goto_5
    if-eqz v7, :cond_b

    goto :goto_6

    .line 36
    :cond_b
    invoke-static {v6}, Le/a/a/i1/h;->c(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 37
    :cond_c
    :goto_6
    iget-object v6, v4, Le/a/a/h/e;->c:Le/a/p5/h0;

    const v7, 0x7f120437

    new-array v8, v5, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "resourceProvider.getStri\u2026ring.ParticipantSelfName)"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    :goto_7
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    .line 39
    :goto_8
    invoke-static {v2, v4}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v2, v3

    :goto_9
    if-ne v2, v0, :cond_d

    return-object v0

    .line 40
    :cond_d
    :goto_a
    move-object v3, v2

    check-cast v3, Ljava/util/List;

    .line 41
    iget-object v0, v1, Le/a/a/h/j;->f:Le/a/a/h/i;

    .line 42
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/a/h/h;

    if-eqz v2, :cond_e

    .line 43
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 44
    iput-boolean v4, v0, Le/a/a/h/i;->h:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3f

    .line 45
    invoke-static/range {v3 .. v10}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Le/a/a/h/h;->Li(Ljava/lang/String;)V

    .line 46
    iget-object v0, v1, Le/a/a/h/j;->f:Le/a/a/h/i;

    .line 47
    iget-boolean v0, v0, Le/a/a/h/i;->h:Z

    .line 48
    invoke-interface {v2, v0}, Le/a/a/h/h;->Xp(Z)V

    .line 49
    iget-object v0, v1, Le/a/a/h/j;->f:Le/a/a/h/i;

    .line 50
    invoke-virtual {v0}, Le/a/a/h/i;->Oj()V

    .line 51
    :cond_e
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0

    :catchall_2
    move-exception v0

    move-object v3, v0

    .line 52
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
.end method
