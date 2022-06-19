.class public Landroidx/media2/player/MediaPlayer$e;
.super Landroidx/media2/player/MediaPlayer$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->p0(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
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
.field public final synthetic k:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field public final synthetic l:Landroidx/media2/player/MediaPlayer;


# direct methods
.method public constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$e;->l:Landroidx/media2/player/MediaPlayer;

    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$e;->k:Landroidx/media2/common/SessionPlayer$TrackInfo;

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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ln3/h/a/f;

    invoke-direct {v1}, Ln3/h/a/f;-><init>()V

    .line 3
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$e;->l:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->e:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$e;->l:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$e;->k:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 5
    iget v4, v4, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    .line 6
    check-cast v3, Ln3/y/c/m;

    .line 7
    new-instance v5, Ln3/y/c/v;

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-direct {v5, v3, v7, v6, v4}, Ln3/y/c/v;-><init>(Ln3/y/c/m;IZI)V

    invoke-virtual {v3, v5}, Ln3/y/c/m;->f(Ln3/y/c/m$k;)Ljava/lang/Object;

    .line 8
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$e;->l:Landroidx/media2/player/MediaPlayer;

    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$e;->k:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 9
    new-instance v6, Landroidx/media2/player/MediaPlayer$u;

    invoke-direct {v6, v7, v1, v4}, Landroidx/media2/player/MediaPlayer$u;-><init>(ILn3/h/a/f;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    .line 10
    iget-object v4, v3, Landroidx/media2/player/MediaPlayer;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v4, Ln3/y/c/l0;

    invoke-direct {v4, v3, v1, v5, v6}, Ln3/y/c/l0;-><init>(Landroidx/media2/player/MediaPlayer;Ln3/h/a/f;Ljava/lang/Object;Landroidx/media2/player/MediaPlayer$u;)V

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->d:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v4, v3}, Ln3/h/a/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 12
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
