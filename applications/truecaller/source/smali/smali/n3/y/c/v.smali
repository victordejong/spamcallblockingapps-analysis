.class public Ln3/y/c/v;
.super Ln3/y/c/m$k;
.source "SourceFile"


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;IZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/v;->g:Ln3/y/c/m;

    iput p4, p0, Ln3/y/c/v;->f:I

    invoke-direct {p0, p1, p2, p3}, Ln3/y/c/m$k;-><init>(Ln3/y/c/m;IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/y/c/v;->g:Ln3/y/c/m;

    iget-object v0, v0, Ln3/y/c/m;->a:Ln3/y/c/j0;

    iget v1, p0, Ln3/y/c/v;->f:I

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
    const-string v5, "Video track selection is not supported"

    .line 4
    invoke-static {v2, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->o(ZLjava/lang/Object;)V

    .line 5
    iget-object v2, v0, Ln3/y/c/d1;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/c/d1$b;

    if-eqz v2, :cond_2

    .line 6
    iput-object v2, v0, Ln3/y/c/d1;->j:Ln3/y/c/d1$b;

    .line 7
    iget-object v1, v0, Ln3/y/c/d1;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    .line 8
    iget-object v1, v1, Ln3/y/b/a/v0/d;->c:Ln3/y/b/a/v0/d$a;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, v1, Ln3/y/b/a/v0/d$a;->c:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v1, v1, v4

    .line 11
    iget v5, v2, Ln3/y/c/d1$b;->a:I

    .line 12
    iget-object v6, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object v5, v6, v5

    .line 13
    iget v5, v5, Landroidx/media2/exoplayer/external/source/TrackGroup;->a:I

    new-array v6, v5, [I

    :goto_1
    if-ge v3, v5, :cond_1

    .line 14
    aput v3, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 15
    :cond_1
    new-instance v3, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;

    iget v2, v2, Ln3/y/c/d1$b;->a:I

    invoke-direct {v3, v2, v6}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    .line 16
    iget-object v0, v0, Ln3/y/c/d1;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->d()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;

    move-result-object v2

    .line 17
    invoke-virtual {v2, v4, v1, v3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->c(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;

    .line 18
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->a()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->l(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    goto/16 :goto_3

    .line 20
    :cond_2
    iget-object v2, v0, Ln3/y/c/d1;->g:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/c/d1$b;

    if-eqz v2, :cond_3

    .line 21
    iput-object v2, v0, Ln3/y/c/d1;->l:Ln3/y/c/d1$b;

    .line 22
    iget-object v1, v0, Ln3/y/c/d1;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    .line 23
    iget-object v1, v1, Ln3/y/b/a/v0/d;->c:Ln3/y/b/a/v0/d$a;

    .line 24
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v1, v1, Ln3/y/b/a/v0/d$a;->c:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    const/4 v5, 0x3

    aget-object v1, v1, v5

    .line 26
    new-instance v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;

    iget v2, v2, Ln3/y/c/d1$b;->a:I

    new-array v4, v4, [I

    aput v3, v4, v3

    invoke-direct {v6, v2, v4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    .line 27
    iget-object v0, v0, Ln3/y/c/d1;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->d()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;

    move-result-object v2

    .line 28
    invoke-virtual {v2, v5, v3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->b(IZ)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;

    .line 29
    invoke-virtual {v2, v5, v1, v6}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->c(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;

    .line 30
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->a()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->l(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    goto :goto_3

    .line 32
    :cond_3
    iget-object v2, v0, Ln3/y/c/d1;->h:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/c/d1$a;

    if-eqz v1, :cond_4

    move v2, v4

    goto :goto_2

    :cond_4
    move v2, v3

    .line 33
    :goto_2
    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->n(Z)V

    .line 34
    iget v2, v0, Ln3/y/c/d1;->n:I

    iget v5, v1, Ln3/y/c/d1$b;->a:I

    if-eq v2, v5, :cond_5

    .line 35
    iget-object v2, v0, Ln3/y/c/d1;->c:Ln3/y/c/b1;

    invoke-virtual {v2}, Ln3/y/c/b1;->G()V

    .line 36
    iget v2, v1, Ln3/y/c/d1$b;->a:I

    iput v2, v0, Ln3/y/c/d1;->n:I

    .line 37
    iget-object v2, v0, Ln3/y/c/d1;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    .line 38
    iget-object v2, v2, Ln3/y/b/a/v0/d;->c:Ln3/y/b/a/v0/d$a;

    .line 39
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v2, v2, Ln3/y/b/a/v0/d$a;->c:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    const/4 v5, 0x2

    aget-object v2, v2, v5

    .line 41
    new-instance v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;

    iget v7, v0, Ln3/y/c/d1;->n:I

    new-array v4, v4, [I

    aput v3, v4, v3

    invoke-direct {v6, v7, v4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    .line 42
    iget-object v3, v0, Ln3/y/c/d1;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->d()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;

    move-result-object v4

    .line 43
    invoke-virtual {v4, v5, v2, v6}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->c(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;

    .line 44
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->a()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v2

    .line 45
    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->l(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    .line 46
    :cond_5
    iget v2, v1, Ln3/y/c/d1$a;->d:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 47
    iget-object v3, v0, Ln3/y/c/d1;->c:Ln3/y/c/b1;

    iget v4, v1, Ln3/y/c/d1$a;->c:I

    invoke-virtual {v3, v4, v2}, Ln3/y/c/b1;->K(II)V

    .line 48
    :cond_6
    iput-object v1, v0, Ln3/y/c/d1;->m:Ln3/y/c/d1$a;

    :goto_3
    return-void
.end method
