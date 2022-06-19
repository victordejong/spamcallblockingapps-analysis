.class public final Le/a/a/i1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/i1/d;


# instance fields
.field public final a:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/a/k/t;

.field public final c:Le/a/h5/y;

.field public final d:Le/a/a/s0/d;

.field public final e:Le/a/b0/q/b;

.field public final f:Le/a/h5/w;


# direct methods
.method public constructor <init>(Le/a/r2/f;Le/a/a/k/t;Le/a/h5/y;Le/a/a/s0/d;Le/a/b0/q/b;Le/a/h5/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;",
            "Le/a/a/k/t;",
            "Le/a/h5/y;",
            "Le/a/a/s0/d;",
            "Le/a/b0/q/b;",
            "Le/a/h5/w;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "messagesStorage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transportManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionsView"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultSmsHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentStoreHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/i1/e;->a:Le/a/r2/f;

    iput-object p2, p0, Le/a/a/i1/e;->b:Le/a/a/k/t;

    iput-object p3, p0, Le/a/a/i1/e;->c:Le/a/h5/y;

    iput-object p4, p0, Le/a/a/i1/e;->d:Le/a/a/s0/d;

    iput-object p5, p0, Le/a/a/i1/e;->e:Le/a/b0/q/b;

    iput-object p6, p0, Le/a/a/i1/e;->f:Le/a/h5/w;

    return-void
.end method


# virtual methods
.method public a([Lcom/truecaller/messaging/data/types/Conversation;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            "Ljava/lang/String;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v4, v2, Le/a/a/i1/e$a;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Le/a/a/i1/e$a;

    iget v5, v4, Le/a/a/i1/e$a;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Le/a/a/i1/e$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, Le/a/a/i1/e$a;

    invoke-direct {v4, v0, v2}, Le/a/a/i1/e$a;-><init>(Le/a/a/i1/e;Ls1/w/d;)V

    :goto_0
    iget-object v2, v4, Le/a/a/i1/e$a;->d:Ljava/lang/Object;

    sget-object v5, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v6, v4, Le/a/a/i1/e$a;->e:I

    const-string v7, "messagesStorage.tell()\n \u2026ns, deletePublicEntities)"

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v6, :cond_5

    if-eq v6, v13, :cond_4

    if-eq v6, v10, :cond_3

    if-eq v6, v9, :cond_2

    if-ne v6, v8, :cond_1

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-boolean v1, v4, Le/a/a/i1/e$a;->j:Z

    iget-object v6, v4, Le/a/a/i1/e$a;->h:Ljava/lang/Object;

    check-cast v6, [Lcom/truecaller/messaging/data/types/Conversation;

    iget-object v9, v4, Le/a/a/i1/e$a;->g:Ljava/lang/Object;

    check-cast v9, Le/a/a/i1/e;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    iget-boolean v1, v4, Le/a/a/i1/e$a;->j:Z

    iget-object v6, v4, Le/a/a/i1/e$a;->i:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v10, v4, Le/a/a/i1/e$a;->h:Ljava/lang/Object;

    check-cast v10, [Lcom/truecaller/messaging/data/types/Conversation;

    iget-object v14, v4, Le/a/a/i1/e$a;->g:Ljava/lang/Object;

    check-cast v14, Le/a/a/i1/e;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v17, v10

    move-object v10, v6

    move-object/from16 v6, v17

    goto/16 :goto_2

    :cond_4
    iget-boolean v1, v4, Le/a/a/i1/e$a;->j:Z

    iget-object v6, v4, Le/a/a/i1/e$a;->i:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v14, v4, Le/a/a/i1/e$a;->h:Ljava/lang/Object;

    check-cast v14, [Lcom/truecaller/messaging/data/types/Conversation;

    iget-object v15, v4, Le/a/a/i1/e$a;->g:Ljava/lang/Object;

    check-cast v15, Le/a/a/i1/e;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz v1, :cond_7

    .line 4
    iput-object v0, v4, Le/a/a/i1/e$a;->g:Ljava/lang/Object;

    move-object/from16 v2, p1

    iput-object v2, v4, Le/a/a/i1/e$a;->h:Ljava/lang/Object;

    move-object/from16 v6, p2

    iput-object v6, v4, Le/a/a/i1/e$a;->i:Ljava/lang/Object;

    iput-boolean v1, v4, Le/a/a/i1/e$a;->j:Z

    iput v13, v4, Le/a/a/i1/e$a;->e:I

    invoke-virtual {v0, v4}, Le/a/a/i1/e;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v5, :cond_6

    return-object v5

    :cond_6
    move-object v15, v0

    move-object/from16 v17, v14

    move-object v14, v2

    move-object/from16 v2, v17

    :goto_1
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    return-object v3

    :cond_7
    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move-object v15, v0

    move-object v14, v2

    .line 5
    :cond_8
    iget-object v2, v15, Le/a/a/i1/e;->a:Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g/m;

    .line 6
    invoke-interface {v2, v14, v1}, Le/a/a/g/m;->j([Lcom/truecaller/messaging/data/types/Conversation;Z)Le/a/r2/x;

    move-result-object v2

    invoke-static {v2, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v15, v4, Le/a/a/i1/e$a;->g:Ljava/lang/Object;

    iput-object v14, v4, Le/a/a/i1/e$a;->h:Ljava/lang/Object;

    iput-object v6, v4, Le/a/a/i1/e$a;->i:Ljava/lang/Object;

    iput-boolean v1, v4, Le/a/a/i1/e$a;->j:Z

    iput v10, v4, Le/a/a/i1/e$a;->e:I

    .line 7
    invoke-static {v2, v4}, Le/a/e/a2;->g(Le/a/r2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_9

    return-object v5

    :cond_9
    move-object v10, v6

    move-object v6, v14

    move-object v14, v15

    .line 8
    :goto_2
    check-cast v2, Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_15

    .line 9
    invoke-virtual {v2, v12}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v15

    if-ltz v15, :cond_a

    invoke-virtual {v2, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-nez v15, :cond_a

    move v15, v13

    goto :goto_3

    :cond_a
    move v15, v12

    .line 10
    :goto_3
    invoke-virtual {v2, v13}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v16

    if-ltz v16, :cond_b

    invoke-virtual {v2, v13}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v13

    goto :goto_4

    :cond_b
    move v2, v12

    :goto_4
    if-nez v15, :cond_d

    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    move v2, v12

    goto :goto_6

    :cond_d
    :goto_5
    move v2, v13

    :goto_6
    if-eq v2, v13, :cond_e

    goto :goto_b

    .line 11
    :cond_e
    iget-object v2, v14, Le/a/a/i1/e;->d:Le/a/a/s0/d;

    const v15, 0x7f120252

    iput-object v14, v4, Le/a/a/i1/e$a;->g:Ljava/lang/Object;

    iput-object v6, v4, Le/a/a/i1/e$a;->h:Ljava/lang/Object;

    iput-object v11, v4, Le/a/a/i1/e$a;->i:Ljava/lang/Object;

    iput-boolean v1, v4, Le/a/a/i1/e$a;->j:Z

    iput v9, v4, Le/a/a/i1/e$a;->e:I

    invoke-interface {v2, v10, v15, v13, v4}, Le/a/a/s0/d;->a(Ljava/lang/String;IZLs1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_f

    return-object v5

    :cond_f
    move-object v9, v14

    :goto_7
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_10

    return-object v3

    .line 12
    :cond_10
    iget-object v2, v9, Le/a/a/i1/e;->a:Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g/m;

    .line 13
    invoke-interface {v2, v6, v1}, Le/a/a/g/m;->j([Lcom/truecaller/messaging/data/types/Conversation;Z)Le/a/r2/x;

    move-result-object v1

    invoke-static {v1, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v11, v4, Le/a/a/i1/e$a;->g:Ljava/lang/Object;

    iput-object v11, v4, Le/a/a/i1/e$a;->h:Ljava/lang/Object;

    iput v8, v4, Le/a/a/i1/e$a;->e:I

    .line 14
    invoke-static {v1, v4}, Le/a/e/a2;->g(Le/a/r2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_11

    return-object v5

    .line 15
    :cond_11
    :goto_8
    check-cast v2, Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_14

    .line 16
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    move v3, v12

    :goto_9
    if-ge v3, v1, :cond_13

    .line 17
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_12

    move v1, v13

    goto :goto_a

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_13
    move v1, v12

    :goto_a
    if-nez v1, :cond_14

    move v12, v13

    .line 18
    :cond_14
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 19
    :cond_15
    :goto_b
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1
.end method

.method public b(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Message;",
            "Lcom/truecaller/messaging/data/types/Entity;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/a/i1/e$c;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/a/i1/e$c;

    iget v1, v0, Le/a/a/i1/e$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/i1/e$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a/i1/e$c;

    invoke-direct {v0, p0, p3}, Le/a/a/i1/e$c;-><init>(Le/a/a/i1/e;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/a/i1/e$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/i1/e$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/a/i1/e$c;->i:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/truecaller/messaging/data/types/Entity;

    iget-object p1, v0, Le/a/a/i1/e$c;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    iget-object v0, v0, Le/a/a/i1/e$c;->g:Ljava/lang/Object;

    check-cast v0, Le/a/a/i1/e;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/a/i1/e;->e:Le/a/b0/q/b;

    iget-object v2, p2, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-static {p1}, Le/a/c/p/a;->s1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v4

    invoke-interface {p3, v2, v4}, Le/a/b0/q/b;->f(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 5
    iput-object p0, v0, Le/a/a/i1/e$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/a/i1/e$c;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/a/i1/e$c;->i:Ljava/lang/Object;

    iput v3, v0, Le/a/a/i1/e$c;->e:I

    invoke-virtual {p0, v0}, Le/a/a/i1/e;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_5

    .line 6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_4
    move-object v0, p0

    .line 7
    :cond_5
    iget-object p3, v0, Le/a/a/i1/e;->b:Le/a/a/k/t;

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Le/a/a/k/t;->d(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;Z)Z

    move-result p1

    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/List;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v4, v2, Le/a/a/i1/e$b;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Le/a/a/i1/e$b;

    iget v5, v4, Le/a/a/i1/e$b;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Le/a/a/i1/e$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, Le/a/a/i1/e$b;

    invoke-direct {v4, v0, v2}, Le/a/a/i1/e$b;-><init>(Le/a/a/i1/e;Ls1/w/d;)V

    :goto_0
    iget-object v2, v4, Le/a/a/i1/e$b;->d:Ljava/lang/Object;

    sget-object v12, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v4, Le/a/a/i1/e$b;->e:I

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v11, 0x1

    if-eqz v5, :cond_4

    if-eq v5, v11, :cond_3

    if-eq v5, v14, :cond_2

    if-ne v5, v13, :cond_1

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move/from16 v16, v11

    goto/16 :goto_c

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-boolean v1, v4, Le/a/a/i1/e$b;->i:Z

    iget-object v5, v4, Le/a/a/i1/e$b;->h:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, v4, Le/a/a/i1/e$b;->g:Ljava/lang/Object;

    check-cast v6, Le/a/a/i1/e;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move/from16 v16, v11

    goto/16 :goto_b

    :cond_3
    iget-boolean v1, v4, Le/a/a/i1/e$b;->i:Z

    iget-object v5, v4, Le/a/a/i1/e$b;->h:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, v4, Le/a/a/i1/e$b;->g:Ljava/lang/Object;

    check-cast v6, Le/a/a/i1/e;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move/from16 v16, v11

    move-object/from16 v18, v2

    move v2, v1

    move-object v1, v5

    move-object/from16 v5, v18

    goto :goto_4

    :cond_4
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 5
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/messaging/data/types/Message;

    .line 6
    iget v5, v5, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-eqz v5, :cond_9

    if-ne v5, v11, :cond_8

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    goto :goto_2

    :cond_9
    :goto_1
    move v5, v11

    .line 7
    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    move v2, v11

    :goto_3
    if-eqz v2, :cond_b

    .line 9
    iget-object v5, v0, Le/a/a/i1/e;->d:Le/a/a/s0/d;

    const v7, 0x7f120252

    const/4 v8, 0x0

    const/4 v10, 0x4

    const/4 v2, 0x0

    iput-object v0, v4, Le/a/a/i1/e$b;->g:Ljava/lang/Object;

    iput-object v1, v4, Le/a/a/i1/e$b;->h:Ljava/lang/Object;

    move/from16 v9, p3

    iput-boolean v9, v4, Le/a/a/i1/e$b;->i:Z

    iput v11, v4, Le/a/a/i1/e$b;->e:I

    move-object/from16 v6, p2

    move-object v9, v4

    move/from16 v16, v11

    move-object v11, v2

    invoke-static/range {v5 .. v11}, Le/a/c/p/a;->t2(Le/a/a/s0/d;Ljava/lang/String;IZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_a

    return-object v12

    :cond_a
    move-object v6, v0

    move-object v5, v2

    move/from16 v2, p3

    :goto_4
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_c

    return-object v3

    :cond_b
    move/from16 v16, v11

    move/from16 v2, p3

    move-object v6, v0

    :cond_c
    if-eqz v2, :cond_16

    .line 10
    instance-of v5, v1, Ljava/util/Collection;

    if-eqz v5, :cond_e

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_d
    const/4 v11, 0x0

    goto :goto_a

    .line 11
    :cond_e
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/truecaller/messaging/data/types/Message;

    .line 12
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget v8, v7, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-ne v8, v14, :cond_12

    iget-object v8, v7, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    const-string v9, "entities"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    array-length v9, v8

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v9, :cond_11

    aget-object v11, v8, v10

    .line 15
    invoke-virtual {v11}, Lcom/truecaller/messaging/data/types/Entity;->f()Z

    move-result v17

    if-eqz v17, :cond_f

    iget-object v15, v6, Le/a/a/i1/e;->e:Le/a/b0/q/b;

    iget-object v11, v11, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-static {v7}, Le/a/c/p/a;->s1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v13

    invoke-interface {v15, v11, v13}, Le/a/b0/q/b;->f(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_f

    move/from16 v11, v16

    goto :goto_7

    :cond_f
    const/4 v11, 0x0

    :goto_7
    if-eqz v11, :cond_10

    move/from16 v11, v16

    goto :goto_8

    :cond_10
    add-int/lit8 v10, v10, 0x1

    const/4 v13, 0x3

    goto :goto_6

    :cond_11
    const/4 v11, 0x0

    :goto_8
    if-eqz v11, :cond_12

    move/from16 v11, v16

    goto :goto_9

    :cond_12
    const/4 v11, 0x0

    .line 16
    :goto_9
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 17
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_13

    move/from16 v11, v16

    goto :goto_a

    :cond_13
    const/4 v13, 0x3

    goto :goto_5

    :goto_a
    if-eqz v11, :cond_16

    iput-object v6, v4, Le/a/a/i1/e$b;->g:Ljava/lang/Object;

    iput-object v1, v4, Le/a/a/i1/e$b;->h:Ljava/lang/Object;

    iput-boolean v2, v4, Le/a/a/i1/e$b;->i:Z

    iput v14, v4, Le/a/a/i1/e$b;->e:I

    .line 18
    invoke-virtual {v6, v4}, Le/a/a/i1/e;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v12, :cond_14

    return-object v12

    :cond_14
    move-object/from16 v18, v5

    move-object v5, v1

    move v1, v2

    move-object/from16 v2, v18

    .line 19
    :goto_b
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_15

    return-object v3

    :cond_15
    move v2, v1

    move-object v1, v5

    .line 20
    :cond_16
    iget-object v5, v6, Le/a/a/i1/e;->a:Le/a/r2/f;

    invoke-interface {v5}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/g/m;

    .line 21
    invoke-interface {v5, v2, v1}, Le/a/a/g/m;->z(ZLjava/util/List;)Le/a/r2/x;

    move-result-object v1

    const-string v2, "messagesStorage.tell()\n \u2026PublicEntities, messages)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, v4, Le/a/a/i1/e$b;->g:Ljava/lang/Object;

    iput-object v2, v4, Le/a/a/i1/e$b;->h:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v4, Le/a/a/i1/e$b;->e:I

    .line 22
    invoke-static {v1, v4}, Le/a/e/a2;->g(Le/a/r2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_17

    return-object v12

    .line 23
    :cond_17
    :goto_c
    check-cast v2, Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_1b

    .line 24
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object v1

    .line 25
    instance-of v4, v1, Ljava/util/Collection;

    if-eqz v4, :cond_19

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_19

    :cond_18
    move/from16 v15, v16

    goto :goto_d

    .line 26
    :cond_19
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    move-object v4, v1

    check-cast v4, Ls1/u/z;

    invoke-virtual {v4}, Ls1/u/z;->a()I

    move-result v4

    .line 27
    invoke-virtual {v2, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    .line 28
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 29
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1a

    move v15, v3

    .line 30
    :goto_d
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_1b
    return-object v3
.end method

.method public final d(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/a/i1/e$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/a/i1/e$d;

    iget v1, v0, Le/a/a/i1/e$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/i1/e$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a/i1/e$d;

    invoke-direct {v0, p0, p1}, Le/a/a/i1/e$d;-><init>(Le/a/a/i1/e;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/a/i1/e$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/i1/e$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/i1/e;->c:Le/a/h5/y;

    iget-object v2, p0, Le/a/a/i1/e;->f:Le/a/h5/w;

    invoke-interface {v2}, Le/a/h5/w;->q()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput v3, v0, Le/a/a/i1/e$d;->e:I

    invoke-interface {p1, v2, v0}, Le/a/h5/y;->f([Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Le/a/h5/l;

    .line 5
    iget-boolean p1, p1, Le/a/h5/l;->a:Z

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
