.class public final Le/a/d/d/c/d;
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
        "Ljava/util/List<",
        "+",
        "Le/a/d/d/c/a;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.contacts.data.VoipContactsDataProviderImpl$fetchVoipContacts$2"
    f = "VoipContactsDataProvider.kt"
    l = {
        0x2f,
        0x2f,
        0x41
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/d/c/c;

.field public final synthetic h:Z

.field public final synthetic i:Ljava/util/Set;

.field public final synthetic j:Z

.field public final synthetic k:Z


# direct methods
.method public constructor <init>(Le/a/d/d/c/c;ZLjava/util/Set;ZZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/d/c/d;->g:Le/a/d/d/c/c;

    iput-boolean p2, p0, Le/a/d/d/c/d;->h:Z

    iput-object p3, p0, Le/a/d/d/c/d;->i:Ljava/util/Set;

    iput-boolean p4, p0, Le/a/d/d/c/d;->j:Z

    iput-boolean p5, p0, Le/a/d/d/c/d;->k:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 8
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

    new-instance v0, Le/a/d/d/c/d;

    iget-object v2, p0, Le/a/d/d/c/d;->g:Le/a/d/d/c/c;

    iget-boolean v3, p0, Le/a/d/d/c/d;->h:Z

    iget-object v4, p0, Le/a/d/d/c/d;->i:Ljava/util/Set;

    iget-boolean v5, p0, Le/a/d/d/c/d;->j:Z

    iget-boolean v6, p0, Le/a/d/d/c/d;->k:Z

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Le/a/d/d/c/d;-><init>(Le/a/d/d/c/c;ZLjava/util/Set;ZZLs1/w/d;)V

    iput-object p1, v0, Le/a/d/d/c/d;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/d/d/c/d;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/d/d/c/d;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/d/c/d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v7, p0

    sget-object v8, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v0, v7, Le/a/d/d/c/d;->f:I

    const/4 v9, 0x3

    const/4 v1, 0x2

    const/4 v10, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    if-ne v0, v9, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v0, v7, Le/a/d/d/c/d;->e:Ljava/lang/Object;

    check-cast v0, Lq3/a/i0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    goto :goto_1

    :cond_2
    iget-object v0, v7, Le/a/d/d/c/d;->e:Ljava/lang/Object;

    check-cast v0, Lq3/a/i0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v0, v7, Le/a/d/d/c/d;->e:Ljava/lang/Object;

    check-cast v0, Lq3/a/i0;

    .line 4
    sget-object v3, Ln3/k/e/h;->b:Ljava/lang/reflect/Method;

    const-string v3, "VOIP - Fetch contacts"

    .line 5
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6
    iget-boolean v3, v7, Le/a/d/d/c/d;->h:Z

    if-eqz v3, :cond_5

    iget-object v1, v7, Le/a/d/d/c/d;->g:Le/a/d/d/c/c;

    .line 7
    iget-object v1, v1, Le/a/d/d/c/c;->c:Le/a/d/f;

    .line 8
    iput-object v0, v7, Le/a/d/d/c/d;->e:Ljava/lang/Object;

    iput v2, v7, Le/a/d/d/c/d;->f:I

    invoke-interface {v1, v7}, Le/a/d/f;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_4

    return-object v8

    :cond_4
    :goto_0
    check-cast v1, Ljava/util/Set;

    goto :goto_3

    :cond_5
    iget-object v3, v7, Le/a/d/d/c/d;->g:Le/a/d/d/c/c;

    .line 9
    iget-object v3, v3, Le/a/d/d/c/c;->c:Le/a/d/f;

    .line 10
    iput-object v0, v7, Le/a/d/d/c/d;->e:Ljava/lang/Object;

    iput v1, v7, Le/a/d/d/c/d;->f:I

    invoke-interface {v3, v7}, Le/a/d/f;->j(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_6

    return-object v8

    .line 11
    :cond_6
    :goto_1
    move-object v3, v1

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    .line 12
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    move-object v1, v10

    :goto_2
    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_9

    .line 14
    :goto_3
    new-instance v3, Ls1/z/c/c0;

    invoke-direct {v3}, Ls1/z/c/c0;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v14, Le/a/d/d/c/d$c;

    invoke-direct {v14, v7, v1, v10}, Le/a/d/d/c/d$c;-><init>(Le/a/d/d/c/d;Ljava/util/Set;Ls1/w/d;)V

    const/4 v6, 0x3

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x3

    const/16 v16, 0x0

    move-object v11, v0

    invoke-static/range {v11 .. v16}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v11

    iput-object v11, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 15
    new-instance v15, Ls1/z/c/c0;

    invoke-direct {v15}, Ls1/z/c/c0;-><init>()V

    new-instance v14, Le/a/d/d/c/d$b;

    invoke-direct {v14, v7, v1, v10}, Le/a/d/d/c/d$b;-><init>(Le/a/d/d/c/d;Ljava/util/Set;Ls1/w/d;)V

    move-object v11, v0

    move-object v12, v4

    move-object v13, v5

    move-object v5, v15

    move v15, v6

    move-object/from16 v16, v17

    invoke-static/range {v11 .. v16}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v0

    iput-object v0, v5, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 16
    new-instance v4, Ls1/z/c/y;

    invoke-direct {v4}, Ls1/z/c/y;-><init>()V

    iget-object v0, v7, Le/a/d/d/c/d;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, v4, Ls1/z/c/y;->a:Z

    .line 17
    new-instance v6, Ls1/z/c/c0;

    invoke-direct {v6}, Ls1/z/c/c0;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, v7, Le/a/d/d/c/d;->i:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, v7, Le/a/d/d/c/d;->i:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    iput-object v0, v6, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 18
    iget-object v0, v7, Le/a/d/d/c/d;->g:Le/a/d/d/c/c;

    .line 19
    iget-object v11, v0, Le/a/d/d/c/c;->b:Ls1/w/f;

    .line 20
    new-instance v12, Le/a/d/d/c/d$a;

    const/4 v13, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Le/a/d/d/c/d$a;-><init>(Le/a/d/d/c/d;Ls1/z/c/c0;Ls1/z/c/y;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V

    iput-object v10, v7, Le/a/d/d/c/d;->e:Ljava/lang/Object;

    iput v9, v7, Le/a/d/d/c/d;->f:I

    invoke-static {v11, v12, v7}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_8

    return-object v8

    :cond_8
    :goto_4
    return-object v0

    .line 21
    :cond_9
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    return-object v0
.end method
