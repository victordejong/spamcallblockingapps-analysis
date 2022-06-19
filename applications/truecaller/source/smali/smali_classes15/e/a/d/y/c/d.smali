.class public final Le/a/d/y/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/y/c/f;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/d/c0/j1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/d/c0/j1;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "support"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/y/c/d;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/d/y/c/d;->b:Le/a/d/c0/j1;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/d/y/c/e;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Le/a/d/y/c/d$a;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Le/a/d/y/c/d$a;

    iget v3, v2, Le/a/d/y/c/d$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/d/y/c/d$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/d/y/c/d$a;

    invoke-direct {v2, v1, v0}, Le/a/d/y/c/d$a;-><init>(Le/a/d/y/c/d;Ls1/w/d;)V

    :goto_0
    iget-object v0, v2, Le/a/d/y/c/d$a;->d:Ljava/lang/Object;

    sget-object v11, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v2, Le/a/d/y/c/d$a;->e:I

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v13, :cond_2

    if-ne v3, v14, :cond_1

    iget-object v3, v2, Le/a/d/y/c/d$a;->p:Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    iget-object v4, v2, Le/a/d/y/c/d$a;->o:Ljava/lang/Object;

    check-cast v4, Ls1/z/c/c0;

    iget-object v5, v2, Le/a/d/y/c/d$a;->n:Ljava/lang/Object;

    check-cast v5, Ls1/z/c/y;

    iget-object v6, v2, Le/a/d/y/c/d$a;->m:Ljava/lang/Object;

    check-cast v6, Ls1/z/c/c0;

    iget-object v7, v2, Le/a/d/y/c/d$a;->l:Ljava/lang/Object;

    check-cast v7, Le/a/d/y/c/b;

    iget-object v8, v2, Le/a/d/y/c/d$a;->k:Ljava/lang/Object;

    check-cast v8, Ljava/util/Collection;

    iget-object v9, v2, Le/a/d/y/c/d$a;->j:Ljava/lang/Object;

    check-cast v9, Landroid/database/Cursor;

    iget-object v10, v2, Le/a/d/y/c/d$a;->i:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Throwable;

    iget-object v14, v2, Le/a/d/y/c/d$a;->h:Ljava/lang/Object;

    check-cast v14, Ljava/io/Closeable;

    iget-object v12, v2, Le/a/d/y/c/d$a;->g:Ljava/lang/Object;

    check-cast v12, Le/a/d/y/c/d;

    :try_start_0
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_9

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v3, v2, Le/a/d/y/c/d$a;->g:Ljava/lang/Object;

    check-cast v3, Le/a/d/y/c/d;

    :try_start_1
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_2
    iget-object v0, v1, Le/a/d/y/c/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v0, "context.contentResolver"

    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Le/a/m0/a1$j;->d()Landroid/net/Uri;

    move-result-object v4

    const-string v0, "HistoryTable.getContentWithAggregatedContactUri()"

    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const-string v6, "subscription_component_name=\'com.truecaller.voip.manager.VOIP\' AND type=3 AND new=1 AND normalized_number IS NOT NULL"

    const/4 v7, 0x0

    const-string v8, "timestamp DESC LIMIT 100"

    const/16 v10, 0xa

    .line 6
    iput-object v1, v2, Le/a/d/y/c/d$a;->g:Ljava/lang/Object;

    iput v13, v2, Le/a/d/y/c/d$a;->e:I

    move-object v9, v2

    .line 7
    invoke-static/range {v3 .. v10}, Le/a/p5/s0/f;->B(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ls1/w/d;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_4

    return-object v11

    :cond_4
    move-object v3, v1

    .line 8
    :goto_1
    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_d

    .line 9
    new-instance v14, Le/a/d/y/c/b;

    invoke-direct {v14, v0}, Le/a/d/y/c/b;-><init>(Landroid/database/Cursor;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 10
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v3

    move-object v9, v14

    move-object v10, v15

    move-object v3, v0

    .line 11
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v7, v9

    check-cast v7, Le/a/d/y/c/b;

    .line 12
    new-instance v6, Ls1/z/c/c0;

    invoke-direct {v6}, Ls1/z/c/c0;-><init>()V

    iput-object v15, v6, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 13
    new-instance v5, Ls1/z/c/y;

    invoke-direct {v5}, Ls1/z/c/y;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, v5, Ls1/z/c/y;->a:Z

    .line 14
    new-instance v4, Ls1/z/c/c0;

    invoke-direct {v4}, Ls1/z/c/c0;-><init>()V

    iput-object v15, v4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 15
    iget-object v0, v12, Le/a/d/y/c/d;->b:Le/a/d/c0/j1;

    .line 16
    invoke-virtual {v7}, Le/a/d/y/c/b;->b()Ljava/lang/String;

    move-result-object v8

    .line 17
    sget-object v13, Lcom/truecaller/voip/util/VoipSearchDirection;->INCOMING:Lcom/truecaller/voip/util/VoipSearchDirection;

    iput-object v12, v2, Le/a/d/y/c/d$a;->g:Ljava/lang/Object;

    iput-object v14, v2, Le/a/d/y/c/d$a;->h:Ljava/lang/Object;

    iput-object v10, v2, Le/a/d/y/c/d$a;->i:Ljava/lang/Object;

    iput-object v9, v2, Le/a/d/y/c/d$a;->j:Ljava/lang/Object;

    iput-object v3, v2, Le/a/d/y/c/d$a;->k:Ljava/lang/Object;

    iput-object v7, v2, Le/a/d/y/c/d$a;->l:Ljava/lang/Object;

    iput-object v6, v2, Le/a/d/y/c/d$a;->m:Ljava/lang/Object;

    iput-object v5, v2, Le/a/d/y/c/d$a;->n:Ljava/lang/Object;

    iput-object v4, v2, Le/a/d/y/c/d$a;->o:Ljava/lang/Object;

    iput-object v3, v2, Le/a/d/y/c/d$a;->p:Ljava/lang/Object;

    const/4 v15, 0x2

    iput v15, v2, Le/a/d/y/c/d$a;->e:I

    .line 18
    invoke-interface {v0, v8, v13, v2}, Le/a/d/c0/j1;->E(Ljava/lang/String;Lcom/truecaller/voip/util/VoipSearchDirection;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_5

    return-object v11

    :cond_5
    move-object v8, v3

    .line 19
    :goto_3
    check-cast v0, Le/a/d/c0/f1;

    if-eqz v0, :cond_6

    .line 20
    iget-object v13, v0, Le/a/d/c0/f1;->j:Lcom/truecaller/voip/VoipUserBadge;

    .line 21
    iput-object v13, v6, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 22
    iget-boolean v13, v0, Le/a/d/c0/f1;->f:Z

    .line 23
    iput-boolean v13, v5, Ls1/z/c/y;->a:Z

    .line 24
    iget-object v0, v0, Le/a/d/c0/f1;->d:Ljava/lang/String;

    .line 25
    iput-object v0, v4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 26
    :cond_6
    iget-object v0, v7, Le/a/d/y/c/b;->a:Le/a/p5/s0/e;

    sget-object v13, Le/a/d/y/c/b;->e:[Ls1/a/l;

    const/4 v15, 0x0

    aget-object v1, v13, v15

    invoke-virtual {v0, v7, v1}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Le/a/d/y/c/b;->a:Le/a/p5/s0/e;

    move-object/from16 v16, v0

    aget-object v0, v13, v15

    invoke-virtual {v1, v7, v0}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 27
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    move v0, v15

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_6

    :cond_9
    move v0, v15

    .line 28
    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v0, v16

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {v7}, Le/a/d/y/c/b;->b()Ljava/lang/String;

    move-result-object v0

    :goto_8
    move-object/from16 v18, v0

    .line 30
    new-instance v0, Le/a/d/y/c/e;

    invoke-virtual {v7}, Le/a/d/y/c/b;->b()Ljava/lang/String;

    move-result-object v19

    iget-object v1, v4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object/from16 v20, v1

    check-cast v20, Ljava/lang/String;

    iget-object v1, v6, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object/from16 v21, v1

    check-cast v21, Lcom/truecaller/voip/VoipUserBadge;

    iget-boolean v1, v5, Ls1/z/c/y;->a:Z

    .line 31
    iget-object v4, v7, Le/a/d/y/c/b;->c:Le/a/p5/s0/e;

    const/4 v5, 0x2

    aget-object v6, v13, v5

    invoke-virtual {v4, v7, v6}, Le/a/p5/s0/e;->b(Landroid/database/Cursor;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v23

    move-object/from16 v17, v0

    move/from16 v22, v1

    .line 32
    invoke-direct/range {v17 .. v24}, Le/a/d/y/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/voip/VoipUserBadge;ZJ)V

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    move-object v3, v8

    const/4 v13, 0x1

    const/4 v15, 0x0

    goto/16 :goto_2

    .line 33
    :cond_c
    check-cast v3, Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    :try_start_4
    invoke-static {v14, v10}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v3, :cond_d

    .line 35
    invoke-static {v3}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v15
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_a

    .line 36
    :goto_9
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_6
    invoke-static {v14, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    .line 37
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_d
    const/4 v15, 0x0

    :goto_a
    return-object v15
.end method
