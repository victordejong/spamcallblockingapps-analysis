.class public final Le/a/n/t$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/t;->wi(Landroidx/fragment/app/Fragment;)Lq3/a/n0;
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
    c = "com.truecaller.backup.BackupOnboardingPresenter$onBackupPressed$1"
    f = "BackupOnboardingPresenter.kt"
    l = {
        0x37,
        0x3d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/n/t;

.field public final synthetic h:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Le/a/n/t;Landroidx/fragment/app/Fragment;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/n/t$a;->g:Le/a/n/t;

    iput-object p2, p0, Le/a/n/t$a;->h:Landroidx/fragment/app/Fragment;

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

    new-instance v0, Le/a/n/t$a;

    iget-object v1, p0, Le/a/n/t$a;->g:Le/a/n/t;

    iget-object v2, p0, Le/a/n/t$a;->h:Landroidx/fragment/app/Fragment;

    invoke-direct {v0, v1, v2, p2}, Le/a/n/t$a;-><init>(Le/a/n/t;Landroidx/fragment/app/Fragment;Ls1/w/d;)V

    iput-object p1, v0, Le/a/n/t$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/n/t$a;

    iget-object v1, p0, Le/a/n/t$a;->g:Le/a/n/t;

    iget-object v2, p0, Le/a/n/t$a;->h:Landroidx/fragment/app/Fragment;

    invoke-direct {v0, v1, v2, p2}, Le/a/n/t$a;-><init>(Le/a/n/t;Landroidx/fragment/app/Fragment;Ls1/w/d;)V

    iput-object p1, v0, Le/a/n/t$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/n/t$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Ls1/s;->a:Ls1/s;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v0, Le/a/n/t$a;->f:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    iget-object v2, v0, Le/a/n/t$a;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/i0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    move-object v7, v2

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v3, v0, Le/a/n/t$a;->e:Ljava/lang/Object;

    check-cast v3, Lq3/a/i0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v7, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v3, v0, Le/a/n/t$a;->e:Ljava/lang/Object;

    check-cast v3, Lq3/a/i0;

    .line 4
    iget-object v7, v0, Le/a/n/t$a;->g:Le/a/n/t;

    sget-object v8, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->ClickedPositive:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    .line 5
    sget-object v9, Le/a/n/t;->l:[Ls1/a/l;

    .line 6
    invoke-virtual {v7, v8}, Le/a/n/t;->Ij(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;)V

    .line 7
    iget-object v7, v0, Le/a/n/t$a;->g:Le/a/n/t;

    .line 8
    iget-object v7, v7, Le/a/n/t;->f:Le/a/p5/u;

    .line 9
    invoke-interface {v7}, Le/a/p5/u;->d()Z

    move-result v7

    if-nez v7, :cond_3

    .line 10
    iget-object v2, v0, Le/a/n/t$a;->g:Le/a/n/t;

    .line 11
    iget-object v8, v2, Le/a/n/t;->d:Ls1/w/f;

    const/4 v9, 0x0

    .line 12
    new-instance v10, Le/a/n/t$a$a;

    invoke-direct {v10, v0, v6}, Le/a/n/t$a$a;-><init>(Le/a/n/t$a;Ls1/w/d;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v7, v3

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-object v1

    .line 13
    :cond_3
    iget-object v7, v0, Le/a/n/t$a;->g:Le/a/n/t;

    .line 14
    iget-object v8, v7, Le/a/n/t;->d:Ls1/w/f;

    const/4 v9, 0x0

    .line 15
    new-instance v10, Le/a/n/t$a$b;

    invoke-direct {v10, v0, v6}, Le/a/n/t$a$b;-><init>(Le/a/n/t$a;Ls1/w/d;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v7, v3

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 16
    iget-object v7, v0, Le/a/n/t$a;->g:Le/a/n/t;

    .line 17
    iget-object v7, v7, Le/a/n/t;->e:Le/a/n/m;

    .line 18
    iget-object v8, v0, Le/a/n/t$a;->h:Landroidx/fragment/app/Fragment;

    iput-object v3, v0, Le/a/n/t$a;->e:Ljava/lang/Object;

    iput v5, v0, Le/a/n/t$a;->f:I

    invoke-interface {v7, v8, v0}, Le/a/n/m;->b(Landroidx/fragment/app/Fragment;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_4

    return-object v2

    :cond_4
    :goto_0
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 19
    iget-object v8, v0, Le/a/n/t$a;->g:Le/a/n/t;

    .line 20
    iget-object v9, v8, Le/a/n/t;->d:Ls1/w/f;

    const/4 v10, 0x0

    .line 21
    new-instance v11, Le/a/n/t$a$c;

    invoke-direct {v11, v0, v6}, Le/a/n/t$a$c;-><init>(Le/a/n/t$a;Ls1/w/d;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object v8, v3

    invoke-static/range {v8 .. v13}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    if-nez v7, :cond_5

    return-object v1

    .line 22
    :cond_5
    iget-object v7, v0, Le/a/n/t$a;->g:Le/a/n/t;

    .line 23
    iget-object v7, v7, Le/a/n/t;->g:Le/a/b0/o/a;

    const-string v8, "restoreOnboardingShown"

    .line 24
    invoke-interface {v7, v8}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 25
    iget-object v7, v0, Le/a/n/t$a;->g:Le/a/n/t;

    .line 26
    iget-object v7, v7, Le/a/n/t;->e:Le/a/n/m;

    .line 27
    iput-object v3, v0, Le/a/n/t$a;->e:Ljava/lang/Object;

    iput v4, v0, Le/a/n/t$a;->f:I

    invoke-static {v7, v6, v0, v5, v6}, Le/m/d/y/n;->S(Le/a/n/m;Ljava/lang/String;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_6

    return-object v2

    :cond_6
    move-object v7, v3

    :goto_1
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_7

    .line 28
    iget-object v4, v0, Le/a/n/t$a;->g:Le/a/n/t;

    .line 29
    iget-object v4, v4, Le/a/n/t;->g:Le/a/b0/o/a;

    const-string v5, "key_drive_last_backup_timestamp"

    .line 30
    invoke-interface {v4, v5, v2, v3}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    .line 31
    iget-object v2, v0, Le/a/n/t$a;->g:Le/a/n/t;

    .line 32
    iget-object v8, v2, Le/a/n/t;->d:Ls1/w/f;

    const/4 v9, 0x0

    .line 33
    new-instance v10, Le/a/n/t$a$d;

    invoke-direct {v10, v0, v6}, Le/a/n/t$a$d;-><init>(Le/a/n/t$a;Ls1/w/d;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-object v1

    :cond_7
    move-object v13, v7

    goto :goto_2

    :cond_8
    move-object v13, v3

    .line 34
    :goto_2
    iget-object v2, v0, Le/a/n/t$a;->g:Le/a/n/t;

    .line 35
    iget-object v2, v2, Le/a/n/t;->h:Le/a/h5/w;

    .line 36
    invoke-interface {v2}, Le/a/h5/w;->j()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 37
    iget-object v2, v0, Le/a/n/t$a;->g:Le/a/n/t;

    .line 38
    invoke-virtual {v2}, Le/a/n/t;->Jj()V

    goto :goto_3

    .line 39
    :cond_9
    iget-object v2, v0, Le/a/n/t$a;->g:Le/a/n/t;

    .line 40
    iget-object v14, v2, Le/a/n/t;->d:Ls1/w/f;

    const/4 v15, 0x0

    .line 41
    new-instance v2, Le/a/n/t$a$e;

    invoke-direct {v2, v0, v6}, Le/a/n/t$a$e;-><init>(Le/a/n/t$a;Ls1/w/d;)V

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v13 .. v18}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :goto_3
    return-object v1
.end method
