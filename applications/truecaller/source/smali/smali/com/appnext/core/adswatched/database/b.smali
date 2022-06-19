.class public final Lcom/appnext/core/adswatched/database/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/adswatched/database/a;


# instance fields
.field private final ev:Ln3/c0/q;

.field private final ew:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Lcom/appnext/core/adswatched/database/AdWatched;",
            ">;"
        }
    .end annotation
.end field

.field private final ex:Ln3/c0/c0;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/appnext/core/adswatched/database/b;->ev:Ln3/c0/q;

    .line 3
    new-instance v0, Lcom/appnext/core/adswatched/database/b$1;

    invoke-direct {v0, p0, p1}, Lcom/appnext/core/adswatched/database/b$1;-><init>(Lcom/appnext/core/adswatched/database/b;Ln3/c0/q;)V

    iput-object v0, p0, Lcom/appnext/core/adswatched/database/b;->ew:Ln3/c0/k;

    .line 4
    new-instance v0, Lcom/appnext/core/adswatched/database/b$2;

    invoke-direct {v0, p0, p1}, Lcom/appnext/core/adswatched/database/b$2;-><init>(Lcom/appnext/core/adswatched/database/b;Ln3/c0/q;)V

    iput-object v0, p0, Lcom/appnext/core/adswatched/database/b;->ex:Ln3/c0/c0;

    return-void
.end method


# virtual methods
.method public final C(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT adwatched.bannerId FROM adwatched WHERE  adwatched.auid Like ?"

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
    iget-object p1, p0, Lcom/appnext/core/adswatched/database/b;->ev:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 5
    iget-object p1, p0, Lcom/appnext/core/adswatched/database/b;->ev:Ln3/c0/q;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 12
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 13
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 14
    throw v1
.end method

.method public final D(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appnext/core/adswatched/database/b;->ev:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/appnext/core/adswatched/database/b;->ex:Ln3/c0/c0;

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
    iget-object p1, p0, Lcom/appnext/core/adswatched/database/b;->ev:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/appnext/core/adswatched/database/b;->ev:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v1, p0, Lcom/appnext/core/adswatched/database/b;->ev:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 9
    iget-object v1, p0, Lcom/appnext/core/adswatched/database/b;->ex:Ln3/c0/c0;

    invoke-virtual {v1, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return p1

    :catchall_0
    move-exception p1

    .line 10
    iget-object v1, p0, Lcom/appnext/core/adswatched/database/b;->ev:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 11
    iget-object v1, p0, Lcom/appnext/core/adswatched/database/b;->ex:Ln3/c0/c0;

    invoke-virtual {v1, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 12
    throw p1
.end method

.method public final a(Lcom/appnext/core/adswatched/database/AdWatched;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appnext/core/adswatched/database/b;->ev:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/appnext/core/adswatched/database/b;->ev:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/adswatched/database/b;->ew:Ln3/c0/k;

    invoke-virtual {v0, p1}, Ln3/c0/k;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lcom/appnext/core/adswatched/database/b;->ev:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/appnext/core/adswatched/database/b;->ev:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/appnext/core/adswatched/database/b;->ev:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method
