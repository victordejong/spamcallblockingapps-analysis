.class public abstract Ln3/y/e/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/e/u$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/e/b0$b;,
        Ln3/y/e/b0$c;,
        Ln3/y/e/b0$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ln3/y/e/b0$c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ln3/y/e/b0$c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ln3/y/e/b0$a;

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Landroid/media/MediaFormat;

.field public g:Ln3/y/e/u;


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Ln3/y/e/b0;->a:Landroid/util/LongSparseArray;

    .line 3
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Ln3/y/e/b0;->b:Landroid/util/LongSparseArray;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/y/e/b0;->d:Ljava/util/ArrayList;

    .line 5
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 6
    iput-object p1, p0, Ln3/y/e/b0;->f:Landroid/media/MediaFormat;

    .line 7
    new-instance p1, Ln3/y/e/b0$a;

    invoke-direct {p1}, Ln3/y/e/b0$a;-><init>()V

    iput-object p1, p0, Ln3/y/e/b0;->c:Ln3/y/e/b0$a;

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public abstract a()Ln3/y/e/b0$b;
.end method

.method public b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/y/e/b0;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/y/e/b0;->g:Ln3/y/e/u;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p0}, Ln3/y/e/u;->b(Ln3/y/e/u$a;)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Ln3/y/e/b0;->a()Ln3/y/e/b0$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    check-cast v0, Ln3/y/e/f;

    const/16 v1, 0x8

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    invoke-virtual {v0}, Ln3/y/e/f;->c()V

    :cond_2
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Ln3/y/e/b0;->e:Z

    return-void
.end method

.method public abstract c([BZJ)V
.end method

.method public declared-synchronized d(Ln3/y/e/u;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/y/e/b0;->g:Ln3/y/e/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    :try_start_1
    invoke-interface {v0, p0}, Ln3/y/e/u;->b(Ln3/y/e/u$a;)V

    .line 4
    :cond_1
    iput-object p1, p0, Ln3/y/e/b0;->g:Ln3/y/e/u;

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1, p0}, Ln3/y/e/u;->a(Ln3/y/e/u$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/y/e/b0;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ln3/y/e/b0;->e:Z

    .line 3
    invoke-virtual {p0}, Ln3/y/e/b0;->a()Ln3/y/e/b0$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    check-cast v0, Ln3/y/e/f;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    invoke-virtual {v0}, Ln3/y/e/f;->c()V

    .line 7
    :cond_1
    iget-object v0, p0, Ln3/y/e/b0;->g:Ln3/y/e/u;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0, p0}, Ln3/y/e/u;->a(Ln3/y/e/u$a;)V

    :cond_2
    return-void
.end method

.method public finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/e/b0;->a:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Ln3/y/e/b0;->a:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/e/b0$c;

    :goto_1
    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Ln3/y/e/b0;->b:Landroid/util/LongSparseArray;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V

    .line 4
    iget-object v2, v1, Ln3/y/e/b0$c;->a:Ln3/y/e/b0$c;

    const/4 v3, 0x0

    .line 5
    iput-object v3, v1, Ln3/y/e/b0$c;->b:Ln3/y/e/b0$c;

    .line 6
    iput-object v3, v1, Ln3/y/e/b0$c;->a:Ln3/y/e/b0$c;

    move-object v1, v2

    goto :goto_1

    .line 7
    :cond_0
    iget-object v1, p0, Ln3/y/e/b0;->a:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
