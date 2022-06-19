.class public final Le/a/e3/k/s/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e3/k/s/a;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Lcom/truecaller/network/util/calling_cache/CallCacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/e3/k/s/b;->a:Ln3/c0/q;

    .line 3
    new-instance v0, Le/a/e3/k/s/b$a;

    invoke-direct {v0, p0, p1}, Le/a/e3/k/s/b$a;-><init>(Le/a/e3/k/s/b;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/e3/k/s/b;->b:Ln3/c0/k;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/network/util/calling_cache/CallCacheEntry;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e3/k/s/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/e3/k/s/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/e3/k/s/b;->b:Ln3/c0/k;

    invoke-virtual {v0, p1}, Ln3/c0/k;->insert(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/e3/k/s/b;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Le/a/e3/k/s/b;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/e3/k/s/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/network/util/calling_cache/CallCacheEntry;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "SELECT * FROM call_cache WHERE number = ? AND state = ? LIMIT 1"

    const/4 v3, 0x2

    .line 1
    invoke-static {v2, v3}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v2

    const/4 v4, 0x1

    move-object/from16 v5, p1

    .line 2
    invoke-virtual {v2, v4, v5}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {v2, v3}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v2, v3, v0}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object v0, v1, Le/a/e3/k/s/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 6
    iget-object v0, v1, Le/a/e3/k/s/b;->a:Ln3/c0/q;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "number"

    .line 7
    invoke-static {v3, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "timestamp"

    .line 8
    invoke-static {v3, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "state"

    .line 9
    invoke-static {v3, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "maxAgeSeconds"

    .line 10
    invoke-static {v3, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "_id"

    .line 11
    invoke-static {v3, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 12
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 13
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v10, v4

    goto :goto_1

    .line 14
    :cond_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 15
    :goto_1
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 16
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v13, v4

    goto :goto_2

    .line 17
    :cond_2
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 18
    :goto_2
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 19
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    move-object/from16 v16, v4

    goto :goto_4

    .line 20
    :cond_3
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_3

    .line 21
    :goto_4
    new-instance v4, Lcom/truecaller/network/util/calling_cache/CallCacheEntry;

    move-object v9, v4

    invoke-direct/range {v9 .. v16}, Lcom/truecaller/network/util/calling_cache/CallCacheEntry;-><init>(Ljava/lang/String;JLjava/lang/String;JLjava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 23
    invoke-virtual {v2}, Ln3/c0/y;->l()V

    return-object v4

    :catchall_0
    move-exception v0

    .line 24
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 25
    invoke-virtual {v2}, Ln3/c0/y;->l()V

    .line 26
    throw v0
.end method
