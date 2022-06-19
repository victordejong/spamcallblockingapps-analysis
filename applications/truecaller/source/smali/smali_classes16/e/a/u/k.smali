.class public final Le/a/u/k;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/u/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/u/f;",
        ">;",
        "Le/a/u/e;"
    }
.end annotation


# instance fields
.field public d:Landroid/net/Uri;

.field public final e:Ljava/lang/String;

.field public final f:Ls1/w/f;

.field public final g:Le/a/b0/q/q;

.field public final h:Le/a/u/c;

.field public final i:Le/a/j0/n;

.field public final j:Le/a/q2/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/p5/c0;Le/a/b0/q/q;Le/a/u/c;Le/a/j0/n;Le/a/q2/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageRenderer"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statsFetcher"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/u/k;->f:Ls1/w/f;

    iput-object p3, p0, Le/a/u/k;->g:Le/a/b0/q/q;

    iput-object p4, p0, Le/a/u/k;->h:Le/a/u/c;

    iput-object p5, p0, Le/a/u/k;->i:Le/a/j0/n;

    iput-object p6, p0, Le/a/u/k;->j:Le/a/q2/a;

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget p3, Lcom/truecaller/stats/R$string;->year_in_review_share_text:I

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    invoke-interface {p2, p3, p4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " #YearOnTruecaller @Truecaller"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/u/k;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic Ij(Ls1/w/d;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/u/m/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Le/a/u/k$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/u/k$a;

    iget v3, v2, Le/a/u/k$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/u/k$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/u/k$a;

    invoke-direct {v2, v0, v1}, Le/a/u/k$a;-><init>(Le/a/u/k;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/u/k$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/u/k$a;->e:I

    packed-switch v4, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    iget v3, v2, Le/a/u/k$a;->u:I

    iget v4, v2, Le/a/u/k$a;->t:I

    iget v6, v2, Le/a/u/k$a;->s:I

    iget v7, v2, Le/a/u/k$a;->r:I

    iget v8, v2, Le/a/u/k$a;->q:I

    iget v9, v2, Le/a/u/k$a;->p:I

    iget v10, v2, Le/a/u/k$a;->o:I

    iget v11, v2, Le/a/u/k$a;->n:I

    iget v12, v2, Le/a/u/k$a;->m:I

    iget v13, v2, Le/a/u/k$a;->l:I

    iget v14, v2, Le/a/u/k$a;->k:I

    iget v15, v2, Le/a/u/k$a;->j:I

    iget-object v5, v2, Le/a/u/k$a;->h:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    iget-object v2, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v0, v3

    move v3, v15

    move v15, v4

    move v4, v14

    move-object v14, v5

    move v5, v12

    move v12, v6

    move v6, v13

    move-object v13, v2

    :goto_1
    move/from16 v19, v11

    move v11, v7

    move/from16 v7, v19

    move/from16 v20, v10

    move v10, v8

    move v8, v9

    move/from16 v9, v20

    goto/16 :goto_13

    :pswitch_1
    iget v4, v2, Le/a/u/k$a;->t:I

    iget v5, v2, Le/a/u/k$a;->s:I

    iget v6, v2, Le/a/u/k$a;->r:I

    iget v7, v2, Le/a/u/k$a;->q:I

    iget v8, v2, Le/a/u/k$a;->p:I

    iget v9, v2, Le/a/u/k$a;->o:I

    iget v10, v2, Le/a/u/k$a;->n:I

    iget v11, v2, Le/a/u/k$a;->m:I

    iget v12, v2, Le/a/u/k$a;->l:I

    iget v13, v2, Le/a/u/k$a;->k:I

    iget v14, v2, Le/a/u/k$a;->j:I

    iget-object v15, v2, Le/a/u/k$a;->i:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    move/from16 v16, v4

    iget-object v4, v2, Le/a/u/k$a;->h:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v17, v4

    iget-object v4, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    check-cast v4, Le/a/u/k;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move/from16 v0, v16

    move-object/from16 v16, v3

    move v3, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move-object v5, v15

    move-object/from16 v15, v17

    goto/16 :goto_11

    :pswitch_2
    iget v4, v2, Le/a/u/k$a;->s:I

    iget v5, v2, Le/a/u/k$a;->r:I

    iget v6, v2, Le/a/u/k$a;->q:I

    iget v7, v2, Le/a/u/k$a;->p:I

    iget v8, v2, Le/a/u/k$a;->o:I

    iget v9, v2, Le/a/u/k$a;->n:I

    iget v10, v2, Le/a/u/k$a;->m:I

    iget v11, v2, Le/a/u/k$a;->l:I

    iget v12, v2, Le/a/u/k$a;->k:I

    iget v13, v2, Le/a/u/k$a;->j:I

    iget-object v14, v2, Le/a/u/k$a;->i:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    iget-object v15, v2, Le/a/u/k$a;->h:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move/from16 v16, v4

    iget-object v4, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    check-cast v4, Le/a/u/k;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move/from16 v0, v16

    goto/16 :goto_f

    :pswitch_3
    iget v4, v2, Le/a/u/k$a;->s:I

    iget v5, v2, Le/a/u/k$a;->r:I

    iget v6, v2, Le/a/u/k$a;->q:I

    iget v7, v2, Le/a/u/k$a;->p:I

    iget v8, v2, Le/a/u/k$a;->o:I

    iget v9, v2, Le/a/u/k$a;->n:I

    iget v10, v2, Le/a/u/k$a;->m:I

    iget v11, v2, Le/a/u/k$a;->l:I

    iget v12, v2, Le/a/u/k$a;->k:I

    iget v13, v2, Le/a/u/k$a;->j:I

    iget-object v14, v2, Le/a/u/k$a;->h:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    check-cast v15, Le/a/u/k;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_4
    iget v4, v2, Le/a/u/k$a;->s:I

    iget v5, v2, Le/a/u/k$a;->r:I

    iget v6, v2, Le/a/u/k$a;->q:I

    iget v7, v2, Le/a/u/k$a;->p:I

    iget v8, v2, Le/a/u/k$a;->o:I

    iget v9, v2, Le/a/u/k$a;->n:I

    iget v10, v2, Le/a/u/k$a;->m:I

    iget v11, v2, Le/a/u/k$a;->l:I

    iget v12, v2, Le/a/u/k$a;->k:I

    iget v13, v2, Le/a/u/k$a;->j:I

    iget-object v14, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    check-cast v14, Le/a/u/k;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v15, v14

    goto/16 :goto_d

    :pswitch_5
    iget v4, v2, Le/a/u/k$a;->q:I

    iget v5, v2, Le/a/u/k$a;->p:I

    iget v6, v2, Le/a/u/k$a;->o:I

    iget v7, v2, Le/a/u/k$a;->n:I

    iget v8, v2, Le/a/u/k$a;->m:I

    iget v9, v2, Le/a/u/k$a;->l:I

    iget v10, v2, Le/a/u/k$a;->k:I

    iget v11, v2, Le/a/u/k$a;->j:I

    iget-object v12, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    check-cast v12, Le/a/u/k;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v13, v11

    move v11, v9

    move v9, v7

    move v7, v5

    move/from16 v19, v6

    move v6, v4

    move v4, v10

    move v10, v8

    move/from16 v8, v19

    goto/16 :goto_b

    :pswitch_6
    iget v4, v2, Le/a/u/k$a;->p:I

    iget v5, v2, Le/a/u/k$a;->o:I

    iget v6, v2, Le/a/u/k$a;->n:I

    iget v7, v2, Le/a/u/k$a;->m:I

    iget v8, v2, Le/a/u/k$a;->l:I

    iget v9, v2, Le/a/u/k$a;->k:I

    iget v10, v2, Le/a/u/k$a;->j:I

    iget-object v11, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    check-cast v11, Le/a/u/k;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v12, v11

    goto/16 :goto_9

    :pswitch_7
    iget v4, v2, Le/a/u/k$a;->o:I

    iget v5, v2, Le/a/u/k$a;->n:I

    iget v6, v2, Le/a/u/k$a;->m:I

    iget v7, v2, Le/a/u/k$a;->l:I

    iget v8, v2, Le/a/u/k$a;->k:I

    iget v9, v2, Le/a/u/k$a;->j:I

    iget-object v10, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    check-cast v10, Le/a/u/k;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move/from16 v19, v5

    move v5, v4

    move v4, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move/from16 v6, v19

    goto/16 :goto_8

    :pswitch_8
    iget v4, v2, Le/a/u/k$a;->n:I

    iget v5, v2, Le/a/u/k$a;->m:I

    iget v6, v2, Le/a/u/k$a;->l:I

    iget v7, v2, Le/a/u/k$a;->k:I

    iget v8, v2, Le/a/u/k$a;->j:I

    iget-object v9, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    check-cast v9, Le/a/u/k;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v10, v9

    goto/16 :goto_7

    :pswitch_9
    iget v4, v2, Le/a/u/k$a;->m:I

    iget v5, v2, Le/a/u/k$a;->l:I

    iget v6, v2, Le/a/u/k$a;->k:I

    iget v7, v2, Le/a/u/k$a;->j:I

    iget-object v8, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    check-cast v8, Le/a/u/k;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move/from16 v19, v5

    move v5, v4

    move v4, v7

    move v7, v6

    move/from16 v6, v19

    goto/16 :goto_6

    :pswitch_a
    iget v4, v2, Le/a/u/k$a;->k:I

    iget v5, v2, Le/a/u/k$a;->j:I

    iget-object v6, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    check-cast v6, Le/a/u/k;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v8, v6

    goto :goto_4

    :pswitch_b
    iget v4, v2, Le/a/u/k$a;->j:I

    iget-object v5, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    check-cast v5, Le/a/u/k;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_c
    iget-object v4, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    check-cast v4, Le/a/u/k;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v5, v4

    goto :goto_2

    :pswitch_d
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/u/k;->i:Le/a/j0/n;

    iput-object v0, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v2, Le/a/u/k$a;->e:I

    invoke-interface {v1, v2}, Le/a/j0/n;->m(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_1

    return-object v3

    :cond_1
    move-object v5, v0

    :goto_2
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 5
    iget-object v4, v5, Le/a/u/k;->i:Le/a/j0/n;

    iput-object v5, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    iput v1, v2, Le/a/u/k$a;->j:I

    const/4 v6, 0x2

    iput v6, v2, Le/a/u/k$a;->e:I

    invoke-interface {v4, v2}, Le/a/j0/n;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_2

    return-object v3

    :cond_2
    move-object/from16 v19, v4

    move v4, v1

    move-object/from16 v1, v19

    :goto_3
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 6
    iget-object v6, v5, Le/a/u/k;->i:Le/a/j0/n;

    iput-object v5, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    iput v4, v2, Le/a/u/k$a;->j:I

    iput v1, v2, Le/a/u/k$a;->k:I

    const/4 v7, 0x3

    iput v7, v2, Le/a/u/k$a;->e:I

    invoke-interface {v6, v2}, Le/a/j0/n;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_3

    return-object v3

    :cond_3
    move-object v8, v5

    move v5, v4

    move v4, v1

    move-object v1, v6

    :goto_4
    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    :goto_5
    add-int v6, v5, v4

    .line 7
    iget-object v7, v8, Le/a/u/k;->i:Le/a/j0/n;

    iput-object v8, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    iput v5, v2, Le/a/u/k$a;->j:I

    iput v4, v2, Le/a/u/k$a;->k:I

    iput v1, v2, Le/a/u/k$a;->l:I

    iput v6, v2, Le/a/u/k$a;->m:I

    const/4 v9, 0x4

    iput v9, v2, Le/a/u/k$a;->e:I

    invoke-interface {v7, v2}, Le/a/j0/n;->f(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_5

    return-object v3

    :cond_5
    move/from16 v19, v6

    move v6, v1

    move-object v1, v7

    move v7, v4

    move v4, v5

    move/from16 v5, v19

    :goto_6
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 8
    iget-object v9, v8, Le/a/u/k;->i:Le/a/j0/n;

    iput-object v8, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    iput v4, v2, Le/a/u/k$a;->j:I

    iput v7, v2, Le/a/u/k$a;->k:I

    iput v6, v2, Le/a/u/k$a;->l:I

    iput v5, v2, Le/a/u/k$a;->m:I

    iput v1, v2, Le/a/u/k$a;->n:I

    const/4 v10, 0x5

    iput v10, v2, Le/a/u/k$a;->e:I

    invoke-interface {v9, v2}, Le/a/j0/n;->g(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_6

    return-object v3

    :cond_6
    move-object v10, v8

    move v8, v4

    move v4, v1

    move-object v1, v9

    :goto_7
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 9
    iget-object v9, v10, Le/a/u/k;->i:Le/a/j0/n;

    iput-object v10, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    iput v8, v2, Le/a/u/k$a;->j:I

    iput v7, v2, Le/a/u/k$a;->k:I

    iput v6, v2, Le/a/u/k$a;->l:I

    iput v5, v2, Le/a/u/k$a;->m:I

    iput v4, v2, Le/a/u/k$a;->n:I

    iput v1, v2, Le/a/u/k$a;->o:I

    const/4 v11, 0x6

    iput v11, v2, Le/a/u/k$a;->e:I

    invoke-interface {v9, v2}, Le/a/j0/n;->j(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_7

    return-object v3

    :cond_7
    move/from16 v19, v5

    move v5, v1

    move-object v1, v9

    move v9, v7

    move/from16 v7, v19

    move/from16 v20, v6

    move v6, v4

    move v4, v8

    move/from16 v8, v20

    :goto_8
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 10
    iget-object v11, v10, Le/a/u/k;->i:Le/a/j0/n;

    iput-object v10, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    iput v4, v2, Le/a/u/k$a;->j:I

    iput v9, v2, Le/a/u/k$a;->k:I

    iput v8, v2, Le/a/u/k$a;->l:I

    iput v7, v2, Le/a/u/k$a;->m:I

    iput v6, v2, Le/a/u/k$a;->n:I

    iput v5, v2, Le/a/u/k$a;->o:I

    iput v1, v2, Le/a/u/k$a;->p:I

    const/4 v12, 0x7

    iput v12, v2, Le/a/u/k$a;->e:I

    invoke-interface {v11, v2}, Le/a/j0/n;->i(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_8

    return-object v3

    :cond_8
    move-object v12, v10

    move v10, v4

    move v4, v1

    move-object v1, v11

    :goto_9
    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 11
    :goto_a
    iget-object v11, v12, Le/a/u/k;->i:Le/a/j0/n;

    iput-object v12, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    iput v10, v2, Le/a/u/k$a;->j:I

    iput v9, v2, Le/a/u/k$a;->k:I

    iput v8, v2, Le/a/u/k$a;->l:I

    iput v7, v2, Le/a/u/k$a;->m:I

    iput v6, v2, Le/a/u/k$a;->n:I

    iput v5, v2, Le/a/u/k$a;->o:I

    iput v4, v2, Le/a/u/k$a;->p:I

    iput v1, v2, Le/a/u/k$a;->q:I

    const/16 v13, 0x8

    iput v13, v2, Le/a/u/k$a;->e:I

    invoke-interface {v11, v2}, Le/a/j0/n;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_a

    return-object v3

    :cond_a
    move v13, v10

    move v10, v7

    move v7, v4

    move v4, v9

    move v9, v6

    move v6, v1

    move-object v1, v11

    move v11, v8

    move v8, v5

    :goto_b
    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v5, v1

    goto :goto_c

    :cond_b
    const/4 v5, 0x0

    :goto_c
    add-int v1, v6, v5

    .line 12
    iget-object v14, v12, Le/a/u/k;->i:Le/a/j0/n;

    iput-object v12, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    iput v13, v2, Le/a/u/k$a;->j:I

    iput v4, v2, Le/a/u/k$a;->k:I

    iput v11, v2, Le/a/u/k$a;->l:I

    iput v10, v2, Le/a/u/k$a;->m:I

    iput v9, v2, Le/a/u/k$a;->n:I

    iput v8, v2, Le/a/u/k$a;->o:I

    iput v7, v2, Le/a/u/k$a;->p:I

    iput v6, v2, Le/a/u/k$a;->q:I

    iput v5, v2, Le/a/u/k$a;->r:I

    iput v1, v2, Le/a/u/k$a;->s:I

    const/16 v15, 0x9

    iput v15, v2, Le/a/u/k$a;->e:I

    invoke-interface {v14, v2}, Le/a/j0/n;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v3, :cond_c

    return-object v3

    :cond_c
    move-object v15, v12

    move v12, v4

    move v4, v1

    move-object v1, v14

    .line 13
    :goto_d
    check-cast v1, Ljava/lang/String;

    .line 14
    iget-object v14, v15, Le/a/u/k;->i:Le/a/j0/n;

    iput-object v15, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    iput-object v1, v2, Le/a/u/k$a;->h:Ljava/lang/Object;

    iput v13, v2, Le/a/u/k$a;->j:I

    iput v12, v2, Le/a/u/k$a;->k:I

    iput v11, v2, Le/a/u/k$a;->l:I

    iput v10, v2, Le/a/u/k$a;->m:I

    iput v9, v2, Le/a/u/k$a;->n:I

    iput v8, v2, Le/a/u/k$a;->o:I

    iput v7, v2, Le/a/u/k$a;->p:I

    iput v6, v2, Le/a/u/k$a;->q:I

    iput v5, v2, Le/a/u/k$a;->r:I

    iput v4, v2, Le/a/u/k$a;->s:I

    const/16 v0, 0xa

    iput v0, v2, Le/a/u/k$a;->e:I

    invoke-interface {v14, v2}, Le/a/j0/n;->l(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_d

    return-object v3

    :cond_d
    move-object v14, v1

    move-object v1, v0

    .line 15
    :goto_e
    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    .line 16
    iget-object v1, v15, Le/a/u/k;->i:Le/a/j0/n;

    iput-object v15, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    iput-object v14, v2, Le/a/u/k$a;->h:Ljava/lang/Object;

    iput-object v0, v2, Le/a/u/k$a;->i:Ljava/lang/Object;

    iput v13, v2, Le/a/u/k$a;->j:I

    iput v12, v2, Le/a/u/k$a;->k:I

    iput v11, v2, Le/a/u/k$a;->l:I

    iput v10, v2, Le/a/u/k$a;->m:I

    iput v9, v2, Le/a/u/k$a;->n:I

    iput v8, v2, Le/a/u/k$a;->o:I

    iput v7, v2, Le/a/u/k$a;->p:I

    iput v6, v2, Le/a/u/k$a;->q:I

    iput v5, v2, Le/a/u/k$a;->r:I

    iput v4, v2, Le/a/u/k$a;->s:I

    move-object/from16 v16, v0

    const/16 v0, 0xb

    iput v0, v2, Le/a/u/k$a;->e:I

    invoke-interface {v1, v2}, Le/a/j0/n;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_e

    return-object v3

    :cond_e
    move v0, v4

    move-object v4, v15

    move-object v15, v14

    move-object/from16 v14, v16

    :goto_f
    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v16, v3

    goto :goto_10

    :cond_f
    move-object/from16 v16, v3

    const/4 v1, 0x0

    .line 17
    :goto_10
    iget-object v3, v4, Le/a/u/k;->i:Le/a/j0/n;

    iput-object v4, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    iput-object v15, v2, Le/a/u/k$a;->h:Ljava/lang/Object;

    iput-object v14, v2, Le/a/u/k$a;->i:Ljava/lang/Object;

    iput v13, v2, Le/a/u/k$a;->j:I

    iput v12, v2, Le/a/u/k$a;->k:I

    iput v11, v2, Le/a/u/k$a;->l:I

    iput v10, v2, Le/a/u/k$a;->m:I

    iput v9, v2, Le/a/u/k$a;->n:I

    iput v8, v2, Le/a/u/k$a;->o:I

    iput v7, v2, Le/a/u/k$a;->p:I

    iput v6, v2, Le/a/u/k$a;->q:I

    iput v5, v2, Le/a/u/k$a;->r:I

    iput v0, v2, Le/a/u/k$a;->s:I

    iput v1, v2, Le/a/u/k$a;->t:I

    move/from16 v17, v0

    const/16 v0, 0xc

    iput v0, v2, Le/a/u/k$a;->e:I

    invoke-interface {v3, v2}, Le/a/j0/n;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v3, v16

    if-ne v0, v3, :cond_10

    return-object v3

    :cond_10
    move-object/from16 v16, v3

    move v3, v13

    move v13, v11

    move v11, v9

    move v9, v7

    move v7, v5

    move-object v5, v14

    move v14, v12

    move v12, v10

    move v10, v8

    move v8, v6

    move/from16 v6, v17

    move/from16 v19, v1

    move-object v1, v0

    move/from16 v0, v19

    :goto_11
    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 18
    :goto_12
    iget-object v4, v4, Le/a/u/k;->i:Le/a/j0/n;

    iput-object v15, v2, Le/a/u/k$a;->g:Ljava/lang/Object;

    iput-object v5, v2, Le/a/u/k$a;->h:Ljava/lang/Object;

    move-object/from16 v17, v5

    const/4 v5, 0x0

    iput-object v5, v2, Le/a/u/k$a;->i:Ljava/lang/Object;

    iput v3, v2, Le/a/u/k$a;->j:I

    iput v14, v2, Le/a/u/k$a;->k:I

    iput v13, v2, Le/a/u/k$a;->l:I

    iput v12, v2, Le/a/u/k$a;->m:I

    iput v11, v2, Le/a/u/k$a;->n:I

    iput v10, v2, Le/a/u/k$a;->o:I

    iput v9, v2, Le/a/u/k$a;->p:I

    iput v8, v2, Le/a/u/k$a;->q:I

    iput v7, v2, Le/a/u/k$a;->r:I

    iput v6, v2, Le/a/u/k$a;->s:I

    iput v0, v2, Le/a/u/k$a;->t:I

    iput v1, v2, Le/a/u/k$a;->u:I

    const/16 v5, 0xd

    iput v5, v2, Le/a/u/k$a;->e:I

    invoke-interface {v4, v2}, Le/a/j0/n;->h(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v4, v16

    if-ne v2, v4, :cond_12

    return-object v4

    :cond_12
    move v5, v12

    move v4, v14

    move-object/from16 v14, v17

    move v12, v6

    move v6, v13

    move-object v13, v15

    move v15, v0

    move v0, v1

    move-object v1, v2

    goto/16 :goto_1

    :goto_13
    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    move-object/from16 v16, v14

    move/from16 v17, v15

    if-eqz v1, :cond_14

    int-to-double v14, v0

    int-to-double v1, v1

    div-double/2addr v14, v1

    const/16 v1, 0x64

    int-to-double v1, v1

    mul-double/2addr v14, v1

    double-to-int v1, v14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 19
    :goto_15
    new-instance v18, Le/a/u/m/a;

    move-object/from16 v2, v18

    move-object/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v0

    move/from16 v17, v1

    invoke-direct/range {v2 .. v17}, Le/a/u/m/a;-><init>(IIIIIIIIIILjava/lang/String;Ljava/lang/Integer;III)V

    return-object v18

    :pswitch_data_0
    .packed-switch 0x0
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

.method public Q3(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/u/k;->j:Le/a/q2/a;

    .line 2
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v1

    const-string v2, "YearInReviewOpen"

    invoke-virtual {v1, v2}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Unknown"

    .line 3
    :goto_0
    new-instance v2, Ls1/k;

    const-string v3, "Source"

    invoke-direct {v2, v3, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-static {v2}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 5
    invoke-virtual {v1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p1

    const-string v1, "GenericAnalyticsEvent.ne\u2026\n                .build()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 7
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/u/f;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/u/f;->i()V

    .line 8
    :cond_1
    iget-object v1, p0, Le/a/u/k;->f:Ls1/w/f;

    const/4 v2, 0x0

    new-instance v3, Le/a/u/k$b;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Le/a/u/k$b;-><init>(Le/a/u/k;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public Yb(Landroid/view/View;)V
    .locals 7

    const-string v0, "viewToShare"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/u/k$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/u/k$c;-><init>(Le/a/u/k;Landroid/view/View;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public gb()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/u/k;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/u/f;

    if-eqz v1, :cond_0

    iget-object v2, p0, Le/a/u/k;->e:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "image/png"

    invoke-interface {v1, v2, v0, v4, v3}, Le/a/u/f;->hp(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public l3(Ljava/lang/String;)V
    .locals 4

    const-string v0, "packageName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u/k;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/u/f;

    if-eqz v1, :cond_0

    iget-object v2, p0, Le/a/u/k;->e:Ljava/lang/String;

    const-string v3, "image/png"

    invoke-interface {v1, v2, v0, v3, p1}, Le/a/u/f;->hp(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public t2()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u/k;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/u/f;

    if-eqz v1, :cond_0

    iget-object v2, p0, Le/a/u/k;->e:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Le/a/u/f;->cd(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
