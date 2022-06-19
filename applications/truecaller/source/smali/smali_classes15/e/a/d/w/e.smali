.class public final Le/a/d/w/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/w/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/d/w/e$a;
    }
.end annotation


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/d/w/e$a;

.field public final c:Ls1/w/f;

.field public final d:Le/a/d/u/g;

.field public final e:Le/a/d/v/d;

.field public final f:Le/a/d/c0/z1/j;

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/d/c0/e;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/d/c0/y0;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/d/x/r/n;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/d/x/r/o;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Le/a/p5/c;

.field public final l:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/d/c0/m1;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Le/a/d/c/a/f;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/d/u/g;Le/a/d/v/d;Le/a/d/c0/z1/j;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/p5/c;Lo3/a;Le/a/d/c/a/f;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/d/u/g;",
            "Le/a/d/v/d;",
            "Le/a/d/c0/z1/j;",
            "Lo3/a<",
            "Le/a/d/c0/e;",
            ">;",
            "Lo3/a<",
            "Le/a/d/c0/y0;",
            ">;",
            "Lo3/a<",
            "Le/a/d/x/r/n;",
            ">;",
            "Lo3/a<",
            "Le/a/d/x/r/o;",
            ">;",
            "Le/a/p5/c;",
            "Lo3/a<",
            "Le/a/d/c0/m1;",
            ">;",
            "Le/a/d/c/a/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invitationComponent"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupCallManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callInfoRepositoryFactory"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callUserResolver"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtmLoginManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtmManager"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipTelecomUtil"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logPriorityVoipCallEvent"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/w/e;->c:Ls1/w/f;

    iput-object p2, p0, Le/a/d/w/e;->d:Le/a/d/u/g;

    iput-object p3, p0, Le/a/d/w/e;->e:Le/a/d/v/d;

    iput-object p4, p0, Le/a/d/w/e;->f:Le/a/d/c0/z1/j;

    iput-object p5, p0, Le/a/d/w/e;->g:Lo3/a;

    iput-object p6, p0, Le/a/d/w/e;->h:Lo3/a;

    iput-object p7, p0, Le/a/d/w/e;->i:Lo3/a;

    iput-object p8, p0, Le/a/d/w/e;->j:Lo3/a;

    iput-object p9, p0, Le/a/d/w/e;->k:Le/a/p5/c;

    iput-object p10, p0, Le/a/d/w/e;->l:Lo3/a;

    iput-object p11, p0, Le/a/d/w/e;->m:Le/a/d/c/a/f;

    .line 2
    iput-object p1, p0, Le/a/d/w/e;->a:Ls1/w/f;

    .line 3
    new-instance p1, Le/a/d/w/e$a;

    invoke-direct {p1}, Le/a/d/w/e$a;-><init>()V

    iput-object p1, p0, Le/a/d/w/e;->b:Le/a/d/w/e$a;

    return-void
.end method

