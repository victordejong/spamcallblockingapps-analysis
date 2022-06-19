.class public final Ln3/y/b/a/t0/q0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/t0/j0;


# instance fields
.field public final a:I

.field public final b:Ln3/y/b/a/t0/q0/n;

.field public c:I


# direct methods
.method public constructor <init>(Ln3/y/b/a/t0/q0/n;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/t0/q0/j;->b:Ln3/y/b/a/t0/q0/n;

    .line 3
    iput p2, p0, Ln3/y/b/a/t0/q0/j;->a:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Ln3/y/b/a/t0/q0/j;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ln3/y/b/a/t0/q0/j;->c:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/b/a/t0/q0/j;->b:Ln3/y/b/a/t0/q0/n;

    invoke-virtual {v0}, Ln3/y/b/a/t0/q0/n;->B()V

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Ln3/y/b/a/t0/q0/j;->b:Ln3/y/b/a/t0/q0/n;

    .line 4
    invoke-virtual {v1}, Ln3/y/b/a/t0/q0/n;->B()V

    .line 5
    iget-object v1, v1, Ln3/y/b/a/t0/q0/n;->s:[Ln3/y/b/a/t0/k;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ln3/y/b/a/t0/k;->b()V

    :cond_1
    :goto_0
    return-void

    .line 6
    :cond_2
    new-instance v0, Ln3/y/b/a/t0/q0/o;

    iget-object v1, p0, Ln3/y/b/a/t0/q0/j;->b:Ln3/y/b/a/t0/q0/n;

    .line 7
    iget-object v1, v1, Ln3/y/b/a/t0/q0/n;->K:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 8
    iget v2, p0, Ln3/y/b/a/t0/q0/j;->a:I

    .line 9
    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object v1, v1, v2

    const/4 v2, 0x0

    .line 10
    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    aget-object v1, v1, v2

    .line 11
    iget-object v1, v1, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ln3/y/b/a/t0/q0/o;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Z
    .locals 5

    .line 1
    iget v0, p0, Ln3/y/b/a/t0/q0/j;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x3

    if-eq v0, v3, :cond_1

    .line 2
    invoke-virtual {p0}, Ln3/y/b/a/t0/q0/j;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ln3/y/b/a/t0/q0/j;->b:Ln3/y/b/a/t0/q0/n;

    iget v3, p0, Ln3/y/b/a/t0/q0/j;->c:I

    .line 3
    invoke-virtual {v0}, Ln3/y/b/a/t0/q0/n;->z()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Ln3/y/b/a/t0/q0/n;->s:[Ln3/y/b/a/t0/k;

    aget-object v3, v4, v3

    iget-boolean v0, v0, Ln3/y/b/a/t0/q0/n;->V:Z

    invoke-virtual {v3, v0}, Ln3/y/b/a/t0/k;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public c(J)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/t0/q0/j;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Ln3/y/b/a/t0/q0/j;->b:Ln3/y/b/a/t0/q0/n;

    iget v2, p0, Ln3/y/b/a/t0/q0/j;->c:I

    .line 3
    invoke-virtual {v0}, Ln3/y/b/a/t0/q0/n;->z()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v3, v0, Ln3/y/b/a/t0/q0/n;->r:[Ln3/y/b/a/t0/i0;

    aget-object v2, v3, v2

    .line 5
    iget-boolean v0, v0, Ln3/y/b/a/t0/q0/n;->V:Z

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ln3/y/b/a/t0/i0;->j()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-lez v0, :cond_1

    .line 6
    invoke-virtual {v2}, Ln3/y/b/a/t0/i0;->f()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 7
    invoke-virtual {v2, p1, p2, v0, v0}, Ln3/y/b/a/t0/i0;->e(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, p1

    :cond_3
    :goto_1
    return v1
.end method

.method public d(Ln3/y/b/a/x;Ln3/y/b/a/o0/c;Z)I
    .locals 12

    .line 1
    iget v0, p0, Ln3/y/b/a/t0/q0/j;->c:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget p1, p2, Ln3/y/b/a/o0/c;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p2, Ln3/y/b/a/o0/c;->a:I

    const/4 p1, -0x4

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Ln3/y/b/a/t0/q0/j;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4
    iget-object v0, p0, Ln3/y/b/a/t0/q0/j;->b:Ln3/y/b/a/t0/q0/n;

    iget v2, p0, Ln3/y/b/a/t0/q0/j;->c:I

    .line 5
    invoke-virtual {v0}, Ln3/y/b/a/t0/q0/n;->z()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_5

    .line 6
    :cond_1
    iget-object v1, v0, Ln3/y/b/a/t0/q0/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_6

    move v1, v3

    .line 7
    :goto_0
    iget-object v4, v0, Ln3/y/b/a/t0/q0/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_4

    iget-object v4, v0, Ln3/y/b/a/t0/q0/n;->k:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/y/b/a/t0/q0/h;

    .line 9
    iget v4, v4, Ln3/y/b/a/t0/q0/h;->j:I

    .line 10
    iget-object v6, v0, Ln3/y/b/a/t0/q0/n;->r:[Ln3/y/b/a/t0/i0;

    array-length v6, v6

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_3

    .line 11
    iget-object v8, v0, Ln3/y/b/a/t0/q0/n;->P:[Z

    aget-boolean v8, v8, v7

    if-eqz v8, :cond_2

    iget-object v8, v0, Ln3/y/b/a/t0/q0/n;->r:[Ln3/y/b/a/t0/i0;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Ln3/y/b/a/t0/i0;->l()I

    move-result v8

    if-ne v8, v4, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_4
    iget-object v4, v0, Ln3/y/b/a/t0/q0/n;->k:Ljava/util/ArrayList;

    invoke-static {v4, v3, v1}, Ln3/y/b/a/x0/x;->y(Ljava/util/List;II)V

    .line 13
    iget-object v1, v0, Ln3/y/b/a/t0/q0/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/t0/q0/h;

    .line 14
    iget-object v11, v1, Ln3/y/b/a/t0/p0/b;->c:Landroidx/media2/exoplayer/external/Format;

    .line 15
    iget-object v4, v0, Ln3/y/b/a/t0/q0/n;->E:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v11, v4}, Landroidx/media2/exoplayer/external/Format;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 16
    iget-object v4, v0, Ln3/y/b/a/t0/q0/n;->i:Ln3/y/b/a/t0/c0$a;

    iget v5, v0, Ln3/y/b/a/t0/q0/n;->a:I

    iget v7, v1, Ln3/y/b/a/t0/p0/b;->d:I

    iget-object v8, v1, Ln3/y/b/a/t0/p0/b;->e:Ljava/lang/Object;

    iget-wide v9, v1, Ln3/y/b/a/t0/p0/b;->f:J

    move-object v6, v11

    invoke-virtual/range {v4 .. v10}, Ln3/y/b/a/t0/c0$a;->b(ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;J)V

    .line 17
    :cond_5
    iput-object v11, v0, Ln3/y/b/a/t0/q0/n;->E:Landroidx/media2/exoplayer/external/Format;

    .line 18
    :cond_6
    iget-object v1, v0, Ln3/y/b/a/t0/q0/n;->s:[Ln3/y/b/a/t0/k;

    aget-object v4, v1, v2

    iget-boolean v8, v0, Ln3/y/b/a/t0/q0/n;->V:Z

    iget-wide v9, v0, Ln3/y/b/a/t0/q0/n;->R:J

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    .line 19
    invoke-virtual/range {v4 .. v10}, Ln3/y/b/a/t0/k;->c(Ln3/y/b/a/x;Ln3/y/b/a/o0/c;ZZJ)I

    move-result v1

    const/4 p2, -0x5

    if-ne v1, p2, :cond_a

    .line 20
    iget-object p2, p1, Ln3/y/b/a/x;->c:Landroidx/media2/exoplayer/external/Format;

    .line 21
    iget p3, v0, Ln3/y/b/a/t0/q0/n;->z:I

    if-ne v2, p3, :cond_9

    .line 22
    iget-object p3, v0, Ln3/y/b/a/t0/q0/n;->r:[Ln3/y/b/a/t0/i0;

    aget-object p3, p3, v2

    invoke-virtual {p3}, Ln3/y/b/a/t0/i0;->l()I

    move-result p3

    .line 23
    :goto_3
    iget-object v2, v0, Ln3/y/b/a/t0/q0/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_7

    iget-object v2, v0, Ln3/y/b/a/t0/q0/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/t0/q0/h;

    iget v2, v2, Ln3/y/b/a/t0/q0/h;->j:I

    if-eq v2, p3, :cond_7

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 24
    :cond_7
    iget-object p3, v0, Ln3/y/b/a/t0/q0/n;->k:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v3, p3, :cond_8

    .line 25
    iget-object p3, v0, Ln3/y/b/a/t0/q0/n;->k:Ljava/util/ArrayList;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ln3/y/b/a/t0/q0/h;

    iget-object p3, p3, Ln3/y/b/a/t0/p0/b;->c:Landroidx/media2/exoplayer/external/Format;

    goto :goto_4

    .line 26
    :cond_8
    iget-object p3, v0, Ln3/y/b/a/t0/q0/n;->D:Landroidx/media2/exoplayer/external/Format;

    .line 27
    :goto_4
    invoke-virtual {p2, p3}, Landroidx/media2/exoplayer/external/Format;->d(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    .line 28
    :cond_9
    iput-object p2, p1, Ln3/y/b/a/x;->c:Landroidx/media2/exoplayer/external/Format;

    :cond_a
    :goto_5
    return v1
.end method

.method public e()V
    .locals 6

    .line 1
    iget v0, p0, Ln3/y/b/a/t0/q0/j;->c:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->p(Z)V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/t0/q0/j;->b:Ln3/y/b/a/t0/q0/n;

    iget v3, p0, Ln3/y/b/a/t0/q0/j;->a:I

    .line 3
    iget-object v4, v0, Ln3/y/b/a/t0/q0/n;->M:[I

    aget v4, v4, v3

    const/4 v5, -0x2

    if-ne v4, v2, :cond_2

    .line 4
    iget-object v1, v0, Ln3/y/b/a/t0/q0/n;->L:Ljava/util/Set;

    iget-object v0, v0, Ln3/y/b/a/t0/q0/n;->K:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 5
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object v0, v0, v3

    .line 6
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x3

    move v4, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v4, v5

    goto :goto_2

    .line 7
    :cond_2
    iget-object v0, v0, Ln3/y/b/a/t0/q0/n;->P:[Z

    aget-boolean v2, v0, v4

    if-eqz v2, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    aput-boolean v1, v0, v4

    .line 9
    :goto_2
    iput v4, p0, Ln3/y/b/a/t0/q0/j;->c:I

    return-void
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget v0, p0, Ln3/y/b/a/t0/q0/j;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
