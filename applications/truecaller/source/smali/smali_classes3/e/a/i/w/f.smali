.class public Le/a/i/w/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/w/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/i/w/f$b;,
        Le/a/i/w/f$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/i/w/a;

.field public c:Ljava/util/concurrent/Executor;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/i/w/f$b;",
            ">;"
        }
    .end annotation
.end field

.field public volatile e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/i/w/g;

    invoke-direct {v0}, Le/a/i/w/g;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Le/a/i/w/f;->c:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/a/i/w/f;->d:Ljava/util/List;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Le/a/i/w/f;->a:Landroid/content/Context;

    .line 5
    new-instance v0, Le/a/i/w/a;

    invoke-direct {v0, p1}, Le/a/i/w/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/a/i/w/f;->b:Le/a/i/w/a;

    return-void
.end method

.method public static f(Le/a/i/w/f;Ljava/lang/String;Lcom/truecaller/ads/campaigns/AdCampaigns;)V
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Le/a/i/w/f;->d:Ljava/util/List;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object p0, p0, Le/a/i/w/f;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/i/w/f$b;

    .line 7
    iget-object v3, v2, Le/a/i/w/f$b;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    iget-object v3, v2, Le/a/i/w/f$b;->g:Ljava/util/Set;

    .line 10
    iget-object v4, p2, Lcom/truecaller/ads/campaigns/AdCampaigns;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v2, v2, Le/a/i/w/f$b;->g:Ljava/util/Set;

    .line 13
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 15
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i/w/f$b;

    .line 17
    iget-object v0, p1, Le/a/i/w/f$b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 18
    :try_start_1
    iget-object v0, p1, Le/a/i/w/f$b;->b:[Lcom/truecaller/ads/campaigns/AdCampaigns;

    iget v1, p1, Le/a/i/w/f$b;->c:I

    aput-object p2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 19
    iput v1, p1, Le/a/i/w/f$b;->c:I

    array-length v2, v0

    if-ne v1, v2, :cond_3

    .line 20
    iput-object v0, p1, Le/a/i/w/f$b;->d:[Lcom/truecaller/ads/campaigns/AdCampaigns;

    .line 21
    iget-object v0, p1, Le/a/i/w/f$b;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :cond_3
    iget-object p1, p1, Le/a/i/w/f$b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p0

    iget-object p1, p1, Le/a/i/w/f$b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 23
    throw p0

    :cond_4
    return-void

    :catchall_1
    move-exception p0

    .line 24
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/i/w/f;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    iget-object v0, p0, Le/a/i/w/f;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 4
    iget-object v1, p0, Le/a/i/w/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    .line 8
    :cond_1
    iput-object v0, p0, Le/a/i/w/f;->e:Ljava/lang/String;

    .line 9
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const-string v0, ""

    :cond_3
    :goto_0
    return-object v0
.end method

.method public b(Ljava/lang/String;Le/a/k3/k/a;)V
    .locals 1

    .line 1
    iget-object p2, p2, Le/a/k3/k/a;->a:Ljava/util/List;

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k3/k/a$a;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p1, v0}, Le/a/i/w/f;->g(Ljava/lang/String;Le/a/k3/k/a$a;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/w/f;->b:Le/a/i/w/a;

    .line 2
    iget-object v1, v0, Le/a/i/w/a;->a:Le/a/b0/i/f/a;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v2}, Le/a/i/w/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "campaigns"

    .line 4
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    .line 6
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    .line 8
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    .line 9
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 11
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v2}, Ljava/util/HashMap;-><init>(I)V

    move v6, v4

    :goto_2
    if-ge v6, v2, :cond_2

    .line 12
    aget-object v7, v3, v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 14
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    :goto_3
    return-object v0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 15
    throw v1
.end method

