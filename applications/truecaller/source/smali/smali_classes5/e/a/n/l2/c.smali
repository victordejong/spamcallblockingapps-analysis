.class public final Le/a/n/l2/c;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/n/l2/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/n/l2/b;",
        ">;",
        "Le/a/n/l2/a;"
    }
.end annotation


# static fields
.field public static final p:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field public d:Z

.field public e:I

.field public final f:Ls1/w/f;

.field public final g:Ls1/w/f;

.field public final h:Le/a/n/m;

.field public final i:Le/a/u3/g;

.field public final j:Le/a/n/d2;

.field public final k:Le/a/b0/o/a;

.field public final l:Le/a/p5/c;

.field public final m:Le/a/n/u;

.field public final n:Le/a/q2/a;

.field public final o:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Le/a/n/l2/c;->p:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/n/m;Le/a/u3/g;Le/a/n/d2;Le/a/b0/o/a;Le/a/p5/c;Le/a/n/u;Le/a/q2/a;J)V
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
    .param p3    # Le/a/n/m;
        .annotation runtime Ljavax/inject/Named;
            value = "V2"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsBackupManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupRestApi"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/n/l2/c;->f:Ls1/w/f;

    iput-object p2, p0, Le/a/n/l2/c;->g:Ls1/w/f;

    iput-object p3, p0, Le/a/n/l2/c;->h:Le/a/n/m;

    iput-object p4, p0, Le/a/n/l2/c;->i:Le/a/u3/g;

    iput-object p5, p0, Le/a/n/l2/c;->j:Le/a/n/d2;

    iput-object p6, p0, Le/a/n/l2/c;->k:Le/a/b0/o/a;

    iput-object p7, p0, Le/a/n/l2/c;->l:Le/a/p5/c;

    iput-object p8, p0, Le/a/n/l2/c;->m:Le/a/n/u;

    iput-object p9, p0, Le/a/n/l2/c;->n:Le/a/q2/a;

    iput-wide p10, p0, Le/a/n/l2/c;->o:J

    return-void
.end method


