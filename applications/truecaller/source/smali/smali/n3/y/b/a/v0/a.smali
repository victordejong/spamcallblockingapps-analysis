.class public Ln3/y/b/a/v0/a;
.super Ln3/y/b/a/v0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/v0/a$c;,
        Ln3/y/b/a/v0/a$b;,
        Ln3/y/b/a/v0/a$d;
    }
.end annotation


# instance fields
.field public final g:Ln3/y/b/a/v0/a$b;

.field public final h:J

.field public final i:J

.field public final j:F

.field public final k:Ln3/y/b/a/x0/a;

.field public l:F

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILn3/y/b/a/v0/a$b;JJJFJLn3/y/b/a/x0/a;Ln3/y/b/a/v0/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ln3/y/b/a/v0/b;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    .line 2
    iput-object p3, p0, Ln3/y/b/a/v0/a;->g:Ln3/y/b/a/v0/a$b;

    const-wide/16 p1, 0x3e8

    mul-long/2addr p4, p1

    .line 3
    iput-wide p4, p0, Ln3/y/b/a/v0/a;->h:J

    mul-long/2addr p6, p1

    .line 4
    iput-wide p6, p0, Ln3/y/b/a/v0/a;->i:J

    .line 5
    iput p10, p0, Ln3/y/b/a/v0/a;->j:F

    .line 6
    iput-object p13, p0, Ln3/y/b/a/v0/a;->k:Ln3/y/b/a/x0/a;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    iput p1, p0, Ln3/y/b/a/v0/a;->l:F

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Ln3/y/b/a/v0/a;->n:I

    return-void
.end method

