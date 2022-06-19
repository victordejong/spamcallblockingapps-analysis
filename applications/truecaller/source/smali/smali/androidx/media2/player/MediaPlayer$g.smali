.class public Landroidx/media2/player/MediaPlayer$g;
.super Landroidx/media2/player/MediaPlayer$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->W()Lcom/google/common/util/concurrent/ListenableFuture;
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
.field public final synthetic k:Landroidx/media2/player/MediaPlayer;


# direct methods
.method public constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$g;->k:Landroidx/media2/player/MediaPlayer;

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
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$g;->k:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->k:Ln3/y/c/d;

    .line 3
    iget-object v1, v1, Ln3/y/c/d;->a:Ln3/y/c/d$a;

    check-cast v1, Ln3/y/c/d$b;

    .line 4
    iget-object v2, v1, Ln3/y/c/d$b;->f:Landroidx/media2/player/MediaPlayer;

    .line 5
    iget-object v3, v2, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 6
    :try_start_0
    iget-boolean v4, v2, Landroidx/media2/player/MediaPlayer;->j:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 7
    monitor-exit v3

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :try_start_1
    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    invoke-virtual {v2}, Ln3/y/c/x0;->b()Landroidx/media/AudioAttributesCompat;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 10
    :catch_0
    :goto_0
    iget-object v2, v1, Ln3/y/c/d$b;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 11
    :try_start_2
    iput-object v5, v1, Ln3/y/c/d$b;->h:Landroidx/media/AudioAttributesCompat;

    const/4 v3, 0x1

    if-nez v5, :cond_1

    .line 12
    invoke-virtual {v1}, Ln3/y/c/d$b;->a()V

    .line 13
    invoke-virtual {v1}, Ln3/y/c/d$b;->c()V

    goto :goto_2

    .line 14
    :cond_1
    invoke-virtual {v1}, Ln3/y/c/d$b;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 15
    iget-boolean v5, v1, Ln3/y/c/d$b;->k:Z

    if-eqz v5, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    iget-object v5, v1, Ln3/y/c/d$b;->e:Landroid/content/Context;

    iget-object v6, v1, Ln3/y/c/d$b;->a:Landroid/content/BroadcastReceiver;

    iget-object v7, v1, Ln3/y/c/d$b;->b:Landroid/content/IntentFilter;

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 17
    iput-boolean v3, v1, Ln3/y/c/d$b;->k:Z

    :cond_3
    :goto_1
    move v3, v4

    .line 18
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_5

    .line 19
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$g;->k:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    invoke-virtual {v1}, Ln3/y/c/x0;->b()Landroidx/media/AudioAttributesCompat;

    move-result-object v1

    if-nez v1, :cond_4

    .line 20
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$g;->k:Landroidx/media2/player/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media2/player/MediaPlayer;->z1(F)Ln3/h/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_4
    new-instance v1, Ln3/h/a/f;

    invoke-direct {v1}, Ln3/h/a/f;-><init>()V

    .line 22
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$g;->k:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->e:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 23
    :try_start_3
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$g;->k:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    check-cast v3, Ln3/y/c/m;

    .line 24
    new-instance v4, Ln3/y/c/e0;

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-direct {v4, v3, v6, v5}, Ln3/y/c/e0;-><init>(Ln3/y/c/m;IZ)V

    invoke-virtual {v3, v4}, Ln3/y/c/m;->f(Ln3/y/c/m$k;)Ljava/lang/Object;

    .line 25
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$g;->k:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v3, v6, v1, v4}, Landroidx/media2/player/MediaPlayer;->F0(ILn3/h/a/f;Ljava/lang/Object;)V

    .line 26
    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 27
    :cond_5
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$g;->k:Landroidx/media2/player/MediaPlayer;

    const/4 v2, -0x1

    .line 28
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v3, Ln3/h/a/f;

    invoke-direct {v3}, Ln3/h/a/f;-><init>()V

    .line 30
    new-instance v4, Landroidx/media2/common/SessionPlayer$b;

    .line 31
    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    invoke-virtual {v1}, Ln3/y/c/x0;->c()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-direct {v4, v2, v1}, Landroidx/media2/common/SessionPlayer$b;-><init>(ILandroidx/media2/common/MediaItem;)V

    .line 32
    invoke-virtual {v3, v4}, Ln3/h/a/f;->h(Ljava/lang/Object;)Z

    move-object v1, v3

    .line 33
    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :catchall_1
    move-exception v0

    .line 34
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 35
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method
