.class public final Le/a/q2/b1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/b1/d;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Le/a/q2/b1/c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln3/c0/c0;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/q2/b1/e;->a:Ln3/c0/q;

    .line 3
    new-instance v0, Le/a/q2/b1/e$a;

    invoke-direct {v0, p0, p1}, Le/a/q2/b1/e$a;-><init>(Le/a/q2/b1/e;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/q2/b1/e;->b:Ln3/c0/k;

    .line 4
    new-instance v0, Le/a/q2/b1/e$b;

    invoke-direct {v0, p0, p1}, Le/a/q2/b1/e$b;-><init>(Le/a/q2/b1/e;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/q2/b1/e;->c:Ln3/c0/c0;

    return-void
.end method


# virtual methods
.method public a(Le/a/q2/b1/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q2/b1/e;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/q2/b1/e;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/q2/b1/e;->b:Ln3/c0/k;

    invoke-virtual {v0, p1}, Ln3/c0/k;->insert(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/q2/b1/e;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Le/a/q2/b1/e;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/q2/b1/e;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method

.method public b(I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Le/a/q2/b1/c;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM persisted_event ORDER BY id ASC LIMIT ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    int-to-long v2, p1

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Ln3/c0/y;->l0(IJ)V

    .line 3
    iget-object p1, p0, Le/a/q2/b1/e;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 4
    iget-object p1, p0, Le/a/q2/b1/e;->a:Ln3/c0/q;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "id"

    .line 5
    invoke-static {p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "record"

    .line 6
    invoke-static {p1, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 10
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v2

    goto :goto_1

    .line 11
    :cond_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 12
    :goto_1
    new-instance v8, Le/a/q2/b1/c;

    invoke-direct {v8, v5, v6, v7}, Le/a/q2/b1/c;-><init>(J[B)V

    .line 13
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 14
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 15
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v4

    :catchall_0
    move-exception v1

    .line 16
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 17
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 18
    throw v1
.end method

.method public c(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/q2/b1/e;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/q2/b1/e;->c:Ln3/c0/c0;

    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1, p1, p2}, Ln3/e0/a/d;->l0(IJ)V

    .line 4
    iget-object p1, p0, Le/a/q2/b1/e;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 5
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    move-result p1

    .line 6
    iget-object p2, p0, Le/a/q2/b1/e;->a:Ln3/c0/q;

    invoke-virtual {p2}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p2, p0, Le/a/q2/b1/e;->a:Ln3/c0/q;

    invoke-virtual {p2}, Ln3/c0/q;->endTransaction()V

    .line 8
    iget-object p2, p0, Le/a/q2/b1/e;->c:Ln3/c0/c0;

    invoke-virtual {p2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return p1

    :catchall_0
    move-exception p1

    .line 9
    iget-object p2, p0, Le/a/q2/b1/e;->a:Ln3/c0/q;

    invoke-virtual {p2}, Ln3/c0/q;->endTransaction()V

    .line 10
    iget-object p2, p0, Le/a/q2/b1/e;->c:Ln3/c0/c0;

    invoke-virtual {p2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 11
    throw p1
.end method