.method public static s([[[JI[[J[I)V
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move v3, v0

    .line 1
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 2
    aget-object v4, p0, v3

    aget-object v4, v4, p1

    aget-object v5, p2, v3

    aget v6, p3, v3

    aget-wide v6, v5, v6

    const/4 v5, 0x1

    aput-wide v6, v4, v5

    .line 3
    aget-object v4, p0, v3

    aget-object v4, v4, p1

    aget-wide v5, v4, v5

    add-long/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    array-length p2, p0

    move p3, v0

    :goto_1
    if-ge p3, p2, :cond_1

    aget-object v3, p0, p3

    .line 5
    aget-object v3, v3, p1

    aput-wide v1, v3, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/y/b/a/v0/a;->m:I

    return v0
.end method

.method public i(F)V
    .locals 0

    .line 1
    iput p1, p0, Ln3/y/b/a/v0/a;->l:F

    return-void
.end method

.method public l(JJJLjava/util/List;[Ln3/y/b/a/t0/p0/e;)V
    .locals 2
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
    iget-object p1, p0, Ln3/y/b/a/v0/a;->k:Ln3/y/b/a/x0/a;

    invoke-interface {p1}, Ln3/y/b/a/x0/a;->a()J

    move-result-wide p1

    .line 2
    iget p7, p0, Ln3/y/b/a/v0/a;->n:I

    const/4 p8, 0x1

    if-nez p7, :cond_0

    .line 3
    iput p8, p0, Ln3/y/b/a/v0/a;->n:I

    .line 4
    invoke-virtual {p0, p1, p2}, Ln3/y/b/a/v0/a;->r(J)I

    move-result p1

    iput p1, p0, Ln3/y/b/a/v0/a;->m:I

    return-void

    .line 5
    :cond_0
    iget p7, p0, Ln3/y/b/a/v0/a;->m:I

    .line 6
    invoke-virtual {p0, p1, p2}, Ln3/y/b/a/v0/a;->r(J)I

    move-result v0

    iput v0, p0, Ln3/y/b/a/v0/a;->m:I

    if-ne v0, p7, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0, p7, p1, p2}, Ln3/y/b/a/v0/b;->p(IJ)Z

    move-result p1

    if-nez p1, :cond_5

    .line 8
    iget-object p1, p0, Ln3/y/b/a/v0/b;->d:[Landroidx/media2/exoplayer/external/Format;

    aget-object p2, p1, p7

    .line 9
    iget v0, p0, Ln3/y/b/a/v0/a;->m:I

    .line 10
    aget-object p1, p1, v0

    .line 11
    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->e:I

    iget p2, p2, Landroidx/media2/exoplayer/external/Format;->e:I

    if-le p1, p2, :cond_4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p5, v0

    if-eqz v0, :cond_2

    .line 12
    iget-wide v0, p0, Ln3/y/b/a/v0/a;->h:J

    cmp-long v0, p5, v0

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p8, 0x0

    :goto_0
    if-eqz p8, :cond_3

    long-to-float p5, p5

    .line 13
    iget p6, p0, Ln3/y/b/a/v0/a;->j:F

    mul-float/2addr p5, p6

    float-to-long p5, p5

    goto :goto_1

    .line 14
    :cond_3
    iget-wide p5, p0, Ln3/y/b/a/v0/a;->h:J

    :goto_1
    cmp-long p5, p3, p5

    if-gez p5, :cond_4

    .line 15
    iput p7, p0, Ln3/y/b/a/v0/a;->m:I

    goto :goto_2

    :cond_4
    if-ge p1, p2, :cond_5

    .line 16
    iget-wide p1, p0, Ln3/y/b/a/v0/a;->i:J

    cmp-long p1, p3, p1

    if-ltz p1, :cond_5

    .line 17
    iput p7, p0, Ln3/y/b/a/v0/a;->m:I

    .line 18
    :cond_5
    :goto_2
    iget p1, p0, Ln3/y/b/a/v0/a;->m:I

    if-eq p1, p7, :cond_6

    const/4 p1, 0x3

    .line 19
    iput p1, p0, Ln3/y/b/a/v0/a;->n:I

    :cond_6
    return-void
.end method

.method public n()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/y/b/a/v0/a;->n:I

    return v0
.end method

.method public final r(J)I
    .locals 10

    .line 1
    iget-object v0, p0, Ln3/y/b/a/v0/a;->g:Ln3/y/b/a/v0/a$b;

    check-cast v0, Ln3/y/b/a/v0/a$c;

    .line 2
    iget-object v1, v0, Ln3/y/b/a/v0/a$c;->a:Ln3/y/b/a/w0/d;

    invoke-interface {v1}, Ln3/y/b/a/w0/d;->c()J

    move-result-wide v1

    long-to-float v1, v1

    iget v2, v0, Ln3/y/b/a/v0/a$c;->b:F

    mul-float/2addr v1, v2

    float-to-long v1, v1

    .line 3
    iget-wide v3, v0, Ln3/y/b/a/v0/a$c;->c:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 4
    iget-object v3, v0, Ln3/y/b/a/v0/a$c;->d:[[J

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v5

    .line 5
    :goto_0
    iget-object v6, v0, Ln3/y/b/a/v0/a$c;->d:[[J

    array-length v7, v6

    sub-int/2addr v7, v5

    if-ge v3, v7, :cond_1

    aget-object v7, v6, v3

    aget-wide v8, v7, v4

    cmp-long v7, v8, v1

    if-gez v7, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v3, -0x1

    .line 6
    aget-object v0, v6, v0

    .line 7
    aget-object v3, v6, v3

    .line 8
    aget-wide v6, v0, v4

    sub-long/2addr v1, v6

    long-to-float v1, v1

    aget-wide v6, v3, v4

    aget-wide v8, v0, v4

    sub-long/2addr v6, v8

    long-to-float v2, v6

    div-float/2addr v1, v2

    .line 9
    aget-wide v6, v0, v5

    aget-wide v2, v3, v5

    aget-wide v8, v0, v5

    sub-long/2addr v2, v8

    long-to-float v0, v2

    mul-float/2addr v1, v0

    float-to-long v0, v1

    add-long v1, v6, v0

    :goto_1
    move v0, v4

    move v3, v0

    .line 10
    :goto_2
    iget v6, p0, Ln3/y/b/a/v0/b;->b:I

    if-ge v0, v6, :cond_6

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, p1, v6

    if-eqz v6, :cond_2

    .line 11
    invoke-virtual {p0, v0, p1, p2}, Ln3/y/b/a/v0/b;->p(IJ)Z

    move-result v6

    if-nez v6, :cond_5

    .line 12
    :cond_2
    iget-object v3, p0, Ln3/y/b/a/v0/b;->d:[Landroidx/media2/exoplayer/external/Format;

    aget-object v3, v3, v0

    .line 13
    iget v3, v3, Landroidx/media2/exoplayer/external/Format;->e:I

    iget v6, p0, Ln3/y/b/a/v0/a;->l:F

    int-to-float v3, v3

    mul-float/2addr v3, v6

    .line 14
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v6, v1

    if-gtz v3, :cond_3

    move v3, v5

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    if-eqz v3, :cond_4

    return v0

    :cond_4
    move v3, v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return v3
.end method
