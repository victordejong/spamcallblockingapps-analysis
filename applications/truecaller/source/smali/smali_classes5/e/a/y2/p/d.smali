.class public final Le/a/y2/p/d;
.super Le/a/y2/p/c;
.source "SourceFile"


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Lcom/truecaller/background_work/persistence/WorkActionRetryResult;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/y2/p/b;

.field public final d:Ln3/c0/c0;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/y2/p/c;-><init>()V

    .line 2
    new-instance v0, Le/a/y2/p/b;

    invoke-direct {v0}, Le/a/y2/p/b;-><init>()V

    iput-object v0, p0, Le/a/y2/p/d;->c:Le/a/y2/p/b;

    .line 3
    iput-object p1, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    .line 4
    new-instance v0, Le/a/y2/p/d$a;

    invoke-direct {v0, p0, p1}, Le/a/y2/p/d$a;-><init>(Le/a/y2/p/d;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/y2/p/d;->b:Ln3/c0/k;

    .line 5
    new-instance v0, Le/a/y2/p/d$b;

    invoke-direct {v0, p0, p1}, Le/a/y2/p/d$b;-><init>(Le/a/y2/p/d;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/y2/p/d;->d:Ln3/c0/c0;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/truecaller/background_work/WorkActionPeriod;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/truecaller/background_work/WorkActionPeriod;",
            "Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM WorkActionRetryResult WHERE period = "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND internetRequired = "

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND actionName NOT IN ("

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 9
    invoke-static {v0, v1}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v1, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {v1, v0}, Ln3/c0/q;->compileStatement(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object v0

    .line 13
    iget-object v1, p0, Le/a/y2/p/d;->c:Le/a/y2/p/b;

    invoke-virtual {v1, p2}, Le/a/y2/p/b;->a(Lcom/truecaller/background_work/WorkActionPeriod;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 14
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {v0, v1, p2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 p2, 0x2

    int-to-long v1, p3

    .line 16
    invoke-interface {v0, p2, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    const/4 p2, 0x3

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_1

    .line 18
    invoke-interface {v0, p2}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 19
    :cond_1
    invoke-interface {v0, p2, p3}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 20
    :cond_2
    iget-object p1, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 21
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 22
    iget-object p1, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object p1, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {p2}, Ln3/c0/q;->endTransaction()V

    .line 24
    throw p1
.end method

.method public b(Lcom/truecaller/background_work/WorkActionPeriod;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/y2/p/d;->d:Ln3/c0/c0;

    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/y2/p/d;->c:Le/a/y2/p/b;

    invoke-virtual {v1, p1}, Le/a/y2/p/b;->a(Lcom/truecaller/background_work/WorkActionPeriod;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, v1, p1}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    int-to-long v1, p2

    .line 6
    invoke-interface {v0, p1, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    .line 7
    iget-object p1, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 8
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 9
    iget-object p1, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    .line 11
    iget-object p1, p0, Le/a/y2/p/d;->d:Ln3/c0/c0;

    invoke-virtual {p1, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    iget-object p2, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {p2}, Ln3/c0/q;->endTransaction()V

    .line 13
    iget-object p2, p0, Le/a/y2/p/d;->d:Ln3/c0/c0;

    invoke-virtual {p2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 14
    throw p1
.end method

.method public c(Lcom/truecaller/background_work/WorkActionPeriod;ZLjava/util/Collection;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/background_work/WorkActionPeriod;",
            "Z",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/truecaller/background_work/persistence/WorkActionRetryResult;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM WorkActionRetryResult WHERE period = "

    const-string v1, "?"

    const-string v2, " AND internetRequired = "

    const-string v3, " AND actionName IN ("

    .line 1
    invoke-static {v0, v1, v2, v1, v3}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    .line 3
    invoke-static {v0, v1}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    add-int/2addr v1, v2

    .line 6
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 7
    iget-object v1, p0, Le/a/y2/p/d;->c:Le/a/y2/p/b;

    invoke-virtual {v1, p1}, Le/a/y2/p/b;->a(Lcom/truecaller/background_work/WorkActionPeriod;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 8
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, v1, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_0
    int-to-long p1, p2

    .line 10
    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    const/4 p1, 0x3

    .line 11
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_1

    .line 12
    invoke-virtual {v0, p1}, Ln3/c0/y;->y0(I)V

    goto :goto_2

    .line 13
    :cond_1
    invoke-virtual {v0, p1, p3}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 14
    :cond_2
    iget-object p1, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 15
    iget-object p1, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {p1, v0, p2, p3}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v2, "actionName"

    .line 16
    invoke-static {p1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "period"

    .line 17
    invoke-static {p1, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "internetRequired"

    .line 18
    invoke-static {p1, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "retriedTimes"

    .line 19
    invoke-static {p1, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 20
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 22
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, p3

    goto :goto_4

    .line 23
    :cond_3
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 24
    :goto_4
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, p3

    goto :goto_5

    .line 25
    :cond_4
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 26
    :goto_5
    iget-object v9, p0, Le/a/y2/p/d;->c:Le/a/y2/p/b;

    .line 27
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "name"

    invoke-static {v8, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {v8}, Lcom/truecaller/background_work/WorkActionPeriod;->valueOf(Ljava/lang/String;)Lcom/truecaller/background_work/WorkActionPeriod;

    move-result-object v8

    .line 29
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_5

    move v9, v1

    goto :goto_6

    :cond_5
    move v9, p2

    .line 30
    :goto_6
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 31
    new-instance v11, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;

    invoke-direct {v11, v7, v8, v9, v10}, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;-><init>(Ljava/lang/String;Lcom/truecaller/background_work/WorkActionPeriod;ZI)V

    .line 32
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 33
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 34
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v6

    :catchall_0
    move-exception p2

    .line 35
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 36
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 37
    throw p2
.end method

.method public d(Lcom/truecaller/background_work/WorkActionPeriod;ZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/background_work/WorkActionPeriod;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE WorkActionRetryResult SET retriedTimes = retriedTimes + 1 "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "            WHERE period = "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND internetRequired = "

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND actionName IN ("

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .line 11
    invoke-static {v0, v1}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object v1, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {v1, v0}, Ln3/c0/q;->compileStatement(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object v0

    .line 15
    iget-object v1, p0, Le/a/y2/p/d;->c:Le/a/y2/p/b;

    invoke-virtual {v1, p1}, Le/a/y2/p/b;->a(Lcom/truecaller/background_work/WorkActionPeriod;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 16
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v0, v1, p1}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    int-to-long v1, p2

    .line 18
    invoke-interface {v0, p1, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    const/4 p1, 0x3

    .line 19
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_1

    .line 20
    invoke-interface {v0, p1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 21
    :cond_1
    invoke-interface {v0, p1, p3}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 22
    :cond_2
    iget-object p1, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 23
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 24
    iget-object p1, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object p1, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {p2}, Ln3/c0/q;->endTransaction()V

    .line 26
    throw p1
.end method

.method public e(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/background_work/persistence/WorkActionRetryResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/y2/p/d;->b:Ln3/c0/k;

    invoke-virtual {v0, p1}, Ln3/c0/k;->insert(Ljava/lang/Iterable;)V

    .line 4
    iget-object p1, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method

.method public f(Ljava/util/List;Le/a/y2/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Le/a/y2/g;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 2
    :try_start_0
    invoke-super {p0, p1, p2}, Le/a/y2/p/c;->f(Ljava/util/List;Le/a/y2/g;)V

    .line 3
    iget-object p1, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Le/a/y2/p/d;->a:Ln3/c0/q;

    invoke-virtual {p2}, Ln3/c0/q;->endTransaction()V

    .line 5
    throw p1
.end method
