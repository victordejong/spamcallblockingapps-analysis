.class public final Le/a/e/a/c$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    c = "com.truecaller.ui.dialogs.QaDataStatsDialog$onViewCreated$1"
    f = "QaDataStatsDialog.kt"
    l = {
        0x6b,
        0x6c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public final synthetic u:Le/a/e/a/c;

.field public final synthetic v:Landroid/view/View;


# direct methods
.method public constructor <init>(Le/a/e/a/c;Landroid/view/View;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    iput-object p2, p0, Le/a/e/a/c$d;->v:Landroid/view/View;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/e/a/c$d;

    iget-object v1, p0, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    iget-object v2, p0, Le/a/e/a/c$d;->v:Landroid/view/View;

    invoke-direct {v0, v1, v2, p2}, Le/a/e/a/c$d;-><init>(Le/a/e/a/c;Landroid/view/View;Ls1/w/d;)V

    iput-object p1, v0, Le/a/e/a/c$d;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/e/a/c$d;

    iget-object v1, p0, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    iget-object v2, p0, Le/a/e/a/c$d;->v:Landroid/view/View;

    invoke-direct {v0, v1, v2, p2}, Le/a/e/a/c$d;-><init>(Le/a/e/a/c;Landroid/view/View;Ls1/w/d;)V

    iput-object p1, v0, Le/a/e/a/c$d;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/e/a/c$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    move-object/from16 v15, p0

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v15, Le/a/e/a/c$d;->t:I

    const/4 v2, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v2, :cond_0

    iget v0, v15, Le/a/e/a/c$d;->s:I

    iget v1, v15, Le/a/e/a/c$d;->r:I

    iget v2, v15, Le/a/e/a/c$d;->q:I

    iget v6, v15, Le/a/e/a/c$d;->p:I

    iget v7, v15, Le/a/e/a/c$d;->o:I

    iget v8, v15, Le/a/e/a/c$d;->n:I

    iget v9, v15, Le/a/e/a/c$d;->m:I

    iget v10, v15, Le/a/e/a/c$d;->l:I

    iget v11, v15, Le/a/e/a/c$d;->k:I

    iget v12, v15, Le/a/e/a/c$d;->j:I

    iget v13, v15, Le/a/e/a/c$d;->i:I

    iget v14, v15, Le/a/e/a/c$d;->h:I

    iget v5, v15, Le/a/e/a/c$d;->g:I

    iget-object v3, v15, Le/a/e/a/c$d;->f:Ljava/lang/Object;

    check-cast v3, Le/a/j0/i;

    iget-object v4, v15, Le/a/e/a/c$d;->e:Ljava/lang/Object;

    check-cast v4, Lq3/a/i0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move/from16 v21, v0

    move-object/from16 v19, v3

    move-object/from16 v23, v4

    move v3, v5

    move v5, v13

    move v4, v14

    move-object/from16 v0, p1

    move v13, v2

    move/from16 v30, v12

    move v12, v6

    move v6, v8

    move v8, v11

    move v11, v7

    move/from16 v7, v30

    move/from16 v31, v10

    move v10, v9

    move/from16 v9, v31

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget v1, v15, Le/a/e/a/c$d;->s:I

    iget v3, v15, Le/a/e/a/c$d;->r:I

    iget v4, v15, Le/a/e/a/c$d;->q:I

    iget v5, v15, Le/a/e/a/c$d;->p:I

    iget v6, v15, Le/a/e/a/c$d;->o:I

    iget v7, v15, Le/a/e/a/c$d;->n:I

    iget v8, v15, Le/a/e/a/c$d;->m:I

    iget v9, v15, Le/a/e/a/c$d;->l:I

    iget v10, v15, Le/a/e/a/c$d;->k:I

    iget v11, v15, Le/a/e/a/c$d;->j:I

    iget v12, v15, Le/a/e/a/c$d;->i:I

    iget v13, v15, Le/a/e/a/c$d;->h:I

    iget v14, v15, Le/a/e/a/c$d;->g:I

    iget-object v2, v15, Le/a/e/a/c$d;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/i0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v30, v3

    move v3, v1

    move v1, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move/from16 v4, v30

    goto/16 :goto_3

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v1, v15, Le/a/e/a/c$d;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/i0;

    .line 4
    iget-object v2, v15, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    .line 5
    sget v3, Le/a/e/a/c;->h:I

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v2, v4}, Le/a/e/a/c;->QA(Ljava/lang/Integer;)I

    move-result v14

    .line 7
    iget-object v2, v15, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    .line 8
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 9
    invoke-virtual {v2, v3}, Le/a/e/a/c;->QA(Ljava/lang/Integer;)I

    move-result v13

    .line 10
    iget-object v2, v15, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    const/4 v3, 0x4

    .line 11
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 12
    invoke-virtual {v2, v4}, Le/a/e/a/c;->QA(Ljava/lang/Integer;)I

    move-result v12

    .line 13
    iget-object v2, v15, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    const/4 v3, 0x5

    .line 14
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 15
    invoke-virtual {v2, v4}, Le/a/e/a/c;->QA(Ljava/lang/Integer;)I

    move-result v11

    .line 16
    iget-object v2, v15, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    .line 17
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 18
    invoke-virtual {v2, v3}, Le/a/e/a/c;->QA(Ljava/lang/Integer;)I

    move-result v10

    .line 19
    iget-object v2, v15, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    .line 20
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 21
    invoke-virtual {v2, v3}, Le/a/e/a/c;->QA(Ljava/lang/Integer;)I

    move-result v9

    .line 22
    iget-object v2, v15, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    const/4 v3, 0x6

    .line 23
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 24
    invoke-virtual {v2, v4}, Le/a/e/a/c;->QA(Ljava/lang/Integer;)I

    move-result v8

    .line 25
    iget-object v2, v15, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    const/4 v3, 0x7

    .line 26
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 27
    invoke-virtual {v2, v4}, Le/a/e/a/c;->QA(Ljava/lang/Integer;)I

    move-result v7

    .line 28
    iget-object v2, v15, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    const/4 v3, 0x0

    .line 29
    invoke-virtual {v2, v3}, Le/a/e/a/c;->PA(Ljava/lang/Integer;)I

    move-result v6

    .line 30
    iget-object v2, v15, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    .line 31
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 32
    invoke-virtual {v2, v3}, Le/a/e/a/c;->PA(Ljava/lang/Integer;)I

    move-result v5

    .line 33
    iget-object v2, v15, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    .line 34
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 35
    invoke-virtual {v2, v3}, Le/a/e/a/c;->PA(Ljava/lang/Integer;)I

    move-result v4

    .line 36
    iget-object v2, v15, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    .line 37
    iget-object v2, v2, Le/a/e/a/c;->a:Le/a/a/i0;

    if-eqz v2, :cond_a

    move/from16 p1, v4

    const-wide/16 v3, 0x0

    .line 38
    invoke-interface {v2, v3, v4}, Le/a/a/i0;->b4(J)J

    move-result-wide v20

    cmp-long v2, v20, v3

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 39
    :goto_0
    iget-object v2, v15, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    .line 40
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    if-eqz v20, :cond_4

    .line 41
    invoke-static {}, Le/a/m0/a1$m;->a()Landroid/net/Uri;

    move-result-object v21

    const-string v2, "COUNT(*)"

    .line 42
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 43
    invoke-virtual/range {v20 .. v25}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    .line 44
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    .line 45
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v20, v0

    move/from16 v3, v17

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 46
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_5
    const/4 v3, 0x0

    move-object/from16 v20, v0

    :goto_2
    const/4 v0, 0x0

    .line 47
    invoke-static {v2, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 48
    iget-object v0, v15, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    .line 49
    iget-object v0, v0, Le/a/e/a/c;->f:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/j0/j;

    .line 50
    iput-object v1, v15, Le/a/e/a/c$d;->e:Ljava/lang/Object;

    iput v14, v15, Le/a/e/a/c$d;->g:I

    iput v13, v15, Le/a/e/a/c$d;->h:I

    iput v12, v15, Le/a/e/a/c$d;->i:I

    iput v11, v15, Le/a/e/a/c$d;->j:I

    iput v10, v15, Le/a/e/a/c$d;->k:I

    iput v9, v15, Le/a/e/a/c$d;->l:I

    iput v8, v15, Le/a/e/a/c$d;->m:I

    iput v7, v15, Le/a/e/a/c$d;->n:I

    iput v6, v15, Le/a/e/a/c$d;->o:I

    iput v5, v15, Le/a/e/a/c$d;->p:I

    move/from16 v2, p1

    iput v2, v15, Le/a/e/a/c$d;->q:I

    iput v4, v15, Le/a/e/a/c$d;->r:I

    iput v3, v15, Le/a/e/a/c$d;->s:I

    move-object/from16 p1, v1

    const/4 v1, 0x1

    iput v1, v15, Le/a/e/a/c$d;->t:I

    invoke-interface {v0, v15}, Le/a/j0/j;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_6

    return-object v1

    :cond_6
    move-object/from16 v20, v1

    move v1, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v2

    move-object/from16 v2, p1

    .line 51
    :goto_3
    check-cast v0, Le/a/j0/i;

    move/from16 v21, v3

    .line 52
    iget-object v3, v15, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    .line 53
    iget-object v3, v3, Le/a/e/a/c;->f:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/j0/j;

    .line 54
    iput-object v2, v15, Le/a/e/a/c$d;->e:Ljava/lang/Object;

    iput-object v0, v15, Le/a/e/a/c$d;->f:Ljava/lang/Object;

    iput v1, v15, Le/a/e/a/c$d;->g:I

    iput v14, v15, Le/a/e/a/c$d;->h:I

    iput v13, v15, Le/a/e/a/c$d;->i:I

    iput v12, v15, Le/a/e/a/c$d;->j:I

    iput v11, v15, Le/a/e/a/c$d;->k:I

    iput v10, v15, Le/a/e/a/c$d;->l:I

    iput v9, v15, Le/a/e/a/c$d;->m:I

    iput v8, v15, Le/a/e/a/c$d;->n:I

    iput v7, v15, Le/a/e/a/c$d;->o:I

    iput v6, v15, Le/a/e/a/c$d;->p:I

    iput v5, v15, Le/a/e/a/c$d;->q:I

    iput v4, v15, Le/a/e/a/c$d;->r:I

    move-object/from16 p1, v0

    move/from16 v0, v21

    iput v0, v15, Le/a/e/a/c$d;->s:I

    const/4 v0, 0x2

    iput v0, v15, Le/a/e/a/c$d;->t:I

    invoke-interface {v3, v15}, Le/a/j0/j;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v3, v20

    if-ne v0, v3, :cond_7

    return-object v3

    :cond_7
    move-object/from16 v19, p1

    move v3, v1

    move-object/from16 v23, v2

    move v1, v4

    move v4, v14

    move/from16 v30, v13

    move v13, v5

    move/from16 v5, v30

    move/from16 v31, v12

    move v12, v6

    move v6, v8

    move v8, v11

    move v11, v7

    move/from16 v7, v31

    move/from16 v32, v10

    move v10, v9

    move/from16 v9, v32

    .line 55
    :goto_4
    check-cast v0, Ljava/lang/Integer;

    .line 56
    iget-object v2, v15, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    invoke-static {v2}, Le/a/e/a/c;->OA(Le/a/e/a/c;)Le/a/j0/b;

    move-result-object v2

    invoke-interface {v2}, Le/a/j0/b;->a()Ljava/lang/Integer;

    move-result-object v20

    .line 57
    iget-object v2, v15, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    invoke-static {v2}, Le/a/e/a/c;->OA(Le/a/e/a/c;)Le/a/j0/b;

    move-result-object v2

    invoke-interface {v2}, Le/a/j0/b;->d()Ljava/lang/Integer;

    move-result-object v24

    .line 58
    iget-object v2, v15, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    invoke-static {v2}, Le/a/e/a/c;->OA(Le/a/e/a/c;)Le/a/j0/b;

    move-result-object v2

    invoke-interface {v2}, Le/a/j0/b;->c()Lcom/truecaller/data/entity/Contact;

    move-result-object v25

    .line 59
    iget-object v2, v15, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    invoke-static {v2}, Le/a/e/a/c;->OA(Le/a/e/a/c;)Le/a/j0/b;

    move-result-object v2

    invoke-interface {v2}, Le/a/j0/b;->b()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v14, v15, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    invoke-virtual {v14, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v26, v2

    goto :goto_5

    :cond_8
    const/16 v26, 0x0

    .line 60
    :goto_5
    iget-object v2, v15, Le/a/e/a/c$d;->u:Le/a/e/a/c;

    .line 61
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Le/a/n/g0;->q(Landroid/content/Context;)Le/a/b0/c;

    move-result-object v2

    invoke-interface {v2}, Le/a/b0/c;->g()Ls1/w/f;

    move-result-object v27

    const/16 v28, 0x0

    .line 62
    new-instance v29, Le/a/e/a/c$d$a;

    if-eqz v1, :cond_9

    const/4 v14, 0x1

    goto :goto_6

    :cond_9
    const/4 v14, 0x0

    :goto_6
    const/16 v22, 0x0

    move-object/from16 v1, v29

    move-object/from16 v2, p0

    move/from16 v15, v21

    move-object/from16 v16, v19

    move-object/from16 v17, v0

    move-object/from16 v18, v20

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v21, v26

    invoke-direct/range {v1 .. v22}, Le/a/e/a/c$d$a;-><init>(Le/a/e/a/c$d;IIIIIIIIIIIZILe/a/j0/i;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ls1/w/d;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object/from16 v5, v23

    move-object/from16 v6, v27

    move-object/from16 v7, v28

    move-object/from16 v8, v29

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 63
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0

    :cond_a
    const-string v0, "messageSettings"

    .line 64
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
