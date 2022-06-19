.class public final Le/a/n/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/n/m;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/n/a1;

.field public final c:Le/a/n/v0;

.field public final d:Le/a/n/p0;

.field public final e:Le/a/n/e1;

.field public final f:Le/a/n/e;

.field public final g:Le/a/b0/e/l;

.field public final h:Le/a/b0/o/a;

.field public final i:Le/a/n/i0;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/n/a1;Le/a/n/v0;Le/a/n/p0;Le/a/n/e1;Le/a/n/e;Le/a/b0/e/l;Le/a/b0/o/a;Le/a/n/i0;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "Async"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "driveManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactsBackupManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callLogBackupManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filtersBackupManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupAvailabilityProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupUtil"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/n/n;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/n/n;->b:Le/a/n/a1;

    iput-object p3, p0, Le/a/n/n;->c:Le/a/n/v0;

    iput-object p4, p0, Le/a/n/n;->d:Le/a/n/p0;

    iput-object p5, p0, Le/a/n/n;->e:Le/a/n/e1;

    iput-object p6, p0, Le/a/n/n;->f:Le/a/n/e;

    iput-object p7, p0, Le/a/n/n;->g:Le/a/b0/e/l;

    iput-object p8, p0, Le/a/n/n;->h:Le/a/b0/o/a;

    iput-object p9, p0, Le/a/n/n;->i:Le/a/n/i0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/n/n;->b:Le/a/n/a1;

    invoke-interface {v0}, Le/a/n/a1;->a()V

    return-void
.end method

