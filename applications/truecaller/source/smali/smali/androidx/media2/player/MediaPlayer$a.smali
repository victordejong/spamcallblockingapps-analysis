.class public Landroidx/media2/player/MediaPlayer$a;
.super Landroidx/media2/player/MediaPlayer$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->D0()Lcom/google/common/util/concurrent/ListenableFuture;
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
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$a;->k:Landroidx/media2/player/MediaPlayer;

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p2, p1}, Landroidx/media2/player/MediaPlayer$v;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-void
.end method


# virtual methods
.method public l()Ljava/util/List;
    .locals 4
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
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$a;->k:Landroidx/media2/player/MediaPlayer;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$a;->k:Landroidx/media2/player/MediaPlayer;

    iget v2, v1, Landroidx/media2/player/MediaPlayer;->o:I

    const/4 v3, -0x2

    if-gez v2, :cond_0

    .line 3
    invoke-virtual {v1, v3}, Landroidx/media2/player/MediaPlayer;->K0(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_1

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$a;->k:Landroidx/media2/player/MediaPlayer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$a;->k:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1, v3}, Landroidx/media2/player/MediaPlayer;->K0(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 6
    :cond_1
    iput v2, v1, Landroidx/media2/player/MediaPlayer;->o:I

    .line 7
    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->F1()Ln3/k/h/c;

    .line 8
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$a;->k:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v1, Landroidx/media2/player/MediaPlayer;->p:Landroidx/media2/common/MediaItem;

    .line 9
    iget-object v3, v1, Landroidx/media2/player/MediaPlayer;->q:Landroidx/media2/common/MediaItem;

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {v1, v2, v3}, Landroidx/media2/player/MediaPlayer;->m1(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
