.class public final Le/a/n/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/n/a1;


# instance fields
.field public a:Le/m/b/y/a/a;

.field public b:Ls1/w/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ls1/w/f;

.field public final d:Ls1/w/f;

.field public final e:Landroid/content/Context;

.field public final f:Le/a/b0/o/a;

.field public final g:Le/a/n/g1;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Landroid/content/Context;Le/a/b0/o/a;Le/a/n/g1;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "googleServiceProxy"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/n/c1;->c:Ls1/w/f;

    iput-object p2, p0, Le/a/n/c1;->d:Ls1/w/f;

    iput-object p3, p0, Le/a/n/c1;->e:Landroid/content/Context;

    iput-object p4, p0, Le/a/n/c1;->f:Le/a/b0/o/a;

    iput-object p5, p0, Le/a/n/c1;->g:Le/a/n/g1;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/n/c1;->b:Ls1/w/d;

    if-eqz v0, :cond_0

    sget-object v1, Ls1/s;->a:Ls1/s;

    invoke-interface {v0, v1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/n/c1;->b:Ls1/w/d;

    return-void
.end method

.method public b(Landroidx/fragment/app/Fragment;Ls1/w/d;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v4, v2, Le/a/n/c1$c;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Le/a/n/c1$c;

    iget v5, v4, Le/a/n/c1$c;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Le/a/n/c1$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, Le/a/n/c1$c;

    invoke-direct {v4, v0, v2}, Le/a/n/c1$c;-><init>(Le/a/n/c1;Ls1/w/d;)V

    :goto_0
    iget-object v2, v4, Le/a/n/c1$c;->d:Ljava/lang/Object;

    sget-object v5, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v6, v4, Le/a/n/c1$c;->e:I

    const-string v7, "backupSignInRequired"

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v11, 0x0

    if-eqz v6, :cond_3

    if-eq v6, v9, :cond_2

    if-ne v6, v8, :cond_1

    iget-object v1, v4, Le/a/n/c1$c;->k:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/y;

    iget-object v5, v4, Le/a/n/c1$c;->j:Ljava/lang/Object;

    check-cast v5, Ls1/z/c/c0;

    iget-object v6, v4, Le/a/n/c1$c;->i:Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    iget-object v8, v4, Le/a/n/c1$c;->h:Ljava/lang/Object;

    check-cast v8, Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Le/a/n/c1$c;->g:Ljava/lang/Object;

    check-cast v4, Le/a/n/c1;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v9, v1

    move-object v1, v8

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v1, v4, Le/a/n/c1$c;->k:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/c0;

    iget-object v6, v4, Le/a/n/c1$c;->j:Ljava/lang/Object;

    check-cast v6, Ls1/z/c/c0;

    iget-object v9, v4, Le/a/n/c1$c;->i:Ljava/lang/Object;

    check-cast v9, Landroid/content/Context;

    iget-object v12, v4, Le/a/n/c1$c;->h:Ljava/lang/Object;

    check-cast v12, Landroidx/fragment/app/Fragment;

    iget-object v13, v4, Le/a/n/c1$c;->g:Ljava/lang/Object;

    check-cast v13, Le/a/n/c1;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v16, v6

    move-object v6, v9

    move-object v2, v13

    move-object/from16 v21, v12

    move-object v12, v1

    move-object/from16 v1, v21

    goto/16 :goto_5

    :cond_3
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, v0, Le/a/n/c1;->e:Landroid/content/Context;

    .line 5
    :goto_1
    new-instance v6, Ls1/z/c/c0;

    invoke-direct {v6}, Ls1/z/c/c0;-><init>()V

    invoke-virtual {v0, v2}, Le/a/n/c1;->j(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v12

    iput-object v12, v6, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 6
    new-instance v12, Ls1/z/c/c0;

    invoke-direct {v12}, Ls1/z/c/c0;-><init>()V

    iget-object v13, v0, Le/a/n/c1;->g:Le/a/n/g1;

    invoke-virtual {v13, v2}, Le/a/n/g1;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v13

    iput-object v13, v12, Ls1/z/c/c0;->a:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v13

    goto :goto_2

    :cond_5
    const/4 v13, 0x0

    :goto_2
    if-nez v13, :cond_6

    iget-object v13, v12, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez v13, :cond_6

    return-object v3

    .line 8
    :cond_6
    iget-object v13, v0, Le/a/n/c1;->f:Le/a/b0/o/a;

    invoke-interface {v13, v7}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 9
    iget-object v13, v12, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz v13, :cond_8

    invoke-virtual {v0, v13}, Le/a/n/c1;->p(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Z

    move-result v13

    if-nez v13, :cond_7

    goto :goto_3

    :cond_7
    move v13, v11

    goto :goto_4

    :cond_8
    :goto_3
    move v13, v9

    :goto_4
    if-eqz v13, :cond_c

    .line 10
    iput-object v0, v4, Le/a/n/c1$c;->g:Ljava/lang/Object;

    iput-object v1, v4, Le/a/n/c1$c;->h:Ljava/lang/Object;

    iput-object v2, v4, Le/a/n/c1$c;->i:Ljava/lang/Object;

    iput-object v6, v4, Le/a/n/c1$c;->j:Ljava/lang/Object;

    iput-object v12, v4, Le/a/n/c1$c;->k:Ljava/lang/Object;

    iput v9, v4, Le/a/n/c1$c;->e:I

    invoke-virtual {v0, v4}, Le/a/n/c1;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v5, :cond_9

    return-object v5

    :cond_9
    move-object/from16 v16, v6

    move-object v6, v2

    move-object v2, v0

    .line 11
    :goto_5
    new-instance v9, Ls1/z/c/y;

    invoke-direct {v9}, Ls1/z/c/y;-><init>()V

    iput-boolean v11, v9, Ls1/z/c/y;->a:Z

    .line 12
    iget-object v15, v2, Le/a/n/c1;->d:Ls1/w/f;

    new-instance v14, Le/a/n/c1$d;

    const/16 v20, 0x0

    move-object v13, v14

    move-object v10, v14

    move-object v14, v2

    move-object v11, v15

    move-object v15, v1

    move-object/from16 v17, v12

    move-object/from16 v18, v6

    move-object/from16 v19, v9

    invoke-direct/range {v13 .. v20}, Le/a/n/c1$d;-><init>(Le/a/n/c1;Landroidx/fragment/app/Fragment;Ls1/z/c/c0;Ls1/z/c/c0;Landroid/content/Context;Ls1/z/c/y;Ls1/w/d;)V

    iput-object v2, v4, Le/a/n/c1$c;->g:Ljava/lang/Object;

    iput-object v1, v4, Le/a/n/c1$c;->h:Ljava/lang/Object;

    iput-object v6, v4, Le/a/n/c1$c;->i:Ljava/lang/Object;

    iput-object v12, v4, Le/a/n/c1$c;->j:Ljava/lang/Object;

    iput-object v9, v4, Le/a/n/c1$c;->k:Ljava/lang/Object;

    iput v8, v4, Le/a/n/c1$c;->e:I

    invoke-static {v11, v10, v4}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v5, :cond_a

    return-object v5

    :cond_a
    move-object v4, v2

    move-object v5, v12

    .line 13
    :goto_6
    iget-boolean v2, v9, Ls1/z/c/y;->a:Z

    if-eqz v2, :cond_b

    .line 14
    iget-object v2, v4, Le/a/n/c1;->f:Le/a/b0/o/a;

    const/4 v8, 0x0

    invoke-interface {v2, v7, v8}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    move-object v12, v5

    move-object v2, v6

    goto :goto_7

    :cond_b
    return-object v3

    :cond_c
    move-object v4, v0

    .line 15
    :goto_7
    iget-object v5, v12, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz v5, :cond_f

    if-eqz v1, :cond_d

    .line 16
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_d

    move-object v2, v1

    :cond_d
    const-string v1, "parentFragment?.context ?: context"

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v1, v4, Le/a/n/c1;->g:Le/a/n/g1;

    invoke-virtual {v4}, Le/a/n/c1;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 18
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "context"

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scopes"

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    .line 20
    invoke-static {v1}, Ln3/g0/y;->checkArgument2(Z)V

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oauth2: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    .line 22
    new-instance v7, Lcom/google/common/base/Joiner;

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v7, v3}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    new-instance v3, Le/m/b/x/a/b/a/a/a/a;

    invoke-direct {v3, v2, v1}, Le/m/b/x/a/b/a/a/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "GoogleAccountCredential.\u2026ngOAuth2(context, scopes)"

    .line 26
    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v5}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->I()Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_e

    const/4 v10, 0x0

    goto :goto_8

    .line 28
    :cond_e
    iget-object v10, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_8
    iput-object v10, v3, Le/m/b/x/a/b/a/a/a/a;->c:Ljava/lang/String;

    .line 29
    iget-object v1, v4, Le/a/n/c1;->g:Le/a/n/g1;

    .line 30
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "httpRequestInitializer"

    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v2, Le/m/b/y/a/a$a;

    iget-object v5, v1, Le/a/n/g1;->b:Le/m/b/x/b/c0/e;

    iget-object v1, v1, Le/a/n/g1;->a:Le/m/b/x/c/j/a;

    invoke-direct {v2, v5, v1, v3}, Le/m/b/y/a/a$a;-><init>(Le/m/b/x/b/t;Le/m/b/x/c/c;Le/m/b/x/b/p;)V

    const-string v1, "Truecaller"

    .line 32
    iput-object v1, v2, Le/m/b/x/a/e/a$a;->g:Ljava/lang/String;

    .line 33
    new-instance v1, Le/m/b/y/a/a;

    invoke-direct {v1, v2}, Le/m/b/y/a/a;-><init>(Le/m/b/y/a/a$a;)V

    const-string v2, "Builder(netHttpTransport\u2026ame(\"Truecaller\").build()"

    .line 34
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object v1, v4, Le/a/n/c1;->a:Le/m/b/y/a/a;

    .line 36
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    :cond_f
    return-object v3
.end method

.method public c(Landroidx/fragment/app/Fragment;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/n/c1$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/n/c1$a;

    iget v1, v0, Le/a/n/c1$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/c1$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/c1$a;

    invoke-direct {v0, p0, p2}, Le/a/n/c1$a;-><init>(Le/a/n/c1;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/n/c1$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/c1$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/n/c1$a;->h:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/Fragment;

    iget-object v2, v0, Le/a/n/c1$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/n/c1;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Le/a/n/c1$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/n/c1$a;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/n/c1$a;->e:I

    invoke-virtual {p0, v0}, Le/a/n/c1;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    const/4 p2, 0x0

    .line 5
    iput-object p2, v0, Le/a/n/c1$a;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/n/c1$a;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/n/c1$a;->e:I

    invoke-virtual {v2, p1, v0}, Le/a/n/c1;->b(Landroidx/fragment/app/Fragment;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p2
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/n/c1;->c:Ls1/w/f;

    new-instance v1, Le/a/n/c1$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/n/c1$e;-><init>(Le/a/n/c1;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/backup/BackupResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p4, p0, Le/a/n/c1;->a:Le/m/b/y/a/a;

    if-eqz p4, :cond_0

    .line 2
    invoke-virtual {p0, p4, p1, p3}, Le/a/n/c1;->m(Le/m/b/y/a/a;Ljava/lang/String;Ljava/util/Map;)Ls1/k;

    move-result-object p1

    new-instance p3, Le/m/b/x/b/v;

    const-string v0, "application/octet-stream"

    invoke-direct {p3, v0, p2}, Le/m/b/x/b/v;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-virtual {p0, p4, p1, p3}, Le/a/n/c1;->r(Le/m/b/y/a/a;Ls1/k;Le/m/b/x/b/b;)Lcom/truecaller/backup/BackupResult;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorClient:Lcom/truecaller/backup/BackupResult;

    :goto_0
    return-object p1
.end method

.method public f(Ljava/lang/String;[BLs1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/backup/BackupResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Le/a/n/c1;->a:Le/m/b/y/a/a;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p3, p1, v0}, Le/a/n/c1;->m(Le/m/b/y/a/a;Ljava/lang/String;Ljava/util/Map;)Ls1/k;

    move-result-object p1

    .line 3
    new-instance v0, Le/m/b/x/b/c;

    .line 4
    array-length v1, p2

    const/4 v2, 0x0

    const-string v3, "application/json"

    invoke-direct {v0, v3, p2, v2, v1}, Le/m/b/x/b/c;-><init>(Ljava/lang/String;[BII)V

    .line 5
    invoke-virtual {p0, p3, p1, v0}, Le/a/n/c1;->r(Le/m/b/y/a/a;Ls1/k;Le/m/b/x/b/b;)Lcom/truecaller/backup/BackupResult;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorClient:Lcom/truecaller/backup/BackupResult;

    :goto_0
    return-object p1
.end method

.method public g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/n/c1;->a:Le/m/b/y/a/a;

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p0, p2, p1}, Le/a/n/c1;->k(Le/m/b/y/a/a;Ljava/lang/String;)Le/m/b/y/a/c/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/m/b/y/a/c/a;->o()Le/m/b/x/d/i;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-wide p1, p1, Le/m/b/x/d/i;->a:J

    .line 4
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0x0

    .line 6
    :goto_1
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method

.method public h(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/io/InputStream;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/n/c1;->a:Le/m/b/y/a/a;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p2, p1}, Le/a/n/c1;->k(Le/m/b/y/a/a;Ljava/lang/String;)Le/m/b/y/a/c/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Le/m/b/y/a/c/a;->n()Ljava/lang/String;

    move-result-object p1

    const-string v1, "it.id"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Le/a/n/d1;

    invoke-direct {v1, p1}, Le/a/n/d1;-><init>(Ljava/lang/String;)V

    .line 5
    :try_start_0
    invoke-virtual {v1, p2}, Le/a/n/d1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p0, p1}, Le/a/n/c1;->o(Ljava/lang/Exception;)V

    .line 7
    :goto_0
    check-cast v0, Ljava/io/InputStream;

    :cond_0
    return-object v0
.end method

.method public i(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/k<",
            "+",
            "Ljava/io/InputStream;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/n/c1;->a:Le/m/b/y/a/a;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p2, p1}, Le/a/n/c1;->k(Le/m/b/y/a/a;Ljava/lang/String;)Le/m/b/y/a/c/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Le/m/b/y/a/c/a;->n()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file.id"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Le/a/n/d1;

    invoke-direct {v2, v1}, Le/a/n/d1;-><init>(Ljava/lang/String;)V

    .line 5
    :try_start_0
    invoke-virtual {v2, p2}, Le/a/n/d1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 6
    invoke-virtual {p0, p2}, Le/a/n/c1;->o(Ljava/lang/Exception;)V

    move-object p2, v0

    .line 7
    :goto_0
    check-cast p2, Ljava/io/InputStream;

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p1}, Le/m/b/y/a/c/a;->m()Ljava/util/Map;

    move-result-object p1

    .line 9
    new-instance v0, Ls1/k;

    invoke-direct {v0, p2, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final j(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->l:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 2
    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {p0}, Le/a/n/c1;->l()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 3
    iget-object v3, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->a:Ljava/util/Set;

    .line 4
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->a:Ljava/util/Set;

    .line 5
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 8
    iget-object v1, p0, Le/a/n/c1;->g:Le/a/n/g1;

    const-string v2, "signInOptions"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "context"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    const-string p1, "GoogleSignIn.getClient(context, signInOptions)"

    .line 11
    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final k(Le/m/b/y/a/a;Ljava/lang/String;)Le/m/b/y/a/c/a;
    .locals 1

    .line 1
    new-instance v0, Le/a/n/c1$b;

    invoke-direct {v0, p0, p2}, Le/a/n/c1$b;-><init>(Le/a/n/c1;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Le/a/n/c1$b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p0, p1}, Le/a/n/c1;->o(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    .line 4
    :goto_0
    check-cast p1, Le/m/b/y/a/c/a;

    return-object p1
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/n/c1;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://www.googleapis.com/auth/drive.file"

    goto :goto_0

    :cond_0
    const-string v0, "https://www.googleapis.com/auth/drive.appdata"

    :goto_0
    return-object v0
.end method

.method public final m(Le/m/b/y/a/a;Ljava/lang/String;Ljava/util/Map;)Ls1/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/b/y/a/a;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Le/m/b/y/a/c/a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/n/c1;->k(Le/m/b/y/a/a;Ljava/lang/String;)Le/m/b/y/a/c/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Le/m/b/y/a/c/a;->n()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Le/m/b/y/a/c/a;

    invoke-direct {p2}, Le/m/b/y/a/c/a;-><init>()V

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p2, p3}, Le/m/b/y/a/c/a;->p(Ljava/util/Map;)Le/m/b/y/a/c/a;

    .line 4
    :cond_0
    new-instance p3, Ls1/k;

    invoke-direct {p3, p1, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 5
    new-instance v0, Le/m/b/y/a/c/a;

    invoke-direct {v0}, Le/m/b/y/a/c/a;-><init>()V

    .line 6
    invoke-virtual {v0, p2}, Le/m/b/y/a/c/a;->q(Ljava/lang/String;)Le/m/b/y/a/c/a;

    .line 7
    invoke-virtual {p0}, Le/a/n/c1;->n()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "appDataFolder"

    invoke-static {p2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Le/m/b/y/a/c/a;->r(Ljava/util/List;)Le/m/b/y/a/c/a;

    :goto_0
    if-eqz p3, :cond_3

    .line 8
    invoke-virtual {v0, p3}, Le/m/b/y/a/c/a;->p(Ljava/util/Map;)Le/m/b/y/a/c/a;

    .line 9
    :cond_3
    new-instance p3, Ls1/k;

    invoke-direct {p3, p1, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object p3
.end method

.method public final n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/n/c1;->f:Le/a/b0/o/a;

    const-string v1, "backupForceRootFolder"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final o(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Le/a/n/c1;->q(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Le/a/n/c1;->f:Le/a/b0/o/a;

    const-string v2, "backupSignInRequired"

    invoke-interface {v1, v2, v0}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    iget-object v0, p0, Le/a/n/c1;->f:Le/a/b0/o/a;

    const/4 v1, 0x0

    const-string v2, "backup_enabled"

    invoke-interface {v0, v2, v1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final p(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object v2, p0, Le/a/n/c1;->g:Le/a/n/g1;

    new-array v3, v0, [Lcom/google/android/gms/common/api/Scope;

    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {p0}, Le/a/n/c1;->l()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v1

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "scopes"

    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/common/api/Scope;

    .line 4
    new-instance v3, Ljava/util/HashSet;

    .line 5
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 6
    invoke-static {v3, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 7
    new-instance v2, Ljava/util/HashSet;

    iget-object p1, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->j:Ljava/util/List;

    .line 8
    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-interface {v2, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public final q(Ljava/lang/Exception;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Le/m/b/x/b/r;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Le/m/b/x/b/r;

    .line 3
    iget p1, p1, Le/m/b/x/b/r;->a:I

    const/16 v0, 0x191

    if-eq p1, v0, :cond_2

    const/16 v0, 0x193

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 4
    :cond_0
    instance-of p1, p1, Le/m/b/x/a/b/a/a/a/b;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public final r(Le/m/b/y/a/a;Ls1/k;Le/m/b/x/b/b;)Lcom/truecaller/backup/BackupResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/b/y/a/a;",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Le/m/b/y/a/c/a;",
            ">;",
            "Le/m/b/x/b/b;",
            ")",
            "Lcom/truecaller/backup/BackupResult;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/n/c1$f;

    invoke-direct {v0, p2, p3}, Le/a/n/c1$f;-><init>(Ls1/k;Le/m/b/x/b/b;)V

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Le/a/n/c1$f;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/backup/BackupResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p0, p1}, Le/a/n/c1;->o(Ljava/lang/Exception;)V

    .line 4
    invoke-virtual {p0, p1}, Le/a/n/c1;->q(Ljava/lang/Exception;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorCommit:Lcom/truecaller/backup/BackupResult;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorCommitInternet:Lcom/truecaller/backup/BackupResult;

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorCommit:Lcom/truecaller/backup/BackupResult;

    :goto_1
    return-object p1
.end method
