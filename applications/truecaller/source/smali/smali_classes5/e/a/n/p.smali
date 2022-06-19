.class public final Le/a/n/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/n/m;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/n/r0;

.field public final c:Le/a/n/x0;

.field public final d:Le/a/n/r1;

.field public final e:Le/a/n/a1;

.field public final f:Ls1/w/f;

.field public final g:Le/a/n/e;

.field public final h:Le/a/b0/e/l;

.field public final i:Le/a/b0/o/a;

.field public final j:Le/a/n/i0;

.field public final k:Le/a/n/j2/a;

.field public final l:Le/a/n/l1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/n/r0;Le/a/n/x0;Le/a/n/r1;Le/a/n/a1;Ls1/w/f;Le/a/n/e;Le/a/b0/e/l;Le/a/b0/o/a;Le/a/n/i0;Le/a/n/j2/a;Le/a/n/l1;)V
    .locals 1
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callLogBackupManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactsBackupManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagingBackupManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "driveManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupAvailabilityProvider"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupUtil"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountBackupManager"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaBackupManager"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/n/p;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/n/p;->b:Le/a/n/r0;

    iput-object p3, p0, Le/a/n/p;->c:Le/a/n/x0;

    iput-object p4, p0, Le/a/n/p;->d:Le/a/n/r1;

    iput-object p5, p0, Le/a/n/p;->e:Le/a/n/a1;

    iput-object p6, p0, Le/a/n/p;->f:Ls1/w/f;

    iput-object p7, p0, Le/a/n/p;->g:Le/a/n/e;

    iput-object p8, p0, Le/a/n/p;->h:Le/a/b0/e/l;

    iput-object p9, p0, Le/a/n/p;->i:Le/a/b0/o/a;

    iput-object p10, p0, Le/a/n/p;->j:Le/a/n/i0;

    iput-object p11, p0, Le/a/n/p;->k:Le/a/n/j2/a;

    iput-object p12, p0, Le/a/n/p;->l:Le/a/n/l1;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/n/p;->e:Le/a/n/a1;

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
    iget-object v0, p0, Le/a/n/p;->e:Le/a/n/a1;

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
    iget-object v0, p0, Le/a/n/p;->e:Le/a/n/a1;

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
    iget-object v0, p0, Le/a/n/p;->e:Le/a/n/a1;

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
    .locals 2
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

    .line 1
    iget-object p1, p0, Le/a/n/p;->f:Ls1/w/f;

    new-instance v0, Le/a/n/p$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2, v1}, Le/a/n/p$f;-><init>(Le/a/n/p;Ljava/lang/String;Ls1/z/b/p;Ls1/w/d;)V

    invoke-static {p1, v0, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public f(JLs1/w/d;)Ljava/lang/Object;
    .locals 3
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
    iget-object v0, p0, Le/a/n/p;->f:Ls1/w/f;

    new-instance v1, Le/a/n/p$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Le/a/n/p$a;-><init>(Le/a/n/p;JLs1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
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

    .line 1
    iget-object p1, p0, Le/a/n/p;->f:Ls1/w/f;

    new-instance v0, Le/a/n/p$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Le/a/n/p$e;-><init>(Le/a/n/p;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {p1, v0, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(JLs1/w/d;)Ljava/lang/Object;
    .locals 3
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
    iget-object v0, p0, Le/a/n/p;->e:Le/a/n/a1;

    iget-object v1, p0, Le/a/n/p;->j:Le/a/n/i0;

    sget-object v2, Lcom/truecaller/backup/BackupFile;->ACCOUNT:Lcom/truecaller/backup/BackupFile;

    invoke-interface {v1, v2, p1, p2}, Le/a/n/i0;->b(Lcom/truecaller/backup/BackupFile;J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Le/a/n/a1;->g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
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
    iget-object v0, p0, Le/a/n/p;->f:Ls1/w/f;

    new-instance v1, Le/a/n/p$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/n/p$c;-><init>(Le/a/n/p;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/n/p;->g:Le/a/n/e;

    invoke-interface {v0}, Le/a/n/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/n/p;->h:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/n/p;->i:Le/a/b0/o/a;

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
    .locals 2
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
    iget-object v0, p0, Le/a/n/p;->j:Le/a/n/i0;

    sget-object v1, Lcom/truecaller/backup/BackupFile;->DB:Lcom/truecaller/backup/BackupFile;

    invoke-interface {v0, v1, p1}, Le/a/n/i0;->a(Lcom/truecaller/backup/BackupFile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/n/p;->e:Le/a/n/a1;

    invoke-interface {v0, p1, p2}, Le/a/n/a1;->g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 p1, 0x0

    .line 3
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method

.method public k(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
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
    iget-object v0, p0, Le/a/n/p;->f:Ls1/w/f;

    new-instance v1, Le/a/n/p$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/n/p$d;-><init>(Le/a/n/p;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public final m(Ljava/io/InputStream;)Lcom/truecaller/backup/BackupResult;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/n/p;->a:Landroid/content/Context;

    const-string v1, "tc.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v1, p0, Le/a/n/p;->a:Landroid/content/Context;

    const-string v2, "tc.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorDBDeletion:Lcom/truecaller/backup/BackupResult;

    return-object p1

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    .line 4
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 5
    :try_start_2
    invoke-static {p1, v1, v2, v3}, Le/q/f/a/d/a;->U(Ljava/io/InputStream;Ljava/io/OutputStream;II)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    :try_start_3
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    if-eqz p1, :cond_1

    .line 7
    :try_start_4
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 8
    :catch_1
    :cond_1
    sget-object p1, Le/a/m0/c1/l0;->f:Le/a/m0/c1/l0;

    const-class p1, Le/a/m0/c1/l0;

    monitor-enter p1

    .line 9
    :try_start_5
    sget-object v0, Le/a/b0/i/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 10
    sput-object v0, Le/a/m0/c1/l0;->f:Le/a/m0/c1/l0;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 11
    monitor-exit p1

    .line 12
    iget-object p1, p0, Le/a/n/p;->b:Le/a/n/r0;

    invoke-interface {p1}, Le/a/n/r0;->a()V

    .line 13
    iget-object p1, p0, Le/a/n/p;->c:Le/a/n/x0;

    invoke-interface {p1}, Le/a/n/x0;->a()V

    .line 14
    iget-object p1, p0, Le/a/n/p;->d:Le/a/n/r1;

    invoke-interface {p1}, Le/a/n/r1;->a()V

    .line 15
    sget-object p1, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    return-object p1

    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v2

    .line 17
    :try_start_6
    invoke-static {v2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 19
    sget-object v0, Lcom/truecaller/backup/BackupResult;->ErrorIO:Lcom/truecaller/backup/BackupResult;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 20
    :try_start_7
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    if-eqz p1, :cond_2

    .line 21
    :try_start_8
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    :cond_2
    return-object v0

    .line 22
    :goto_0
    :try_start_9
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    if-eqz p1, :cond_3

    .line 23
    :try_start_a
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 24
    :catch_6
    :cond_3
    throw v0

    .line 25
    :catch_7
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorDBFileNotFound:Lcom/truecaller/backup/BackupResult;

    return-object p1

    .line 26
    :catch_8
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorIO:Lcom/truecaller/backup/BackupResult;

    return-object p1

    .line 27
    :cond_4
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorDBFileNotFound:Lcom/truecaller/backup/BackupResult;

    return-object p1
.end method

.method public final synthetic n(ZLs1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/backup/BackupResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/n/p$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/n/p$b;

    iget v1, v0, Le/a/n/p$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/p$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/p$b;

    invoke-direct {v0, p0, p2}, Le/a/n/p$b;-><init>(Le/a/n/p;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/n/p$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/p$b;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/n/p$b;->g:Ljava/lang/Object;

    check-cast p1, Le/a/n/p;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    iget-boolean p1, v0, Le/a/n/p$b;->h:Z

    iget-object v2, v0, Le/a/n/p$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/n/p;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-boolean p1, v0, Le/a/n/p$b;->h:Z

    iget-object v2, v0, Le/a/n/p$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/n/p;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/n/p;->e:Le/a/n/a1;

    iput-object p0, v0, Le/a/n/p$b;->g:Ljava/lang/Object;

    iput-boolean p1, v0, Le/a/n/p$b;->h:Z

    iput v7, v0, Le/a/n/p$b;->e:I

    invoke-interface {p2, v3, v0}, Le/a/n/a1;->b(Landroidx/fragment/app/Fragment;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_7

    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorNetwork:Lcom/truecaller/backup/BackupResult;

    return-object p1

    .line 5
    :cond_7
    iget-object p2, v2, Le/a/n/p;->g:Le/a/n/e;

    invoke-interface {p2}, Le/a/n/e;->b()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 6
    iget-object p2, v2, Le/a/n/p;->k:Le/a/n/j2/a;

    iput-object v2, v0, Le/a/n/p$b;->g:Ljava/lang/Object;

    iput-boolean p1, v0, Le/a/n/p$b;->h:Z

    iput v6, v0, Le/a/n/p$b;->e:I

    check-cast p2, Le/a/n/j2/b;

    invoke-virtual {p2, v0}, Le/a/n/j2/b;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    :goto_2
    check-cast p2, Lcom/truecaller/backup/BackupResult;

    goto :goto_3

    .line 7
    :cond_9
    sget-object p2, Lcom/truecaller/backup/BackupResult;->Skipped:Lcom/truecaller/backup/BackupResult;

    .line 8
    :goto_3
    sget-object v6, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    if-eq p2, v6, :cond_a

    sget-object v6, Lcom/truecaller/backup/BackupResult;->Skipped:Lcom/truecaller/backup/BackupResult;

    if-ne p2, v6, :cond_e

    .line 9
    :cond_a
    iput-object v2, v0, Le/a/n/p$b;->g:Ljava/lang/Object;

    iput v5, v0, Le/a/n/p$b;->e:I

    .line 10
    iget-object p2, v2, Le/a/n/p;->j:Le/a/n/i0;

    invoke-interface {p2}, Le/a/n/i0;->c()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_c

    if-eqz p1, :cond_b

    .line 11
    iget-object p1, v2, Le/a/n/p;->j:Le/a/n/i0;

    new-instance v5, Le/a/n/o;

    invoke-direct {v5, v2, p2}, Le/a/n/o;-><init>(Le/a/n/p;Ljava/io/File;)V

    invoke-interface {p1, v5}, Le/a/n/i0;->h(Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/backup/BackupResult;

    goto :goto_4

    .line 12
    :cond_b
    invoke-virtual {v2, p2}, Le/a/n/p;->p(Ljava/io/File;)Lcom/truecaller/backup/BackupResult;

    move-result-object p1

    goto :goto_4

    .line 13
    :cond_c
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorDBFileNotFound:Lcom/truecaller/backup/BackupResult;

    :goto_4
    move-object p2, p1

    if-ne p2, v1, :cond_d

    return-object v1

    :cond_d
    move-object p1, v2

    .line 14
    :goto_5
    check-cast p2, Lcom/truecaller/backup/BackupResult;

    move-object v2, p1

    .line 15
    :cond_e
    sget-object p1, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    if-ne p2, p1, :cond_10

    .line 16
    iget-object p1, v2, Le/a/n/p;->l:Le/a/n/l1;

    iput-object v3, v0, Le/a/n/p$b;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/n/p$b;->e:I

    check-cast p1, Le/a/n/m1;

    invoke-virtual {p1, v0}, Le/a/n/m1;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_f

    return-object v1

    :cond_f
    :goto_6
    check-cast p2, Lcom/truecaller/backup/BackupResult;

    :cond_10
    return-object p2
.end method

.method public final o(Ljava/lang/String;ZLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
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
            "Lcom/truecaller/backup/BackupResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/n/p$g;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/n/p$g;

    iget v1, v0, Le/a/n/p$g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/p$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/p$g;

    invoke-direct {v0, p0, p4}, Le/a/n/p$g;-><init>(Le/a/n/p;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/n/p$g;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/p$g;->e:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    iget-object p1, v0, Le/a/n/p$g;->g:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_1
    iget-object p1, v0, Le/a/n/p$g;->g:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/backup/BackupResult;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_2
    iget-object p1, v0, Le/a/n/p$g;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/backup/BackupResult;

    iget-object p2, v0, Le/a/n/p$g;->g:Ljava/lang/Object;

    check-cast p2, Le/a/n/p;

    :try_start_0
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :pswitch_3
    iget-object p1, v0, Le/a/n/p$g;->i:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/backup/BackupResult;

    iget-object p2, v0, Le/a/n/p$g;->h:Ljava/lang/Object;

    check-cast p2, Ls1/z/b/p;

    iget-object p3, v0, Le/a/n/p$g;->g:Ljava/lang/Object;

    check-cast p3, Le/a/n/p;

    :try_start_1
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_4

    :pswitch_4
    iget-object p1, v0, Le/a/n/p$g;->i:Ljava/lang/Object;

    check-cast p1, Ljava/io/InputStream;

    iget-object p2, v0, Le/a/n/p$g;->h:Ljava/lang/Object;

    check-cast p2, Ls1/z/b/p;

    iget-object p3, v0, Le/a/n/p$g;->g:Ljava/lang/Object;

    check-cast p3, Le/a/n/p;

    :try_start_2
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v6, p3

    move-object p3, p2

    move-object p2, v6

    goto/16 :goto_3

    :catchall_1
    move-exception p1

    goto/16 :goto_7

    :pswitch_5
    iget-boolean p1, v0, Le/a/n/p$g;->j:Z

    iget-object p2, v0, Le/a/n/p$g;->h:Ljava/lang/Object;

    check-cast p2, Ls1/z/b/p;

    iget-object p3, v0, Le/a/n/p$g;->g:Ljava/lang/Object;

    check-cast p3, Le/a/n/p;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v6, p3

    move-object p3, p2

    move-object p2, v6

    goto :goto_2

    :pswitch_6
    iget-boolean p2, v0, Le/a/n/p$g;->j:Z

    iget-object p1, v0, Le/a/n/p$g;->i:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Ls1/z/b/p;

    iget-object p1, v0, Le/a/n/p$g;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Le/a/n/p$g;->g:Ljava/lang/Object;

    check-cast v2, Le/a/n/p;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p4, p0, Le/a/n/p;->e:Le/a/n/a1;

    iput-object p0, v0, Le/a/n/p$g;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/n/p$g;->h:Ljava/lang/Object;

    iput-object p3, v0, Le/a/n/p$g;->i:Ljava/lang/Object;

    iput-boolean p2, v0, Le/a/n/p$g;->j:Z

    const/4 v2, 0x1

    iput v2, v0, Le/a/n/p$g;->e:I

    invoke-interface {p4, v3, v0}, Le/a/n/a1;->b(Landroidx/fragment/app/Fragment;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_1

    return-object v1

    :cond_1
    move-object v2, p0

    :goto_1
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-nez p4, :cond_2

    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorNetwork:Lcom/truecaller/backup/BackupResult;

    return-object p1

    .line 5
    :cond_2
    iget-object p4, v2, Le/a/n/p;->j:Le/a/n/i0;

    sget-object v4, Lcom/truecaller/backup/BackupFile;->DB:Lcom/truecaller/backup/BackupFile;

    invoke-interface {p4, v4, p1}, Le/a/n/i0;->a(Lcom/truecaller/backup/BackupFile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 6
    iget-object p4, v2, Le/a/n/p;->e:Le/a/n/a1;

    iput-object v2, v0, Le/a/n/p$g;->g:Ljava/lang/Object;

    iput-object p3, v0, Le/a/n/p$g;->h:Ljava/lang/Object;

    iput-object v3, v0, Le/a/n/p$g;->i:Ljava/lang/Object;

    iput-boolean p2, v0, Le/a/n/p$g;->j:Z

    const/4 v4, 0x2

    iput v4, v0, Le/a/n/p$g;->e:I

    invoke-interface {p4, p1, v0}, Le/a/n/a1;->i(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    move p1, p2

    move-object p2, v2

    :goto_2
    check-cast p4, Ls1/k;

    if-eqz p4, :cond_d

    .line 7
    iget-object v2, p4, Ls1/k;->a:Ljava/lang/Object;

    .line 8
    check-cast v2, Ljava/io/InputStream;

    .line 9
    iget-object p4, p4, Ls1/k;->b:Ljava/lang/Object;

    .line 10
    check-cast p4, Ljava/util/Map;

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backup file properties: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p4, :cond_c

    const-string v4, "dbVersion"

    .line 12
    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-eqz p4, :cond_c

    invoke-static {p4}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p4

    if-eqz p4, :cond_c

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const/16 v4, 0xd2

    if-le p4, v4, :cond_4

    .line 13
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorNotSupportedDb:Lcom/truecaller/backup/BackupResult;

    return-object p1

    :cond_4
    if-eqz p1, :cond_a

    .line 14
    :try_start_3
    iget-object p1, p2, Le/a/n/p;->j:Le/a/n/i0;

    iput-object p2, v0, Le/a/n/p$g;->g:Ljava/lang/Object;

    iput-object p3, v0, Le/a/n/p$g;->h:Ljava/lang/Object;

    iput-object v2, v0, Le/a/n/p$g;->i:Ljava/lang/Object;

    const/4 p4, 0x3

    iput p4, v0, Le/a/n/p$g;->e:I

    invoke-interface {p1, v0}, Le/a/n/i0;->g(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object p1, v2

    .line 15
    :goto_3
    invoke-virtual {p2, p1}, Le/a/n/p;->m(Ljava/io/InputStream;)Lcom/truecaller/backup/BackupResult;

    move-result-object p1

    .line 16
    sget-object p4, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    if-ne p1, p4, :cond_7

    iget-object p4, p2, Le/a/n/p;->l:Le/a/n/l1;

    iput-object p2, v0, Le/a/n/p$g;->g:Ljava/lang/Object;

    iput-object p3, v0, Le/a/n/p$g;->h:Ljava/lang/Object;

    iput-object p1, v0, Le/a/n/p$g;->i:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, v0, Le/a/n/p$g;->e:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    check-cast p4, Le/a/n/m1;

    :try_start_4
    invoke-virtual {p4, v0}, Le/a/n/m1;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_6

    return-object v1

    :cond_6
    move-object v6, p3

    move-object p3, p2

    move-object p2, v6

    :goto_4
    move-object v6, p3

    move-object p3, p2

    move-object p2, v6

    .line 17
    :cond_7
    iput-object p2, v0, Le/a/n/p$g;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/n/p$g;->h:Ljava/lang/Object;

    iput-object v3, v0, Le/a/n/p$g;->i:Ljava/lang/Object;

    const/4 p4, 0x5

    iput p4, v0, Le/a/n/p$g;->e:I

    invoke-interface {p3, p1, v0}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p3, v1, :cond_8

    return-object v1

    .line 18
    :cond_8
    :goto_5
    iget-object p2, p2, Le/a/n/p;->j:Le/a/n/i0;

    iput-object p1, v0, Le/a/n/p$g;->g:Ljava/lang/Object;

    iput-object v3, v0, Le/a/n/p$g;->h:Ljava/lang/Object;

    const/4 p3, 0x6

    iput p3, v0, Le/a/n/p$g;->e:I

    invoke-interface {p2, v0}, Le/a/n/i0;->f(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_b

    return-object v1

    :goto_6
    move-object p3, p2

    :goto_7
    iget-object p2, p3, Le/a/n/p;->j:Le/a/n/i0;

    iput-object p1, v0, Le/a/n/p$g;->g:Ljava/lang/Object;

    iput-object v3, v0, Le/a/n/p$g;->h:Ljava/lang/Object;

    iput-object v3, v0, Le/a/n/p$g;->i:Ljava/lang/Object;

    const/4 p3, 0x7

    iput p3, v0, Le/a/n/p$g;->e:I

    invoke-interface {p2, v0}, Le/a/n/i0;->f(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    return-object v1

    :cond_9
    :goto_8
    throw p1

    .line 19
    :cond_a
    invoke-virtual {p2, v2}, Le/a/n/p;->m(Ljava/io/InputStream;)Lcom/truecaller/backup/BackupResult;

    move-result-object p1

    .line 20
    sget-object p3, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    if-ne p1, p3, :cond_b

    iget-object p2, p2, Le/a/n/p;->l:Le/a/n/l1;

    iput-object p1, v0, Le/a/n/p$g;->g:Ljava/lang/Object;

    iput-object v3, v0, Le/a/n/p$g;->h:Ljava/lang/Object;

    const/16 p3, 0x8

    iput p3, v0, Le/a/n/p$g;->e:I

    check-cast p2, Le/a/n/m1;

    invoke-virtual {p2, v0}, Le/a/n/m1;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_b

    return-object v1

    :cond_b
    :goto_9
    return-object p1

    .line 21
    :cond_c
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorPropertyRead:Lcom/truecaller/backup/BackupResult;

    return-object p1

    .line 22
    :cond_d
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorFile:Lcom/truecaller/backup/BackupResult;

    return-object p1

    .line 23
    :cond_e
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorFileName:Lcom/truecaller/backup/BackupResult;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final p(Ljava/io/File;)Lcom/truecaller/backup/BackupResult;
    .locals 4

    .line 1
    new-instance v0, Ls1/z/c/c0;

    invoke-direct {v0}, Ls1/z/c/c0;-><init>()V

    iget-object v1, p0, Le/a/n/p;->j:Le/a/n/i0;

    sget-object v2, Lcom/truecaller/backup/BackupFile;->DB:Lcom/truecaller/backup/BackupFile;

    const/4 v3, 0x0

    .line 2
    invoke-interface {v1, v2, v3}, Le/a/n/i0;->a(Lcom/truecaller/backup/BackupFile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3
    iput-object v1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 4
    new-instance v1, Ls1/z/c/c0;

    invoke-direct {v1}, Ls1/z/c/c0;-><init>()V

    .line 5
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 6
    iput-object v2, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 7
    :try_start_1
    new-instance p1, Le/a/n/p$h;

    invoke-direct {p1, p0, v0, v1, v3}, Le/a/n/p$h;-><init>(Le/a/n/p;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V

    const/4 v0, 0x1

    invoke-static {v3, p1, v0, v3}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/backup/BackupResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    iget-object v0, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 9
    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 10
    :catch_0
    :cond_0
    sget-object v0, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    if-eq p1, v0, :cond_1

    return-object p1

    .line 11
    :cond_1
    iget-object p1, p0, Le/a/n/p;->c:Le/a/n/x0;

    invoke-interface {p1}, Le/a/n/x0;->b()V

    return-object v0

    :catchall_0
    move-exception p1

    .line 12
    iget-object v0, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_2

    .line 13
    :try_start_3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 14
    :catch_1
    :cond_2
    throw p1

    .line 15
    :catch_2
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorDBFileNotFound:Lcom/truecaller/backup/BackupResult;

    return-object p1

    .line 16
    :cond_3
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorFileName:Lcom/truecaller/backup/BackupResult;

    return-object p1
.end method
