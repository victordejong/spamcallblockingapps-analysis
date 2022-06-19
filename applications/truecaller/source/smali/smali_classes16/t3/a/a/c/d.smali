.class public final Lt3/a/a/c/d;
.super Lt3/a/a/c/b;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:J

.field public e:F

.field public f:F

.field public g:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lt3/a/a/c/b;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lt3/a/a/c/d;->b:I

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 7

    .line 1
    iget v0, p0, Lt3/a/a/c/d;->g:F

    add-float/2addr v0, p1

    iput v0, p0, Lt3/a/a/c/d;->g:F

    .line 2
    iget v1, p0, Lt3/a/a/c/d;->f:F

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_7

    .line 3
    iget-wide v2, p0, Lt3/a/a/c/d;->d:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget v4, p0, Lt3/a/a/c/d;->e:F

    long-to-float v2, v2

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_1

    move v2, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v5

    :goto_1
    if-nez v2, :cond_7

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 4
    new-instance v1, Ls1/d0/i;

    invoke-direct {v1, v6, v0}, Ls1/d0/i;-><init>(II)V

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ls1/u/z;

    invoke-virtual {v1}, Ls1/u/z;->a()I

    .line 6
    iget v1, p0, Lt3/a/a/c/d;->c:I

    iget v2, p0, Lt3/a/a/c/d;->b:I

    if-le v6, v2, :cond_3

    goto :goto_3

    :cond_3
    if-lt v1, v2, :cond_4

    move v2, v6

    goto :goto_4

    :cond_4
    :goto_3
    move v2, v5

    :goto_4
    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 7
    iput v1, p0, Lt3/a/a/c/d;->c:I

    .line 8
    iget-object v1, p0, Lt3/a/a/c/b;->a:Ls1/z/b/a;

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {v1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/s;

    goto :goto_2

    .line 10
    :cond_6
    iget v0, p0, Lt3/a/a/c/d;->g:F

    iget v1, p0, Lt3/a/a/c/d;->f:F

    rem-float/2addr v0, v1

    iput v0, p0, Lt3/a/a/c/d;->g:F

    .line 11
    :cond_7
    iget v0, p0, Lt3/a/a/c/d;->e:F

    const/16 v1, 0x3e8

    int-to-float v1, v1

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    iput p1, p0, Lt3/a/a/c/d;->e:F

    return-void
.end method

.method public b()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lt3/a/a/c/d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    .line 2
    iget v2, p0, Lt3/a/a/c/d;->e:F

    long-to-float v0, v0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lt3/a/a/c/d;->b:I

    iget v1, p0, Lt3/a/a/c/d;->c:I

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    return v3
.end method
