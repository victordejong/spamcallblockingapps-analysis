.class public final Le/a/b/o/c/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/o/c/a/c;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Le/a/b/o/c/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln3/c0/c0;

.field public final d:Ln3/c0/c0;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/b/o/c/a/d;->a:Ln3/c0/q;

    .line 3
    new-instance v0, Le/a/b/o/c/a/d$a;

    invoke-direct {v0, p0, p1}, Le/a/b/o/c/a/d$a;-><init>(Le/a/b/o/c/a/d;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/b/o/c/a/d;->b:Ln3/c0/k;

    .line 4
    new-instance v0, Le/a/b/o/c/a/d$b;

    invoke-direct {v0, p0, p1}, Le/a/b/o/c/a/d$b;-><init>(Le/a/b/o/c/a/d;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/b/o/c/a/d;->c:Ln3/c0/c0;

    .line 5
    new-instance v0, Le/a/b/o/c/a/d$c;

    invoke-direct {v0, p0, p1}, Le/a/b/o/c/a/d$c;-><init>(Le/a/b/o/c/a/d;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/b/o/c/a/d;->d:Ln3/c0/c0;

    return-void
.end method


# virtual methods
.method public a(JI)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b/o/c/a/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/b/o/c/a/d;->d:Ln3/c0/c0;

    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    int-to-long v1, p3

    const/4 p3, 0x1

    .line 3
    invoke-interface {v0, p3, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    const/4 p3, 0x2

    .line 4
    invoke-interface {v0, p3, p1, p2}, Ln3/e0/a/d;->l0(IJ)V

    .line 5
    iget-object p1, p0, Le/a/b/o/c/a/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 7
    iget-object p1, p0, Le/a/b/o/c/a/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Le/a/b/o/c/a/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    .line 9
    iget-object p1, p0, Le/a/b/o/c/a/d;->d:Ln3/c0/c0;

    invoke-virtual {p1, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    iget-object p2, p0, Le/a/b/o/c/a/d;->a:Ln3/c0/q;

    invoke-virtual {p2}, Ln3/c0/q;->endTransaction()V

    .line 11
    iget-object p2, p0, Le/a/b/o/c/a/d;->d:Ln3/c0/c0;

    invoke-virtual {p2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 12
    throw p1
.end method

.method public b(Ljava/lang/String;J)Z
    .locals 3

    const-string v0, "SELECT * FROM district WHERE name = ? AND state_id = ?"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v2, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 4
    :goto_0
    invoke-virtual {v0, v1, p2, p3}, Ln3/c0/y;->l0(IJ)V

    .line 5
    iget-object p1, p0, Le/a/b/o/c/a/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 6
    iget-object p1, p0, Le/a/b/o/c/a/d;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {p1, v0, p3, p2}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 7
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    move p3, v2

    .line 9
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 10
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return p3

    :catchall_0
    move-exception p2

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 12
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 13
    throw p2
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b/o/c/a/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/b/o/c/a/d;->c:Ln3/c0/c0;

    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/b/o/c/a/d;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 4
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 5
    iget-object v1, p0, Le/a/b/o/c/a/d;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Le/a/b/o/c/a/d;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 7
    iget-object v1, p0, Le/a/b/o/c/a/d;->c:Ln3/c0/c0;

    invoke-virtual {v1, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Le/a/b/o/c/a/d;->a:Ln3/c0/q;

    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 9
    iget-object v2, p0, Le/a/b/o/c/a/d;->c:Ln3/c0/c0;

    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 10
    throw v1
.end method

.method public d(Ljava/lang/String;J)J
    .locals 3

    const-string v0, "SELECT id FROM district WHERE name = ? AND state_id = ?"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v2, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 4
    :goto_0
    invoke-virtual {v0, v1, p2, p3}, Ln3/c0/y;->l0(IJ)V

    .line 5
    iget-object p1, p0, Le/a/b/o/c/a/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 6
    iget-object p1, p0, Le/a/b/o/c/a/d;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {p1, v0, p3, p2}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 7
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-wide/16 p2, 0x0

    .line 9
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 10
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-wide p2

    :catchall_0
    move-exception p2

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 12
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 13
    throw p2
.end method

.method public e(J)Lq3/a/x2/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Le/a/b/o/c/b/a;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM district WHERE state_id = ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 3
    iget-object p1, p0, Le/a/b/o/c/a/d;->a:Ln3/c0/q;

    const-string p2, "district"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    new-instance v1, Le/a/b/o/c/a/d$d;

    invoke-direct {v1, p0, v0}, Le/a/b/o/c/a/d$d;-><init>(Le/a/b/o/c/a/d;Ln3/c0/y;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v1}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public f(Le/a/b/o/c/b/a;)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b/o/c/a/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/b/o/c/a/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/b/o/c/a/d;->b:Ln3/c0/k;

    invoke-virtual {v0, p1}, Ln3/c0/k;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Le/a/b/o/c/a/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Le/a/b/o/c/a/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/b/o/c/a/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method
