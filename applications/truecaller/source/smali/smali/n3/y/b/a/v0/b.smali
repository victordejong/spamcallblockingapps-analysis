.class public abstract Ln3/y/b/a/v0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/v0/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/v0/b$b;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/source/TrackGroup;

.field public final b:I

.field public final c:[I

.field public final d:[Landroidx/media2/exoplayer/external/Format;

.field public final e:[J

.field public f:I


# direct methods
.method public varargs constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Ln3/y/b/a/v0/b;->a:Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 5
    array-length v0, p2

    iput v0, p0, Ln3/y/b/a/v0/b;->b:I

    .line 6
    new-array v0, v0, [Landroidx/media2/exoplayer/external/Format;

    iput-object v0, p0, Ln3/y/b/a/v0/b;->d:[Landroidx/media2/exoplayer/external/Format;

    move v0, v1

    .line 7
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 8
    iget-object v2, p0, Ln3/y/b/a/v0/b;->d:[Landroidx/media2/exoplayer/external/Format;

    aget v3, p2, v0

    .line 9
    iget-object v4, p1, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    aget-object v3, v4, v3

    .line 10
    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_1
    iget-object p2, p0, Ln3/y/b/a/v0/b;->d:[Landroidx/media2/exoplayer/external/Format;

    new-instance v0, Ln3/y/b/a/v0/b$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ln3/y/b/a/v0/b$b;-><init>(Ln3/y/b/a/v0/b$a;)V

    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 12
    iget p2, p0, Ln3/y/b/a/v0/b;->b:I

    new-array p2, p2, [I

    iput-object p2, p0, Ln3/y/b/a/v0/b;->c:[I

    .line 13
    :goto_2
    iget p2, p0, Ln3/y/b/a/v0/b;->b:I

    if-ge v1, p2, :cond_2

    .line 14
    iget-object p2, p0, Ln3/y/b/a/v0/b;->c:[I

    iget-object v0, p0, Ln3/y/b/a/v0/b;->d:[Landroidx/media2/exoplayer/external/Format;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/source/TrackGroup;->a(Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 15
    :cond_2
    new-array p1, p2, [J

    iput-object p1, p0, Ln3/y/b/a/v0/b;->e:[J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public final d(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v0/b;->c:[I

    aget p1, v0, p1

    return p1
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Ln3/y/b/a/v0/b;

    .line 3
    iget-object v2, p0, Ln3/y/b/a/v0/b;->a:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v3, p1, Ln3/y/b/a/v0/b;->a:Landroidx/media2/exoplayer/external/source/TrackGroup;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Ln3/y/b/a/v0/b;->c:[I

    iget-object p1, p1, Ln3/y/b/a/v0/b;->c:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final f()Landroidx/media2/exoplayer/external/source/TrackGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v0/b;->a:Landroidx/media2/exoplayer/external/source/TrackGroup;

    return-object v0
.end method

.method public final g()Landroidx/media2/exoplayer/external/Format;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v0/b;->d:[Landroidx/media2/exoplayer/external/Format;

    invoke-interface {p0}, Ln3/y/b/a/v0/e;->c()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final h(I)Landroidx/media2/exoplayer/external/Format;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v0/b;->d:[Landroidx/media2/exoplayer/external/Format;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Ln3/y/b/a/v0/b;->f:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/b/a/v0/b;->a:Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ln3/y/b/a/v0/b;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Ln3/y/b/a/v0/b;->f:I

    .line 3
    :cond_0
    iget v0, p0, Ln3/y/b/a/v0/b;->f:I

    return v0
.end method

.method public i(F)V
    .locals 0

    return-void
.end method

.method public final j(I)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Ln3/y/b/a/v0/b;->b:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Ln3/y/b/a/v0/b;->c:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final k()I
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v0/b;->c:[I

    invoke-interface {p0}, Ln3/y/b/a/v0/e;->c()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public l(JJJLjava/util/List;[Ln3/y/b/a/t0/p0/e;)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Ln3/y/b/a/v0/b;->q(JJJ)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final length()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v0/b;->c:[I

    array-length v0, v0

    return v0
.end method

.method public final m(IJ)Z
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, p1, v0, v1}, Ln3/y/b/a/v0/b;->p(IJ)Z

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 3
    :goto_0
    iget v5, p0, Ln3/y/b/a/v0/b;->b:I

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1

    if-nez v2, :cond_1

    if-eq v4, p1, :cond_0

    .line 4
    invoke-virtual {p0, v4, v0, v1}, Ln3/y/b/a/v0/b;->p(IJ)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v6

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    return v3

    .line 5
    :cond_2
    iget-object v2, p0, Ln3/y/b/a/v0/b;->e:[J

    aget-wide v3, v2, p1

    const-wide v7, 0x7fffffffffffffffL

    .line 6
    sget v5, Ln3/y/b/a/x0/x;->a:I

    add-long v9, v0, p2

    xor-long/2addr v0, v9

    xor-long/2addr p2, v9

    and-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-gez p2, :cond_3

    goto :goto_2

    :cond_3
    move-wide v7, v9

    .line 7
    :goto_2
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    aput-wide p2, v2, p1

    return v6
.end method

.method public final p(IJ)Z
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v0/b;->e:[J

    aget-wide v1, v0, p1

    cmp-long p1, v1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public q(JJJ)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
