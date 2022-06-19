.class public Ln3/y/c/c0;
.super Ln3/y/c/m$k;
.source "SourceFile"


# instance fields
.field public final synthetic f:Landroidx/media2/common/MediaItem;

.field public final synthetic g:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;IZLandroidx/media2/common/MediaItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/c0;->g:Ln3/y/c/m;

    iput-object p4, p0, Ln3/y/c/c0;->f:Landroidx/media2/common/MediaItem;

    invoke-direct {p0, p1, p2, p3}, Ln3/y/c/m$k;-><init>(Ln3/y/c/m;IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/y/c/c0;->g:Ln3/y/c/m;

    iget-object v0, v0, Ln3/y/c/m;->a:Ln3/y/c/j0;

    iget-object v1, p0, Ln3/y/c/c0;->f:Landroidx/media2/common/MediaItem;

    .line 2
    iget-object v0, v0, Ln3/y/c/j0;->k:Ln3/y/c/j0$e;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Ln3/y/c/j0$e;->a()V

    .line 5
    iget-object v2, v0, Ln3/y/c/j0$e;->e:Ln3/y/b/a/t0/j;

    .line 6
    monitor-enter v2

    const/4 v3, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v2}, Ln3/y/b/a/t0/j;->B()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ln3/y/b/a/t0/j;->D(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v2

    .line 9
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln3/y/c/j0$e;->f(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v0

    .line 10
    monitor-exit v2

    throw v0
.end method
