.class public final Le/a/n/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/n/p0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/n/a1;

.field public final c:Le/a/l0/c;

.field public final d:Le/m/e/k;

.field public final e:Le/a/n/i0;

.field public final f:Le/a/b0/e/l;

.field public final g:Le/a/k3/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/n/a1;Le/a/l0/c;Le/m/e/k;Le/a/n/i0;Le/a/b0/e/l;Le/a/k3/e;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "driveManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callHistoryManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "truecallerAccountManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "historyEventFactory"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/n/q0;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/n/q0;->b:Le/a/n/a1;

    iput-object p3, p0, Le/a/n/q0;->c:Le/a/l0/c;

    iput-object p4, p0, Le/a/n/q0;->d:Le/m/e/k;

    iput-object p5, p0, Le/a/n/q0;->e:Le/a/n/i0;

    iput-object p6, p0, Le/a/n/q0;->f:Le/a/b0/e/l;

    iput-object p7, p0, Le/a/n/q0;->g:Le/a/k3/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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

    instance-of v0, p2, Le/a/n/q0$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/n/q0$c;

    iget v1, v0, Le/a/n/q0$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/q0$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/q0$c;

    invoke-direct {v0, p0, p2}, Le/a/n/q0$c;-><init>(Le/a/n/q0;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/n/q0$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/q0$c;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/n/q0$c;->l:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    iget-object v2, v0, Le/a/n/q0$c;->k:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v3, v0, Le/a/n/q0$c;->j:Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    iget-object v5, v0, Le/a/n/q0$c;->i:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Le/a/n/q0$c;->h:Ljava/lang/Object;

    check-cast v6, Ljava/util/Set;

    iget-object v7, v0, Le/a/n/q0$c;->g:Ljava/lang/Object;

    check-cast v7, Le/a/n/q0;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/n/q0$c;->g:Ljava/lang/Object;

    check-cast p1, Le/a/n/q0;

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Le/m/e/u; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/n/q0;->e:Le/a/n/i0;

    sget-object v2, Lcom/truecaller/backup/BackupFile;->CALL_LOG:Lcom/truecaller/backup/BackupFile;

    invoke-interface {p2, v2, p1}, Le/a/n/i0;->a(Lcom/truecaller/backup/BackupFile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 5
    :try_start_1
    iput-object p0, v0, Le/a/n/q0$c;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/n/q0$c;->e:I

    invoke-virtual {p0, p1, v0}, Le/a/n/q0;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    :goto_1
    check-cast p2, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Le/m/e/u; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p2, :cond_b

    .line 6
    invoke-virtual {p1}, Le/a/n/q0;->d()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 7
    iget-object v5, p1, Le/a/n/q0;->f:Le/a/b0/e/l;

    invoke-interface {v5}, Le/a/b0/e/l;->f()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    const-string v5, ""

    .line 8
    :goto_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/truecaller/data/entity/CallLogBackupItem;

    .line 10
    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v3

    .line 11
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 12
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 13
    :cond_7
    new-instance p2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v6, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {p2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v7, p1

    move-object p1, p2

    move-object v6, v2

    move-object v2, v3

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 15
    check-cast p2, Lcom/truecaller/data/entity/CallLogBackupItem;

    .line 16
    iget-object v3, v7, Le/a/n/q0;->g:Le/a/k3/e;

    .line 17
    iput-object v7, v0, Le/a/n/q0$c;->g:Ljava/lang/Object;

    iput-object v6, v0, Le/a/n/q0$c;->h:Ljava/lang/Object;

    iput-object v5, v0, Le/a/n/q0$c;->i:Ljava/lang/Object;

    iput-object p1, v0, Le/a/n/q0$c;->j:Ljava/lang/Object;

    iput-object v2, v0, Le/a/n/q0$c;->k:Ljava/lang/Object;

    iput-object p1, v0, Le/a/n/q0$c;->l:Ljava/lang/Object;

    iput v4, v0, Le/a/n/q0$c;->e:I

    .line 18
    invoke-interface {v3, p2, v5, v0}, Le/a/k3/e;->c(Lcom/truecaller/data/entity/CallLogBackupItem;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    move-object v3, p1

    .line 19
    :goto_5
    check-cast p2, Lcom/truecaller/data/entity/HistoryEvent;

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object p1, v3

    goto :goto_4

    .line 20
    :cond_9
    check-cast p1, Ljava/util/List;

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    invoke-interface {v6}, Ljava/util/Set;->size()I

    .line 22
    iget-object p2, v7, Le/a/n/q0;->c:Le/a/l0/c;

    invoke-interface {p2, p1}, Le/a/l0/c;->c(Ljava/util/List;)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " items inserted"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    sget-object p1, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    return-object p1

    .line 25
    :cond_a
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorDatabase:Lcom/truecaller/backup/BackupResult;

    return-object p1

    .line 26
    :cond_b
    :try_start_2
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorRead:Lcom/truecaller/backup/BackupResult;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Le/m/e/u; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    const-string p1, "Cannot parse call log json file"

    .line 27
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->report([Ljava/lang/String;)V

    .line 28
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorJsonParsing:Lcom/truecaller/backup/BackupResult;

    return-object p1

    :catch_1
    const-string p1, "IllegalStateException during parsing call log json file"

    .line 29
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->report([Ljava/lang/String;)V

    .line 30
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorJsonParsing:Lcom/truecaller/backup/BackupResult;

    return-object p1

    .line 31
    :cond_c
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorFileName:Lcom/truecaller/backup/BackupResult;

    return-object p1
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 9
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
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0}, Le/a/n/q0;->d()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/truecaller/data/entity/CallLogBackupItem;

    .line 6
    invoke-virtual {v7}, Lcom/truecaller/data/entity/CallLogBackupItem;->getFlag()Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v6, :cond_2

    :goto_1
    move v4, v5

    .line 7
    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Lcom/truecaller/data/entity/CallLogBackupItem;

    .line 12
    invoke-virtual {v3}, Lcom/truecaller/data/entity/CallLogBackupItem;->getTimestamp()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 13
    :cond_4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 14
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v7, "ContentProviderOperation.newDelete(contentUri)"

    invoke-static {v3, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v7, v6, [Ljava/lang/String;

    aput-object v2, v7, v4

    .line 15
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v5

    const-string v2, "timestamp = ? AND tc_flag = ?"

    invoke-virtual {v3, v2, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 16
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 17
    :cond_5
    :try_start_0
    iget-object p1, p0, Le/a/n/q0;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Le/a/m0/a1;->a:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "com.truecaller"

    :try_start_1
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    const-string v0, "context.contentResolver.\u2026tAuthority(), operations)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 18
    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 19
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/CallLogBackupItem;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/n/q0$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/n/q0$b;

    iget v1, v0, Le/a/n/q0$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/q0$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/q0$b;

    invoke-direct {v0, p0, p2}, Le/a/n/q0$b;-><init>(Le/a/n/q0;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/n/q0$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/q0$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/n/q0$b;->g:Ljava/lang/Object;

    check-cast p1, Le/a/n/q0;

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

    .line 4
    iget-object p2, p0, Le/a/n/q0;->b:Le/a/n/a1;

    iput-object p0, v0, Le/a/n/q0$b;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/n/q0$b;->e:I

    invoke-interface {p2, p1, v0}, Le/a/n/a1;->h(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    check-cast p2, Ljava/io/InputStream;

    if-eqz p2, :cond_4

    .line 5
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 6
    iget-object p1, p1, Le/a/n/q0;->d:Le/m/e/k;

    .line 7
    new-instance p2, Le/a/n/q0$a;

    invoke-direct {p2}, Le/a/n/q0$a;-><init>()V

    invoke-virtual {p2}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    const-string v1, "object : TypeToken<T>() {}.type"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v0}, Le/m/e/k;->k(Ljava/io/Reader;)Le/m/e/g0/a;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0, p2}, Le/m/e/k;->c(Le/m/e/g0/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    invoke-static {p1, v0}, Le/m/e/k;->a(Ljava/lang/Object;Le/m/e/g0/a;)V

    const-string p2, "this.fromJson(json, typeToken<T>())"

    .line 11
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d()Ljava/util/Set;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/truecaller/data/entity/CallLogBackupItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le/a/n/q0;->c:Le/a/l0/c;

    invoke-interface {v0}, Le/a/l0/c;->s()Le/a/r2/x;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Le/a/l0/u/d/b;

    const/4 v0, 0x0

    if-eqz v2, :cond_11

    const-string v3, "callHistoryManager.callH\u2026tory.get() ?: return null"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-eqz v4, :cond_b

    .line 4
    new-instance v4, Lcom/truecaller/data/entity/CallLogBackupItem;

    .line 5
    invoke-interface {v2}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 6
    iget-object v8, v8, Lcom/truecaller/data/entity/HistoryEvent;->g:Ljava/lang/Long;

    if-eqz v8, :cond_0

    .line 7
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-wide v9, v8

    goto :goto_1

    :cond_0
    move-wide v9, v6

    .line 8
    :goto_1
    invoke-interface {v2}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 9
    iget-object v8, v8, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    const-string v8, ""

    :goto_2
    move-object v11, v8

    const-string v8, "historyEvent?.normalizedNumber ?: \"\""

    .line 10
    invoke-static {v11, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {v2}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 12
    iget-wide v12, v8, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    goto :goto_3

    :cond_2
    move-wide v12, v6

    .line 13
    :goto_3
    invoke-interface {v2}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 14
    iget-wide v14, v8, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    goto :goto_4

    :cond_3
    move-wide v14, v6

    .line 15
    :goto_4
    invoke-interface {v2}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 16
    iget v8, v8, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    move/from16 v16, v8

    goto :goto_5

    :cond_4
    move/from16 v16, v5

    .line 17
    :goto_5
    invoke-interface {v2}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 18
    iget v8, v8, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    move/from16 v17, v8

    goto :goto_6

    :cond_5
    move/from16 v17, v5

    .line 19
    :goto_6
    invoke-interface {v2}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 20
    iget v5, v8, Lcom/truecaller/data/entity/HistoryEvent;->l:I

    :cond_6
    move/from16 v18, v5

    .line 21
    invoke-interface {v2}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 22
    iget-object v5, v5, Lcom/truecaller/data/entity/HistoryEvent;->s:Ljava/lang/String;

    move-object/from16 v19, v5

    goto :goto_7

    :cond_7
    move-object/from16 v19, v0

    .line 23
    :goto_7
    invoke-interface {v2}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 24
    iget v5, v5, Lcom/truecaller/data/entity/HistoryEvent;->t:I

    .line 25
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v20, v5

    goto :goto_8

    :cond_8
    move-object/from16 v20, v0

    .line 26
    :goto_8
    invoke-interface {v2}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 27
    iget-object v5, v5, Lcom/truecaller/data/entity/HistoryEvent;->u:Ljava/lang/String;

    move-object/from16 v21, v5

    goto :goto_9

    :cond_9
    move-object/from16 v21, v0

    .line 28
    :goto_9
    invoke-interface {v2}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 29
    iget-wide v6, v5, Lcom/truecaller/data/entity/HistoryEvent;->j:J

    :cond_a
    move-wide/from16 v22, v6

    move-object v8, v4

    .line 30
    invoke-direct/range {v8 .. v23}, Lcom/truecaller/data/entity/CallLogBackupItem;-><init>(JLjava/lang/String;JJIIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;J)V

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 31
    :cond_b
    invoke-static {v2, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/truecaller/data/entity/CallLogBackupItem;

    .line 34
    invoke-virtual {v4}, Lcom/truecaller/data/entity/CallLogBackupItem;->getCallLogId()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-gez v8, :cond_f

    invoke-virtual {v4}, Lcom/truecaller/data/entity/CallLogBackupItem;->getFlag()Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x2

    if-nez v4, :cond_d

    goto :goto_b

    :cond_d
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v8, :cond_e

    goto :goto_c

    :cond_e
    :goto_b
    move v4, v5

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v4, 0x1

    :goto_d
    if-eqz v4, :cond_c

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 35
    :cond_10
    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 36
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    :cond_11
    return-object v0
.end method
