.class public Ln3/y/c/n0;
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
.field public final synthetic k:I

.field public final synthetic l:J

.field public final synthetic m:Landroidx/media2/player/MediaPlayer;


# direct methods
.method public constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;ZIJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/n0;->m:Landroidx/media2/player/MediaPlayer;

    iput p4, p0, Ln3/y/c/n0;->k:I

    iput-wide p5, p0, Ln3/y/c/n0;->l:J

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
    sget-object v2, Landroidx/media2/player/MediaPlayer;->v:Ln3/g/a;

    iget v3, p0, Ln3/y/c/n0;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln3/g/h;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    sget-object v2, Landroidx/media2/player/MediaPlayer;->v:Ln3/g/a;

    iget v3, p0, Ln3/y/c/n0;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v9, v2

    .line 5
    iget-object v2, p0, Ln3/y/c/n0;->m:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->e:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 6
    :try_start_0
    iget-object v3, p0, Ln3/y/c/n0;->m:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->c:Ln3/y/c/x0;

    iget-wide v7, p0, Ln3/y/c/n0;->l:J

    move-object v10, v3

    check-cast v10, Ln3/y/c/m;

    .line 7
    new-instance v11, Ln3/y/c/g0;

    const/16 v5, 0xe

    const/4 v6, 0x1

    move-object v3, v11

    move-object v4, v10

    invoke-direct/range {v3 .. v9}, Ln3/y/c/g0;-><init>(Ln3/y/c/m;IZJI)V

    invoke-virtual {v10, v11}, Ln3/y/c/m;->f(Ln3/y/c/m$k;)Ljava/lang/Object;

    .line 8
    iget-object v3, p0, Ln3/y/c/n0;->m:Landroidx/media2/player/MediaPlayer;

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
