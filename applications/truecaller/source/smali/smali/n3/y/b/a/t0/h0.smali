.class public final Ln3/y/b/a/t0/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/t0/h0$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:[I

.field public c:[J

.field public d:[I

.field public e:[I

.field public f:[J

.field public g:[Ln3/y/b/a/q0/p$a;

.field public h:[Landroidx/media2/exoplayer/external/Format;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:J

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Landroidx/media2/exoplayer/external/Format;

.field public s:Landroidx/media2/exoplayer/external/Format;

.field public t:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 2
    iput v0, p0, Ln3/y/b/a/t0/h0;->a:I

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Ln3/y/b/a/t0/h0;->b:[I

    new-array v1, v0, [J

    .line 4
    iput-object v1, p0, Ln3/y/b/a/t0/h0;->c:[J

    new-array v1, v0, [J

    .line 5
    iput-object v1, p0, Ln3/y/b/a/t0/h0;->f:[J

    new-array v1, v0, [I

    .line 6
    iput-object v1, p0, Ln3/y/b/a/t0/h0;->e:[I

    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Ln3/y/b/a/t0/h0;->d:[I

    new-array v1, v0, [Ln3/y/b/a/q0/p$a;

    .line 8
    iput-object v1, p0, Ln3/y/b/a/t0/h0;->g:[Ln3/y/b/a/q0/p$a;

    new-array v0, v0, [Landroidx/media2/exoplayer/external/Format;

    .line 9
    iput-object v0, p0, Ln3/y/b/a/t0/h0;->h:[Landroidx/media2/exoplayer/external/Format;

    const-wide/high16 v0, -0x8000000000000000L

    .line 10
    iput-wide v0, p0, Ln3/y/b/a/t0/h0;->m:J

    .line 11
    iput-wide v0, p0, Ln3/y/b/a/t0/h0;->n:J

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Ln3/y/b/a/t0/h0;->q:Z

    .line 13
    iput-boolean v0, p0, Ln3/y/b/a/t0/h0;->p:Z

    return-void
.end method


# virtual methods
.method public final a(I)J
    .locals 4

    .line 1
    iget-wide v0, p0, Ln3/y/b/a/t0/h0;->m:J

    .line 2
    invoke-virtual {p0, p1}, Ln3/y/b/a/t0/h0;->d(I)J

    move-result-wide v2

    .line 3
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ln3/y/b/a/t0/h0;->m:J

    .line 4
    iget v0, p0, Ln3/y/b/a/t0/h0;->i:I

    sub-int/2addr v0, p1

    iput v0, p0, Ln3/y/b/a/t0/h0;->i:I

    .line 5
    iget v1, p0, Ln3/y/b/a/t0/h0;->j:I

    add-int/2addr v1, p1

    iput v1, p0, Ln3/y/b/a/t0/h0;->j:I

    .line 6
    iget v1, p0, Ln3/y/b/a/t0/h0;->k:I

    add-int/2addr v1, p1

    iput v1, p0, Ln3/y/b/a/t0/h0;->k:I

    .line 7
    iget v2, p0, Ln3/y/b/a/t0/h0;->a:I

    if-lt v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 8
    iput v1, p0, Ln3/y/b/a/t0/h0;->k:I

    .line 9
    :cond_0
    iget v1, p0, Ln3/y/b/a/t0/h0;->l:I

    sub-int/2addr v1, p1

    iput v1, p0, Ln3/y/b/a/t0/h0;->l:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Ln3/y/b/a/t0/h0;->l:I

    :cond_1
    if-nez v0, :cond_3

    .line 11
    iget p1, p0, Ln3/y/b/a/t0/h0;->k:I

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, p1

    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 12
    iget-object p1, p0, Ln3/y/b/a/t0/h0;->c:[J

    aget-wide v0, p1, v2

    iget-object p1, p0, Ln3/y/b/a/t0/h0;->d:[I

    aget p1, p1, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0

    .line 13
    :cond_3
    iget-object p1, p0, Ln3/y/b/a/t0/h0;->c:[J

    iget v0, p0, Ln3/y/b/a/t0/h0;->k:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public b(I)J
    .locals 7

    .line 1
    iget v0, p0, Ln3/y/b/a/t0/h0;->j:I

    iget v1, p0, Ln3/y/b/a/t0/h0;->i:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    .line 2
    iget v3, p0, Ln3/y/b/a/t0/h0;->l:I

    sub-int/2addr v1, v3

    if-gt v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->p(Z)V

    .line 3
    iget v1, p0, Ln3/y/b/a/t0/h0;->i:I

    sub-int/2addr v1, v0

    iput v1, p0, Ln3/y/b/a/t0/h0;->i:I

    .line 4
    iget-wide v3, p0, Ln3/y/b/a/t0/h0;->m:J

    invoke-virtual {p0, v1}, Ln3/y/b/a/t0/h0;->d(I)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Ln3/y/b/a/t0/h0;->n:J

    if-nez v0, :cond_1

    .line 5
    iget-boolean v0, p0, Ln3/y/b/a/t0/h0;->o:Z

    if-eqz v0, :cond_1

    move p1, v2

    :cond_1
    iput-boolean p1, p0, Ln3/y/b/a/t0/h0;->o:Z

    .line 6
    iget p1, p0, Ln3/y/b/a/t0/h0;->i:I

    if-nez p1, :cond_2

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_2
    sub-int/2addr p1, v2

    .line 7
    invoke-virtual {p0, p1}, Ln3/y/b/a/t0/h0;->e(I)I

    move-result p1

    .line 8
    iget-object v0, p0, Ln3/y/b/a/t0/h0;->c:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Ln3/y/b/a/t0/h0;->d:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public final c(IIJZ)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_3

    .line 1
    iget-object v3, p0, Ln3/y/b/a/t0/h0;->f:[J

    aget-wide v4, v3, p1

    cmp-long v3, v4, p3

    if-gtz v3, :cond_3

    if-eqz p5, :cond_0

    .line 2
    iget-object v3, p0, Ln3/y/b/a/t0/h0;->e:[I

    aget v3, v3, p1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 3
    iget v3, p0, Ln3/y/b/a/t0/h0;->a:I

    if-ne p1, v3, :cond_2

    move p1, v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public final d(I)J
    .locals 7

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    .line 1
    invoke-virtual {p0, v2}, Ln3/y/b/a/t0/h0;->e(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_3

    .line 2
    iget-object v4, p0, Ln3/y/b/a/t0/h0;->f:[J

    aget-wide v5, v4, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 3
    iget-object v4, p0, Ln3/y/b/a/t0/h0;->e:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 4
    iget v2, p0, Ln3/y/b/a/t0/h0;->a:I

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v0
.end method

.method public final e(I)I
    .locals 1

    .line 1
    iget v0, p0, Ln3/y/b/a/t0/h0;->k:I

    add-int/2addr v0, p1

    .line 2
    iget p1, p0, Ln3/y/b/a/t0/h0;->a:I

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p1

    :goto_0
    return v0
.end method

.method public declared-synchronized f()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Ln3/y/b/a/t0/h0;->l:I

    iget v1, p0, Ln3/y/b/a/t0/h0;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
