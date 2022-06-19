.class public Ln3/y/c/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/h/a/f;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroidx/media2/player/MediaPlayer$u;

.field public final synthetic d:Landroidx/media2/player/MediaPlayer;


# direct methods
.method public constructor <init>(Landroidx/media2/player/MediaPlayer;Ln3/h/a/f;Ljava/lang/Object;Landroidx/media2/player/MediaPlayer$u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/l0;->d:Landroidx/media2/player/MediaPlayer;

    iput-object p2, p0, Ln3/y/c/l0;->a:Ln3/h/a/f;

    iput-object p3, p0, Ln3/y/c/l0;->b:Ljava/lang/Object;

    iput-object p4, p0, Ln3/y/c/l0;->c:Landroidx/media2/player/MediaPlayer$u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/c/l0;->a:Ln3/h/a/f;

    .line 2
    iget-object v0, v0, Ln3/h/a/a;->a:Ljava/lang/Object;

    .line 3
    instance-of v0, v0, Ln3/h/a/a$c;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Ln3/y/c/l0;->d:Landroidx/media2/player/MediaPlayer;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer;->e:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Ln3/y/c/l0;->d:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    iget-object v2, p0, Ln3/y/c/l0;->b:Ljava/lang/Object;

    check-cast v1, Ln3/y/c/m;

    .line 6
    iget-object v3, v1, Ln3/y/c/m;->d:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v1, v1, Ln3/y/c/m;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 8
    :try_start_2
    iget-object v1, p0, Ln3/y/c/l0;->d:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->e:Ljava/util/ArrayDeque;

    iget-object v2, p0, Ln3/y/c/l0;->c:Landroidx/media2/player/MediaPlayer$u;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 10
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_1
    :goto_0
    return-void
.end method