.method public d(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/concurrent/Future;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/common/network/util/KnownEndpoints;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "[",
            "Lcom/truecaller/ads/campaigns/AdCampaigns;",
            ">;"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-string v5, "Key can not be null"

    .line 1
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 2
    array-length v4, v1

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v4, "Placements array can not be null or empty"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 3
    iget-object v2, v12, Le/a/i/w/f;->d:Ljava/util/List;

    monitor-enter v2

    move v4, v3

    .line 4
    :goto_2
    :try_start_0
    iget-object v5, v12, Le/a/i/w/f;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 5
    iget-object v5, v12, Le/a/i/w/f;->d:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/i/w/f$b;

    move v6, v3

    .line 6
    :goto_3
    array-length v7, v1

    if-ge v6, v7, :cond_3

    .line 7
    iget-object v7, v5, Le/a/i/w/f$b;->g:Ljava/util/Set;

    .line 8
    aget-object v8, v1, v6

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 9
    :cond_3
    :goto_4
    array-length v7, v1

    if-ne v6, v7, :cond_4

    .line 10
    monitor-exit v2

    return-object v5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 11
    :cond_5
    new-instance v13, Le/a/i/w/f$b;

    array-length v3, v1

    invoke-direct {v13, v0, v3}, Le/a/i/w/f$b;-><init>(Ljava/lang/String;I)V

    .line 12
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 13
    iput-object v3, v13, Le/a/i/w/f$b;->g:Ljava/util/Set;

    .line 14
    invoke-static {v3, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 15
    iget-object v3, v12, Le/a/i/w/f;->d:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 18
    iget-object v2, v13, Le/a/i/w/f$b;->g:Ljava/util/Set;

    .line 19
    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 20
    invoke-static {v6, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 21
    iget-object v14, v12, Le/a/i/w/f;->c:Ljava/util/concurrent/Executor;

    new-instance v15, Le/a/i/w/f$c;

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v1 .. v11}, Le/a/i/w/f$c;-><init>(Le/a/i/w/f;Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/String;ILjava/util/Set;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Le/a/i/w/f$a;)V

    invoke-interface {v14, v15}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v13

    :catchall_0
    move-exception v0

    .line 22
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "SEARCHRESULTS,HISTORY,DETAILS"

    return-object p1

    :cond_1
    const-string p1, "CALLERID,AFTERCALL,DETAILS"

    return-object p1
.end method

.method public final g(Ljava/lang/String;Le/a/k3/k/a$a;)V
    .locals 28

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v1, Le/a/k3/k/a$a;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-wide v2, v1, Le/a/k3/k/a$a;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    iget-object v2, v1, Le/a/k3/k/a$a;->b:[Le/a/k3/k/a$a$a;

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    move-object/from16 v2, p0

    .line 2
    iget-object v3, v2, Le/a/i/w/f;->b:Le/a/i/w/a;

    iget-object v4, v1, Le/a/k3/k/a$a;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v1, Le/a/k3/k/a$a;->c:J

    iget-object v7, v1, Le/a/k3/k/a$a;->d:[Ljava/lang/String;

    iget-object v1, v1, Le/a/k3/k/a$a;->b:[Le/a/k3/k/a$a$a;

    const-string v8, "campaigns"

    .line 3
    iget-object v9, v3, Le/a/i/w/a;->a:Le/a/b0/i/f/a;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 4
    invoke-virtual {v3, v9}, Le/a/i/w/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 6
    :try_start_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v10, "number=? AND placement=?"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const/4 v13, 0x1

    aput-object v4, v11, v13

    .line 7
    invoke-virtual {v9, v8, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v10, "number"

    .line 8
    invoke-virtual {v3, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "placement"

    .line 9
    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "expiration"

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v13, 0x3e8

    mul-long/2addr v5, v13

    add-long/2addr v5, v10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 11
    array-length v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string v4, "end"

    const-string v5, "start"

    const-string v6, "|"

    const-string v10, "request_order"

    const-string v11, "campaign_id"

    const-string v13, "brandName"

    const-string v14, "ctaIconText"

    const-string v15, "ctaIconAction"

    const-string v12, "ctaTextColor"

    const-string v2, "ctaBackgroundColor"

    move-object/from16 v16, v7

    const-string v7, "bannerBackgroundColor"

    move-object/from16 v17, v8

    const-string v8, "imageUrl"

    move-object/from16 v18, v9

    const-string v9, "buttonColor"

    move-object/from16 p1, v13

    const-string v13, "lightColor"

    move-object/from16 v19, v14

    const-string v14, "mainColor"

    move-object/from16 v20, v15

    const-string v15, ""

    move-object/from16 v21, v15

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    if-lez v0, :cond_3

    .line 12
    :try_start_1
    array-length v0, v1

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v0, :cond_3

    aget-object v7, v1, v15

    .line 13
    iget-object v8, v7, Le/a/k3/k/a$a$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget v8, v7, Le/a/k3/k/a$a$a;->c:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15
    iget v8, v7, Le/a/k3/k/a$a$a;->d:I

    if-eqz v8, :cond_1

    move/from16 v25, v0

    move-object/from16 v24, v1

    int-to-long v0, v8

    move-wide/from16 v26, v0

    move-object v1, v11

    move-object v8, v12

    goto :goto_1

    :cond_1
    move/from16 v25, v0

    move-object/from16 v24, v1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    move-object v1, v11

    move-object v8, v12

    const-wide/16 v11, 0x1

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v26

    :goto_1
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 16
    iget-object v0, v7, Le/a/k3/k/a$a$a;->b:[Ljava/lang/String;

    .line 17
    invoke-static {v0}, Lw3/c/a/a/a/a;->g([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lw3/c/a/a/a/h;->q([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {v3, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, v7, Le/a/k3/k/a$a$a;->e:Le/a/k3/k/a$a$a$a;

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, v0, Le/a/k3/k/a$a$a$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, v7, Le/a/k3/k/a$a$a;->e:Le/a/k3/k/a$a$a$a;

    iget-object v0, v0, Le/a/k3/k/a$a$a$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, v7, Le/a/k3/k/a$a$a;->e:Le/a/k3/k/a$a$a$a;

    iget-object v0, v0, Le/a/k3/k/a$a$a$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, v7, Le/a/k3/k/a$a$a;->e:Le/a/k3/k/a$a$a$a;

    iget-object v0, v0, Le/a/k3/k/a$a$a$a;->d:Ljava/lang/String;

    move-object/from16 v11, v23

    invoke-virtual {v3, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, v7, Le/a/k3/k/a$a$a;->e:Le/a/k3/k/a$a$a$a;

    iget-object v0, v0, Le/a/k3/k/a$a$a$a;->f:Ljava/lang/String;

    move-object/from16 v12, v22

    invoke-virtual {v3, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, v7, Le/a/k3/k/a$a$a;->e:Le/a/k3/k/a$a$a$a;

    iget-object v0, v0, Le/a/k3/k/a$a$a$a;->g:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, v7, Le/a/k3/k/a$a$a;->e:Le/a/k3/k/a$a$a$a;

    iget-object v0, v0, Le/a/k3/k/a$a$a$a;->h:Ljava/lang/String;

    invoke-virtual {v3, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, v7, Le/a/k3/k/a$a$a;->e:Le/a/k3/k/a$a$a$a;

    iget-object v0, v0, Le/a/k3/k/a$a$a$a;->i:Ljava/lang/String;

    move-object/from16 v22, v4

    move-object/from16 v4, v20

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, v7, Le/a/k3/k/a$a$a;->e:Le/a/k3/k/a$a$a$a;

    iget-object v0, v0, Le/a/k3/k/a$a$a$a;->j:Ljava/lang/String;

    move-object/from16 v20, v5

    move-object/from16 v5, v19

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, v7, Le/a/k3/k/a$a$a;->e:Le/a/k3/k/a$a$a$a;

    iget-object v0, v0, Le/a/k3/k/a$a$a$a;->e:Ljava/lang/String;

    move-object/from16 v7, p1

    invoke-virtual {v3, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    goto :goto_2

    :cond_2
    move-object/from16 v7, p1

    move-object/from16 v0, v21

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    move-object/from16 v22, v4

    move-object/from16 v4, v20

    move-object/from16 v20, v5

    move-object/from16 v5, v19

    .line 30
    invoke-virtual {v3, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v3, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v3, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v3, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v3, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v3, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v3, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    move-object/from16 v19, v5

    move-object/from16 p1, v7

    move-object/from16 v7, v17

    move-object/from16 v5, v18

    move-object/from16 v17, v4

    const/4 v4, 0x0

    .line 40
    :try_start_2
    invoke-virtual {v5, v7, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v21, v0

    move-object/from16 v18, v5

    move-object/from16 v23, v11

    move-object/from16 v5, v20

    move-object/from16 v4, v22

    move/from16 v0, v25

    move-object v11, v1

    move-object/from16 v22, v12

    move-object/from16 v20, v17

    move-object/from16 v1, v24

    move-object/from16 v17, v7

    move-object v12, v8

    goto/16 :goto_0

    :cond_3
    move-object v1, v11

    move-object v8, v12

    move-object/from16 v7, v17

    move-object/from16 v17, v20

    move-object/from16 v0, v21

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    move-object/from16 v22, v4

    move-object/from16 v20, v5

    move-object/from16 v5, v18

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v5, v18

    :goto_3
    move-object v1, v5

    goto :goto_5

    .line 41
    :goto_4
    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static/range {v16 .. v16}, Lw3/c/a/a/a/a;->g([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lw3/c/a/a/a/h;->q([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v3, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v4, v20

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v18, v5

    const-wide/16 v4, 0x1

    :try_start_3
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v4, v22

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 46
    invoke-virtual {v3, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v3, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v3, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v3, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v3, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v3, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v17

    .line 53
    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v19

    .line 54
    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p1

    .line 55
    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v1, v18

    const/4 v0, 0x0

    .line 56
    :try_start_4
    invoke-virtual {v1, v7, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 57
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 58
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v1, v18

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v1, v9

    :goto_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 59
    throw v0

    :cond_4
    :goto_6
    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/i/w/f;->b:Le/a/i/w/a;

    .line 2
    iget-object v0, v0, Le/a/i/w/a;->a:Le/a/b0/i/f/a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "campaigns"

    .line 3
    invoke-virtual {v0, v2, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
