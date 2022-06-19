.class public final Le/a/a/o/m;
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
    c = "com.truecaller.messaging.storagemanager.StorageManagerPresenter$loadStorageUsageData$1"
    f = "StorageManagerPresenter.kt"
    l = {
        0x28,
        0x34
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:J

.field public l:I

.field public final synthetic m:Le/a/a/o/o;

.field public final synthetic n:Z

.field public final synthetic o:Z


# direct methods
.method public constructor <init>(Le/a/a/o/o;ZZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/o/m;->m:Le/a/a/o/o;

    iput-boolean p2, p0, Le/a/a/o/m;->n:Z

    iput-boolean p3, p0, Le/a/a/o/m;->o:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/a/o/m;

    iget-object v0, p0, Le/a/a/o/m;->m:Le/a/a/o/o;

    iget-boolean v1, p0, Le/a/a/o/m;->n:Z

    iget-boolean v2, p0, Le/a/a/o/m;->o:Z

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/o/m;-><init>(Le/a/a/o/o;ZZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/o/m;

    iget-object v0, p0, Le/a/a/o/m;->m:Le/a/a/o/o;

    iget-boolean v1, p0, Le/a/a/o/m;->n:Z

    iget-boolean v2, p0, Le/a/a/o/m;->o:Z

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/o/m;-><init>(Le/a/a/o/o;ZZLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/o/m;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v9, p0

    sget-object v10, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v0, v9, Le/a/a/o/m;->l:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    iget-wide v0, v9, Le/a/a/o/m;->k:J

    iget-object v2, v9, Le/a/a/o/m;->j:Ljava/lang/Object;

    check-cast v2, Ls1/z/c/b0;

    iget-object v3, v9, Le/a/a/o/m;->i:Ljava/lang/Object;

    check-cast v3, Ls1/z/c/b0;

    iget-object v4, v9, Le/a/a/o/m;->h:Ljava/lang/Object;

    check-cast v4, Ls1/z/c/b0;

    iget-object v5, v9, Le/a/a/o/m;->g:Ljava/lang/Object;

    check-cast v5, Ls1/z/c/b0;

    iget-object v6, v9, Le/a/a/o/m;->f:Ljava/lang/Object;

    check-cast v6, Ls1/z/c/b0;

    iget-object v7, v9, Le/a/a/o/m;->e:Ljava/lang/Object;

    check-cast v7, Ls1/z/c/b0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v0, v9, Le/a/a/o/m;->j:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/b0;

    iget-object v1, v9, Le/a/a/o/m;->i:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/b0;

    iget-object v2, v9, Le/a/a/o/m;->h:Ljava/lang/Object;

    check-cast v2, Ls1/z/c/b0;

    iget-object v3, v9, Le/a/a/o/m;->g:Ljava/lang/Object;

    check-cast v3, Ls1/z/c/b0;

    iget-object v4, v9, Le/a/a/o/m;->f:Ljava/lang/Object;

    check-cast v4, Ls1/z/c/b0;

    iget-object v5, v9, Le/a/a/o/m;->e:Ljava/lang/Object;

    check-cast v5, Ls1/z/c/b0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v15, v1

    move-object v14, v2

    move-object v13, v3

    move-object v12, v4

    move-object v11, v5

    move-object v7, v10

    move-object v10, v0

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance v11, Ls1/z/c/b0;

    invoke-direct {v11}, Ls1/z/c/b0;-><init>()V

    .line 5
    new-instance v12, Ls1/z/c/b0;

    invoke-direct {v12}, Ls1/z/c/b0;-><init>()V

    .line 6
    new-instance v13, Ls1/z/c/b0;

    invoke-direct {v13}, Ls1/z/c/b0;-><init>()V

    .line 7
    new-instance v14, Ls1/z/c/b0;

    invoke-direct {v14}, Ls1/z/c/b0;-><init>()V

    .line 8
    new-instance v15, Ls1/z/c/b0;

    invoke-direct {v15}, Ls1/z/c/b0;-><init>()V

    .line 9
    new-instance v8, Ls1/z/c/b0;

    invoke-direct {v8}, Ls1/z/c/b0;-><init>()V

    .line 10
    iget-object v0, v9, Le/a/a/o/m;->m:Le/a/a/o/o;

    .line 11
    iget-object v7, v0, Le/a/a/o/o;->d:Ls1/w/f;

    .line 12
    new-instance v6, Le/a/a/o/m$a;

    const/16 v16, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object/from16 v17, v10

    move-object v10, v6

    move-object v6, v15

    move-object/from16 p1, v10

    move-object v10, v7

    move-object v7, v8

    move-object/from16 v18, v10

    move-object v10, v8

    move-object/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Le/a/a/o/m$a;-><init>(Le/a/a/o/m;Ls1/z/c/b0;Ls1/z/c/b0;Ls1/z/c/b0;Ls1/z/c/b0;Ls1/z/c/b0;Ls1/z/c/b0;Ls1/w/d;)V

    iput-object v11, v9, Le/a/a/o/m;->e:Ljava/lang/Object;

    iput-object v12, v9, Le/a/a/o/m;->f:Ljava/lang/Object;

    iput-object v13, v9, Le/a/a/o/m;->g:Ljava/lang/Object;

    iput-object v14, v9, Le/a/a/o/m;->h:Ljava/lang/Object;

    iput-object v15, v9, Le/a/a/o/m;->i:Ljava/lang/Object;

    iput-object v10, v9, Le/a/a/o/m;->j:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, v9, Le/a/a/o/m;->l:I

    move-object/from16 v1, p1

    move-object/from16 v0, v18

    invoke-static {v0, v1, v9}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v7, v17

    if-ne v0, v7, :cond_3

    return-object v7

    .line 13
    :cond_3
    :goto_0
    iget-wide v0, v11, Ls1/z/c/b0;->a:J

    iget-wide v2, v14, Ls1/z/c/b0;->a:J

    add-long/2addr v0, v2

    iget-wide v2, v15, Ls1/z/c/b0;->a:J

    add-long/2addr v0, v2

    iget-wide v2, v10, Ls1/z/c/b0;->a:J

    add-long v5, v0, v2

    .line 14
    iget-object v0, v9, Le/a/a/o/m;->m:Le/a/a/o/o;

    iget-wide v1, v12, Ls1/z/c/b0;->a:J

    iget-wide v3, v13, Ls1/z/c/b0;->a:J

    iget-boolean v8, v9, Le/a/a/o/m;->n:Z

    move-object/from16 p1, v7

    .line 15
    iget-object v7, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v7, Le/a/a/o/l;

    move-object/from16 v24, v10

    if-eqz v7, :cond_4

    .line 16
    iget-object v10, v0, Le/a/a/o/o;->f:Le/a/a/o/p;

    const v19, 0x7f0405a1

    const v20, 0x7f120364

    const/16 v25, 0x0

    const/16 v26, 0x8

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x8

    const/16 v30, 0x0

    move-object/from16 v16, v10

    move-wide/from16 v17, v5

    move/from16 v21, v28

    move/from16 v22, v29

    move-object/from16 v23, v30

    invoke-static/range {v16 .. v23}, Le/a/c/p/a;->Q1(Le/a/a/o/p;JIIZILjava/lang/Object;)Le/a/a/o/e;

    move-result-object v10

    move-object/from16 v31, v15

    .line 17
    iget-object v15, v0, Le/a/a/o/o;->f:Le/a/a/o/p;

    const v19, 0x7f040598

    const v20, 0x7f120363

    move-object/from16 v16, v15

    move-wide/from16 v17, v1

    invoke-static/range {v16 .. v23}, Le/a/c/p/a;->Q1(Le/a/a/o/p;JIIZILjava/lang/Object;)Le/a/a/o/e;

    move-result-object v15

    .line 18
    iget-object v0, v0, Le/a/a/o/o;->f:Le/a/a/o/p;

    const v19, 0x7f040590

    const v20, 0x7f120360

    move-object/from16 v16, v0

    move-wide/from16 v17, v3

    move/from16 v21, v25

    move/from16 v22, v26

    move-object/from16 v23, v27

    invoke-static/range {v16 .. v23}, Le/a/c/p/a;->Q1(Le/a/a/o/p;JIIZILjava/lang/Object;)Le/a/a/o/e;

    move-result-object v19

    add-long/2addr v1, v5

    long-to-float v0, v1

    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v0, v0, v16

    add-long/2addr v1, v3

    long-to-float v1, v1

    div-float v20, v0, v1

    move-object/from16 v16, v7

    move-object/from16 v17, v10

    move-object/from16 v18, v15

    move/from16 v21, v8

    .line 19
    invoke-interface/range {v16 .. v21}, Le/a/a/o/l;->Rf(Le/a/a/o/e;Le/a/a/o/e;Le/a/a/o/e;FZ)V

    goto :goto_1

    :cond_4
    move-object/from16 v31, v15

    .line 20
    :goto_1
    iget-object v0, v9, Le/a/a/o/m;->m:Le/a/a/o/o;

    iget-wide v1, v11, Ls1/z/c/b0;->a:J

    iget-wide v3, v14, Ls1/z/c/b0;->a:J

    iget-boolean v7, v9, Le/a/a/o/m;->n:Z

    iput-object v11, v9, Le/a/a/o/m;->e:Ljava/lang/Object;

    iput-object v12, v9, Le/a/a/o/m;->f:Ljava/lang/Object;

    iput-object v13, v9, Le/a/a/o/m;->g:Ljava/lang/Object;

    iput-object v14, v9, Le/a/a/o/m;->h:Ljava/lang/Object;

    move-object/from16 v15, v31

    iput-object v15, v9, Le/a/a/o/m;->i:Ljava/lang/Object;

    move-object/from16 v10, v24

    iput-object v10, v9, Le/a/a/o/m;->j:Ljava/lang/Object;

    iput-wide v5, v9, Le/a/a/o/m;->k:J

    const/4 v8, 0x2

    iput v8, v9, Le/a/a/o/m;->l:I

    move-wide/from16 v16, v5

    move v5, v7

    move-object/from16 v6, p0

    invoke-virtual/range {v0 .. v6}, Le/a/a/o/o;->Ij(JJZLs1/w/d;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, v10

    move-object v7, v11

    move-object v6, v12

    move-object v5, v13

    move-object v4, v14

    move-object v3, v15

    move-wide/from16 v0, v16

    .line 21
    :goto_2
    iget-object v8, v9, Le/a/a/o/m;->m:Le/a/a/o/o;

    iget-wide v10, v7, Ls1/z/c/b0;->a:J

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    const/4 v14, 0x0

    if-lez v7, :cond_7

    .line 22
    iget-object v7, v8, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v7, Le/a/a/o/l;

    if-eqz v7, :cond_6

    iget-object v15, v8, Le/a/a/o/o;->f:Le/a/a/o/p;

    invoke-interface {v15, v10, v11}, Le/a/a/o/p;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Le/a/a/o/l;->Q7(Ljava/lang/String;)V

    .line 23
    :cond_6
    iget-object v7, v8, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v7, Le/a/a/o/l;

    if-eqz v7, :cond_8

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Le/a/a/o/l;->Nm(Z)V

    goto :goto_3

    .line 24
    :cond_7
    iget-object v7, v8, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v7, Le/a/a/o/l;

    if-eqz v7, :cond_8

    invoke-interface {v7, v14}, Le/a/a/o/l;->Nm(Z)V

    .line 25
    :cond_8
    :goto_3
    iget-object v7, v9, Le/a/a/o/m;->m:Le/a/a/o/o;

    iget-wide v10, v4, Ls1/z/c/b0;->a:J

    cmp-long v4, v10, v12

    if-lez v4, :cond_a

    .line 26
    iget-object v4, v7, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/a/o/l;

    if-eqz v4, :cond_9

    iget-object v8, v7, Le/a/a/o/o;->f:Le/a/a/o/p;

    invoke-interface {v8, v10, v11}, Le/a/a/o/p;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Le/a/a/o/l;->rj(Ljava/lang/String;)V

    .line 27
    :cond_9
    iget-object v4, v7, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/a/o/l;

    if-eqz v4, :cond_b

    const/4 v7, 0x1

    invoke-interface {v4, v7}, Le/a/a/o/l;->xd(Z)V

    goto :goto_4

    .line 28
    :cond_a
    iget-object v4, v7, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/a/o/l;

    if-eqz v4, :cond_b

    invoke-interface {v4, v14}, Le/a/a/o/l;->xd(Z)V

    .line 29
    :cond_b
    :goto_4
    iget-object v4, v9, Le/a/a/o/m;->m:Le/a/a/o/o;

    iget-wide v7, v3, Ls1/z/c/b0;->a:J

    cmp-long v3, v7, v12

    if-lez v3, :cond_d

    .line 30
    iget-object v3, v4, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/a/o/l;

    if-eqz v3, :cond_c

    iget-object v10, v4, Le/a/a/o/o;->f:Le/a/a/o/p;

    invoke-interface {v10, v7, v8}, Le/a/a/o/p;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Le/a/a/o/l;->Fv(Ljava/lang/String;)V

    .line 31
    :cond_c
    iget-object v3, v4, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/a/o/l;

    if-eqz v3, :cond_e

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Le/a/a/o/l;->Xf(Z)V

    goto :goto_5

    .line 32
    :cond_d
    iget-object v3, v4, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/a/o/l;

    if-eqz v3, :cond_e

    invoke-interface {v3, v14}, Le/a/a/o/l;->Xf(Z)V

    .line 33
    :cond_e
    :goto_5
    iget-object v3, v9, Le/a/a/o/m;->m:Le/a/a/o/o;

    iget-wide v7, v2, Ls1/z/c/b0;->a:J

    cmp-long v2, v7, v12

    if-lez v2, :cond_10

    .line 34
    iget-object v2, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/a/o/l;

    if-eqz v2, :cond_f

    iget-object v4, v3, Le/a/a/o/o;->f:Le/a/a/o/p;

    invoke-interface {v4, v7, v8}, Le/a/a/o/p;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Le/a/a/o/l;->Bv(Ljava/lang/String;)V

    .line 35
    :cond_f
    iget-object v2, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/a/o/l;

    if-eqz v2, :cond_11

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Le/a/a/o/l;->nj(Z)V

    goto :goto_6

    .line 36
    :cond_10
    iget-object v2, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/a/o/l;

    if-eqz v2, :cond_11

    invoke-interface {v2, v14}, Le/a/a/o/l;->nj(Z)V

    .line 37
    :cond_11
    :goto_6
    iget-object v2, v9, Le/a/a/o/m;->m:Le/a/a/o/o;

    iget-boolean v3, v9, Le/a/a/o/m;->o:Z

    iget-wide v6, v6, Ls1/z/c/b0;->a:J

    iget-wide v4, v5, Ls1/z/c/b0;->a:J

    .line 38
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_12

    add-long/2addr v6, v0

    add-long/2addr v4, v6

    long-to-double v6, v6

    long-to-double v3, v4

    div-double/2addr v6, v3

    .line 39
    iget-object v2, v2, Le/a/a/o/o;->g:Le/a/q2/a;

    const-string v5, "StorageManagerVisit"

    const-string v8, "type"

    .line 40
    invoke-static {v5, v8}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v8

    .line 41
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v11, "capacity"

    const/high16 v12, 0x44800000    # 1024.0f

    float-to-double v12, v12

    div-double/2addr v3, v12

    div-double/2addr v3, v12

    div-double/2addr v3, v12

    const/4 v12, 0x1

    .line 42
    invoke-static {v3, v4, v14, v12}, Le/a/p5/s0/g;->g1(DII)D

    move-result-wide v3

    const-string v13, "name"

    .line 43
    invoke-static {v11, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v10, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "percentFull"

    .line 45
    invoke-static {v6, v7, v14, v12}, Le/a/p5/s0/g;->g1(DII)D

    move-result-wide v6

    .line 46
    invoke-static {v3, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "tcDiskUsage"

    .line 48
    invoke-static {v0, v1}, Le/a/p5/s0/g;->n(J)D

    move-result-wide v0

    invoke-static {v0, v1, v14, v12}, Le/a/p5/s0/g;->g1(DII)D

    move-result-wide v0

    .line 49
    invoke-static {v3, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v10, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v0

    invoke-virtual {v0, v5}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v0, v10}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    const-string v1, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v0, v8, v1, v2}, Le/d/c/a/a;->x0(Le/a/l5/a/p3$b;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    .line 52
    :cond_12
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
