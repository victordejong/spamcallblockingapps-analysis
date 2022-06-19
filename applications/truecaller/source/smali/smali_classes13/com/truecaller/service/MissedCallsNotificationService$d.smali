.class public final Lcom/truecaller/service/MissedCallsNotificationService$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/service/MissedCallsNotificationService;->onHandleWork(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.truecaller.service.MissedCallsNotificationService$onHandleWork$1"
    f = "MissedCallsNotificationService.kt"
    l = {
        0x89,
        0xa4,
        0xa6,
        0x8f,
        0xa4,
        0xa6,
        0x93,
        0x95,
        0xa4,
        0xa6,
        0x97,
        0x9a,
        0x9c,
        0xa4,
        0xa6,
        0xa4,
        0xa6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:I

.field public k:I

.field public final synthetic l:Lcom/truecaller/service/MissedCallsNotificationService;


# direct methods
.method public constructor <init>(Lcom/truecaller/service/MissedCallsNotificationService;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/service/MissedCallsNotificationService$d;->l:Lcom/truecaller/service/MissedCallsNotificationService;

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

    new-instance p1, Lcom/truecaller/service/MissedCallsNotificationService$d;

    iget-object v0, p0, Lcom/truecaller/service/MissedCallsNotificationService$d;->l:Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-direct {p1, v0, p2}, Lcom/truecaller/service/MissedCallsNotificationService$d;-><init>(Lcom/truecaller/service/MissedCallsNotificationService;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/service/MissedCallsNotificationService$d;

    iget-object v0, p0, Lcom/truecaller/service/MissedCallsNotificationService$d;->l:Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-direct {p1, v0, p2}, Lcom/truecaller/service/MissedCallsNotificationService$d;-><init>(Lcom/truecaller/service/MissedCallsNotificationService;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/service/MissedCallsNotificationService$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    sget-object v2, Ls1/s;->a:Ls1/s;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->k:I

    const-string v4, "uiCoroutineContext"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "historyManager.tell().missedCallsCount"

    const-string v8, "historyManager.tell()"

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_1
    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->i:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/a0;

    iget-object v4, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->h:Ljava/lang/Object;

    check-cast v4, Ls1/z/c/a0;

    iget-object v5, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Throwable;

    iget-object v6, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    check-cast v6, Ls1/z/c/c0;

    iget-object v7, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    check-cast v7, Ls1/z/c/c0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v12, v7

    move-object v7, v6

    move-object v6, v4

    move-object v4, v5

    move-object/from16 v5, p1

    goto/16 :goto_17

    :pswitch_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_3
    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->h:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/a0;

    iget-object v4, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    check-cast v4, Ls1/z/c/a0;

    iget-object v5, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    check-cast v5, Ls1/z/c/c0;

    iget-object v6, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    check-cast v6, Ls1/z/c/c0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v7, v6

    move-object v6, v5

    move-object/from16 v5, p1

    goto/16 :goto_14

    :pswitch_4
    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->h:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/c0;

    iget-object v4, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    check-cast v4, Ls1/z/c/c0;

    iget-object v5, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    check-cast v5, Le/a/l0/u/d/b;

    iget-object v6, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    check-cast v6, Ls1/z/c/c0;

    :try_start_0
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v11, v0

    move-object/from16 v0, p1

    goto/16 :goto_b

    :pswitch_5
    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->h:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/c0;

    iget-object v4, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    check-cast v4, Ls1/z/c/c0;

    iget-object v5, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    check-cast v5, Le/a/l0/u/d/b;

    iget-object v6, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    check-cast v6, Ls1/z/c/c0;

    :try_start_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v11, v0

    move-object/from16 v0, p1

    goto/16 :goto_9

    :pswitch_6
    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ls1/z/c/c0;

    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Le/a/l0/u/d/b;

    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ls1/z/c/c0;

    :try_start_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_13

    :pswitch_7
    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    check-cast v0, Ls1/s;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_11

    :pswitch_8
    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->i:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/a0;

    iget-object v4, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->h:Ljava/lang/Object;

    check-cast v4, Ls1/z/c/a0;

    iget-object v5, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    check-cast v5, Ls1/s;

    iget-object v6, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    check-cast v6, Ls1/z/c/c0;

    iget-object v7, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    check-cast v7, Ls1/z/c/c0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v11, v6

    move-object v6, v4

    move-object/from16 v4, p1

    goto/16 :goto_10

    :pswitch_9
    iget v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->j:I

    iget-object v4, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    check-cast v4, Ls1/z/c/c0;

    iget-object v10, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    check-cast v10, Le/a/l0/u/d/b;

    iget-object v11, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    check-cast v11, Ls1/z/c/c0;

    :try_start_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v12, v11

    move-object v11, v4

    move-object/from16 v4, p1

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object v6, v4

    move-object v12, v11

    goto/16 :goto_16

    :pswitch_a
    iget v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->j:I

    iget-object v10, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    check-cast v10, Ls1/z/c/c0;

    iget-object v11, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    check-cast v11, Le/a/l0/u/d/b;

    iget-object v12, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    check-cast v12, Ls1/z/c/c0;

    :try_start_4
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v16, v11

    move-object v11, v10

    move-object/from16 v10, v16

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v6, v10

    move-object v10, v11

    goto/16 :goto_16

    :pswitch_b
    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    check-cast v0, Ls1/s;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_c
    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->i:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/a0;

    iget-object v4, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->h:Ljava/lang/Object;

    check-cast v4, Ls1/z/c/a0;

    iget-object v5, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    check-cast v5, Ls1/s;

    iget-object v6, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    check-cast v6, Ls1/z/c/c0;

    iget-object v7, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    check-cast v7, Ls1/z/c/c0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v12, v7

    move-object v7, v6

    move-object v6, v4

    move-object/from16 v4, p1

    goto/16 :goto_5

    :pswitch_d
    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ls1/z/c/c0;

    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Le/a/l0/u/d/b;

    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ls1/z/c/c0;

    :try_start_5
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v12, v6

    move-object v6, v4

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    goto/16 :goto_d

    :pswitch_e
    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    check-cast v0, Ls1/s;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_f
    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->i:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/a0;

    iget-object v4, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->h:Ljava/lang/Object;

    check-cast v4, Ls1/z/c/a0;

    iget-object v5, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    check-cast v5, Ls1/s;

    iget-object v6, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    check-cast v6, Ls1/z/c/c0;

    iget-object v7, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    check-cast v7, Ls1/z/c/c0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v11, v6

    move-object v6, v4

    move-object/from16 v4, p1

    goto/16 :goto_1

    :pswitch_10
    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/c0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    goto :goto_0

    :pswitch_11
    invoke-static/range {p1 .. p1}, Le/d/c/a/a;->d0(Ljava/lang/Object;)Ls1/z/c/c0;

    move-result-object v0

    .line 4
    iget-object v10, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->l:Lcom/truecaller/service/MissedCallsNotificationService;

    iput-object v10, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 5
    invoke-virtual {v10}, Lcom/truecaller/service/MissedCallsNotificationService;->d()Le/a/r2/f;

    move-result-object v10

    invoke-interface {v10}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Le/a/l0/c;

    invoke-interface {v10}, Le/a/l0/c;->z()Le/a/r2/x;

    move-result-object v10

    const-string v11, "historyManager.tell().newMissedCalls"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    iput v6, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->k:I

    invoke-static {v10, v1}, Le/a/e/a2;->g(Le/a/r2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_0

    return-object v3

    :cond_0
    :goto_0
    move-object v12, v0

    .line 6
    check-cast v10, Le/a/l0/u/d/b;

    .line 7
    new-instance v11, Ls1/z/c/c0;

    invoke-direct {v11}, Ls1/z/c/c0;-><init>()V

    iput-object v9, v11, Ls1/z/c/c0;->a:Ljava/lang/Object;

    if-nez v10, :cond_5

    if-eqz v10, :cond_1

    .line 8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 9
    :cond_1
    new-instance v0, Ls1/z/c/a0;

    invoke-direct {v0}, Ls1/z/c/a0;-><init>()V

    iget-object v4, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->l:Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-virtual {v4}, Lcom/truecaller/service/MissedCallsNotificationService;->d()Le/a/r2/f;

    move-result-object v4

    invoke-interface {v4}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Le/a/l0/c;

    invoke-interface {v4}, Le/a/l0/c;->l()Le/a/r2/x;

    move-result-object v4

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v12, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    iput-object v11, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    iput-object v2, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    iput-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->h:Ljava/lang/Object;

    iput-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->i:Ljava/lang/Object;

    iput v5, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->k:I

    invoke-static {v4, v1}, Le/a/e/a2;->g(Le/a/r2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_2

    return-object v3

    :cond_2
    move-object v6, v0

    move-object v5, v2

    move-object v7, v12

    :goto_1
    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Ls1/z/c/a0;->a:I

    .line 10
    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->l:Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-virtual {v0}, Lcom/truecaller/service/MissedCallsNotificationService;->e()Ls1/w/f;

    move-result-object v0

    new-instance v2, Lcom/truecaller/service/MissedCallsNotificationService$d$a;

    invoke-direct {v2, v7, v11, v6, v9}, Lcom/truecaller/service/MissedCallsNotificationService$d$a;-><init>(Ls1/z/c/c0;Ls1/z/c/c0;Ls1/z/c/a0;Ls1/w/d;)V

    iput-object v5, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    iput-object v9, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    iput-object v9, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    iput-object v9, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->h:Ljava/lang/Object;

    iput-object v9, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->i:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->k:I

    invoke-static {v0, v2, v1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_3

    return-object v3

    :cond_3
    move-object v0, v5

    :goto_2
    return-object v0

    :cond_4
    return-object v2

    .line 11
    :cond_5
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_d

    .line 12
    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->l:Lcom/truecaller/service/MissedCallsNotificationService;

    iput-object v12, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    iput-object v10, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    iput-object v11, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    const/4 v5, 0x4

    iput v5, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->k:I

    .line 13
    iget-object v5, v0, Lcom/truecaller/service/MissedCallsNotificationService;->a:Ls1/w/f;

    if-eqz v5, :cond_c

    new-instance v4, Le/a/y4/c;

    invoke-direct {v4, v0, v9}, Le/a/y4/c;-><init>(Lcom/truecaller/service/MissedCallsNotificationService;Ls1/w/d;)V

    invoke-static {v5, v4, v1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-ne v0, v3, :cond_6

    goto :goto_3

    :cond_6
    move-object v0, v2

    :goto_3
    if-ne v0, v3, :cond_7

    return-object v3

    :cond_7
    move-object v5, v10

    move-object v6, v11

    :goto_4
    if-eqz v5, :cond_8

    .line 14
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 15
    :cond_8
    new-instance v0, Ls1/z/c/a0;

    invoke-direct {v0}, Ls1/z/c/a0;-><init>()V

    iget-object v4, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->l:Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-virtual {v4}, Lcom/truecaller/service/MissedCallsNotificationService;->d()Le/a/r2/f;

    move-result-object v4

    invoke-interface {v4}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Le/a/l0/c;

    invoke-interface {v4}, Le/a/l0/c;->l()Le/a/r2/x;

    move-result-object v4

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v12, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    iput-object v6, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    iput-object v2, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    iput-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->h:Ljava/lang/Object;

    iput-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->i:Ljava/lang/Object;

    const/4 v5, 0x5

    iput v5, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->k:I

    invoke-static {v4, v1}, Le/a/e/a2;->g(Le/a/r2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_9

    return-object v3

    :cond_9
    move-object v5, v2

    move-object v7, v6

    move-object v6, v0

    :goto_5
    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Ls1/z/c/a0;->a:I

    .line 16
    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->l:Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-virtual {v0}, Lcom/truecaller/service/MissedCallsNotificationService;->e()Ls1/w/f;

    move-result-object v0

    new-instance v2, Lcom/truecaller/service/MissedCallsNotificationService$d$a;

    invoke-direct {v2, v12, v7, v6, v9}, Lcom/truecaller/service/MissedCallsNotificationService$d$a;-><init>(Ls1/z/c/c0;Ls1/z/c/c0;Ls1/z/c/a0;Ls1/w/d;)V

    iput-object v5, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    iput-object v9, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    iput-object v9, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    iput-object v9, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->h:Ljava/lang/Object;

    iput-object v9, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->i:Ljava/lang/Object;

    const/4 v4, 0x6

    iput v4, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->k:I

    invoke-static {v0, v2, v1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_a

    return-object v3

    :cond_a
    move-object v0, v5

    :goto_6
    return-object v0

    :cond_b
    return-object v2

    .line 17
    :cond_c
    :try_start_7
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v9

    :cond_d
    const-wide/16 v13, 0x12c

    .line 18
    :try_start_8
    iput-object v12, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    iput-object v10, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    iput-object v11, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    iput v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->j:I

    const/4 v15, 0x7

    iput v15, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->k:I

    invoke-static {v13, v14, v1}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_e

    return-object v3

    .line 19
    :cond_e
    :goto_7
    iget-object v13, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->l:Lcom/truecaller/service/MissedCallsNotificationService;

    iput-object v12, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    iput-object v10, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    iput-object v11, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    iput v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->j:I

    const/16 v14, 0x8

    iput v14, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->k:I

    .line 20
    iget-object v14, v13, Lcom/truecaller/service/MissedCallsNotificationService;->a:Ls1/w/f;

    if-eqz v14, :cond_1e

    new-instance v4, Le/a/y4/d;

    invoke-direct {v4, v13, v9}, Le/a/y4/d;-><init>(Lcom/truecaller/service/MissedCallsNotificationService;Ls1/w/d;)V

    invoke-static {v14, v4, v1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_f

    return-object v3

    .line 21
    :cond_f
    :goto_8
    check-cast v4, Lcom/truecaller/service/MissedCallsNotificationService$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v6, :cond_1a

    if-eq v4, v5, :cond_15

    if-le v0, v6, :cond_11

    .line 22
    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->l:Lcom/truecaller/service/MissedCallsNotificationService;

    iput-object v12, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    iput-object v10, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    iput-object v11, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    iput-object v11, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->h:Ljava/lang/Object;

    const/16 v4, 0xc

    iput v4, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->k:I

    invoke-virtual {v0, v10, v1}, Lcom/truecaller/service/MissedCallsNotificationService;->g(Le/a/l0/u/d/b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-ne v0, v3, :cond_10

    return-object v3

    :cond_10
    move-object v5, v10

    move-object v4, v11

    move-object v6, v12

    :goto_9
    :try_start_9
    check-cast v0, Landroid/app/Notification;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_a
    move-object v10, v5

    move-object v12, v6

    move-object/from16 v16, v11

    move-object v11, v4

    move-object/from16 v4, v16

    goto :goto_c

    :cond_11
    if-ne v0, v6, :cond_13

    .line 23
    :try_start_a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 24
    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->l:Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-interface {v10}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v4

    iput-object v12, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    iput-object v10, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    iput-object v11, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    iput-object v11, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->h:Ljava/lang/Object;

    const/16 v5, 0xd

    iput v5, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->k:I

    invoke-virtual {v0, v4, v1}, Lcom/truecaller/service/MissedCallsNotificationService;->j(Lcom/truecaller/data/entity/HistoryEvent;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-ne v0, v3, :cond_12

    return-object v3

    :cond_12
    move-object v5, v10

    move-object v4, v11

    move-object v6, v12

    :goto_b
    :try_start_b
    check-cast v0, Landroid/app/Notification;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_a

    :goto_c
    move-object/from16 v16, v11

    move-object v11, v4

    move-object/from16 v4, v16

    goto :goto_e

    :goto_d
    move-object v10, v5

    goto :goto_f

    :cond_13
    move-object v0, v9

    move-object v4, v11

    .line 25
    :goto_e
    :try_start_c
    iput-object v0, v11, Ls1/z/c/c0;->a:Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-object v11, v4

    :cond_14
    move-object v5, v10

    goto/16 :goto_12

    :catchall_3
    move-exception v0

    move-object v6, v12

    :goto_f
    move-object v12, v6

    move-object v6, v4

    goto/16 :goto_16

    :cond_15
    if-eqz v10, :cond_16

    .line 26
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 27
    :cond_16
    new-instance v0, Ls1/z/c/a0;

    invoke-direct {v0}, Ls1/z/c/a0;-><init>()V

    iget-object v4, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->l:Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-virtual {v4}, Lcom/truecaller/service/MissedCallsNotificationService;->d()Le/a/r2/f;

    move-result-object v4

    invoke-interface {v4}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Le/a/l0/c;

    invoke-interface {v4}, Le/a/l0/c;->l()Le/a/r2/x;

    move-result-object v4

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v12, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    iput-object v11, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    iput-object v2, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    iput-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->h:Ljava/lang/Object;

    iput-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->i:Ljava/lang/Object;

    const/16 v5, 0x9

    iput v5, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->k:I

    invoke-static {v4, v1}, Le/a/e/a2;->g(Le/a/r2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_17

    return-object v3

    :cond_17
    move-object v6, v0

    move-object v5, v2

    move-object v7, v12

    :goto_10
    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Ls1/z/c/a0;->a:I

    .line 28
    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->l:Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-virtual {v0}, Lcom/truecaller/service/MissedCallsNotificationService;->e()Ls1/w/f;

    move-result-object v0

    new-instance v2, Lcom/truecaller/service/MissedCallsNotificationService$d$a;

    invoke-direct {v2, v7, v11, v6, v9}, Lcom/truecaller/service/MissedCallsNotificationService$d$a;-><init>(Ls1/z/c/c0;Ls1/z/c/c0;Ls1/z/c/a0;Ls1/w/d;)V

    iput-object v5, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    iput-object v9, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    iput-object v9, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    iput-object v9, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->h:Ljava/lang/Object;

    iput-object v9, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->i:Ljava/lang/Object;

    const/16 v4, 0xa

    iput v4, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->k:I

    invoke-static {v0, v2, v1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_18

    return-object v3

    :cond_18
    move-object v0, v5

    :goto_11
    return-object v0

    :cond_19
    return-object v2

    .line 29
    :cond_1a
    :try_start_d
    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->l:Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "applicationContext"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v12, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    iput-object v10, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    iput-object v11, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    const/16 v5, 0xb

    iput v5, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->k:I

    invoke-virtual {v0, v10, v4, v1}, Lcom/truecaller/service/MissedCallsNotificationService;->f(Le/a/l0/u/d/b;Landroid/content/Context;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-ne v0, v3, :cond_14

    return-object v3

    :goto_12
    move-object v4, v11

    move-object v6, v12

    :goto_13
    if-eqz v5, :cond_1b

    .line 30
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 31
    :cond_1b
    new-instance v0, Ls1/z/c/a0;

    invoke-direct {v0}, Ls1/z/c/a0;-><init>()V

    iget-object v5, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->l:Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-virtual {v5}, Lcom/truecaller/service/MissedCallsNotificationService;->d()Le/a/r2/f;

    move-result-object v5

    invoke-interface {v5}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Le/a/l0/c;

    invoke-interface {v5}, Le/a/l0/c;->l()Le/a/r2/x;

    move-result-object v5

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    iput-object v4, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    iput-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    iput-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->h:Ljava/lang/Object;

    const/16 v7, 0xe

    iput v7, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->k:I

    invoke-static {v5, v1}, Le/a/e/a2;->g(Le/a/r2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_1c

    return-object v3

    :cond_1c
    move-object v7, v6

    move-object v6, v4

    move-object v4, v0

    :goto_14
    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_1d

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v0, Ls1/z/c/a0;->a:I

    .line 32
    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->l:Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-virtual {v0}, Lcom/truecaller/service/MissedCallsNotificationService;->e()Ls1/w/f;

    move-result-object v0

    new-instance v5, Lcom/truecaller/service/MissedCallsNotificationService$d$a;

    invoke-direct {v5, v7, v6, v4, v9}, Lcom/truecaller/service/MissedCallsNotificationService$d$a;-><init>(Ls1/z/c/c0;Ls1/z/c/c0;Ls1/z/c/a0;Ls1/w/d;)V

    iput-object v9, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    iput-object v9, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    iput-object v9, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    iput-object v9, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->h:Ljava/lang/Object;

    const/16 v4, 0xf

    iput v4, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->k:I

    invoke-static {v0, v5, v1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_1d

    return-object v3

    :cond_1d
    :goto_15
    return-object v2

    .line 33
    :cond_1e
    :try_start_e
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v9

    :catchall_4
    move-exception v0

    move-object v6, v11

    :goto_16
    if-eqz v10, :cond_1f

    .line 34
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 35
    :cond_1f
    new-instance v4, Ls1/z/c/a0;

    invoke-direct {v4}, Ls1/z/c/a0;-><init>()V

    iget-object v5, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->l:Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-virtual {v5}, Lcom/truecaller/service/MissedCallsNotificationService;->d()Le/a/r2/f;

    move-result-object v5

    invoke-interface {v5}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Le/a/l0/c;

    invoke-interface {v5}, Le/a/l0/c;->l()Le/a/r2/x;

    move-result-object v5

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v12, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    iput-object v6, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    iput-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    iput-object v4, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->h:Ljava/lang/Object;

    iput-object v4, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->i:Ljava/lang/Object;

    const/16 v7, 0x10

    iput v7, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->k:I

    invoke-static {v5, v1}, Le/a/e/a2;->g(Le/a/r2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_20

    return-object v3

    :cond_20
    move-object v7, v6

    move-object v6, v4

    move-object v4, v0

    move-object v0, v6

    :goto_17
    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_22

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Ls1/z/c/a0;->a:I

    .line 36
    iget-object v0, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->l:Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-virtual {v0}, Lcom/truecaller/service/MissedCallsNotificationService;->e()Ls1/w/f;

    move-result-object v0

    new-instance v2, Lcom/truecaller/service/MissedCallsNotificationService$d$a;

    invoke-direct {v2, v12, v7, v6, v9}, Lcom/truecaller/service/MissedCallsNotificationService$d$a;-><init>(Ls1/z/c/c0;Ls1/z/c/c0;Ls1/z/c/a0;Ls1/w/d;)V

    iput-object v4, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->e:Ljava/lang/Object;

    iput-object v9, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->f:Ljava/lang/Object;

    iput-object v9, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->g:Ljava/lang/Object;

    iput-object v9, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->h:Ljava/lang/Object;

    iput-object v9, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->i:Ljava/lang/Object;

    const/16 v5, 0x11

    iput v5, v1, Lcom/truecaller/service/MissedCallsNotificationService$d;->k:I

    invoke-static {v0, v2, v1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_21

    return-object v3

    :cond_21
    move-object v0, v4

    .line 37
    :goto_18
    throw v0

    :cond_22
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
