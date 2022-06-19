.class public Ln3/y/c/u0;
.super Landroidx/media2/player/MediaPlayer$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/player/MediaPlayer$v<",
        "Landroidx/media2/common/SessionPlayer$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Landroidx/media2/player/MediaPlayer;


# direct methods
.method public constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/u0;->k:Landroidx/media2/player/MediaPlayer;

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p2, p1}, Landroidx/media2/player/MediaPlayer$v;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-void
.end method


# virtual methods
.method public l()Ljava/util/List;
    .locals 7
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
    iget-object v2, p0, Ln3/y/c/u0;->k:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->e:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v3, p0, Ln3/y/c/u0;->k:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    check-cast v3, Ln3/y/c/m;

    .line 5
    new-instance v4, Ln3/y/c/d0;

    const/4 v5, 0x1

    const/4 v6, 0x6

    invoke-direct {v4, v3, v6, v5}, Ln3/y/c/d0;-><init>(Ln3/y/c/m;IZ)V

    invoke-virtual {v3, v4}, Ln3/y/c/m;->f(Ln3/y/c/m$k;)Ljava/lang/Object;

    .line 6
    iget-object v3, p0, Ln3/y/c/u0;->k:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v3, v6, v1, v4}, Landroidx/media2/player/MediaPlayer;->F0(ILn3/h/a/f;Ljava/lang/Object;)V

    .line 7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v2, p0, Ln3/y/c/u0;->k:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v2, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    invoke-virtual {v3}, Ln3/y/c/x0;->c()Landroidx/media2/common/MediaItem;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroidx/media2/player/MediaPlayer;->l1(Landroidx/media2/common/MediaItem;I)V

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
