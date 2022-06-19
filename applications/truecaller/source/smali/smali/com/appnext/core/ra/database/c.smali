.class public final Lcom/appnext/core/ra/database/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/ra/database/b;


# instance fields
.field private final eT:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Lcom/appnext/core/ra/database/a;",
            ">;"
        }
    .end annotation
.end field

.field private final eU:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Lcom/appnext/core/ra/database/a;",
            ">;"
        }
    .end annotation
.end field

.field private final eV:Ln3/c0/c0;

.field private final ev:Ln3/c0/q;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/appnext/core/ra/database/c;->ev:Ln3/c0/q;

    .line 3
    new-instance v0, Lcom/appnext/core/ra/database/c$1;

    invoke-direct {v0, p0, p1}, Lcom/appnext/core/ra/database/c$1;-><init>(Lcom/appnext/core/ra/database/c;Ln3/c0/q;)V

    iput-object v0, p0, Lcom/appnext/core/ra/database/c;->eT:Ln3/c0/k;

    .line 4
    new-instance v0, Lcom/appnext/core/ra/database/c$2;

    invoke-direct {v0, p0, p1}, Lcom/appnext/core/ra/database/c$2;-><init>(Lcom/appnext/core/ra/database/c;Ln3/c0/q;)V

    iput-object v0, p0, Lcom/appnext/core/ra/database/c;->eU:Ln3/c0/k;

    .line 5
    new-instance v0, Lcom/appnext/core/ra/database/c$3;

    invoke-direct {v0, p0, p1}, Lcom/appnext/core/ra/database/c$3;-><init>(Lcom/appnext/core/ra/database/c;Ln3/c0/q;)V

    iput-object v0, p0, Lcom/appnext/core/ra/database/c;->eV:Ln3/c0/c0;

    return-void
.end method


# virtual methods
.method public final E(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appnext/core/ra/database/c;->ev:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/appnext/core/ra/database/c;->eV:Ln3/c0/c0;

    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/appnext/core/ra/database/c;->ev:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/appnext/core/ra/database/c;->ev:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v1, p0, Lcom/appnext/core/ra/database/c;->ev:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 9
    iget-object v1, p0, Lcom/appnext/core/ra/database/c;->eV:Ln3/c0/c0;

    invoke-virtual {v1, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return p1

    :catchall_0
    move-exception p1

    .line 10
    iget-object v1, p0, Lcom/appnext/core/ra/database/c;->ev:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 11
    iget-object v1, p0, Lcom/appnext/core/ra/database/c;->eV:Ln3/c0/c0;

    invoke-virtual {v1, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 12
    throw p1
.end method

.method public final aR()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appnext/core/ra/database/a;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM recentapp"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/appnext/core/ra/database/c;->ev:Ln3/c0/q;

    invoke-virtual {v2}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 3
    iget-object v2, p0, Lcom/appnext/core/ra/database/c;->ev:Ln3/c0/q;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "recentAppPackage"

    .line 4
    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "storeDate"

    .line 5
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "sent"

    .line 6
    invoke-static {v2, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 7
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 9
    new-instance v7, Lcom/appnext/core/ra/database/a;

    invoke-direct {v7}, Lcom/appnext/core/ra/database/a;-><init>()V

    .line 10
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/appnext/core/ra/database/a;->eQ:Ljava/lang/String;

    .line 11
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/appnext/core/ra/database/a;->eR:Ljava/lang/String;

    .line 12
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    move v8, v1

    .line 13
    :goto_1
    iput-boolean v8, v7, Lcom/appnext/core/ra/database/a;->eS:Z

    .line 14
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 15
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 16
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v6

    :catchall_0
    move-exception v1

    .line 17
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 18
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 19
    throw v1
.end method

.method public final aS()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appnext/core/ra/database/a;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM recentapp WHERE sent = 0"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/appnext/core/ra/database/c;->ev:Ln3/c0/q;

    invoke-virtual {v2}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 3
    iget-object v2, p0, Lcom/appnext/core/ra/database/c;->ev:Ln3/c0/q;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "recentAppPackage"

    .line 4
    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "storeDate"

    .line 5
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "sent"

    .line 6
    invoke-static {v2, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 7
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 9
    new-instance v7, Lcom/appnext/core/ra/database/a;

    invoke-direct {v7}, Lcom/appnext/core/ra/database/a;-><init>()V

    .line 10
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/appnext/core/ra/database/a;->eQ:Ljava/lang/String;

    .line 11
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/appnext/core/ra/database/a;->eR:Ljava/lang/String;

    .line 12
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    move v8, v1

    .line 13
    :goto_1
    iput-boolean v8, v7, Lcom/appnext/core/ra/database/a;->eS:Z

    .line 14
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 15
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 16
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v6

    :catchall_0
    move-exception v1

    .line 17
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 18
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 19
    throw v1
.end method

.method public final b(Ljava/util/List;)[J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appnext/core/ra/database/a;",
            ">;)[J"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appnext/core/ra/database/c;->ev:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/appnext/core/ra/database/c;->ev:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/ra/database/c;->eT:Ln3/c0/k;

    invoke-virtual {v0, p1}, Ln3/c0/k;->insertAndReturnIdsArray(Ljava/util/Collection;)[J

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/appnext/core/ra/database/c;->ev:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/appnext/core/ra/database/c;->ev:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/appnext/core/ra/database/c;->ev:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method

.method public final c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appnext/core/ra/database/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appnext/core/ra/database/c;->ev:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/appnext/core/ra/database/c;->ev:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/ra/database/c;->eU:Ln3/c0/k;

    invoke-virtual {v0, p1}, Ln3/c0/k;->insert(Ljava/lang/Iterable;)V

    .line 4
    iget-object p1, p0, Lcom/appnext/core/ra/database/c;->ev:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/appnext/core/ra/database/c;->ev:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/appnext/core/ra/database/c;->ev:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method
