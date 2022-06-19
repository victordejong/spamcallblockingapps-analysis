.class public final Le/a/d/t/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/t/a;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Lcom/truecaller/voip/db/VoipAvailability;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Lcom/truecaller/voip/db/VoipIdCache;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ln3/c0/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/j<",
            "Lcom/truecaller/voip/db/VoipIdCache;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ln3/c0/c0;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    .line 3
    new-instance v0, Le/a/d/t/b$a;

    invoke-direct {v0, p0, p1}, Le/a/d/t/b$a;-><init>(Le/a/d/t/b;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/d/t/b;->b:Ln3/c0/k;

    .line 4
    new-instance v0, Le/a/d/t/b$b;

    invoke-direct {v0, p0, p1}, Le/a/d/t/b$b;-><init>(Le/a/d/t/b;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/d/t/b;->c:Ln3/c0/k;

    .line 5
    new-instance v0, Le/a/d/t/b$c;

    invoke-direct {v0, p0, p1}, Le/a/d/t/b$c;-><init>(Le/a/d/t/b;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/d/t/b;->d:Ln3/c0/j;

    .line 6
    new-instance v0, Le/a/d/t/b$d;

    invoke-direct {v0, p0, p1}, Le/a/d/t/b$d;-><init>(Le/a/d/t/b;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/d/t/b;->e:Ln3/c0/c0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/voip/db/VoipAvailability;",
            ">;"
        }
    .end annotation

    const-string v0, "\n        SELECT * FROM voip_availability \n        WHERE voip_enabled = 1 AND\n        version >= 4 AND\n        phone != ?\n        "

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 4
    iget-object p1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "_id"

    .line 5
    invoke-static {p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "phone"

    .line 6
    invoke-static {p1, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "voip_enabled"

    .line 7
    invoke-static {p1, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "version"

    .line 8
    invoke-static {p1, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 9
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 11
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v2

    goto :goto_1

    .line 12
    :cond_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 13
    :goto_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 14
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 15
    new-instance v10, Lcom/truecaller/voip/db/VoipAvailability;

    invoke-direct {v10, v7, v8, v9}, Lcom/truecaller/voip/db/VoipAvailability;-><init>(Ljava/lang/String;II)V

    .line 16
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v2

    goto :goto_2

    .line 17
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 18
    :goto_2
    invoke-virtual {v10, v7}, Lcom/truecaller/voip/db/VoipAvailability;->setId(Ljava/lang/Long;)V

    .line 19
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 20
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 21
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v6

    :catchall_0
    move-exception v1

    .line 22
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 23
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 24
    throw v1
.end method

.method public b(Ljava/lang/String;)Lcom/truecaller/voip/db/VoipIdCache;
    .locals 8

    const-string v0, "SELECT * FROM voip_id_cache WHERE voip_id=?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 5
    iget-object p1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "_id"

    .line 6
    invoke-static {p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "voip_id"

    .line 7
    invoke-static {p1, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "number"

    .line 8
    invoke-static {p1, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "expiry_epoch_seconds"

    .line 9
    invoke-static {p1, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 11
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v3, v2

    goto :goto_1

    .line 12
    :cond_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 13
    :goto_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v4, v2

    goto :goto_2

    .line 14
    :cond_2
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 15
    :goto_2
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 16
    new-instance v7, Lcom/truecaller/voip/db/VoipIdCache;

    invoke-direct {v7, v3, v4, v5, v6}, Lcom/truecaller/voip/db/VoipIdCache;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 17
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    .line 18
    :cond_3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 19
    :goto_3
    invoke-virtual {v7, v2}, Lcom/truecaller/voip/db/VoipIdCache;->setId(Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v7

    .line 20
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 21
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 22
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 23
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 24
    throw v1
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/d/t/b;->e:Ln3/c0/c0;

    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 4
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 5
    iget-object v1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 7
    iget-object v1, p0, Le/a/d/t/b;->e:Ln3/c0/c0;

    invoke-virtual {v1, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 9
    iget-object v2, p0, Le/a/d/t/b;->e:Ln3/c0/c0;

    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 10
    throw v1
.end method

.method public d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/voip/db/VoipAvailability;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/d/t/b;->b:Ln3/c0/k;

    invoke-virtual {v0, p1}, Ln3/c0/k;->insert(Ljava/lang/Iterable;)V

    .line 4
    iget-object p1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method

.method public e(Ljava/util/Set;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/truecaller/voip/db/VoipIdCache;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM voip_id_cache WHERE number IN ("

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    .line 4
    invoke-static {v0, v1}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 7
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 9
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v0, v1, v3}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 12
    iget-object p1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    const/4 v1, 0x0

    invoke-static {p1, v0, v2, v1}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v2, "_id"

    .line 13
    invoke-static {p1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "voip_id"

    .line 14
    invoke-static {p1, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "number"

    .line 15
    invoke-static {p1, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "expiry_epoch_seconds"

    .line 16
    invoke-static {p1, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 17
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 19
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v1

    goto :goto_3

    .line 20
    :cond_2
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 21
    :goto_3
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v1

    goto :goto_4

    .line 22
    :cond_3
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 23
    :goto_4
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 24
    new-instance v11, Lcom/truecaller/voip/db/VoipIdCache;

    invoke-direct {v11, v7, v8, v9, v10}, Lcom/truecaller/voip/db/VoipIdCache;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 25
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v1

    goto :goto_5

    .line 26
    :cond_4
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 27
    :goto_5
    invoke-virtual {v11, v7}, Lcom/truecaller/voip/db/VoipIdCache;->setId(Ljava/lang/Long;)V

    .line 28
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 29
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 30
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v6

    :catchall_0
    move-exception v1

    .line 31
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 32
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 33
    throw v1
.end method

.method public f(Ljava/lang/String;)Lcom/truecaller/voip/db/VoipAvailability;
    .locals 7

    const-string v0, "SELECT * FROM voip_availability WHERE phone=?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 4
    iget-object p1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "_id"

    .line 5
    invoke-static {p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "phone"

    .line 6
    invoke-static {p1, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "voip_enabled"

    .line 7
    invoke-static {p1, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "version"

    .line 8
    invoke-static {p1, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 9
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 10
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v3, v2

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 12
    :goto_0
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 13
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 14
    new-instance v6, Lcom/truecaller/voip/db/VoipAvailability;

    invoke-direct {v6, v3, v4, v5}, Lcom/truecaller/voip/db/VoipAvailability;-><init>(Ljava/lang/String;II)V

    .line 15
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 17
    :goto_1
    invoke-virtual {v6, v2}, Lcom/truecaller/voip/db/VoipAvailability;->setId(Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v6

    .line 18
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 19
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 20
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 21
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 22
    throw v1
.end method

.method public g(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/voip/db/VoipIdCache;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/d/t/b;->c:Ln3/c0/k;

    invoke-virtual {v0, p1}, Ln3/c0/k;->insert(Ljava/lang/Iterable;)V

    .line 4
    iget-object p1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method

.method public h()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/voip/db/VoipAvailability;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM voip_availability WHERE voip_enabled = 1"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    iget-object v2, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {v2}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 3
    iget-object v2, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "_id"

    .line 4
    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "phone"

    .line 5
    invoke-static {v1, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "voip_enabled"

    .line 6
    invoke-static {v1, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "version"

    .line 7
    invoke-static {v1, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 8
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 10
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v3

    goto :goto_1

    .line 11
    :cond_0
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 12
    :goto_1
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 13
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 14
    new-instance v11, Lcom/truecaller/voip/db/VoipAvailability;

    invoke-direct {v11, v8, v9, v10}, Lcom/truecaller/voip/db/VoipAvailability;-><init>(Ljava/lang/String;II)V

    .line 15
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v3

    goto :goto_2

    .line 16
    :cond_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 17
    :goto_2
    invoke-virtual {v11, v8}, Lcom/truecaller/voip/db/VoipAvailability;->setId(Ljava/lang/Long;)V

    .line 18
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 19
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 20
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v7

    :catchall_0
    move-exception v2

    .line 21
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 22
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 23
    throw v2
.end method

.method public i(Lcom/truecaller/voip/db/VoipIdCache;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/d/t/b;->c:Ln3/c0/k;

    invoke-virtual {v0, p1}, Ln3/c0/k;->insert(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method

.method public j(Lcom/truecaller/voip/db/VoipIdCache;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/d/t/b;->d:Ln3/c0/j;

    invoke-virtual {v0, p1}, Ln3/c0/j;->a(Ljava/lang/Object;)I

    .line 4
    iget-object p1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method

.method public k(Ljava/lang/String;)Lcom/truecaller/voip/db/VoipIdCache;
    .locals 8

    const-string v0, "SELECT * FROM voip_id_cache WHERE number=?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 5
    iget-object p1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "_id"

    .line 6
    invoke-static {p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "voip_id"

    .line 7
    invoke-static {p1, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "number"

    .line 8
    invoke-static {p1, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "expiry_epoch_seconds"

    .line 9
    invoke-static {p1, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 11
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v3, v2

    goto :goto_1

    .line 12
    :cond_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 13
    :goto_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v4, v2

    goto :goto_2

    .line 14
    :cond_2
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 15
    :goto_2
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 16
    new-instance v7, Lcom/truecaller/voip/db/VoipIdCache;

    invoke-direct {v7, v3, v4, v5, v6}, Lcom/truecaller/voip/db/VoipIdCache;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 17
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    .line 18
    :cond_3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 19
    :goto_3
    invoke-virtual {v7, v2}, Lcom/truecaller/voip/db/VoipIdCache;->setId(Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v7

    .line 20
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 21
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 22
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 23
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 24
    throw v1
.end method

.method public l([Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/voip/db/VoipAvailability;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM voip_availability WHERE phone IN ("

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    array-length v1, p1

    .line 4
    invoke-static {v0, v1}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ") AND voip_enabled = 1"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 7
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 8
    array-length v1, p1

    const/4 v3, 0x1

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, p1, v4

    if-nez v5, :cond_0

    .line 9
    invoke-virtual {v0, v3}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v0, v3, v5}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 12
    iget-object p1, p0, Le/a/d/t/b;->a:Ln3/c0/q;

    const/4 v1, 0x0

    invoke-static {p1, v0, v2, v1}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v2, "_id"

    .line 13
    invoke-static {p1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "phone"

    .line 14
    invoke-static {p1, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "voip_enabled"

    .line 15
    invoke-static {p1, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "version"

    .line 16
    invoke-static {p1, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 17
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 19
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v1

    goto :goto_3

    .line 20
    :cond_2
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 21
    :goto_3
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 22
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 23
    new-instance v10, Lcom/truecaller/voip/db/VoipAvailability;

    invoke-direct {v10, v7, v8, v9}, Lcom/truecaller/voip/db/VoipAvailability;-><init>(Ljava/lang/String;II)V

    .line 24
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v1

    goto :goto_4

    .line 25
    :cond_3
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 26
    :goto_4
    invoke-virtual {v10, v7}, Lcom/truecaller/voip/db/VoipAvailability;->setId(Ljava/lang/Long;)V

    .line 27
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 28
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 29
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v6

    :catchall_0
    move-exception v1

    .line 30
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 31
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 32
    throw v1
.end method
