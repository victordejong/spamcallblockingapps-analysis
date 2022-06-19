.class public Ln3/y/c/w0;
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
.field public final synthetic k:Landroidx/media2/common/MediaItem;

.field public final synthetic l:Landroidx/media2/player/MediaPlayer;


# direct methods
.method public constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/w0;->l:Landroidx/media2/player/MediaPlayer;

    iput-object p3, p0, Ln3/y/c/w0;->k:Landroidx/media2/common/MediaItem;

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p2, p1}, Landroidx/media2/player/MediaPlayer$v;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-void
.end method


# virtual methods
.method public l()Ljava/util/List;
    .locals 5
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
    iget-object v1, p0, Ln3/y/c/w0;->l:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Ln3/y/c/w0;->l:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$q;

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer$q;->a()V

    .line 4
    iget-object v2, p0, Ln3/y/c/w0;->l:Landroidx/media2/player/MediaPlayer;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Ln3/y/c/w0;->l:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v2, p0, Ln3/y/c/w0;->l:Landroidx/media2/player/MediaPlayer;

    iget-object v3, p0, Ln3/y/c/w0;->k:Landroidx/media2/common/MediaItem;

    iput-object v3, v2, Landroidx/media2/player/MediaPlayer;->p:Landroidx/media2/common/MediaItem;

    const/4 v3, 0x0

    .line 7
    iput-object v3, v2, Landroidx/media2/player/MediaPlayer;->q:Landroidx/media2/common/MediaItem;

    const/4 v4, -0x1

    .line 8
    iput v4, v2, Landroidx/media2/player/MediaPlayer;->o:I

    .line 9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    new-instance v1, Ln3/y/c/b;

    invoke-direct {v1, p0}, Ln3/y/c/b;-><init>(Ln3/y/c/w0;)V

    invoke-virtual {v2, v1}, Landroidx/media2/player/MediaPlayer;->W0(Landroidx/media2/player/MediaPlayer$x;)V

    .line 11
    iget-object v1, p0, Ln3/y/c/w0;->l:Landroidx/media2/player/MediaPlayer;

    iget-object v2, p0, Ln3/y/c/w0;->k:Landroidx/media2/common/MediaItem;

    invoke-virtual {v1, v2, v3}, Landroidx/media2/player/MediaPlayer;->m1(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
