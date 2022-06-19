.class public final Le/a/n/z1$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/z1;->Hj(Landroidx/fragment/app/Fragment;)Lq3/a/n0;
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
    c = "com.truecaller.backup.RestoreOnboardingPresenter$attemptRestoreBackup$1"
    f = "RestoreOnboardingPresenter.kt"
    l = {
        0x8d,
        0x95,
        0x96,
        0x99,
        0x9e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/n/z1;

.field public final synthetic h:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Le/a/n/z1;Landroidx/fragment/app/Fragment;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/n/z1$a;->g:Le/a/n/z1;

    iput-object p2, p0, Le/a/n/z1$a;->h:Landroidx/fragment/app/Fragment;

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

    new-instance v0, Le/a/n/z1$a;

    iget-object v1, p0, Le/a/n/z1$a;->g:Le/a/n/z1;

    iget-object v2, p0, Le/a/n/z1$a;->h:Landroidx/fragment/app/Fragment;

    invoke-direct {v0, v1, v2, p2}, Le/a/n/z1$a;-><init>(Le/a/n/z1;Landroidx/fragment/app/Fragment;Ls1/w/d;)V

    iput-object p1, v0, Le/a/n/z1$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/n/z1$a;

    iget-object v1, p0, Le/a/n/z1$a;->g:Le/a/n/z1;

    iget-object v2, p0, Le/a/n/z1$a;->h:Landroidx/fragment/app/Fragment;

    invoke-direct {v0, v1, v2, p2}, Le/a/n/z1$a;-><init>(Le/a/n/z1;Landroidx/fragment/app/Fragment;Ls1/w/d;)V

    iput-object p1, v0, Le/a/n/z1$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/n/z1$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Ls1/s;->a:Ls1/s;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v0, Le/a/n/z1$a;->f:I

    const-wide/16 v4, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_5

    if-eq v3, v10, :cond_4

    if-eq v3, v8, :cond_3

    if-eq v3, v9, :cond_2

    if-eq v3, v7, :cond_1

    if-ne v3, v6, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_3

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_1

    :cond_4
    iget-object v3, v0, Le/a/n/z1$a;->e:Ljava/lang/Object;

    check-cast v3, Lq3/a/i0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v12, p1

    goto :goto_0

    :cond_5
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v3, v0, Le/a/n/z1$a;->e:Ljava/lang/Object;

    check-cast v3, Lq3/a/i0;

    .line 4
    iget-object v12, v0, Le/a/n/z1$a;->g:Le/a/n/z1;

    sget-object v13, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->ClickedPositive:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    .line 5
    invoke-virtual {v12, v13}, Le/a/n/z1;->Lj(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V

    .line 6
    iget-object v12, v0, Le/a/n/z1$a;->g:Le/a/n/z1;

    .line 7
    iget-object v12, v12, Le/a/n/z1;->k:Le/a/p5/u;

    .line 8
    invoke-interface {v12}, Le/a/p5/u;->d()Z

    move-result v12

    if-nez v12, :cond_6

    .line 9
    iget-object v2, v0, Le/a/n/z1$a;->g:Le/a/n/z1;

    .line 10
    iget-object v13, v2, Le/a/n/z1;->h:Ls1/w/f;

    const/4 v14, 0x0

    .line 11
    new-instance v15, Le/a/n/z1$a$a;

    invoke-direct {v15, v0, v11}, Le/a/n/z1$a$a;-><init>(Le/a/n/z1$a;Ls1/w/d;)V

    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object v12, v3

    invoke-static/range {v12 .. v17}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-object v1

    .line 12
    :cond_6
    iget-object v12, v0, Le/a/n/z1$a;->g:Le/a/n/z1;

    .line 13
    iget-object v13, v12, Le/a/n/z1;->h:Ls1/w/f;

    const/4 v14, 0x0

    .line 14
    new-instance v15, Le/a/n/z1$a$b;

    invoke-direct {v15, v0, v11}, Le/a/n/z1$a$b;-><init>(Le/a/n/z1$a;Ls1/w/d;)V

    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object v12, v3

    invoke-static/range {v12 .. v17}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 15
    iget-object v12, v0, Le/a/n/z1$a;->g:Le/a/n/z1;

    .line 16
    iget-object v12, v12, Le/a/n/z1;->i:Le/a/n/m;

    .line 17
    iget-object v13, v0, Le/a/n/z1$a;->h:Landroidx/fragment/app/Fragment;

    iput-object v3, v0, Le/a/n/z1$a;->e:Ljava/lang/Object;

    iput v10, v0, Le/a/n/z1$a;->f:I

    invoke-interface {v12, v13, v0}, Le/a/n/m;->b(Landroidx/fragment/app/Fragment;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v2, :cond_7

    return-object v2

    :cond_7
    :goto_0
    move-object v13, v3

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_8

    .line 18
    iget-object v2, v0, Le/a/n/z1$a;->g:Le/a/n/z1;

    .line 19
    iget-object v14, v2, Le/a/n/z1;->h:Ls1/w/f;

    const/4 v15, 0x0

    .line 20
    new-instance v2, Le/a/n/z1$a$c;

    invoke-direct {v2, v0, v11}, Le/a/n/z1$a$c;-><init>(Le/a/n/z1$a;Ls1/w/d;)V

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v13 .. v18}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-object v1

    .line 21
    :cond_8
    iget-object v3, v0, Le/a/n/z1$a;->g:Le/a/n/z1;

    .line 22
    iget-object v3, v3, Le/a/n/z1;->i:Le/a/n/m;

    .line 23
    iput-object v11, v0, Le/a/n/z1$a;->e:Ljava/lang/Object;

    iput v8, v0, Le/a/n/z1$a;->f:I

    invoke-static {v3, v11, v0, v10, v11}, Le/m/d/y/n;->S(Le/a/n/m;Ljava/lang/String;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_9

    return-object v2

    :cond_9
    :goto_1
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    cmp-long v3, v12, v4

    if-nez v3, :cond_b

    .line 24
    iget-object v3, v0, Le/a/n/z1$a;->g:Le/a/n/z1;

    .line 25
    iget-object v3, v3, Le/a/n/z1;->j:Le/a/n/m;

    .line 26
    iput v9, v0, Le/a/n/z1$a;->f:I

    invoke-static {v3, v11, v0, v10, v11}, Le/m/d/y/n;->S(Le/a/n/m;Ljava/lang/String;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_a

    return-object v2

    :cond_a
    :goto_2
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    :cond_b
    cmp-long v3, v12, v4

    if-nez v3, :cond_d

    .line 27
    iget-object v3, v0, Le/a/n/z1$a;->g:Le/a/n/z1;

    iget-object v4, v0, Le/a/n/z1$a;->h:Landroidx/fragment/app/Fragment;

    iput v7, v0, Le/a/n/z1$a;->f:I

    invoke-virtual {v3, v4, v0}, Le/a/n/z1;->Ij(Landroidx/fragment/app/Fragment;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_c

    return-object v2

    :cond_c
    :goto_3
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_d

    return-object v1

    .line 28
    :cond_d
    iget-object v3, v0, Le/a/n/z1$a;->g:Le/a/n/z1;

    .line 29
    iget-object v3, v3, Le/a/n/z1;->p:Le/a/h5/y;

    .line 30
    new-instance v4, Lcom/truecaller/tcpermissions/PermissionRequestOptions;

    const v5, 0x7f12044d

    .line 31
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x0

    .line 32
    invoke-direct {v4, v5, v5, v7, v9}, Lcom/truecaller/tcpermissions/PermissionRequestOptions;-><init>(ZZLjava/lang/Integer;I)V

    iget-object v5, v0, Le/a/n/z1$a;->g:Le/a/n/z1;

    .line 33
    iget-object v5, v5, Le/a/n/z1;->q:Le/a/h5/w;

    .line 34
    invoke-interface {v5}, Le/a/h5/w;->q()[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput v6, v0, Le/a/n/z1$a;->f:I

    .line 35
    invoke-interface {v3, v4, v5, v0}, Le/a/h5/y;->b(Lcom/truecaller/tcpermissions/PermissionRequestOptions;[Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_e

    return-object v2

    .line 36
    :cond_e
    :goto_4
    check-cast v3, Le/a/h5/l;

    .line 37
    iget-boolean v2, v3, Le/a/h5/l;->a:Z

    .line 38
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Le/a/n/z1$a;->g:Le/a/n/z1;

    .line 39
    iget-object v3, v3, Le/a/n/z1;->f:Landroid/content/Context;

    .line 40
    const-class v4, Lcom/truecaller/backup/RestoreService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "Starting service RestoreService"

    .line 41
    invoke-static {v3}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    .line 42
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_f

    .line 43
    iget-object v3, v0, Le/a/n/z1$a;->g:Le/a/n/z1;

    .line 44
    iget-object v3, v3, Le/a/n/z1;->f:Landroid/content/Context;

    .line 45
    invoke-virtual {v3, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_5

    .line 46
    :cond_f
    iget-object v3, v0, Le/a/n/z1$a;->g:Le/a/n/z1;

    .line 47
    iget-object v3, v3, Le/a/n/z1;->f:Landroid/content/Context;

    .line 48
    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 49
    :goto_5
    iget-object v2, v0, Le/a/n/z1$a;->g:Le/a/n/z1;

    .line 50
    invoke-virtual {v2}, Le/a/n/z1;->Kj()V

    return-object v1
.end method
