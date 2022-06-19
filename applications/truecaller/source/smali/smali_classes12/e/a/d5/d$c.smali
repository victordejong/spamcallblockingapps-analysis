.class public final Le/a/d5/d$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d5/d;->e(Ljava/util/List;ZLs1/z/b/p;)V
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
    c = "com.truecaller.startup_dialogs.StartupDialogRouterImpl$showIfNeeded$2"
    f = "StartupDialogRouter.kt"
    l = {
        0xbb,
        0x7c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I

.field public final synthetic j:Le/a/d5/d;

.field public final synthetic k:Ljava/util/List;

.field public final synthetic l:Z

.field public final synthetic m:Ls1/z/b/p;


# direct methods
.method public constructor <init>(Le/a/d5/d;Ljava/util/List;ZLs1/z/b/p;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d5/d$c;->j:Le/a/d5/d;

    iput-object p2, p0, Le/a/d5/d$c;->k:Ljava/util/List;

    iput-boolean p3, p0, Le/a/d5/d$c;->l:Z

    iput-object p4, p0, Le/a/d5/d$c;->m:Ls1/z/b/p;

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

    new-instance p1, Le/a/d5/d$c;

    iget-object v1, p0, Le/a/d5/d$c;->j:Le/a/d5/d;

    iget-object v2, p0, Le/a/d5/d$c;->k:Ljava/util/List;

    iget-boolean v3, p0, Le/a/d5/d$c;->l:Z

    iget-object v4, p0, Le/a/d5/d$c;->m:Ls1/z/b/p;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/d5/d$c;-><init>(Le/a/d5/d;Ljava/util/List;ZLs1/z/b/p;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/d5/d$c;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/d5/d$c;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d5/d$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d5/d$c;->i:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "StartupDialog"

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Le/a/d5/d$c;->h:Ljava/lang/Object;

    iget-object v8, p0, Le/a/d5/d$c;->g:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, p0, Le/a/d5/d$c;->f:Ljava/lang/Object;

    check-cast v9, Ln3/r/a/k;

    iget-object v10, p0, Le/a/d5/d$c;->e:Ljava/lang/Object;

    check-cast v10, Lq3/a/b3/c;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v2, p0, Le/a/d5/d$c;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v10, v2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d5/d$c;->j:Le/a/d5/d;

    .line 5
    iget-object p1, p1, Le/a/d5/d;->d:Lq3/a/b3/c;

    .line 6
    iput-object p1, p0, Le/a/d5/d$c;->e:Ljava/lang/Object;

    iput v5, p0, Le/a/d5/d$c;->i:I

    invoke-interface {p1, v6, p0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v10, p1

    .line 7
    :goto_0
    :try_start_1
    iget-object p1, p0, Le/a/d5/d$c;->j:Le/a/d5/d;

    .line 8
    iget-object p1, p1, Le/a/d5/d;->c:Ln3/b/a/h;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v7}, Landroidx/fragment/app/FragmentManager;->K(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v6

    :goto_1
    instance-of v2, p1, Ln3/r/a/k;

    if-nez v2, :cond_5

    move-object p1, v6

    :cond_5
    check-cast p1, Ln3/r/a/k;

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CurrentPotentialInstance "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    iget-object v2, p0, Le/a/d5/d$c;->k:Ljava/util/List;

    .line 11
    invoke-static {v2}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v2

    .line 12
    sget-object v8, Le/a/d5/d$c$a;->j:Le/a/d5/d$c$a;

    invoke-static {v2, v8}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v2

    .line 13
    check-cast v2, Ls1/e0/c0;

    .line 14
    new-instance v8, Ls1/e0/c0$a;

    invoke-direct {v8, v2}, Ls1/e0/c0$a;-><init>(Ls1/e0/c0;)V

    move-object v9, p1

    move-object p1, p0

    .line 15
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Le/a/d5/b;

    iget-boolean v12, p1, Le/a/d5/d$c;->l:Z

    if-nez v12, :cond_6

    invoke-interface {v11}, Le/a/d5/b;->g()Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_6
    iput-object v10, p1, Le/a/d5/d$c;->e:Ljava/lang/Object;

    iput-object v9, p1, Le/a/d5/d$c;->f:Ljava/lang/Object;

    iput-object v8, p1, Le/a/d5/d$c;->g:Ljava/lang/Object;

    iput-object v2, p1, Le/a/d5/d$c;->h:Ljava/lang/Object;

    iput v4, p1, Le/a/d5/d$c;->i:I

    invoke-interface {v11, p1}, Le/a/d5/b;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v11, v1, :cond_7

    return-object v1

    :cond_7
    move-object v13, v0

    move-object v0, p1

    move-object p1, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v2

    move-object v2, v1

    move-object v1, v13

    :goto_3
    :try_start_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    move-object p1, v0

    move-object v0, v1

    move-object v1, v2

    move v2, v5

    goto :goto_4

    :cond_8
    move-object p1, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    :cond_9
    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v2

    move v2, v3

    .line 16
    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_a

    move-object v9, v10

    move-object v10, v11

    goto :goto_5

    :cond_a
    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_b

    :cond_b
    move-object v8, v7

    move-object v7, v6

    :goto_5
    :try_start_3
    check-cast v7, Le/a/d5/b;

    if-eqz v7, :cond_13

    .line 18
    iget-object v1, p1, Le/a/d5/d$c;->m:Ls1/z/b/p;

    invoke-interface {v1, v7, v9}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    move-object v7, v6

    :goto_6
    if-eqz v7, :cond_13

    .line 21
    invoke-interface {v7}, Le/a/d5/b;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 22
    invoke-interface {v7}, Le/a/d5/b;->b()Lcom/truecaller/startup_dialogs/StartupDialogType;

    move-result-object v2

    .line 23
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_d

    goto :goto_7

    :cond_d
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :goto_7
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v11, "StartupDialogType"

    invoke-virtual {v4, v11, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 24
    iget-object v2, p1, Le/a/d5/d$c;->j:Le/a/d5/d;

    .line 25
    iget-object v2, v2, Le/a/d5/d;->c:Ln3/b/a/h;

    if-eqz v2, :cond_f

    .line 26
    invoke-virtual {v2}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 27
    new-instance v4, Ln3/r/a/a;

    invoke-direct {v4, v2}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    if-eqz v9, :cond_e

    .line 28
    invoke-static {v9}, Le/a/d5/f;->a(Ln3/r/a/k;)Lcom/truecaller/startup_dialogs/StartupDialogType;

    move-result-object v2

    .line 29
    invoke-interface {v7}, Le/a/d5/b;->b()Lcom/truecaller/startup_dialogs/StartupDialogType;

    move-result-object v11

    if-ne v2, v11, :cond_e

    invoke-virtual {v4, v9}, Ln3/r/a/a;->l(Landroidx/fragment/app/Fragment;)Ln3/r/a/f0;

    .line 30
    :cond_e
    invoke-virtual {v4, v3, v1, v8, v5}, Ln3/r/a/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 31
    invoke-virtual {v4}, Ln3/r/a/a;->i()V

    move-object v1, v0

    goto :goto_8

    :cond_f
    move-object v1, v6

    :goto_8
    if-eqz v1, :cond_10

    goto :goto_a

    .line 32
    :cond_10
    iget-object p1, p1, Le/a/d5/d$c;->j:Le/a/d5/d;

    .line 33
    iget-object v1, p1, Le/a/d5/d;->c:Ln3/b/a/h;

    if-eqz v1, :cond_12

    .line 34
    iget-object p1, p1, Le/a/d5/d;->g:Le/a/o5/x1;

    .line 35
    invoke-interface {p1}, Le/a/o5/x1;->a()Z

    move-result p1

    .line 36
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_9

    :cond_11
    move-object v1, v6

    :goto_9
    if-eqz v1, :cond_12

    .line 38
    invoke-interface {v7, v1}, Le/a/d5/b;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-interface {v7}, Le/a/d5/b;->b()Lcom/truecaller/startup_dialogs/StartupDialogType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/truecaller/startup_dialogs/StartupDialogType;->requestCode()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 39
    :cond_12
    :goto_a
    invoke-interface {v7}, Le/a/d5/b;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    :cond_13
    invoke-interface {v10, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    :catchall_1
    move-exception p1

    move-object v11, v10

    :goto_b
    invoke-interface {v11, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method
