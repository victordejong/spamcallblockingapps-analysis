.class public Ln3/y/c/w;
.super Ln3/y/c/m$k;
.source "SourceFile"


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;IZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/w;->g:Ln3/y/c/m;

    iput p4, p0, Ln3/y/c/w;->f:I

    invoke-direct {p0, p1, p2, p3}, Ln3/y/c/m$k;-><init>(Ln3/y/c/m;IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/y/c/w;->g:Ln3/y/c/m;

    iget-object v0, v0, Ln3/y/c/m;->a:Ln3/y/c/j0;

    iget v1, p0, Ln3/y/c/w;->f:I

    .line 2
    iget-object v0, v0, Ln3/y/c/j0;->j:Ln3/y/c/d1;

    .line 3
    iget-object v2, v0, Ln3/y/c/d1;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/c/d1$b;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v5, "Video track deselection is not supported"

    .line 4
    invoke-static {v2, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->o(ZLjava/lang/Object;)V

    .line 5
    iget-object v2, v0, Ln3/y/c/d1;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/c/d1$b;

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v5, "Audio track deselection is not supported"

    .line 6
    invoke-static {v2, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->o(ZLjava/lang/Object;)V

    .line 7
    iget-object v2, v0, Ln3/y/c/d1;->g:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/c/d1$b;

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 8
    iput-object v5, v0, Ln3/y/c/d1;->l:Ln3/y/c/d1$b;

    .line 9
    iget-object v0, v0, Ln3/y/c/d1;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->d()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;

    move-result-object v1

    const/4 v2, 0x3

    .line 10
    invoke-virtual {v1, v2, v4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->b(IZ)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;

    .line 11
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->m(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;)V

    goto :goto_2

    .line 12
    :cond_2
    iget-object v2, v0, Ln3/y/c/d1;->m:Ln3/y/c/d1$a;

    if-eqz v2, :cond_3

    iget-object v2, v2, Ln3/y/c/d1$b;->b:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 13
    iget v2, v2, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    if-ne v2, v1, :cond_3

    move v3, v4

    .line 14
    :cond_3
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat;->n(Z)V

    .line 15
    iget-object v1, v0, Ln3/y/c/d1;->c:Ln3/y/c/b1;

    invoke-virtual {v1}, Ln3/y/c/b1;->G()V

    .line 16
    iput-object v5, v0, Ln3/y/c/d1;->m:Ln3/y/c/d1$a;

    :goto_2
    return-void
.end method