.method public b(Landroidx/fragment/app/Fragment;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
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

    .line 1
    iget-object v0, p0, Le/a/n/n;->b:Le/a/n/a1;

    invoke-interface {v0, p1, p2}, Le/a/n/a1;->b(Landroidx/fragment/app/Fragment;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroidx/fragment/app/Fragment;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
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

    .line 1
    iget-object v0, p0, Le/a/n/n;->b:Le/a/n/a1;

    invoke-interface {v0, p1, p2}, Le/a/n/a1;->c(Landroidx/fragment/app/Fragment;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
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
    iget-object v0, p0, Le/a/n/n;->b:Le/a/n/a1;

    invoke-interface {v0, p1}, Le/a/n/a1;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public e(Ljava/lang/String;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/z/b/p<",
            "-",
            "Lcom/truecaller/backup/BackupResult;",
            "-",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p1, p3, Le/a/n/n$f;

    if-eqz p1, :cond_0

    move-object p1, p3

    check-cast p1, Le/a/n/n$f;

    iget v0, p1, Le/a/n/n$f;->e:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p1, Le/a/n/n$f;->e:I

    goto :goto_0

    :cond_0
    new-instance p1, Le/a/n/n$f;

    invoke-direct {p1, p0, p3}, Le/a/n/n$f;-><init>(Le/a/n/n;Ls1/w/d;)V

    :goto_0
    iget-object p3, p1, Le/a/n/n$f;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p1, Le/a/n/n$f;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p2, p1, Le/a/n/n$f;->g:Ljava/lang/Object;

    check-cast p2, Ls1/z/b/p;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p2, p1, Le/a/n/n$f;->g:Ljava/lang/Object;

    iput v3, p1, Le/a/n/n$f;->e:I

    invoke-virtual {p0, v4, p1}, Le/a/n/n;->g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_4

    return-object v0

    .line 5
    :cond_4
    :goto_1
    check-cast p3, Lcom/truecaller/backup/BackupResult;

    .line 6
    iput-object v4, p1, Le/a/n/n$f;->g:Ljava/lang/Object;

    iput v2, p1, Le/a/n/n$f;->e:I

    invoke-interface {p2, p3, p1}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 7
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public f(JLs1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ls1/k<",
            "+",
            "Lcom/truecaller/backup/BackupResult;",
            "Lcom/truecaller/backup/account/BackedUpAccountData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "BackupManagerV2 should be used instead"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/backup/BackupResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/n/n$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/n/n$b;

    iget v1, v0, Le/a/n/n$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/n$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/n$b;

    invoke-direct {v0, p0, p2}, Le/a/n/n$b;-><init>(Le/a/n/n;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/n/n$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/n$b;->e:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_6

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/n/n$b;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/backup/BackupResult;

    iget-object v0, v0, Le/a/n/n$b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/backup/BackupResult;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/n/n$b;->i:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/backup/BackupResult;

    iget-object v2, v0, Le/a/n/n$b;->h:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Le/a/n/n$b;->g:Ljava/lang/Object;

    check-cast v4, Le/a/n/n;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object p1, v0, Le/a/n/n$b;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Le/a/n/n$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/n/n;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    :cond_4
    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    goto :goto_2

    :cond_5
    iget-object p1, v0, Le/a/n/n$b;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Le/a/n/n$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/n/n;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/n/n;->b:Le/a/n/a1;

    iput-object p0, v0, Le/a/n/n$b;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/n/n$b;->h:Ljava/lang/Object;

    iput v6, v0, Le/a/n/n$b;->e:I

    invoke-interface {p2, v7, v0}, Le/a/n/a1;->b(Landroidx/fragment/app/Fragment;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v2, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 5
    iget-object p2, v2, Le/a/n/n;->a:Ls1/w/f;

    new-instance v6, Le/a/n/n$c;

    invoke-direct {v6, v2, p1, v7}, Le/a/n/n$c;-><init>(Le/a/n/n;Ljava/lang/String;Ls1/w/d;)V

    iput-object v2, v0, Le/a/n/n$b;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/n/n$b;->h:Ljava/lang/Object;

    iput v5, v0, Le/a/n/n$b;->e:I

    invoke-static {p2, v6, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 6
    :goto_2
    check-cast p2, Lcom/truecaller/backup/BackupResult;

    .line 7
    iget-object v5, p1, Le/a/n/n;->a:Ls1/w/f;

    new-instance v6, Le/a/n/n$d;

    invoke-direct {v6, p1, v2, v7}, Le/a/n/n$d;-><init>(Le/a/n/n;Ljava/lang/String;Ls1/w/d;)V

    iput-object p1, v0, Le/a/n/n$b;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/n/n$b;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/n/n$b;->i:Ljava/lang/Object;

    iput v4, v0, Le/a/n/n$b;->e:I

    invoke-static {v5, v6, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_8

    return-object v1

    :cond_8
    move-object v8, v4

    move-object v4, p1

    move-object p1, p2

    move-object p2, v8

    .line 8
    :goto_3
    check-cast p2, Lcom/truecaller/backup/BackupResult;

    .line 9
    iget-object v5, v4, Le/a/n/n;->a:Ls1/w/f;

    new-instance v6, Le/a/n/n$e;

    invoke-direct {v6, v4, v2, v7}, Le/a/n/n$e;-><init>(Le/a/n/n;Ljava/lang/String;Ls1/w/d;)V

    iput-object p1, v0, Le/a/n/n$b;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/n/n$b;->h:Ljava/lang/Object;

    iput-object v7, v0, Le/a/n/n$b;->i:Ljava/lang/Object;

    iput v3, v0, Le/a/n/n$b;->e:I

    invoke-static {v5, v6, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_9

    return-object v1

    :cond_9
    move-object v8, v0

    move-object v0, p1

    move-object p1, p2

    move-object p2, v8

    .line 10
    :goto_4
    check-cast p2, Lcom/truecaller/backup/BackupResult;

    .line 11
    sget-object v1, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    if-eq v0, v1, :cond_a

    move-object p1, v0

    goto :goto_5

    :cond_a
    if-eq p1, v1, :cond_b

    goto :goto_5

    :cond_b
    if-eq p2, v1, :cond_c

    move-object p1, p2

    goto :goto_5

    :cond_c
    move-object p1, v1

    goto :goto_5

    .line 12
    :cond_d
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorNetwork:Lcom/truecaller/backup/BackupResult;

    :goto_5
    return-object p1
.end method

.method public h(JLs1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "BackupManagerV2 should be used instead"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/backup/BackupResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    return-object p1
.end method

.method public isEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/n/n;->f:Le/a/n/e;

    invoke-interface {v0}, Le/a/n/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/n/n;->g:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/n/n;->h:Le/a/b0/o/a;

    const-string v1, "backup_enabled"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p2, Le/a/n/n$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/n/n$a;

    iget v1, v0, Le/a/n/n$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/n$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/n$a;

    invoke-direct {v0, p0, p2}, Le/a/n/n$a;-><init>(Le/a/n/n;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/n/n$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/n$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p2, p0, Le/a/n/n;->i:Le/a/n/i0;

    sget-object v2, Lcom/truecaller/backup/BackupFile;->CALL_LOG:Lcom/truecaller/backup/BackupFile;

    invoke-interface {p2, v2, p1}, Le/a/n/i0;->a(Lcom/truecaller/backup/BackupFile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4
    iget-object p2, p0, Le/a/n/n;->b:Le/a/n/a1;

    iput v3, v0, Le/a/n/n$a;->e:I

    invoke-interface {p2, p1, v0}, Le/a/n/a1;->g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 5
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_2

    :cond_4
    const-wide/16 p1, 0x0

    .line 7
    :goto_2
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method

.method public k(Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/backup/BackupResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    return-object p1
.end method

.method public l()V
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/n/n;->a:Ls1/w/f;

    new-instance v3, Le/a/n/n$g;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Le/a/n/n$g;-><init>(Le/a/n/n;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    return-void
.end method
