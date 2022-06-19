.class public Landroidx/media2/player/MediaPlayer$m;
.super Landroidx/media2/player/MediaPlayer$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->n0(J)Lcom/google/common/util/concurrent/ListenableFuture;
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
.field public final synthetic k:J

.field public final synthetic l:Landroidx/media2/player/MediaPlayer;


# direct methods
.method public constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;ZJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$m;->l:Landroidx/media2/player/MediaPlayer;

    iput-wide p4, p0, Landroidx/media2/player/MediaPlayer$m;->k:J

    invoke-direct {p0, p2, p3}, Landroidx/media2/player/MediaPlayer$v;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-void
.end method


# virtual methods
.method public l()Ljava/util/List;
    .locals 12
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
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$m;->l:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->e:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$m;->l:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    iget-wide v8, p0, Landroidx/media2/player/MediaPlayer$m;->k:J

    .line 5
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    check-cast v3, Ln3/y/c/m;

    .line 7
    new-instance v11, Ln3/y/c/g0;

    const/16 v6, 0xe

    const/4 v7, 0x1

    const/4 v10, 0x0

    move-object v4, v11

    move-object v5, v3

    invoke-direct/range {v4 .. v10}, Ln3/y/c/g0;-><init>(Ln3/y/c/m;IZJI)V

    invoke-virtual {v3, v11}, Ln3/y/c/m;->f(Ln3/y/c/m$k;)Ljava/lang/Object;

    .line 8
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$m;->l:Landroidx/media2/player/MediaPlayer;

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v1, v11}, Landroidx/media2/player/MediaPlayer;->F0(ILn3/h/a/f;Ljava/lang/Object;)V

    .line 9
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
