.class public final Le/a/y/d/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y/d/c;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Le/a/y/d/g;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Le/a/y/d/m;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ln3/c0/c0;

.field public final e:Ln3/c0/c0;

.field public final f:Ln3/c0/c0;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    .line 3
    new-instance v0, Le/a/y/d/f$a;

    invoke-direct {v0, p0, p1}, Le/a/y/d/f$a;-><init>(Le/a/y/d/f;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/y/d/f;->b:Ln3/c0/k;

    .line 4
    new-instance v0, Le/a/y/d/f$b;

    invoke-direct {v0, p0, p1}, Le/a/y/d/f$b;-><init>(Le/a/y/d/f;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/y/d/f;->c:Ln3/c0/k;

    .line 5
    new-instance v0, Le/a/y/d/f$c;

    invoke-direct {v0, p0, p1}, Le/a/y/d/f$c;-><init>(Le/a/y/d/f;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/y/d/f;->d:Ln3/c0/c0;

    .line 6
    new-instance v0, Le/a/y/d/f$d;

    invoke-direct {v0, p0, p1}, Le/a/y/d/f$d;-><init>(Le/a/y/d/f;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/y/d/f;->e:Ln3/c0/c0;

    .line 7
    new-instance v0, Le/a/y/d/f$e;

    invoke-direct {v0, p0, p1}, Le/a/y/d/f$e;-><init>(Le/a/y/d/f;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/y/d/f;->f:Ln3/c0/c0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    const-string v0, "SELECT * FROM flash_state WHERE phone = ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {p1, v0}, Ln3/c0/q;->query(Ln3/e0/a/e;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/y/d/f;->d:Ln3/c0/c0;

    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1, p1}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 4
    iget-object p1, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 5
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    move-result p1

    .line 6
    iget-object v1, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 8
    iget-object v1, p0, Le/a/y/d/f;->d:Ln3/c0/c0;

    invoke-virtual {v1, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return p1

    :catchall_0
    move-exception p1

    .line 9
    iget-object v1, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 10
    iget-object v1, p0, Le/a/y/d/f;->d:Ln3/c0/c0;

    invoke-virtual {v1, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 11
    throw p1
.end method

.method public c([Ljava/lang/String;)I
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM flash_cache WHERE phone IN ("

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    array-length v1, p1

    .line 5
    invoke-static {v0, v1}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {v1, v0}, Ln3/c0/q;->compileStatement(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object v0

    .line 9
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    if-nez v4, :cond_0

    .line 10
    invoke-interface {v0, v2}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 11
    :cond_0
    invoke-interface {v0, v2, v4}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 13
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    move-result p1

    .line 14
    iget-object v0, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v0, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 16
    throw p1
.end method

.method public d(Le/a/y/d/m;)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/y/d/f;->c:Ln3/c0/k;

    invoke-virtual {v0, p1}, Ln3/c0/k;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method

.method public e()Landroid/database/Cursor;
    .locals 2

    const-string v0, "SELECT * FROM flash_cache"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {v1, v0}, Ln3/c0/q;->query(Ln3/e0/a/e;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public f(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 4

    const-string v0, "SELECT * FROM flash_state WHERE timestamp > ? AND type != ? ORDER BY timestamp DESC"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    int-to-long v2, p1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {v0, p1, v2, v3}, Ln3/c0/y;->l0(IJ)V

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v1, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {p1, v0}, Ln3/c0/q;->query(Ln3/e0/a/e;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public g(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/y/d/f;->e:Ln3/c0/c0;

    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1, p1, p2}, Ln3/e0/a/d;->l0(IJ)V

    const/4 p1, 0x2

    .line 4
    invoke-interface {v0, p1, p3}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    const/4 p1, 0x3

    if-nez p4, :cond_0

    .line 5
    invoke-interface {v0, p1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0, p1, p4}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x4

    .line 7
    invoke-interface {v0, p1, p5}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 8
    iget-object p1, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 9
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    move-result p1

    .line 10
    iget-object p2, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {p2}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p2, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {p2}, Ln3/c0/q;->endTransaction()V

    .line 12
    iget-object p2, p0, Le/a/y/d/f;->e:Ln3/c0/c0;

    invoke-virtual {p2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return p1

    :catchall_0
    move-exception p1

    .line 13
    iget-object p2, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {p2}, Ln3/c0/q;->endTransaction()V

    .line 14
    iget-object p2, p0, Le/a/y/d/f;->e:Ln3/c0/c0;

    invoke-virtual {p2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 15
    throw p1
.end method

.method public h([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT phone FROM flash_cache WHERE phone IN ("

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    array-length v1, p1

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
    array-length v1, p1

    const/4 v3, 0x1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p1, v2

    if-nez v4, :cond_0

    .line 9
    invoke-virtual {v0, v3}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v0, v3, v4}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {p1, v0}, Ln3/c0/q;->query(Ln3/e0/a/e;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public i(Le/a/y/d/g;)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/y/d/f;->b:Ln3/c0/k;

    invoke-virtual {v0, p1}, Ln3/c0/k;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method

.method public j(IILjava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/y/d/f;->f:Ln3/c0/c0;

    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    int-to-long v1, p1

    const/4 p1, 0x1

    .line 3
    invoke-interface {v0, p1, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    int-to-long p1, p2

    const/4 v1, 0x2

    .line 4
    invoke-interface {v0, v1, p1, p2}, Ln3/e0/a/d;->l0(IJ)V

    const/4 p1, 0x3

    .line 5
    invoke-interface {v0, p1, p3}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 6
    iget-object p1, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 7
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    move-result p1

    .line 8
    iget-object p2, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {p2}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p2, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {p2}, Ln3/c0/q;->endTransaction()V

    .line 10
    iget-object p2, p0, Le/a/y/d/f;->f:Ln3/c0/c0;

    invoke-virtual {p2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return p1

    :catchall_0
    move-exception p1

    .line 11
    iget-object p2, p0, Le/a/y/d/f;->a:Ln3/c0/q;

    invoke-virtual {p2}, Ln3/c0/q;->endTransaction()V

    .line 12
    iget-object p2, p0, Le/a/y/d/f;->f:Ln3/c0/c0;

    invoke-virtual {p2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 13
    throw p1
.end method
