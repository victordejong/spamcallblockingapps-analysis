.class public final Le/a/n/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/n/i0;


# instance fields
.field public final a:Ls1/f0/h;

.field public final b:Ls1/w/f;

.field public final c:Ls1/w/f;

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/content/Context;

.field public final f:Le/a/b0/o/a;

.field public final g:Le/a/b0/e/r/a;

.field public final h:Le/a/q2/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Ljavax/inject/Provider;Landroid/content/Context;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/q2/a;)V
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
    .param p3    # Ljavax/inject/Provider;
        .annotation runtime Ljavax/inject/Named;
            value = "backupAppRestart"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Ls1/w/f;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/content/Context;",
            "Le/a/b0/o/a;",
            "Le/a/b0/e/r/a;",
            "Le/a/q2/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appRestartIntent"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/n/j0;->b:Ls1/w/f;

    iput-object p2, p0, Le/a/n/j0;->c:Ls1/w/f;

    iput-object p3, p0, Le/a/n/j0;->d:Ljavax/inject/Provider;

    iput-object p4, p0, Le/a/n/j0;->e:Landroid/content/Context;

    iput-object p5, p0, Le/a/n/j0;->f:Le/a/b0/o/a;

    iput-object p6, p0, Le/a/n/j0;->g:Le/a/b0/e/r/a;

    iput-object p7, p0, Le/a/n/j0;->h:Le/a/q2/a;

    .line 2
    new-instance p1, Ls1/f0/h;

    const-string p2, "^\\++"

    invoke-direct {p1, p2}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Le/a/n/j0;->a:Ls1/f0/h;

    return-void
.end method


# virtual methods
.method public O0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/n/j0;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->b(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->I()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(Lcom/truecaller/backup/BackupFile;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "backupFile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p2, p0, Le/a/n/j0;->g:Le/a/b0/e/r/a;

    const-string v0, "profileNumber"

    invoke-interface {p2, v0}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/a/n/j0;->a:Ls1/f0/h;

    const-string v2, ""

    invoke-virtual {v1, p2, v2}, Ls1/f0/h;->e(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/truecaller/backup/BackupFile;->getNameSuffix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/truecaller/backup/BackupFile;J)Ljava/lang/String;
    .locals 1

    const-string v0, "backupFile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/truecaller/backup/BackupFile;->getNameSuffix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/io/File;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/a/n/j0;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "cursor"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 6
    :catch_1
    :goto_0
    iget-object v0, p0, Le/a/n/j0;->e:Landroid/content/Context;

    const-string v1, "tc.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/n/j0;->e:Landroid/content/Context;

    invoke-static {}, Le/a/m0/c1/l0;->d()[Le/a/m0/c1/h0;

    move-result-object v1

    iget-object v2, p0, Le/a/n/j0;->h:Le/a/q2/a;

    invoke-static {v0, v1, v2}, Le/a/m0/c1/l0;->j(Landroid/content/Context;[Le/a/m0/c1/h0;Le/a/q2/a;)Le/a/m0/c1/l0;

    move-result-object v0

    const-string v1, "TruecallerDatabaseHelper\u2026ableHelpers(), analytics)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "TruecallerDatabaseHelper\u2026        .writableDatabase"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public e(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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

    .line 1
    iget-object v0, p0, Le/a/n/j0;->f:Le/a/b0/o/a;

    const-string v1, "key_backup_fetched_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2
    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/n/j0;->b:Ls1/w/f;

    new-instance v1, Le/a/n/j0$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/n/j0$a;-><init>(Le/a/n/j0;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Ls1/w/d;)Ljava/lang/Object;
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
    sget-object v0, Lq3/a/a2;->a:Lq3/a/a2;

    new-instance v1, Le/a/n/j0$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/n/j0$c;-><init>(Le/a/n/j0;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public g(Ls1/w/d;)Ljava/lang/Object;
    .locals 12
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

    instance-of v0, p1, Le/a/n/j0$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/n/j0$b;

    iget v1, v0, Le/a/n/j0$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/j0$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/j0$b;

    invoke-direct {v0, p0, p1}, Le/a/n/j0$b;-><init>(Le/a/n/j0;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/n/j0$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/j0$b;->e:I

    const-wide/16 v3, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    iget v2, v0, Le/a/n/j0$b;->i:I

    iget v7, v0, Le/a/n/j0$b;->h:I

    iget-object v8, v0, Le/a/n/j0$b;->g:Ljava/lang/Object;

    check-cast v8, Landroid/database/sqlite/SQLiteDatabase;

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
    iget v2, v0, Le/a/n/j0$b;->i:I

    iget v7, v0, Le/a/n/j0$b;->h:I

    iget-object v8, v0, Le/a/n/j0$b;->g:Ljava/lang/Object;

    check-cast v8, Landroid/database/sqlite/SQLiteDatabase;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Le/a/n/j0;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v7, 0x4

    move-object v8, p1

    move v11, v7

    move v7, v2

    move v2, v11

    :goto_1
    if-gt v7, v2, :cond_6

    .line 5
    :try_start_1
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    iput-object v8, v0, Le/a/n/j0$b;->g:Ljava/lang/Object;

    iput v7, v0, Le/a/n/j0$b;->h:I

    iput v2, v0, Le/a/n/j0$b;->i:I

    iput v6, v0, Le/a/n/j0$b;->e:I

    invoke-static {v9, v10, v0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 7
    :cond_4
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 8
    :catch_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    iput-object v8, v0, Le/a/n/j0$b;->g:Ljava/lang/Object;

    iput v7, v0, Le/a/n/j0$b;->h:I

    iput v2, v0, Le/a/n/j0$b;->i:I

    iput v5, v0, Le/a/n/j0$b;->e:I

    invoke-static {v9, v10, v0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    add-int/2addr v7, v6

    goto :goto_1

    .line 9
    :cond_6
    :goto_3
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 10
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public h(Ls1/z/b/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/z/b/a<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/n/j0;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3
    check-cast p1, Le/a/n/o;

    :try_start_0
    invoke-virtual {p1}, Le/a/n/o;->invoke()Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method
