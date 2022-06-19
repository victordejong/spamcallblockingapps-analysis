.class public final Le/a/d/v/k/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/v/k/p;


# instance fields
.field public final a:Lq3/a/i0;

.field public final b:Ljava/lang/String;

.field public final c:Le/a/d/c0/z1/i;

.field public final d:Le/a/d/v/i;

.field public final e:Le/a/d/x/r/h;

.field public final f:Le/a/d/v/g;

.field public final g:Le/a/d/x/q/h;

.field public final h:Le/a/d/c0/x1/e;

.field public final i:Le/a/d/c0/o;

.field public final j:Le/a/d/c0/v;

.field public final k:Le/a/d/v/k/g;

.field public final l:Le/a/d/c0/j1;

.field public final m:Le/a/d/v/k/w0;

.field public final n:Le/a/d/v/k/d0;

.field public final o:Le/a/d/v/k/i0;

.field public final p:Le/a/p5/c;

.field public final q:Le/a/d/c/a/f;


# direct methods
.method public constructor <init>(Lq3/a/i0;Ljava/lang/String;Le/a/d/c0/z1/i;Le/a/d/v/i;Le/a/d/x/r/h;Le/a/d/v/g;Le/a/d/x/q/h;Le/a/d/c0/x1/e;Le/a/d/c0/o;Le/a/d/c0/v;Le/a/d/v/k/g;Le/a/d/c0/j1;Le/a/d/v/k/w0;Le/a/d/v/k/d0;Le/a/d/v/k/i0;Le/a/p5/c;Le/a/d/c/a/f;)V
    .locals 16
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "coroutineScope"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownVoipId"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callInfoRepository"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateMachine"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtmChannel"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peers"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtcManager"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioUtil"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hapticFeedbackUtil"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proximityLockUtil"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectPeerHistory"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipSupport"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provideConnectedTime"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logCallFinishedEvent"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logCallStateChangedEvent"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logPriorityVoipCallEvent"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    iput-object v1, v0, Le/a/d/v/k/q;->a:Lq3/a/i0;

    iput-object v2, v0, Le/a/d/v/k/q;->b:Ljava/lang/String;

    iput-object v3, v0, Le/a/d/v/k/q;->c:Le/a/d/c0/z1/i;

    iput-object v4, v0, Le/a/d/v/k/q;->d:Le/a/d/v/i;

    iput-object v5, v0, Le/a/d/v/k/q;->e:Le/a/d/x/r/h;

    iput-object v6, v0, Le/a/d/v/k/q;->f:Le/a/d/v/g;

    iput-object v7, v0, Le/a/d/v/k/q;->g:Le/a/d/x/q/h;

    iput-object v8, v0, Le/a/d/v/k/q;->h:Le/a/d/c0/x1/e;

    iput-object v9, v0, Le/a/d/v/k/q;->i:Le/a/d/c0/o;

    iput-object v10, v0, Le/a/d/v/k/q;->j:Le/a/d/c0/v;

    iput-object v11, v0, Le/a/d/v/k/q;->k:Le/a/d/v/k/g;

    iput-object v12, v0, Le/a/d/v/k/q;->l:Le/a/d/c0/j1;

    iput-object v13, v0, Le/a/d/v/k/q;->m:Le/a/d/v/k/w0;

    iput-object v14, v0, Le/a/d/v/k/q;->n:Le/a/d/v/k/d0;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/d/v/k/q;->o:Le/a/d/v/k/i0;

    iput-object v15, v0, Le/a/d/v/k/q;->p:Le/a/p5/c;

    move-object/from16 v1, p17

    iput-object v1, v0, Le/a/d/v/k/q;->q:Le/a/d/c/a/f;

    return-void
.end method


# virtual methods
.method public final synthetic b(Le/a/d/v/h$b;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/v/h$b;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d/v/k/q$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/v/k/q$b;

    iget v1, v0, Le/a/d/v/k/q$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/v/k/q$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/v/k/q$b;

    invoke-direct {v0, p0, p2}, Le/a/d/v/k/q$b;-><init>(Le/a/d/v/k/q;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/v/k/q$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/v/k/q$b;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/d/v/k/q$b;->i:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Le/a/d/v/k/q$b;->h:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    iget-object v4, v0, Le/a/d/v/k/q$b;->g:Ljava/lang/Object;

    check-cast v4, Le/a/d/v/h$b;

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/d/v/k/q$b;->j:Ljava/lang/Object;

    check-cast p1, Lq3/a/b3/c;

    iget-object v2, v0, Le/a/d/v/k/q$b;->i:Ljava/lang/Object;

    check-cast v2, Le/a/d/c0/r;

    iget-object v4, v0, Le/a/d/v/k/q$b;->h:Ljava/lang/Object;

    check-cast v4, Le/a/d/v/h$b;

    iget-object v6, v0, Le/a/d/v/k/q$b;->g:Ljava/lang/Object;

    check-cast v6, Le/a/d/v/k/q;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v2, p0, Le/a/d/v/k/q;->f:Le/a/d/v/g;

    .line 4
    iget-object p2, v2, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 5
    iput-object p0, v0, Le/a/d/v/k/q$b;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/v/k/q$b;->h:Ljava/lang/Object;

    iput-object v2, v0, Le/a/d/v/k/q$b;->i:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/v/k/q$b;->j:Ljava/lang/Object;

    iput v4, v0, Le/a/d/v/k/q$b;->e:I

    invoke-interface {p2, v5, v0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_4

    return-object v1

    :cond_4
    move-object v6, p0

    move-object v4, p1

    move-object p1, p2

    .line 6
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    .line 7
    iget-object p2, v6, Le/a/d/v/k/q;->f:Le/a/d/v/g;

    invoke-virtual {p2}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, p1

    move-object p1, p2

    :cond_5
    :goto_2
    :try_start_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/d/v/l/a;

    .line 9
    new-instance v6, Le/a/d/v/l/c$b$c;

    invoke-direct {v6, v4}, Le/a/d/v/l/c$b$c;-><init>(Le/a/d/v/h$b;)V

    invoke-interface {p2, v6}, Le/a/d/v/l/e/g;->e(Le/a/d/v/l/c$b;)Lq3/a/p1;

    move-result-object p2

    iput-object v4, v0, Le/a/d/v/k/q$b;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/d/v/k/q$b;->h:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/v/k/q$b;->i:Ljava/lang/Object;

    iput-object v5, v0, Le/a/d/v/k/q$b;->j:Ljava/lang/Object;

    iput v3, v0, Le/a/d/v/k/q$b;->e:I

    invoke-interface {p2, v0}, Lq3/a/p1;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    .line 10
    :cond_6
    sget-object p1, Ls1/s;->a:Ls1/s;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    invoke-interface {v2, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :goto_3
    move-object p2, p1

    move-object p1, v2

    goto :goto_4

    :catchall_1
    move-exception p2

    :goto_4
    invoke-interface {p1, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p2
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/v/k/q;->a:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public k(Le/a/d/v/h$b;)Lq3/a/p1;
    .locals 8

    const-string v0, "endState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v0}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object v3

    new-instance v5, Le/a/d/v/k/q$a;

    invoke-direct {v5, p0, p1, v0}, Le/a/d/v/k/q$a;-><init>(Le/a/d/v/k/q;Le/a/d/v/h$b;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method
