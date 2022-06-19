.class public Ln3/y/c/k;
.super Ln3/y/c/m$k;
.source "SourceFile"


# instance fields
.field public final synthetic f:Landroidx/media2/common/MediaItem;

.field public final synthetic g:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;IZLandroidx/media2/common/MediaItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/k;->g:Ln3/y/c/m;

    iput-object p4, p0, Ln3/y/c/k;->f:Landroidx/media2/common/MediaItem;

    invoke-direct {p0, p1, p2, p3}, Ln3/y/c/m$k;-><init>(Ln3/y/c/m;IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/c/k;->g:Ln3/y/c/m;

    iget-object v0, v0, Ln3/y/c/m;->a:Ln3/y/c/j0;

    iget-object v1, p0, Ln3/y/c/k;->f:Landroidx/media2/common/MediaItem;

    .line 2
    iget-object v2, v0, Ln3/y/c/j0;->k:Ln3/y/c/j0$e;

    .line 3
    iget-object v2, v2, Ln3/y/c/j0$e;->e:Ln3/y/b/a/t0/j;

    invoke-virtual {v2}, Ln3/y/b/a/t0/j;->B()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 4
    instance-of v0, v1, Landroidx/media2/common/FileMediaItem;

    if-eqz v0, :cond_1

    .line 5
    check-cast v1, Landroidx/media2/common/FileMediaItem;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 7
    throw v0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 9
    :cond_2
    iget-object v0, v0, Ln3/y/c/j0;->k:Ln3/y/c/j0$e;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln3/y/c/j0$e;->f(Ljava/util/List;)V

    return-void
.end method
