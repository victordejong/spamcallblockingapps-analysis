.class public final Le/a/a/k/a/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/x0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/k/a/y0$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Le/a/a/k/a/i1;

.field public final c:Le/a/a/k/a/p;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Le/a/a/k/a/i1;Le/a/a/k/a/p;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imVersionManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imEventProcessor"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/y0;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/a/k/a/y0;->b:Le/a/a/k/a/i1;

    iput-object p3, p0, Le/a/a/k/a/y0;->c:Le/a/a/k/a/p;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/api/services/messenger/v1/events/Event;II)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "api_version"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "event_type"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    iget-object p1, p0, Le/a/a/k/a/y0;->a:Landroid/content/ContentResolver;

    invoke-static {}, Le/a/b0/q/g0;->v()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public b()Le/a/r2/x;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/y0;->b:Le/a/a/k/a/i1;

    invoke-interface {v0}, Le/a/a/k/a/i1;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Le/a/a/k/a/y0;->c(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/k/a/y0$a;

    .line 5
    :try_start_0
    iget-object v6, v5, Le/a/a/k/a/y0$a;->b:[B

    .line 6
    invoke-static {v6}, Lcom/truecaller/api/services/messenger/v1/events/Event;->parseFrom([B)Lcom/truecaller/api/services/messenger/v1/events/Event;

    move-result-object v6
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iget-object v7, p0, Le/a/a/k/a/y0;->c:Le/a/a/k/a/p;

    const-string v8, "event"

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget v8, v5, Le/a/a/k/a/y0$a;->c:I

    .line 9
    invoke-interface {v7, v6, v2, v8}, Le/a/a/k/a/p;->a(Lcom/truecaller/api/services/messenger/v1/events/Event;ZI)Lcom/truecaller/messaging/transport/im/ProcessResult;

    move-result-object v6

    sget-object v7, Lcom/truecaller/messaging/transport/im/ProcessResult;->SUCCESS:Lcom/truecaller/messaging/transport/im/ProcessResult;

    if-ne v6, v7, :cond_0

    .line 10
    iget-wide v5, v5, Le/a/a/k/a/y0$a;->a:J

    .line 11
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v5

    .line 12
    invoke-static {v5}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_5

    .line 14
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 17
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 18
    invoke-static {}, Le/a/b0/q/g0;->v()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/String;

    .line 19
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v2

    const-string v7, "_id=?"

    .line 20
    invoke-virtual {v9, v7, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 21
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 22
    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    :try_start_1
    iget-object v5, p0, Le/a/a/k/a/y0;->a:Landroid/content/ContentResolver;

    sget-object v6, Le/a/m0/a1;->a:Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v6, "com.truecaller"

    :try_start_2
    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_5

    .line 24
    array-length v0, v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    if-nez v0, :cond_5

    move v0, v1

    goto :goto_6

    :cond_5
    :goto_5
    move v0, v2

    :goto_6
    if-nez v0, :cond_6

    goto :goto_7

    .line 25
    :cond_6
    iget-object v0, p0, Le/a/a/k/a/y0;->b:Le/a/a/k/a/i1;

    invoke-interface {v0}, Le/a/a/k/a/i1;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Le/a/a/k/a/y0;->c(I)Ljava/util/List;

    move-result-object v0

    .line 26
    invoke-interface {v4}, Ljava/util/List;->size()I

    move v3, v1

    goto/16 :goto_0

    .line 27
    :cond_7
    :goto_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v1, "Promise.wrap(isSuccess)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(I)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Le/a/a/k/a/y0$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/y0;->a:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/b0/q/g0;->v()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "_id"

    const-string v3, "event"

    const-string v4, "event_type"

    .line 3
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    aput-object v3, v4, v7

    const-string v3, "api_version<=?"

    const-string v5, "_id ASC LIMIT 100"

    .line 5
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 6
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    new-instance v3, Le/a/a/k/a/y0$a;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    const-string v4, "getBlob(1)"

    invoke-static {v11, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move-object v8, v3

    move v12, p1

    invoke-direct/range {v8 .. v13}, Le/a/a/k/a/y0$a;-><init>(J[BII)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v0, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 10
    invoke-static {v2}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 12
    :cond_1
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    :goto_1
    return-object p1
.end method
