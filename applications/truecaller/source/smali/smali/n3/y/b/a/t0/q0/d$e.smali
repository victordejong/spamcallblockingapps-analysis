.class public final Ln3/y/b/a/t0/q0/d$e;
.super Ln3/y/b/a/v0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/t0/q0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public g:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Ln3/y/b/a/v0/b;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    .line 2
    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    .line 3
    :goto_0
    iget v0, p0, Ln3/y/b/a/v0/b;->b:I

    if-ge p2, v0, :cond_1

    .line 4
    iget-object v0, p0, Ln3/y/b/a/v0/b;->d:[Landroidx/media2/exoplayer/external/Format;

    aget-object v0, v0, p2

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    .line 5
    :goto_1
    iput p2, p0, Ln3/y/b/a/t0/q0/d$e;->g:I

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/y/b/a/t0/q0/d$e;->g:I

    return v0
.end method

.method public l(JJJLjava/util/List;[Ln3/y/b/a/t0/p0/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Ln3/y/b/a/t0/p0/d;",
            ">;[",
            "Ln3/y/b/a/t0/p0/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 2
    iget p3, p0, Ln3/y/b/a/t0/q0/d$e;->g:I

    invoke-virtual {p0, p3, p1, p2}, Ln3/y/b/a/v0/b;->p(IJ)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 3
    :cond_0
    iget p3, p0, Ln3/y/b/a/v0/b;->b:I

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_2

    .line 4
    invoke-virtual {p0, p3, p1, p2}, Ln3/y/b/a/v0/b;->p(IJ)Z

    move-result p4

    if-nez p4, :cond_1

    .line 5
    iput p3, p0, Ln3/y/b/a/t0/q0/d$e;->g:I

    return-void

    :cond_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public n()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
