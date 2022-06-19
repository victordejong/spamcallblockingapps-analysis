.class public final Lcom/truecaller/backup/worker/BackupWorker$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y2/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/backup/worker/BackupWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Le/a/y2/h;
    .locals 4

    .line 1
    new-instance v0, Le/a/y2/h;

    const-class v1, Lcom/truecaller/backup/worker/BackupWorker;

    invoke-static {v1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v1

    const-wide/16 v2, 0x1

    .line 2
    invoke-static {v2, v3}, Lw3/b/a/i;->a(J)Lw3/b/a/i;

    move-result-object v2

    const-string v3, "Duration.standardDays(1)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {v0, v1, v2}, Le/a/y2/h;-><init>(Ls1/a/c;Lw3/b/a/i;)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/backup/worker/BackupWorker$a;->b()Ln3/m0/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/y2/h;->f(Ln3/m0/q;)Le/a/y2/h;

    .line 5
    sget-object v1, Ln3/m0/a;->b:Ln3/m0/a;

    const-wide/16 v2, 0x2

    .line 6
    invoke-static {v2, v3}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    move-result-object v2

    const-string v3, "Duration.standardHours(2)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1, v2}, Le/a/y2/h;->d(Ln3/m0/a;Lw3/b/a/i;)Le/a/y2/h;

    return-object v0
.end method

.method public final b()Ln3/m0/q;
    .locals 3

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    const-string v1, "ApplicationBase.getAppBase()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object v0

    const-string v1, "ApplicationBase.getAppBase().commonGraph"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0}, Le/a/b0/c;->d()Le/a/b0/o/a;

    move-result-object v0

    const-string v1, "backupNetworkType"

    const/4 v2, 0x1

    .line 3
    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 4
    sget-object v0, Ln3/m0/q;->b:Ln3/m0/q;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Ln3/m0/q;->c:Ln3/m0/q;

    :goto_0
    return-object v0
.end method

.method public final c()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "backupNow"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ln3/m0/f;

    invoke-direct {v1, v0}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 4
    invoke-static {v1}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    const-string v0, "Data.Builder()\n         \u2026\n                .build()"

    .line 5
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    const-string v2, "WorkManager.getInstance(\u2026icationBase.getAppBase())"

    .line 8
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v2, Ln3/m0/r$a;

    const-class v3, Lcom/truecaller/backup/worker/BackupWorker;

    invoke-direct {v2, v3}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 10
    iget-object v3, v2, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v1, v3, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 11
    invoke-virtual {v2}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v1

    const-string v2, "OneTimeWorkRequest.Build\u2026\n                .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    check-cast v1, Ln3/m0/r;

    .line 13
    sget-object v2, Ln3/m0/h;->b:Ln3/m0/h;

    const-string v3, "OneTimeBackupWorker"

    invoke-virtual {v0, v3, v2, v1}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    return-void
.end method

.method public final d()V
    .locals 8

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    const-string v1, "WorkManager.getInstance(\u2026icationBase.getAppBase())"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ln3/m0/d$a;

    invoke-direct {v1}, Ln3/m0/d$a;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/backup/worker/BackupWorker$a;->b()Ln3/m0/q;

    move-result-object v2

    .line 6
    iput-object v2, v1, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 7
    new-instance v2, Ln3/m0/d;

    invoke-direct {v2, v1}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    const-string v1, "Constraints.Builder()\n  \u2026\n                .build()"

    .line 8
    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v1, Ln3/m0/g;->a:Ln3/m0/g;

    .line 10
    new-instance v3, Ln3/m0/u$a;

    const-class v4, Lcom/truecaller/backup/worker/BackupWorker;

    const-wide/16 v5, 0x1

    .line 11
    invoke-static {v5, v6}, Lw3/b/a/i;->a(J)Lw3/b/a/i;

    move-result-object v5

    const-string v6, "Duration.standardDays(1)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-wide v5, v5, Lw3/b/a/e0/f;->a:J

    .line 13
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v3, v4, v5, v6, v7}, Ln3/m0/u$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 14
    iget-object v4, v3, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v2, v4, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 15
    sget-object v2, Ln3/m0/a;->b:Ln3/m0/a;

    const-wide/16 v4, 0x2

    .line 16
    invoke-static {v4, v5}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    move-result-object v4

    const-string v5, "Duration.standardHours(2)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-wide v4, v4, Lw3/b/a/e0/f;->a:J

    .line 18
    invoke-virtual {v3, v2, v4, v5, v7}, Ln3/m0/z$a;->e(Ln3/m0/a;JLjava/util/concurrent/TimeUnit;)Ln3/m0/z$a;

    move-result-object v2

    check-cast v2, Ln3/m0/u$a;

    .line 19
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5, v3}, Ln3/m0/z$a;->f(JLjava/util/concurrent/TimeUnit;)Ln3/m0/z$a;

    move-result-object v2

    check-cast v2, Ln3/m0/u$a;

    .line 20
    invoke-virtual {v2}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v2

    check-cast v2, Ln3/m0/u;

    const-string v3, "BackupWorker"

    .line 21
    invoke-virtual {v0, v3, v1, v2}, Ln3/m0/c0/l;->h(Ljava/lang/String;Ln3/m0/g;Ln3/m0/u;)Ln3/m0/s;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "BackupWorker"

    return-object v0
.end method
