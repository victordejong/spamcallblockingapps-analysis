.class public Landroidx/media2/player/MediaPlayer$n;
.super Landroidx/media2/player/MediaPlayer$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->t0(F)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/player/MediaPlayer$v<",
        "Landroidx/media2/common/SessionPlayer$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:F

.field public final synthetic l:Landroidx/media2/player/MediaPlayer;


# direct methods
.method public constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$n;->l:Landroidx/media2/player/MediaPlayer;

    iput p3, p0, Landroidx/media2/player/MediaPlayer$n;->k:F

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p2, p1}, Landroidx/media2/player/MediaPlayer$v;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-void
.end method


# virtual methods
.method public l()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ln3/h/a/f<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/media2/player/MediaPlayer$n;->k:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$n;->l:Landroidx/media2/player/MediaPlayer;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->K0(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v2, Ln3/h/a/f;

    invoke-direct {v2}, Ln3/h/a/f;-><init>()V

    .line 5
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$n;->l:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->e:Ljava/util/ArrayDeque;

    monitor-enter v3

    .line 6
    :try_start_0
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$n;->l:Landroidx/media2/player/MediaPlayer;

    iget-object v4, v4, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    .line 7
    invoke-virtual {v4}, Ln3/y/c/x0;->d()Ln3/y/c/z0;

    move-result-object v5

    const-string v6, "playbakcParams shouldn\'t be null"

    .line 8
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v5, v5, Ln3/y/c/z0;->a:Landroid/media/PlaybackParams;

    .line 10
    iget v6, p0, Landroidx/media2/player/MediaPlayer$n;->k:F

    cmpl-float v7, v6, v1

    if-eqz v7, :cond_2

    cmpg-float v1, v6, v1

    if-ltz v1, :cond_1

    .line 11
    invoke-virtual {v5, v6}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 12
    new-instance v1, Ln3/y/c/z0;

    invoke-direct {v1, v5}, Ln3/y/c/z0;-><init>(Landroid/media/PlaybackParams;)V

    .line 13
    check-cast v4, Ln3/y/c/m;

    .line 14
    new-instance v5, Ln3/y/c/n;

    const/4 v6, 0x0

    const/16 v7, 0x18

    invoke-direct {v5, v4, v7, v6, v1}, Ln3/y/c/n;-><init>(Ln3/y/c/m;IZLn3/y/c/z0;)V

    invoke-virtual {v4, v5}, Ln3/y/c/m;->f(Ln3/y/c/m$k;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$n;->l:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1, v7, v2, v5}, Landroidx/media2/player/MediaPlayer;->F0(ILn3/h/a/f;Ljava/lang/Object;)V

    .line 16
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 18
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative speed is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "0 speed is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 20
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