# virtual methods
.method public final synthetic Ij(Ls1/w/d;)Ljava/lang/Object;
    .locals 10
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

    instance-of v0, p1, Le/a/n/l2/c$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/n/l2/c$a;

    iget v1, v0, Le/a/n/l2/c$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/l2/c$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/l2/c$a;

    invoke-direct {v0, p0, p1}, Le/a/n/l2/c$a;-><init>(Le/a/n/l2/c;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/n/l2/c$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/l2/c$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/n/l2/c$a;->g:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/backup/BackupResult;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-wide v4, v0, Le/a/n/l2/c$a;->h:J

    iget-object v2, v0, Le/a/n/l2/c$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/n/l2/c;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/n/l2/c;->l:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v5

    .line 5
    iput-object p0, v0, Le/a/n/l2/c$a;->g:Ljava/lang/Object;

    iput-wide v5, v0, Le/a/n/l2/c$a;->h:J

    iput v4, v0, Le/a/n/l2/c$a;->e:I

    invoke-virtual {p0, v0}, Le/a/n/l2/c;->Oj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    move-wide v4, v5

    .line 6
    :goto_1
    check-cast p1, Lcom/truecaller/backup/BackupResult;

    .line 7
    iget-object v6, v2, Le/a/n/l2/c;->l:Le/a/p5/c;

    invoke-interface {v6}, Le/a/p5/c;->c()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 8
    invoke-virtual {v2, p1, v6, v7}, Le/a/n/l2/c;->Jj(Lcom/truecaller/backup/BackupResult;J)V

    const-wide/16 v4, 0x0

    .line 9
    iget-wide v8, v2, Le/a/n/l2/c;->o:J

    sub-long/2addr v8, v6

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 10
    iput-object p1, v0, Le/a/n/l2/c$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/n/l2/c$a;->e:I

    invoke-static {v4, v5, v0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, p1

    :goto_2
    return-object v0
.end method

.method public final Jj(Lcom/truecaller/backup/BackupResult;J)V
    .locals 12

    .line 1
    iget-object v0, p0, Le/a/n/l2/c;->k:Le/a/b0/o/a;

    const-string v1, "key_backup_frequency_hours"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2
    iget-boolean v2, p0, Le/a/n/l2/c;->d:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Trigger;->MANUAL:Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Trigger;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Trigger;->SCHEDULED:Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Trigger;

    :goto_0
    move-object v9, v2

    .line 4
    iget v2, p0, Le/a/n/l2/c;->e:I

    const-string v3, "result"

    .line 5
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "trigger"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v11, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;

    sget-object v4, Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Type;->BACKUP:Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Type;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v3, v11

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v3 .. v10}, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;-><init>(Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Type;Lcom/truecaller/backup/BackupResult;JLjava/lang/Long;Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Trigger;Ljava/lang/Integer;)V

    .line 7
    iget-object p1, p0, Le/a/n/l2/c;->n:Le/a/q2/a;

    invoke-static {v11, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public Kj(ZI)Lcom/truecaller/backup/worker/BackupWorkResult;
    .locals 5

    .line 1
    iput-boolean p1, p0, Le/a/n/l2/c;->d:Z

    .line 2
    iput p2, p0, Le/a/n/l2/c;->e:I

    const-wide/16 v0, 0x0

    const/4 v2, 0x5

    if-lt p2, v2, :cond_0

    .line 3
    sget-object p1, Lcom/truecaller/backup/BackupResult;->MaxRunAttemptReached:Lcom/truecaller/backup/BackupResult;

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Le/a/n/l2/c;->Jj(Lcom/truecaller/backup/BackupResult;J)V

    .line 5
    sget-object p1, Lcom/truecaller/backup/worker/BackupWorkResult;->SUCCESS:Lcom/truecaller/backup/worker/BackupWorkResult;

    return-object p1

    .line 6
    :cond_0
    sget-object p2, Le/a/n/l2/c;->p:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    sget-object p1, Lcom/truecaller/backup/worker/BackupWorkResult;->SUCCESS:Lcom/truecaller/backup/worker/BackupWorkResult;

    return-object p1

    .line 8
    :cond_1
    :try_start_0
    iget-object v2, p0, Le/a/n/l2/c;->h:Le/a/n/m;

    invoke-interface {v2}, Le/a/n/m;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 9
    sget-object p1, Lcom/truecaller/backup/worker/BackupWorkResult;->SUCCESS:Lcom/truecaller/backup/worker/BackupWorkResult;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 11
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Le/a/u2/a/a;->getCoroutineContext()Ls1/w/f;

    move-result-object v2

    new-instance v3, Le/a/n/l2/c$b;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Le/a/n/l2/c$b;-><init>(Le/a/n/l2/c;ZLs1/w/d;)V

    invoke-static {v2, v3}, Ls1/a/a/a/v0/f/d;->b3(Ls1/w/f;Ls1/z/b/p;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/backup/worker/BackupWorkResult;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 12
    :try_start_2
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 13
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorWorker:Lcom/truecaller/backup/BackupResult;

    .line 14
    invoke-virtual {p0, p1, v0, v1}, Le/a/n/l2/c;->Jj(Lcom/truecaller/backup/BackupResult;J)V

    .line 15
    sget-object p1, Lcom/truecaller/backup/worker/BackupWorkResult;->RETRY:Lcom/truecaller/backup/worker/BackupWorkResult;

    goto :goto_0

    .line 16
    :catch_1
    sget-object p1, Lcom/truecaller/backup/worker/BackupWorkResult;->SUCCESS:Lcom/truecaller/backup/worker/BackupWorkResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :goto_0
    sget-object p2, Le/a/n/l2/c;->p:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_1
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :goto_2
    sget-object p2, Le/a/n/l2/c;->p:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final synthetic Lj(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p1, Le/a/n/l2/c$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/n/l2/c$c;

    iget v1, v0, Le/a/n/l2/c$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/l2/c$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/l2/c$c;

    invoke-direct {v0, p0, p1}, Le/a/n/l2/c$c;-><init>(Le/a/n/l2/c;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/n/l2/c$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/l2/c$c;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-boolean p1, p0, Le/a/n/l2/c;->d:Z

    if-eqz p1, :cond_5

    .line 5
    iput v4, v0, Le/a/n/l2/c$c;->e:I

    invoke-virtual {p0, v0}, Le/a/n/l2/c;->Mj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p1, Lcom/truecaller/backup/BackupResult;

    goto :goto_3

    .line 6
    :cond_5
    iput v3, v0, Le/a/n/l2/c$c;->e:I

    invoke-virtual {p0, v0}, Le/a/n/l2/c;->Nj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 7
    :cond_6
    :goto_2
    check-cast p1, Lcom/truecaller/backup/BackupResult;

    :goto_3
    return-object p1
.end method

.method public final synthetic Mj(Ls1/w/d;)Ljava/lang/Object;
    .locals 12
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

    instance-of v0, p1, Le/a/n/l2/c$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/n/l2/c$d;

    iget v1, v0, Le/a/n/l2/c$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/l2/c$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/l2/c$d;

    invoke-direct {v0, p0, p1}, Le/a/n/l2/c$d;-><init>(Le/a/n/l2/c;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/n/l2/c$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/l2/c$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

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
    iget-object p1, p0, Le/a/n/l2/c;->k:Le/a/b0/o/a;

    const-wide/16 v4, 0x0

    const-string v2, "key_backup_last_success"

    invoke-interface {p1, v2, v4, v5}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 5
    iget-object p1, p0, Le/a/n/l2/c;->l:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v6

    sub-long v8, v6, v4

    .line 6
    sget-wide v10, Le/a/n/l2/d;->a:J

    cmp-long p1, v8, v10

    if-gez p1, :cond_3

    cmp-long p1, v4, v6

    if-gtz p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 7
    sget-object p1, Lcom/truecaller/backup/BackupResult;->Skipped:Lcom/truecaller/backup/BackupResult;

    goto :goto_3

    .line 8
    :cond_4
    iput v3, v0, Le/a/n/l2/c$d;->e:I

    invoke-virtual {p0, v0}, Le/a/n/l2/c;->Ij(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 9
    :cond_5
    :goto_2
    check-cast p1, Lcom/truecaller/backup/BackupResult;

    :goto_3
    return-object p1
.end method

.method public final synthetic Nj(Ls1/w/d;)Ljava/lang/Object;
    .locals 12
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

    instance-of v0, p1, Le/a/n/l2/c$e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/n/l2/c$e;

    iget v1, v0, Le/a/n/l2/c$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/l2/c$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/l2/c$e;

    invoke-direct {v0, p0, p1}, Le/a/n/l2/c$e;-><init>(Le/a/n/l2/c;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/n/l2/c$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/l2/c$e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

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
    iget-object p1, p0, Le/a/n/l2/c;->k:Le/a/b0/o/a;

    const-wide/16 v4, 0x0

    const-string v2, "key_backup_frequency_hours"

    invoke-interface {p1, v2, v4, v5}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long p1, v6, v4

    if-gtz p1, :cond_3

    .line 5
    sget-object p1, Lcom/truecaller/backup/BackupResult;->Skipped:Lcom/truecaller/backup/BackupResult;

    return-object p1

    .line 6
    :cond_3
    iget-object p1, p0, Le/a/n/l2/c;->k:Le/a/b0/o/a;

    const-string v2, "key_backup_last_success"

    invoke-interface {p1, v2, v4, v5}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 7
    iget-object p1, p0, Le/a/n/l2/c;->l:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v8

    sub-long v10, v8, v4

    .line 8
    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    cmp-long p1, v10, v6

    if-gez p1, :cond_4

    cmp-long p1, v4, v8

    if-gtz p1, :cond_4

    move p1, v3

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    .line 9
    sget-object p1, Lcom/truecaller/backup/BackupResult;->Skipped:Lcom/truecaller/backup/BackupResult;

    goto :goto_3

    .line 10
    :cond_5
    iput v3, v0, Le/a/n/l2/c$e;->e:I

    invoke-virtual {p0, v0}, Le/a/n/l2/c;->Ij(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 11
    :cond_6
    :goto_2
    check-cast p1, Lcom/truecaller/backup/BackupResult;

    :goto_3
    return-object p1
.end method

.method public final synthetic Oj(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p1, Le/a/n/l2/c$f;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/n/l2/c$f;

    iget v1, v0, Le/a/n/l2/c$f;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/l2/c$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/l2/c$f;

    invoke-direct {v0, p0, p1}, Le/a/n/l2/c$f;-><init>(Le/a/n/l2/c;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/n/l2/c$f;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/l2/c$f;->e:I

    packed-switch v2, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/a/n/l2/c$f;->h:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/backup/BackupResult;

    iget-object v0, v0, Le/a/n/l2/c$f;->g:Ljava/lang/Object;

    check-cast v0, Le/a/n/l2/c;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    iget-object v2, v0, Le/a/n/l2/c$f;->h:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/backup/BackupResult;

    iget-object v3, v0, Le/a/n/l2/c$f;->g:Ljava/lang/Object;

    check-cast v3, Le/a/n/l2/c;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_2
    iget-object v2, v0, Le/a/n/l2/c$f;->g:Ljava/lang/Object;

    check-cast v2, Le/a/n/l2/c;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_3
    iget-object v2, v0, Le/a/n/l2/c$f;->g:Ljava/lang/Object;

    check-cast v2, Le/a/n/l2/c;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_4
    iget-object v2, v0, Le/a/n/l2/c$f;->g:Ljava/lang/Object;

    check-cast v2, Le/a/n/l2/c;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_5
    iget-object v2, v0, Le/a/n/l2/c$f;->g:Ljava/lang/Object;

    check-cast v2, Le/a/n/l2/c;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/n/l2/b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/n/l2/b;->j()V

    .line 5
    :cond_1
    iget-boolean p1, p0, Le/a/n/l2/c;->d:Z

    if-eqz p1, :cond_2

    .line 6
    sget p1, Lcom/truecaller/backup/R$string;->backup_notification_backing_up:I

    iput-object p0, v0, Le/a/n/l2/c$f;->g:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v0, Le/a/n/l2/c$f;->e:I

    invoke-virtual {p0, p1, v0}, Le/a/n/l2/c;->Qj(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    move-object v2, p0

    .line 7
    :goto_1
    iget-object p1, v2, Le/a/n/l2/c;->i:Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->e()Le/a/u3/i;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/i;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, v2, Le/a/n/l2/c;->h:Le/a/n/m;

    iput-object v2, v0, Le/a/n/l2/c$f;->g:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v0, Le/a/n/l2/c$f;->e:I

    invoke-interface {p1, v0}, Le/a/n/m;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_2
    check-cast p1, Lcom/truecaller/backup/BackupResult;

    goto :goto_4

    .line 9
    :cond_4
    iget-object p1, v2, Le/a/n/l2/c;->h:Le/a/n/m;

    iput-object v2, v0, Le/a/n/l2/c$f;->g:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, v0, Le/a/n/l2/c$f;->e:I

    invoke-interface {p1, v0}, Le/a/n/m;->i(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 10
    :cond_5
    :goto_3
    check-cast p1, Lcom/truecaller/backup/BackupResult;

    .line 11
    :goto_4
    sget-object v3, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    if-ne p1, v3, :cond_7

    .line 12
    iget-object p1, v2, Le/a/n/l2/c;->j:Le/a/n/d2;

    iput-object v2, v0, Le/a/n/l2/c$f;->g:Ljava/lang/Object;

    const/4 v3, 0x4

    iput v3, v0, Le/a/n/l2/c$f;->e:I

    invoke-interface {p1, v0}, Le/a/n/d2;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_5
    check-cast p1, Lcom/truecaller/backup/BackupResult;

    :cond_7
    move-object v3, v2

    move-object v2, p1

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Full backup complete: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_9

    const/16 v4, 0x8

    if-eq p1, v4, :cond_8

    .line 15
    iget-object p1, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/n/l2/b;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Le/a/n/l2/b;->k()V

    goto :goto_8

    .line 16
    :cond_8
    iget-boolean p1, v3, Le/a/n/l2/c;->d:Z

    if-eqz p1, :cond_d

    sget p1, Lcom/truecaller/backup/R$string;->drive_connection_error:I

    iput-object v3, v0, Le/a/n/l2/c$f;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/n/l2/c$f;->h:Ljava/lang/Object;

    const/4 v4, 0x7

    iput v4, v0, Le/a/n/l2/c$f;->e:I

    invoke-virtual {v3, p1, v0}, Le/a/n/l2/c;->Qj(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    return-object v1

    .line 17
    :cond_9
    iput-object v3, v0, Le/a/n/l2/c$f;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/n/l2/c$f;->h:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, v0, Le/a/n/l2/c$f;->e:I

    invoke-virtual {v3, v0}, Le/a/n/l2/c;->Pj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    .line 18
    :cond_a
    :goto_6
    iget-boolean p1, v3, Le/a/n/l2/c;->d:Z

    if-eqz p1, :cond_d

    .line 19
    iget-object p1, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/n/l2/b;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Le/a/n/l2/b;->l()V

    .line 20
    :cond_b
    sget p1, Lcom/truecaller/backup/R$string;->backup_done_message:I

    iput-object v3, v0, Le/a/n/l2/c$f;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/n/l2/c$f;->h:Ljava/lang/Object;

    const/4 v4, 0x6

    iput v4, v0, Le/a/n/l2/c$f;->e:I

    invoke-virtual {v3, p1, v0}, Le/a/n/l2/c;->Qj(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    return-object v1

    :cond_c
    move-object v1, v2

    move-object v0, v3

    :goto_7
    move-object v3, v0

    move-object v2, v1

    .line 21
    :cond_d
    :goto_8
    iget-object p1, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/n/l2/b;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Le/a/n/l2/b;->f()V

    :cond_e
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic Pj(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p1, Le/a/n/l2/c$g;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/n/l2/c$g;

    iget v1, v0, Le/a/n/l2/c$g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/l2/c$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/l2/c$g;

    invoke-direct {v0, p0, p1}, Le/a/n/l2/c$g;-><init>(Le/a/n/l2/c;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/n/l2/c$g;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/l2/c$g;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

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
    :try_start_1
    iget-object p1, p0, Le/a/n/l2/c;->k:Le/a/b0/o/a;

    const-string v2, "key_backup_last_success"

    iget-object v4, p0, Le/a/n/l2/c;->l:Le/a/p5/c;

    invoke-interface {v4}, Le/a/p5/c;->c()J

    move-result-wide v4

    invoke-interface {p1, v2, v4, v5}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    .line 5
    iget-object p1, p0, Le/a/n/l2/c;->m:Le/a/n/u;

    iput v3, v0, Le/a/n/l2/c$g;->e:I

    invoke-interface {p1, v0}, Le/a/n/u;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_3

    return-object v1

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 7
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final synthetic Qj(ILs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/n/l2/c;->g:Ls1/w/f;

    new-instance v1, Le/a/n/l2/c$h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/n/l2/c$h;-><init>(Le/a/n/l2/c;ILs1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