.method public static final h(Le/a/d/w/e;Le/a/d/w/b;)Lq3/a/p1;
    .locals 6

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v3, Le/a/d/w/f;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Le/a/d/w/f;-><init>(Le/a/d/w/e;Le/a/d/w/b;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Le/a/d/w/e$f;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Le/a/d/w/e$f;

    iget v3, v2, Le/a/d/w/e$f;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/d/w/e$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/d/w/e$f;

    invoke-direct {v2, v1, v0}, Le/a/d/w/e$f;-><init>(Le/a/d/w/e;Ls1/w/d;)V

    :goto_0
    iget-object v0, v2, Le/a/d/w/e$f;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/d/w/e$f;->e:I

    const-wide/16 v5, 0xa

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x5

    if-eqz v4, :cond_6

    if-eq v4, v9, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v13, :cond_2

    if-eq v4, v14, :cond_1

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v3, v2, Le/a/d/w/e$f;->h:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v2, v2, Le/a/d/w/e$f;->g:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    :try_start_0
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :cond_2
    iget-object v2, v2, Le/a/d/w/e$f;->g:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    :try_start_1
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_3
    iget-boolean v4, v2, Le/a/d/w/e$f;->k:Z

    iget-object v5, v2, Le/a/d/w/e$f;->h:Ljava/lang/Object;

    check-cast v5, Le/a/d/x/r/n;

    iget-object v6, v2, Le/a/d/w/e$f;->g:Ljava/lang/Object;

    check-cast v6, Lq3/a/b3/c;

    :try_start_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_5

    :cond_4
    iget-boolean v4, v2, Le/a/d/w/e$f;->k:Z

    iget-object v8, v2, Le/a/d/w/e$f;->j:Ljava/lang/Object;

    check-cast v8, Le/a/d/x/r/n;

    iget-object v9, v2, Le/a/d/w/e$f;->i:Ljava/lang/Object;

    check-cast v9, Lq3/a/b3/c;

    iget-object v15, v2, Le/a/d/w/e$f;->h:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v14, v2, Le/a/d/w/e$f;->g:Ljava/lang/Object;

    check-cast v14, Le/a/d/w/e;

    :try_start_3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    goto/16 :goto_9

    :cond_5
    iget-object v4, v2, Le/a/d/w/e$f;->j:Ljava/lang/Object;

    check-cast v4, Lq3/a/b3/c;

    iget-object v9, v2, Le/a/d/w/e$f;->i:Ljava/lang/Object;

    check-cast v9, Le/a/d/c0/r;

    iget-object v14, v2, Le/a/d/w/e$f;->h:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v2, Le/a/d/w/e$f;->g:Ljava/lang/Object;

    check-cast v15, Le/a/d/w/e;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v0, v1, Le/a/d/w/e;->b:Le/a/d/w/e$a;

    .line 5
    iget-object v4, v0, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 6
    iput-object v1, v2, Le/a/d/w/e$f;->g:Ljava/lang/Object;

    move-object/from16 v14, p1

    iput-object v14, v2, Le/a/d/w/e$f;->h:Ljava/lang/Object;

    iput-object v0, v2, Le/a/d/w/e$f;->i:Ljava/lang/Object;

    iput-object v4, v2, Le/a/d/w/e$f;->j:Ljava/lang/Object;

    iput v9, v2, Le/a/d/w/e$f;->e:I

    invoke-interface {v4, v10, v2}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_7

    return-object v3

    :cond_7
    move-object v9, v0

    move-object v15, v1

    .line 7
    :goto_1
    :try_start_4
    invoke-virtual {v9}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    .line 8
    iget-object v0, v15, Le/a/d/w/e;->i:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/x/r/n;

    .line 9
    invoke-interface {v0}, Le/a/d/x/r/n;->d()Z

    move-result v9

    .line 10
    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    iput-object v15, v2, Le/a/d/w/e$f;->g:Ljava/lang/Object;

    iput-object v14, v2, Le/a/d/w/e$f;->h:Ljava/lang/Object;

    iput-object v4, v2, Le/a/d/w/e$f;->i:Ljava/lang/Object;

    iput-object v0, v2, Le/a/d/w/e$f;->j:Ljava/lang/Object;

    iput-boolean v9, v2, Le/a/d/w/e$f;->k:Z

    iput v8, v2, Le/a/d/w/e$f;->e:I

    invoke-interface {v0, v11, v12, v2}, Le/a/d/x/r/n;->b(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-ne v8, v3, :cond_8

    return-object v3

    :cond_8
    move-object/from16 v16, v8

    move-object v8, v0

    move-object/from16 v0, v16

    move/from16 v17, v9

    move-object v9, v4

    move/from16 v4, v17

    move-object/from16 v18, v15

    move-object v15, v14

    move-object/from16 v14, v18

    .line 11
    :goto_2
    :try_start_5
    instance-of v0, v0, Le/a/d/x/r/p;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v0, :cond_9

    move-object v2, v9

    goto :goto_4

    .line 12
    :cond_9
    :try_start_6
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    new-instance v0, Le/a/d/w/e$e;

    invoke-direct {v0, v10, v14, v2, v15}, Le/a/d/w/e$e;-><init>(Ls1/w/d;Le/a/d/w/e;Ls1/w/d;Ljava/lang/String;)V

    iput-object v9, v2, Le/a/d/w/e$f;->g:Ljava/lang/Object;

    iput-object v8, v2, Le/a/d/w/e$f;->h:Ljava/lang/Object;

    iput-object v10, v2, Le/a/d/w/e$f;->i:Ljava/lang/Object;

    iput-object v10, v2, Le/a/d/w/e$f;->j:Ljava/lang/Object;

    iput-boolean v4, v2, Le/a/d/w/e$f;->k:Z

    iput v7, v2, Le/a/d/w/e$f;->e:I

    const-wide/16 v11, 0x0

    cmp-long v7, v5, v11

    if-lez v7, :cond_d

    .line 13
    new-instance v7, Lq3/a/p2;

    invoke-direct {v7, v5, v6, v2}, Lq3/a/p2;-><init>(JLs1/w/d;)V

    invoke-static {v7, v0}, Lq3/a/j;->b(Lq3/a/p2;Ls1/z/b/p;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_a

    const-string v5, "frame"

    .line 14
    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_a
    if-ne v0, v3, :cond_b

    return-object v3

    :cond_b
    move-object v5, v8

    move-object v6, v9

    :goto_3
    if-nez v4, :cond_c

    .line 15
    :try_start_7
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x5

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    new-instance v0, Le/a/d/w/e$g;

    invoke-direct {v0, v5, v10}, Le/a/d/w/e$g;-><init>(Le/a/d/x/r/n;Ls1/w/d;)V

    iput-object v6, v2, Le/a/d/w/e$f;->g:Ljava/lang/Object;

    iput-object v10, v2, Le/a/d/w/e$f;->h:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, v2, Le/a/d/w/e$f;->e:I

    invoke-static {v7, v8, v0, v2}, Lq3/a/j;->c(JLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-ne v0, v3, :cond_c

    return-object v3

    :cond_c
    move-object v2, v6

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v9, v6

    goto :goto_9

    .line 16
    :goto_4
    :try_start_8
    sget-object v0, Ls1/s;->a:Ls1/s;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 17
    invoke-interface {v2, v10}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    .line 18
    :cond_d
    :try_start_9
    new-instance v0, Lq3/a/o2;

    const-string v5, "Timed out immediately"

    invoke-direct {v0, v5}, Lq3/a/o2;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    move-object v5, v8

    move-object v6, v9

    :goto_5
    if-nez v4, :cond_f

    .line 19
    :try_start_a
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x5

    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    new-instance v4, Le/a/d/w/e$g;

    invoke-direct {v4, v5, v10}, Le/a/d/w/e$g;-><init>(Le/a/d/x/r/n;Ls1/w/d;)V

    iput-object v6, v2, Le/a/d/w/e$f;->g:Ljava/lang/Object;

    iput-object v0, v2, Le/a/d/w/e$f;->h:Ljava/lang/Object;

    iput-object v10, v2, Le/a/d/w/e$f;->i:Ljava/lang/Object;

    iput-object v10, v2, Le/a/d/w/e$f;->j:Ljava/lang/Object;

    const/4 v5, 0x5

    iput v5, v2, Le/a/d/w/e$f;->e:I

    invoke-static {v7, v8, v4, v2}, Lq3/a/j;->c(JLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-ne v2, v3, :cond_e

    return-object v3

    :cond_e
    move-object v3, v0

    move-object v2, v6

    :goto_6
    move-object v0, v3

    goto :goto_7

    :cond_f
    move-object v2, v6

    .line 20
    :goto_7
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_8
    move-object v4, v2

    goto :goto_a

    :goto_9
    move-object v4, v9

    goto :goto_a

    :catchall_5
    move-exception v0

    .line 21
    :goto_a
    invoke-interface {v4, v10}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw v0
.end method

.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/w/e;->b:Le/a/d/w/e$a;

    .line 2
    invoke-virtual {v0}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Le/a/d/w/g$a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Le/a/d/w/g$a;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Le/a/d/w/g$a;->a:Le/a/d/w/b;

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 4
    :goto_0
    instance-of v1, v0, Le/a/d/a/a0;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    check-cast v2, Le/a/d/a/a0;

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public c(Lcom/truecaller/voip/debug/VoipAssistantPushNotification;)Lq3/a/n0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/voip/debug/VoipAssistantPushNotification;",
            ")",
            "Lq3/a/n0<",
            "Le/a/d/a/n;",
            ">;"
        }
    .end annotation

    const-string v0, "voipAssistantPushNotification"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/d/w/e$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/d/w/e$b;-><init>(Le/a/d/w/e;Lcom/truecaller/voip/debug/VoipAssistantPushNotification;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lq3/a/n0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lq3/a/n0<",
            "Le/a/d/w/b;",
            ">;"
        }
    .end annotation

    const-string v0, "channelId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/d/w/e$d;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Le/a/d/w/e$d;-><init>(Le/a/d/w/e;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    return-object p1
.end method

.method public e()Le/a/d/w/b;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/w/e;->b:Le/a/d/w/e$a;

    .line 2
    invoke-virtual {v0}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Le/a/d/w/g$a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Le/a/d/w/g$a;

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, v0, Le/a/d/w/g$a;->a:Le/a/d/w/b;

    :cond_1
    return-object v2
.end method

.method public f()Lq3/a/n0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/n0<",
            "Le/a/d/a/a0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v3, Le/a/d/w/e$c;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/w/e$c;-><init>(Le/a/d/w/e;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/d/w/e;->e()Le/a/d/w/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/w/e;->a:Ls1/w/f;

    return-object v0
.end method

.method public getState()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/w/e;->b:Le/a/d/w/e$a;

    return-object v0
.end method
