.class public final Le/a/n/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/n/l1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/n/a1;

.field public final c:Le/a/p5/a0;

.field public final d:Le/a/b0/o/a;

.field public final e:Le/a/b0/e/r/a;

.field public final f:Le/a/b0/q/b;

.field public final g:Le/a/n/n1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/n/a1;Le/a/p5/a0;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/b0/q/b;Le/a/n/n1;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "driveManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentStoreHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaBackupUtil"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/n/m1;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/n/m1;->b:Le/a/n/a1;

    iput-object p3, p0, Le/a/n/m1;->c:Le/a/p5/a0;

    iput-object p4, p0, Le/a/n/m1;->d:Le/a/b0/o/a;

    iput-object p5, p0, Le/a/n/m1;->e:Le/a/b0/e/r/a;

    iput-object p6, p0, Le/a/n/m1;->f:Le/a/b0/q/b;

    iput-object p7, p0, Le/a/n/m1;->g:Le/a/n/n1;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
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

    instance-of v0, p1, Le/a/n/m1$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/n/m1$a;

    iget v1, v0, Le/a/n/m1$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/m1$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/m1$a;

    invoke-direct {v0, p0, p1}, Le/a/n/m1$a;-><init>(Le/a/n/m1;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/n/m1$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/m1$a;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v2, v0, Le/a/n/m1$a;->j:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v3, v0, Le/a/n/m1$a;->i:Ljava/lang/Object;

    check-cast v3, Le/a/n/p1;

    iget-object v6, v0, Le/a/n/m1$a;->h:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, v0, Le/a/n/m1$a;->g:Ljava/lang/Object;

    check-cast v7, Le/a/n/m1;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/n/m1$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/n/m1;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/n/m1;->b:Le/a/n/a1;

    iput-object p0, v0, Le/a/n/m1$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/n/m1$a;->e:I

    invoke-interface {p1, v5, v0}, Le/a/n/a1;->b(Landroidx/fragment/app/Fragment;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorNetwork:Lcom/truecaller/backup/BackupResult;

    return-object p1

    .line 5
    :cond_5
    iget-object p1, v2, Le/a/n/m1;->g:Le/a/n/n1;

    .line 6
    iget-object v6, v2, Le/a/n/m1;->d:Le/a/b0/o/a;

    const-string v7, "backup_videos_enabled"

    invoke-interface {v6, v7}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    new-array v7, v4, [Ljava/lang/Integer;

    const/4 v8, 0x0

    .line 7
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v3

    .line 8
    check-cast p1, Le/a/n/o1;

    invoke-virtual {p1, v6, v3, v7}, Le/a/n/o1;->a(ZZ[Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 9
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v6, p1

    move-object v7, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Le/a/n/p1;

    .line 10
    :try_start_1
    invoke-virtual {v7, v3}, Le/a/n/m1;->d(Le/a/n/p1;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 11
    iget-object v2, v7, Le/a/n/m1;->f:Le/a/b0/q/b;

    invoke-interface {v2, p1}, Le/a/b0/q/b;->e(Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object v2

    .line 12
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    invoke-static {v2, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v7, Le/a/n/m1;->c:Le/a/p5/a0;

    invoke-interface {v2}, Le/a/p5/a0;->j()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 14
    :cond_6
    iget-object v2, v7, Le/a/n/m1;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_a

    .line 15
    :try_start_2
    iget-wide v8, v3, Le/a/n/p1;->a:J

    .line 16
    invoke-virtual {v7, v8, v9}, Le/a/n/m1;->c(J)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 17
    iget-object v8, v7, Le/a/n/m1;->b:Le/a/n/a1;

    const-string v9, "stream"

    invoke-static {v2, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v0, Le/a/n/m1$a;->g:Ljava/lang/Object;

    iput-object v6, v0, Le/a/n/m1$a;->h:Ljava/lang/Object;

    iput-object v3, v0, Le/a/n/m1$a;->i:Ljava/lang/Object;

    iput-object v2, v0, Le/a/n/m1$a;->j:Ljava/lang/Object;

    iput v4, v0, Le/a/n/m1$a;->e:I

    .line 18
    invoke-interface {v8, p1, v2, v5, v0}, Le/a/n/a1;->e(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 19
    :cond_7
    :goto_3
    check-cast p1, Lcom/truecaller/backup/BackupResult;

    .line 20
    sget-object v8, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq p1, v8, :cond_8

    :try_start_3
    invoke-static {v2, v5}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 21
    :goto_4
    iget-wide v0, v3, Le/a/n/p1;->a:J

    .line 22
    invoke-virtual {v7, v0, v1}, Le/a/n/m1;->f(J)V

    return-object p1

    .line 23
    :cond_8
    :try_start_4
    invoke-static {v2, v5}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    .line 24
    :cond_9
    :try_start_5
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorFileName:Lcom/truecaller/backup/BackupResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v2, v5}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 25
    :goto_5
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v8

    :try_start_8
    invoke-static {v2, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v8
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    .line 26
    iget-wide v0, v3, Le/a/n/p1;->a:J

    .line 27
    invoke-virtual {v7, v0, v1}, Le/a/n/m1;->f(J)V

    throw p1

    .line 28
    :catch_0
    :cond_a
    :goto_6
    iget-wide v2, v3, Le/a/n/p1;->a:J

    .line 29
    invoke-virtual {v7, v2, v3}, Le/a/n/m1;->f(J)V

    goto/16 :goto_2

    .line 30
    :cond_b
    sget-object p1, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    return-object p1
.end method

.method public final b(Landroid/net/Uri;JIZ)Landroid/content/ContentProviderOperation;
    .locals 3

    .line 1
    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p5, :cond_4

    const-string p5, "entity_info4"

    if-eq p4, v1, :cond_3

    const/4 v2, 0x2

    if-eq p4, v2, :cond_2

    const/4 v2, 0x6

    if-eq p4, v2, :cond_1

    const/4 p5, 0x7

    if-eq p4, p5, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "entity_info5"

    invoke-virtual {v0, p4, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p5, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p5, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p5, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 6
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "entity_info1"

    invoke-virtual {v0, p4, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :goto_0
    new-array p1, v1, [Ljava/lang/String;

    const/4 p4, 0x0

    .line 7
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p4

    const-string p2, "_id =?"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 8
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    const-string p2, "ContentProviderOperation\u2026ing()))\n        }.build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c(J)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/n/m1;->e:Le/a/b0/e/r/a;

    const-string v1, "profileNumber"

    invoke-interface {v0, v1}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "accountSettings.getStrin\u2026LE_NUMBER) ?: return null"

    invoke-static {v0, v1}, Le/d/c/a/a;->H(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    new-instance v2, Ls1/f0/h;

    const-string v3, "^\\++"

    invoke-direct {v2, v3}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Ls1/f0/h;->e(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d(Le/a/n/p1;)Landroid/net/Uri;
    .locals 4

    .line 1
    iget-object v0, p1, Le/a/n/p1;->c:Ljava/lang/String;

    const-string v1, "application/vnd.truecaller.linkpreview"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 2
    invoke-static {v0, v1, v2, v3}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p1, Le/a/n/p1;->f:Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/truecaller/utils/extensions/Scheme;->CONTENT:Lcom/truecaller/utils/extensions/Scheme;

    invoke-virtual {v1}, Lcom/truecaller/utils/extensions/Scheme;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p1, Le/a/n/p1;->b:Landroid/net/Uri;

    :goto_0
    return-object p1
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 25
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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Le/a/n/m1$c;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Le/a/n/m1$c;

    iget v3, v2, Le/a/n/m1$c;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/n/m1$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/n/m1$c;

    invoke-direct {v2, v1, v0}, Le/a/n/m1$c;-><init>(Le/a/n/m1;Ls1/w/d;)V

    :goto_0
    iget-object v0, v2, Le/a/n/m1$c;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/n/m1$c;->e:I

    const-string v5, "com.truecaller"

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v6, :cond_3

    if-ne v4, v7, :cond_2

    iget-object v4, v2, Le/a/n/m1$c;->j:Ljava/lang/Object;

    check-cast v4, Le/a/n/p1;

    iget-object v9, v2, Le/a/n/m1$c;->i:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v2, Le/a/n/m1$c;->h:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    iget-object v11, v2, Le/a/n/m1$c;->g:Ljava/lang/Object;

    check-cast v11, Le/a/n/m1;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    :cond_1
    move-object v15, v9

    move-object v14, v10

    move-object v13, v11

    goto/16 :goto_5

    .line 2
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_3
    iget-object v4, v2, Le/a/n/m1$c;->g:Ljava/lang/Object;

    check-cast v4, Le/a/n/m1;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v0, v1, Le/a/n/m1;->b:Le/a/n/a1;

    const/4 v4, 0x0

    iput-object v1, v2, Le/a/n/m1$c;->g:Ljava/lang/Object;

    iput v6, v2, Le/a/n/m1$c;->e:I

    invoke-interface {v0, v4, v2}, Le/a/n/a1;->b(Landroidx/fragment/app/Fragment;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_5

    return-object v3

    :cond_5
    move-object v4, v1

    :goto_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/truecaller/backup/BackupResult;->ErrorNetwork:Lcom/truecaller/backup/BackupResult;

    return-object v0

    .line 5
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v9, v4, Le/a/n/m1;->g:Le/a/n/n1;

    new-array v10, v7, [Ljava/lang/Integer;

    .line 7
    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v11, v10, v8

    const/4 v11, 0x7

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v12, v10, v6

    .line 8
    check-cast v9, Le/a/n/o1;

    invoke-virtual {v9, v6, v8, v10}, Le/a/n/o1;->a(ZZ[Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v9

    .line 9
    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v0

    move-object v11, v4

    :cond_7
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Le/a/n/p1;

    .line 10
    invoke-virtual {v11, v4}, Le/a/n/m1;->d(Le/a/n/p1;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 11
    iget-object v12, v11, Le/a/n/m1;->g:Le/a/n/n1;

    check-cast v12, Le/a/n/o1;

    .line 12
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "contentUri"

    invoke-static {v0, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :try_start_0
    iget-object v12, v12, Le/a/n/o1;->c:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    move v0, v6

    goto :goto_3

    :catch_0
    move v0, v8

    :goto_3
    if-nez v0, :cond_f

    .line 14
    iget-object v0, v11, Le/a/n/m1;->f:Le/a/b0/q/b;

    .line 15
    iget-object v12, v4, Le/a/n/p1;->c:Ljava/lang/String;

    .line 16
    iget-boolean v13, v4, Le/a/n/p1;->d:Z

    .line 17
    invoke-interface {v0, v12, v13}, Le/a/b0/q/b;->f(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 18
    iget-object v0, v11, Le/a/n/m1;->c:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v11, Le/a/n/m1;->c:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v6

    goto :goto_4

    :cond_9
    move v0, v8

    :goto_4
    if-eqz v0, :cond_f

    .line 19
    :cond_a
    iget-wide v12, v4, Le/a/n/p1;->a:J

    .line 20
    invoke-virtual {v11, v12, v13}, Le/a/n/m1;->c(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 21
    iget-object v12, v11, Le/a/n/m1;->b:Le/a/n/a1;

    iput-object v11, v2, Le/a/n/m1$c;->g:Ljava/lang/Object;

    iput-object v10, v2, Le/a/n/m1$c;->h:Ljava/lang/Object;

    iput-object v9, v2, Le/a/n/m1$c;->i:Ljava/lang/Object;

    iput-object v4, v2, Le/a/n/m1$c;->j:Ljava/lang/Object;

    iput v7, v2, Le/a/n/m1$c;->e:I

    invoke-interface {v12, v0, v2}, Le/a/n/a1;->h(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_1

    return-object v3

    .line 22
    :goto_5
    move-object v11, v0

    check-cast v11, Ljava/io/InputStream;

    if-eqz v11, :cond_d

    .line 23
    :try_start_1
    iget-object v0, v13, Le/a/n/m1;->f:Le/a/b0/q/b;

    .line 24
    iget-wide v9, v4, Le/a/n/p1;->a:J

    .line 25
    iget-object v12, v4, Le/a/n/p1;->c:Ljava/lang/String;

    .line 26
    iget-boolean v6, v4, Le/a/n/p1;->d:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :try_start_2
    iget v7, v4, Le/a/n/p1;->e:I

    .line 28
    new-instance v22, Le/a/n/m1$b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v17, v9

    move-object/from16 v9, v22

    move-object v10, v4

    move-object/from16 v19, v12

    move-object v12, v13

    move-object/from16 v23, v13

    move-object v13, v2

    move-object/from16 v24, v14

    :try_start_3
    invoke-direct/range {v9 .. v14}, Le/a/n/m1$b;-><init>(Le/a/n/p1;Ljava/io/InputStream;Le/a/n/m1;Ls1/w/d;Ljava/util/ArrayList;)V

    move-object/from16 v16, v0

    move/from16 v20, v6

    move/from16 v21, v7

    invoke-interface/range {v16 .. v22}, Le/a/b0/q/b;->d(JLjava/lang/String;ZILs1/z/b/l;)Ls1/k;

    move-result-object v0

    .line 29
    iget-object v0, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 30
    move-object/from16 v17, v0

    check-cast v17, Landroid/net/Uri;

    .line 31
    iget-wide v6, v4, Le/a/n/p1;->a:J

    .line 32
    iget v0, v4, Le/a/n/p1;->g:I

    .line 33
    iget-object v9, v4, Le/a/n/p1;->c:Ljava/lang/String;

    const-string v10, "application/vnd.truecaller.linkpreview"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v12, 0x2

    .line 34
    :try_start_4
    invoke-static {v9, v10, v8, v12}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v21

    move-object/from16 v16, v23

    move-wide/from16 v18, v6

    move/from16 v20, v0

    .line 35
    invoke-virtual/range {v16 .. v21}, Le/a/n/m1;->b(Landroid/net/Uri;JIZ)Landroid/content/ContentProviderOperation;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v10, v24

    :try_start_5
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v11, v23

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v10, v24

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v10, v24

    :goto_6
    const/4 v12, 0x2

    goto :goto_8

    :catch_4
    move-exception v0

    move-object/from16 v23, v13

    move-object v10, v14

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v23, v13

    :goto_7
    move-object/from16 v11, v23

    goto :goto_a

    :catch_5
    move-exception v0

    move v12, v7

    move-object/from16 v23, v13

    move-object v10, v14

    .line 36
    :goto_8
    :try_start_6
    instance-of v6, v0, Ljava/io/IOException;

    if-eqz v6, :cond_b

    goto :goto_9

    :cond_b
    instance-of v6, v0, Ljava/lang/SecurityException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v6, :cond_c

    .line 37
    :goto_9
    iget-wide v6, v4, Le/a/n/p1;->a:J

    move-object/from16 v11, v23

    goto :goto_c

    :cond_c
    move-object/from16 v11, v23

    .line 38
    :try_start_7
    iget-object v2, v11, Le/a/n/m1;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Le/a/m0/a1;->a:Landroid/net/Uri;

    invoke-virtual {v2, v5, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 39
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_7

    .line 40
    :goto_a
    iget-wide v2, v4, Le/a/n/p1;->a:J

    .line 41
    invoke-virtual {v11, v2, v3}, Le/a/n/m1;->f(J)V

    throw v0

    :cond_d
    move v12, v7

    move-object v11, v13

    move-object v10, v14

    .line 42
    :goto_b
    iget-wide v6, v4, Le/a/n/p1;->a:J

    .line 43
    :goto_c
    invoke-virtual {v11, v6, v7}, Le/a/n/m1;->f(J)V

    move-object v9, v15

    goto :goto_d

    .line 44
    :cond_e
    sget-object v0, Lcom/truecaller/backup/BackupResult;->ErrorFileName:Lcom/truecaller/backup/BackupResult;

    return-object v0

    :cond_f
    move v12, v7

    :goto_d
    move v7, v12

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 45
    :cond_10
    iget-object v0, v11, Le/a/n/m1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Le/a/m0/a1;->a:Landroid/net/Uri;

    invoke-virtual {v0, v5, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 46
    sget-object v0, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    return-object v0
.end method

.method public final f(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/n/m1;->d:Le/a/b0/o/a;

    const-string v1, "lastBackedUpEntityId"

    invoke-interface {v0, v1, p1, p2}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    return-void
.end method
