.class public Ln3/y/e/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/e/x$a;,
        Ln3/y/e/x$b;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media2/common/SessionPlayer;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ln3/y/e/x$a;

.field public final d:Ln3/y/e/x$b;

.field public e:Z

.field public f:I

.field public g:Landroidx/media2/session/SessionCommandGroup;

.field public h:Landroidx/media2/common/MediaMetadata;

.field public final i:Landroidx/media2/session/SessionCommandGroup;


# direct methods
.method public constructor <init>(Landroidx/media2/common/SessionPlayer;Ljava/util/concurrent/Executor;Ln3/y/e/x$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln3/y/e/x;->f:I

    const-string v0, "player must not be null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "executor must not be null"

    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    .line 6
    iput-object p2, p0, Ln3/y/e/x;->b:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p3, p0, Ln3/y/e/x;->c:Ln3/y/e/x$a;

    .line 8
    new-instance p1, Ln3/y/e/x$b;

    invoke-direct {p1, p0}, Ln3/y/e/x$b;-><init>(Ln3/y/e/x;)V

    iput-object p1, p0, Ln3/y/e/x;->d:Ln3/y/e/x$b;

    .line 9
    new-instance p1, Landroidx/media2/session/SessionCommandGroup$a;

    invoke-direct {p1}, Landroidx/media2/session/SessionCommandGroup$a;-><init>()V

    .line 10
    sget-object p2, Landroidx/media2/session/SessionCommand;->d:Landroid/util/SparseArray;

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroidx/media2/session/SessionCommandGroup$a;->a(ILandroid/util/SparseArray;)V

    .line 11
    sget-object p2, Landroidx/media2/session/SessionCommand;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, p3, p2}, Landroidx/media2/session/SessionCommandGroup$a;->a(ILandroid/util/SparseArray;)V

    .line 12
    sget-object p2, Landroidx/media2/session/SessionCommand;->f:Landroid/util/SparseArray;

    invoke-virtual {p1, p3, p2}, Landroidx/media2/session/SessionCommandGroup$a;->a(ILandroid/util/SparseArray;)V

    .line 13
    sget-object p2, Landroidx/media2/session/SessionCommand;->g:Landroid/util/SparseArray;

    invoke-virtual {p1, p3, p2}, Landroidx/media2/session/SessionCommandGroup$a;->a(ILandroid/util/SparseArray;)V

    .line 14
    sget-object p2, Landroidx/media2/session/SessionCommand;->h:Landroid/util/SparseArray;

    invoke-virtual {p1, p3, p2}, Landroidx/media2/session/SessionCommandGroup$a;->a(ILandroid/util/SparseArray;)V

    .line 15
    new-instance p2, Landroidx/media2/session/SessionCommandGroup;

    iget-object p1, p1, Landroidx/media2/session/SessionCommandGroup$a;->a:Ljava/util/Set;

    invoke-direct {p2, p1}, Landroidx/media2/session/SessionCommandGroup;-><init>(Ljava/util/Collection;)V

    .line 16
    iput-object p2, p0, Ln3/y/e/x;->i:Landroidx/media2/session/SessionCommandGroup;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Ln3/y/e/x;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Ln3/y/e/x;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Ln3/y/e/x;->d:Ln3/y/e/x$b;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/common/SessionPlayer;->k0(Ljava/util/concurrent/Executor;Landroidx/media2/common/SessionPlayer$a;)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Ln3/y/e/x;->h()I

    move-result v0

    .line 5
    iget v1, p0, Ln3/y/e/x;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v0, :cond_2

    .line 6
    iput v0, p0, Ln3/y/e/x;->f:I

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    .line 7
    :goto_0
    iget-object v4, p0, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 8
    iget-object v4, p0, Ln3/y/e/x;->i:Landroidx/media2/session/SessionCommandGroup;

    goto :goto_1

    :cond_3
    move-object v4, v5

    .line 9
    :goto_1
    iget-object v6, p0, Ln3/y/e/x;->g:Landroidx/media2/session/SessionCommandGroup;

    .line 10
    invoke-static {v6, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 11
    iput-object v4, p0, Ln3/y/e/x;->g:Landroidx/media2/session/SessionCommandGroup;

    move v2, v3

    .line 12
    :cond_4
    invoke-virtual {p0}, Ln3/y/e/x;->e()Landroidx/media2/common/MediaItem;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_2

    .line 13
    :cond_5
    invoke-virtual {v6}, Landroidx/media2/common/MediaItem;->e()Landroidx/media2/common/MediaMetadata;

    move-result-object v5

    :goto_2
    iput-object v5, p0, Ln3/y/e/x;->h:Landroidx/media2/common/MediaMetadata;

    if-eqz v1, :cond_6

    .line 14
    iget-object v1, p0, Ln3/y/e/x;->c:Ln3/y/e/x$a;

    invoke-virtual {v1, p0, v0}, Ln3/y/e/x$a;->e(Ln3/y/e/x;I)V

    :cond_6
    if-eqz v4, :cond_7

    if-eqz v2, :cond_7

    .line 15
    iget-object v0, p0, Ln3/y/e/x;->c:Ln3/y/e/x$a;

    invoke-virtual {v0, p0, v4}, Ln3/y/e/x$a;->a(Ln3/y/e/x;Landroidx/media2/session/SessionCommandGroup;)V

    .line 16
    :cond_7
    iget-object v0, p0, Ln3/y/e/x;->c:Ln3/y/e/x$a;

    invoke-virtual {v0, p0, v6}, Ln3/y/e/x$a;->b(Ln3/y/e/x;Landroidx/media2/common/MediaItem;)V

    .line 17
    iget-object v0, p0, Ln3/y/e/x;->c:Ln3/y/e/x$a;

    .line 18
    iget-object v1, p0, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz v1, :cond_8

    .line 19
    invoke-virtual {v1}, Landroidx/media2/common/SessionPlayer;->E()F

    move-result v1

    goto :goto_3

    :cond_8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 20
    :goto_3
    invoke-virtual {v0, p0, v1}, Ln3/y/e/x$a;->d(Ln3/y/e/x;F)V

    .line 21
    invoke-virtual {p0}, Ln3/y/e/x;->k()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 22
    iget-object v1, p0, Ln3/y/e/x;->c:Ln3/y/e/x$a;

    invoke-virtual {v1, p0, v0}, Ln3/y/e/x$a;->k(Ln3/y/e/x;Ljava/util/List;)V

    .line 23
    :cond_9
    invoke-virtual {p0}, Ln3/y/e/x;->e()Landroidx/media2/common/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 24
    iget-object v0, p0, Ln3/y/e/x;->c:Ln3/y/e/x$a;

    invoke-virtual {p0}, Ln3/y/e/x;->l()Landroidx/media2/common/VideoSize;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ln3/y/e/x$a;->l(Ln3/y/e/x;Landroidx/media2/common/VideoSize;)V

    .line 25
    :cond_a
    iput-boolean v3, p0, Ln3/y/e/x;->e:Z

    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/e/x;->g:Landroidx/media2/session/SessionCommandGroup;

    if-eqz v0, :cond_0

    const v1, 0x9c40

    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Ln3/y/e/x;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, p0, Ln3/y/e/x;->d:Ln3/y/e/x$b;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "callback shouldn\'t be null"

    .line 5
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v2, v0, Landroidx/media2/common/SessionPlayer;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 7
    :try_start_0
    iget-object v3, v0, Landroidx/media2/common/SessionPlayer;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :cond_1
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2

    .line 8
    iget-object v4, v0, Landroidx/media2/common/SessionPlayer;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/k/h/c;

    iget-object v4, v4, Ln3/k/h/c;->a:Ljava/lang/Object;

    if-ne v4, v1, :cond_1

    .line 9
    iget-object v4, v0, Landroidx/media2/common/SessionPlayer;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Ln3/y/e/x;->e:Z

    return-void
.end method

.method public d()J
    .locals 7

    .line 1
    iget v0, p0, Ln3/y/e/x;->f:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ln3/y/e/x;->g()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    return-wide v1

    .line 3
    :cond_1
    iget-object v0, p0, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->d()J

    move-result-wide v5

    goto :goto_0

    :cond_2
    move-wide v5, v1

    :goto_0
    cmp-long v0, v5, v1

    if-gez v0, :cond_3

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x64

    mul-long/2addr v5, v0

    .line 5
    div-long v1, v5, v3

    :goto_1
    return-wide v1
.end method

.method public e()Landroidx/media2/common/MediaItem;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->k()Landroidx/media2/common/MediaItem;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()J
    .locals 5

    .line 1
    iget v0, p0, Ln3/y/e/x;->f:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->l()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    move-wide v1, v3

    :goto_1
    return-wide v1
.end method

.method public g()J
    .locals 5

    .line 1
    iget v0, p0, Ln3/y/e/x;->f:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->q()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    move-wide v1, v3

    :goto_1
    return-wide v1
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->I()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i(I)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/media2/common/SessionPlayer;->K(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public j()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/e/x;->h:Landroidx/media2/common/MediaMetadata;

    if-eqz v0, :cond_0

    const-string v1, "android.media.metadata.TITLE"

    .line 2
    invoke-virtual {v0, v1}, Landroidx/media2/common/MediaMetadata;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ln3/y/e/x;->h:Landroidx/media2/common/MediaMetadata;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, v0, Landroidx/media2/common/MediaMetadata;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->P()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public l()Landroidx/media2/common/VideoSize;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->Q()Landroidx/media2/common/VideoSize;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroidx/media2/common/VideoSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/media2/common/VideoSize;-><init>(II)V

    return-object v0
.end method

.method public m()Z
    .locals 2

    .line 1
    iget v0, p0, Ln3/y/e/x;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroidx/media2/common/SessionPlayer;->n0(J)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    return-void
.end method

.method public o(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+",
            "Ln3/y/a/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/media2/common/SessionPlayer;->z0(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
