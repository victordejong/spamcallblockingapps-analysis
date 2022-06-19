.class public final Le/a/c/a/k/b/c;
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
    c = "com.truecaller.insights.ui.markedimportantpage.domain.FetchImportantMessageFlowUseCase$onSuccess$1"
    f = "FetchImportantMessageFlowUseCase.kt"
    l = {
        0x38
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:Le/a/c/a/k/b/b;

.field public final synthetic k:Ls1/e0/k;

.field public final synthetic l:Lq3/a/w2/x;

.field public final synthetic m:Le/a/c/a/k/d/a;


# direct methods
.method public constructor <init>(Le/a/c/a/k/b/b;Ls1/e0/k;Lq3/a/w2/x;Le/a/c/a/k/d/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/k/b/c;->j:Le/a/c/a/k/b/b;

    iput-object p2, p0, Le/a/c/a/k/b/c;->k:Ls1/e0/k;

    iput-object p3, p0, Le/a/c/a/k/b/c;->l:Lq3/a/w2/x;

    iput-object p4, p0, Le/a/c/a/k/b/c;->m:Le/a/c/a/k/d/a;

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

    new-instance p1, Le/a/c/a/k/b/c;

    iget-object v1, p0, Le/a/c/a/k/b/c;->j:Le/a/c/a/k/b/b;

    iget-object v2, p0, Le/a/c/a/k/b/c;->k:Ls1/e0/k;

    iget-object v3, p0, Le/a/c/a/k/b/c;->l:Lq3/a/w2/x;

    iget-object v4, p0, Le/a/c/a/k/b/c;->m:Le/a/c/a/k/d/a;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/c/a/k/b/c;-><init>(Le/a/c/a/k/b/b;Ls1/e0/k;Lq3/a/w2/x;Le/a/c/a/k/d/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/c/a/k/b/c;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/c/a/k/b/c;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/k/b/c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a/k/b/c;->i:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Le/a/c/a/k/b/c;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    iget-object v4, v0, Le/a/c/a/k/b/c;->g:Ljava/lang/Object;

    check-cast v4, Le/a/c/h/m/a;

    iget-object v5, v0, Le/a/c/a/k/b/c;->f:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, v0, Le/a/c/a/k/b/c;->e:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v7, p1

    move-object v8, v5

    move-object v5, v0

    move/from16 v29, v3

    move-object v3, v2

    move-object v2, v6

    move-object v6, v4

    move/from16 v4, v29

    goto :goto_1

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/c/a/k/b/c;->k:Ls1/e0/k;

    invoke-static {v2}, Ls1/e0/x;->r(Ls1/e0/k;)Ljava/util/List;

    move-result-object v2

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v5, v2

    move-object v2, v4

    move-object v4, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 7
    check-cast v6, Le/a/c/h/m/a;

    .line 8
    iget-object v7, v4, Le/a/c/a/k/b/c;->j:Le/a/c/a/k/b/b;

    iput-object v2, v4, Le/a/c/a/k/b/c;->e:Ljava/lang/Object;

    iput-object v5, v4, Le/a/c/a/k/b/c;->f:Ljava/lang/Object;

    iput-object v6, v4, Le/a/c/a/k/b/c;->g:Ljava/lang/Object;

    iput-object v2, v4, Le/a/c/a/k/b/c;->h:Ljava/lang/Object;

    iput v3, v4, Le/a/c/a/k/b/c;->i:I

    .line 9
    iget-object v7, v7, Le/a/c/a/k/b/b;->c:Le/a/c/h/g;

    .line 10
    iget-wide v8, v6, Le/a/c/h/m/a;->d:J

    .line 11
    invoke-interface {v7, v8, v9, v4}, Le/a/c/h/g;->d(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_2

    return-object v1

    :cond_2
    move-object v8, v5

    move-object v5, v4

    move v4, v3

    move-object v3, v2

    .line 12
    :goto_1
    check-cast v7, Le/a/c/h/m/b;

    const-string v9, "$this$toBusinessTabItem"

    .line 13
    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v15, Le/a/c/a/l/b$c;

    if-nez v7, :cond_3

    .line 15
    iget-object v9, v6, Le/a/c/h/m/a;->c:Ljava/lang/String;

    :goto_2
    move-object v14, v9

    goto :goto_6

    .line 16
    :cond_3
    iget-boolean v9, v7, Le/a/c/h/m/b;->d:Z

    if-nez v9, :cond_7

    .line 17
    iget-object v9, v7, Le/a/c/h/m/b;->c:Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 18
    invoke-static {v9}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    move v9, v4

    :goto_4
    if-nez v9, :cond_6

    goto :goto_5

    .line 19
    :cond_6
    iget-object v9, v6, Le/a/c/h/m/a;->c:Ljava/lang/String;

    goto :goto_2

    .line 20
    :cond_7
    :goto_5
    iget-object v9, v7, Le/a/c/h/m/b;->c:Ljava/lang/String;

    goto :goto_2

    :goto_6
    const-string v9, "You"

    const-string v10, " \u2022 "

    if-eqz v7, :cond_b

    .line 21
    iget-object v11, v7, Le/a/c/h/m/b;->b:Ljava/lang/String;

    if-eqz v11, :cond_9

    .line 22
    invoke-static {v11}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    :cond_9
    :goto_7
    if-nez v4, :cond_b

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    iget-boolean v11, v6, Le/a/c/h/m/a;->m:Z

    if-eqz v11, :cond_a

    .line 25
    iget-object v9, v6, Le/a/c/h/m/a;->b:Ljava/lang/String;

    .line 26
    :cond_a
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v9, v7, Le/a/c/h/m/b;->b:Ljava/lang/String;

    .line 28
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 29
    :cond_b
    iget-boolean v4, v6, Le/a/c/h/m/a;->m:Z

    if-eqz v4, :cond_c

    .line 30
    iget-object v4, v6, Le/a/c/h/m/a;->b:Ljava/lang/String;

    goto :goto_8

    :cond_c
    move-object v4, v9

    .line 31
    :goto_8
    iget-object v12, v6, Le/a/c/h/m/a;->e:Ljava/lang/String;

    .line 32
    iget-boolean v13, v6, Le/a/c/h/m/a;->f:Z

    .line 33
    iget-object v11, v6, Le/a/c/h/m/a;->g:Landroid/graphics/drawable/Drawable;

    move-object/from16 p1, v1

    .line 34
    iget-wide v0, v6, Le/a/c/h/m/a;->a:J

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    .line 35
    iget-wide v2, v6, Le/a/c/h/m/a;->d:J

    .line 36
    iget-object v9, v6, Le/a/c/h/m/a;->h:Le/a/c/h/m/d;

    move-object/from16 v27, v5

    if-eqz v7, :cond_d

    .line 37
    iget-boolean v5, v7, Le/a/c/h/m/b;->d:Z

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    goto :goto_9

    .line 38
    :cond_d
    iget v5, v6, Le/a/c/h/m/a;->j:I

    :goto_9
    move/from16 v21, v5

    if-eqz v7, :cond_e

    .line 39
    iget-boolean v5, v7, Le/a/c/h/m/b;->d:Z

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    goto :goto_a

    .line 40
    :cond_e
    iget-object v5, v6, Le/a/c/h/m/a;->i:Ljava/lang/String;

    :goto_a
    move-object/from16 v22, v5

    .line 41
    iget-object v5, v6, Le/a/c/h/m/a;->k:Ljava/lang/String;

    .line 42
    iget-object v6, v6, Le/a/c/h/m/a;->l:Lw3/b/a/b;

    if-eqz v12, :cond_f

    const/16 v16, 0x1

    goto :goto_b

    :cond_f
    const/16 v16, 0x0

    .line 43
    :goto_b
    sget-object v17, Lcom/truecaller/insights/utils/DateFormat;->dd_MMM_yy:Lcom/truecaller/insights/utils/DateFormat;

    move-object/from16 v28, v8

    invoke-virtual/range {v17 .. v17}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v8

    invoke-virtual {v6, v8}, Lw3/b/a/e0/c;->p(Lw3/b/a/i0/b;)Ljava/lang/String;

    move-result-object v6

    if-eqz v16, :cond_10

    .line 44
    invoke-static {v10, v6}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_c

    :cond_10
    const-string v8, "uiDateString"

    .line 45
    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_c
    move-object/from16 v24, v6

    move-object v6, v9

    move-object v9, v15

    move-object v8, v11

    move-wide v10, v0

    move-object v0, v15

    move-object v15, v4

    move-object/from16 v16, v8

    move-wide/from16 v17, v2

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v23, v5

    .line 46
    invoke-direct/range {v9 .. v24}, Le/a/c/a/l/b$c;-><init>(JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLe/a/c/h/m/d;Le/a/c/h/m/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v26

    .line 47
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v4, v27

    move-object/from16 v5, v28

    goto/16 :goto_0

    .line 48
    :cond_11
    check-cast v2, Ljava/util/List;

    .line 49
    iget-object v0, v4, Le/a/c/a/k/b/c;->l:Lq3/a/w2/x;

    .line 50
    new-instance v1, Le/a/c/a/k/c/d;

    .line 51
    iget-object v3, v4, Le/a/c/a/k/b/c;->j:Le/a/c/a/k/b/b;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    iget-object v4, v4, Le/a/c/a/k/b/c;->m:Le/a/c/a/k/d/a;

    .line 52
    invoke-virtual {v3, v5, v4}, Le/a/c/a/k/b/b;->d(ZLe/a/c/a/k/d/a;)Lcom/truecaller/insights/ui/models/AdapterItem$i;

    move-result-object v3

    .line 53
    invoke-direct {v1, v3, v2}, Le/a/c/a/k/c/d;-><init>(Lcom/truecaller/insights/ui/models/AdapterItem$i;Ljava/util/List;)V

    .line 54
    invoke-interface {v0, v1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
