.class public Le/m/a/c/c1/w;
.super Le/m/a/c/h1/f;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/q1/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/c1/w$b;
    }
.end annotation


# instance fields
.field public final E0:Landroid/content/Context;

.field public final F0:Le/m/a/c/c1/m$a;

.field public final G0:Le/m/a/c/c1/n;

.field public final H0:[J

.field public I0:I

.field public J0:Z

.field public K0:Z

.field public L0:Z

.field public M0:Landroid/media/MediaFormat;

.field public N0:Lcom/google/android/exoplayer2/Format;

.field public O0:J

.field public P0:Z

.field public Q0:Z

.field public R0:J

.field public S0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/m/a/c/h1/g;Le/m/a/c/f1/e;ZZLandroid/os/Handler;Le/m/a/c/c1/m;Le/m/a/c/c1/n;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/m/a/c/h1/g;",
            "Le/m/a/c/f1/e<",
            "Le/m/a/c/f1/h;",
            ">;ZZ",
            "Landroid/os/Handler;",
            "Le/m/a/c/c1/m;",
            "Le/m/a/c/c1/n;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x1

    const v6, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Le/m/a/c/h1/f;-><init>(ILe/m/a/c/h1/g;Le/m/a/c/f1/e;ZZF)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/c1/w;->E0:Landroid/content/Context;

    .line 3
    iput-object p8, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide p1, p0, Le/m/a/c/c1/w;->R0:J

    const/16 p1, 0xa

    new-array p1, p1, [J

    .line 5
    iput-object p1, p0, Le/m/a/c/c1/w;->H0:[J

    .line 6
    new-instance p1, Le/m/a/c/c1/m$a;

    invoke-direct {p1, p6, p7}, Le/m/a/c/c1/m$a;-><init>(Landroid/os/Handler;Le/m/a/c/c1/m;)V

    iput-object p1, p0, Le/m/a/c/c1/w;->F0:Le/m/a/c/c1/m$a;

    .line 7
    new-instance p1, Le/m/a/c/c1/w$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/m/a/c/c1/w$b;-><init>(Le/m/a/c/c1/w;Le/m/a/c/c1/w$a;)V

    check-cast p8, Le/m/a/c/c1/t;

    .line 8
    iput-object p1, p8, Le/m/a/c/c1/t;->j:Le/m/a/c/c1/n$c;

    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Le/m/a/c/h1/f;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    check-cast v0, Le/m/a/c/c1/t;

    invoke-virtual {v0}, Le/m/a/c/c1/t;->n()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    check-cast v1, Le/m/a/c/c1/t;

    invoke-virtual {v1}, Le/m/a/c/c1/t;->n()V

    .line 3
    throw v0
.end method

.method public B()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    check-cast v0, Le/m/a/c/c1/t;

    invoke-virtual {v0}, Le/m/a/c/c1/t;->k()V

    return-void
.end method

.method public C()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Le/m/a/c/c1/w;->s0()V

    .line 2
    iget-object v0, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    check-cast v0, Le/m/a/c/c1/t;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Le/m/a/c/c1/t;->L:Z

    .line 4
    invoke-virtual {v0}, Le/m/a/c/c1/t;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Le/m/a/c/c1/t;->h:Le/m/a/c/c1/p;

    const-wide/16 v3, 0x0

    .line 5
    iput-wide v3, v2, Le/m/a/c/c1/p;->j:J

    .line 6
    iput v1, v2, Le/m/a/c/c1/p;->u:I

    .line 7
    iput v1, v2, Le/m/a/c/c1/p;->t:I

    .line 8
    iput-wide v3, v2, Le/m/a/c/c1/p;->k:J

    .line 9
    iget-wide v3, v2, Le/m/a/c/c1/p;->v:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 10
    iget-object v1, v2, Le/m/a/c/c1/p;->f:Le/m/a/c/c1/o;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v1}, Le/m/a/c/c1/o;->a()V

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 13
    iget-object v0, v0, Le/m/a/c/c1/t;->m:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_1
    return-void
.end method

.method public D([Lcom/google/android/exoplayer2/Format;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget-wide p1, p0, Le/m/a/c/c1/w;->R0:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    .line 2
    iget p3, p0, Le/m/a/c/c1/w;->S0:I

    iget-object v0, p0, Le/m/a/c/c1/w;->H0:[J

    array-length v1, v0

    if-ne p3, v1, :cond_0

    add-int/lit8 p3, p3, -0x1

    .line 3
    aget-wide v1, v0, p3

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    .line 4
    iput p3, p0, Le/m/a/c/c1/w;->S0:I

    .line 5
    :goto_0
    iget p3, p0, Le/m/a/c/c1/w;->S0:I

    add-int/lit8 p3, p3, -0x1

    aput-wide p1, v0, p3

    :cond_1
    return-void
.end method

.method public I(Landroid/media/MediaCodec;Le/m/a/c/h1/e;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)I
    .locals 2

    .line 1
    invoke-virtual {p0, p2, p4}, Le/m/a/c/c1/w;->q0(Le/m/a/c/h1/e;Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    iget v0, p0, Le/m/a/c/c1/w;->I0:I

    const/4 v1, 0x0

    if-gt p1, v0, :cond_3

    iget p1, p3, Lcom/google/android/exoplayer2/Format;->y:I

    if-nez p1, :cond_3

    iget p1, p3, Lcom/google/android/exoplayer2/Format;->z:I

    if-nez p1, :cond_3

    iget p1, p4, Lcom/google/android/exoplayer2/Format;->y:I

    if-nez p1, :cond_3

    iget p1, p4, Lcom/google/android/exoplayer2/Format;->z:I

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p2, p3, p4, p1}, Le/m/a/c/h1/e;->f(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x3

    return p1

    .line 3
    :cond_1
    iget-object p2, p3, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    iget-object v0, p4, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    invoke-static {p2, v0}, Le/m/a/c/q1/d0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p3, Lcom/google/android/exoplayer2/Format;->v:I

    iget v0, p4, Lcom/google/android/exoplayer2/Format;->v:I

    if-ne p2, v0, :cond_2

    iget p2, p3, Lcom/google/android/exoplayer2/Format;->w:I

    iget v0, p4, Lcom/google/android/exoplayer2/Format;->w:I

    if-ne p2, v0, :cond_2

    iget p2, p3, Lcom/google/android/exoplayer2/Format;->x:I

    iget v0, p4, Lcom/google/android/exoplayer2/Format;->x:I

    if-ne p2, v0, :cond_2

    .line 4
    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/Format;->r(Lcom/google/android/exoplayer2/Format;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p3, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    const-string p3, "audio/opus"

    .line 5
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    move p2, p1

    goto :goto_0

    :cond_2
    move p2, v1

    :goto_0
    if-eqz p2, :cond_3

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public J(Le/m/a/c/h1/e;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;F)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/m/a/c/u;->g:[Lcom/google/android/exoplayer2/Format;

    .line 2
    invoke-virtual {p0, p1, p3}, Le/m/a/c/c1/w;->q0(Le/m/a/c/h1/e;Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    .line 3
    array-length v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    array-length v2, v0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_2

    aget-object v6, v0, v5

    .line 5
    invoke-virtual {p1, p3, v6, v4}, Le/m/a/c/h1/e;->f(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6
    invoke-virtual {p0, p1, v6}, Le/m/a/c/c1/w;->q0(Le/m/a/c/h1/e;Lcom/google/android/exoplayer2/Format;)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    iput v1, p0, Le/m/a/c/c1/w;->I0:I

    .line 8
    iget-object v0, p1, Le/m/a/c/h1/e;->a:Ljava/lang/String;

    .line 9
    sget v1, Le/m/a/c/q1/d0;->a:I

    const/16 v2, 0x18

    const-string v5, "samsung"

    if-ge v1, v2, :cond_4

    const-string v2, "OMX.SEC.aac.dec"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Le/m/a/c/q1/d0;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Le/m/a/c/q1/d0;->b:Ljava/lang/String;

    const-string v2, "zeroflte"

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "herolte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "heroqlte"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v4

    .line 13
    :goto_2
    iput-boolean v0, p0, Le/m/a/c/c1/w;->K0:Z

    .line 14
    iget-object v0, p1, Le/m/a/c/h1/e;->a:Ljava/lang/String;

    const/16 v2, 0x15

    if-ge v1, v2, :cond_6

    const-string v2, "OMX.SEC.mp3.dec"

    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Le/m/a/c/q1/d0;->c:Ljava/lang/String;

    .line 16
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Le/m/a/c/q1/d0;->b:Ljava/lang/String;

    const-string v2, "baffin"

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "grand"

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "fortuna"

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "gprimelte"

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "j2y18lte"

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "ms01"

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v0, v3

    goto :goto_3

    :cond_6
    move v0, v4

    .line 23
    :goto_3
    iput-boolean v0, p0, Le/m/a/c/c1/w;->L0:Z

    .line 24
    iget-boolean v0, p1, Le/m/a/c/h1/e;->g:Z

    iput-boolean v0, p0, Le/m/a/c/c1/w;->J0:Z

    if-eqz v0, :cond_7

    const-string p1, "audio/raw"

    goto :goto_4

    .line 25
    :cond_7
    iget-object p1, p1, Le/m/a/c/h1/e;->c:Ljava/lang/String;

    .line 26
    :goto_4
    iget v0, p0, Le/m/a/c/c1/w;->I0:I

    .line 27
    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    const-string v5, "mime"

    .line 28
    invoke-virtual {v2, v5, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget p1, p3, Lcom/google/android/exoplayer2/Format;->v:I

    const-string v6, "channel-count"

    invoke-virtual {v2, v6, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 30
    iget p1, p3, Lcom/google/android/exoplayer2/Format;->w:I

    const-string v6, "sample-rate"

    invoke-virtual {v2, v6, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 31
    iget-object p1, p3, Lcom/google/android/exoplayer2/Format;->k:Ljava/util/List;

    invoke-static {v2, p1}, Ln3/g0/y;->P1(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p1, "max-input-size"

    .line 32
    invoke-static {v2, p1, v0}, Ln3/g0/y;->f1(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const/16 p1, 0x17

    if-lt v1, p1, :cond_a

    const-string v0, "priority"

    .line 33
    invoke-virtual {v2, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p5, v0

    if-eqz v0, :cond_a

    if-ne v1, p1, :cond_9

    .line 34
    sget-object p1, Le/m/a/c/q1/d0;->d:Ljava/lang/String;

    const-string v0, "ZTE B2017G"

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "AXON 7 mini"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    move p1, v3

    goto :goto_5

    :cond_9
    move p1, v4

    :goto_5
    if-nez p1, :cond_a

    const-string p1, "operating-rate"

    .line 36
    invoke-virtual {v2, p1, p5}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_a
    const/16 p1, 0x1c

    if-gt v1, p1, :cond_b

    .line 37
    iget-object p1, p3, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    const-string p5, "audio/ac4"

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "ac4-is-sync"

    .line 38
    invoke-virtual {v2, p1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_b
    const/4 p1, 0x0

    .line 39
    invoke-virtual {p2, v2, p1, p4, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 40
    iget-boolean p2, p0, Le/m/a/c/c1/w;->J0:Z

    if-eqz p2, :cond_c

    .line 41
    iput-object v2, p0, Le/m/a/c/c1/w;->M0:Landroid/media/MediaFormat;

    .line 42
    iget-object p1, p3, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    invoke-virtual {v2, v5, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 43
    :cond_c
    iput-object p1, p0, Le/m/a/c/c1/w;->M0:Landroid/media/MediaFormat;

    :goto_6
    return-void
.end method

.method public S(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F
    .locals 4

    .line 1
    array-length p2, p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    .line 2
    iget v3, v3, Lcom/google/android/exoplayer2/Format;->w:I

    if-eq v3, v0, :cond_0

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_1

    :cond_2
    int-to-float p2, v2

    mul-float/2addr p1, p2

    :goto_1
    return p1
.end method

.method public T(Le/m/a/c/h1/g;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/h1/g;",
            "Lcom/google/android/exoplayer2/Format;",
            "Z)",
            "Ljava/util/List<",
            "Le/m/a/c/h1/e;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/h1/h$c;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget v1, p2, Lcom/google/android/exoplayer2/Format;->v:I

    .line 4
    invoke-virtual {p0, v1, v0}, Le/m/a/c/c1/w;->r0(ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 5
    invoke-interface {p1}, Le/m/a/c/h1/g;->a()Le/m/a/c/h1/e;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-interface {p1, v0, p3, v2}, Le/m/a/c/h1/g;->b(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 8
    sget-object v3, Le/m/a/c/h1/h;->a:Ljava/util/regex/Pattern;

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    new-instance v1, Le/m/a/c/h1/c;

    invoke-direct {v1, p2}, Le/m/a/c/h1/c;-><init>(Lcom/google/android/exoplayer2/Format;)V

    invoke-static {v3, v1}, Le/m/a/c/h1/h;->j(Ljava/util/List;Le/m/a/c/h1/h$g;)V

    const-string p2, "audio/eac3-joc"

    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 12
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v0, "audio/eac3"

    .line 13
    invoke-interface {p1, v0, p3, v2}, Le/m/a/c/h1/g;->b(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v3, p2

    .line 15
    :cond_3
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public Y(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v1, p0, Le/m/a/c/c1/w;->F0:Le/m/a/c/c1/m$a;

    .line 2
    iget-object v7, v1, Le/m/a/c/c1/m$a;->a:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 3
    new-instance v8, Le/m/a/c/c1/d;

    move-object v0, v8

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Le/m/a/c/c1/d;-><init>(Le/m/a/c/c1/m$a;Ljava/lang/String;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public Z(Le/m/a/c/g0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Le/m/a/c/h1/f;->Z(Le/m/a/c/g0;)V

    .line 2
    iget-object p1, p1, Le/m/a/c/g0;->c:Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Le/m/a/c/c1/w;->N0:Lcom/google/android/exoplayer2/Format;

    .line 3
    iget-object v0, p0, Le/m/a/c/c1/w;->F0:Le/m/a/c/c1/m$a;

    .line 4
    iget-object v1, v0, Le/m/a/c/c1/m$a;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 5
    new-instance v2, Le/m/a/c/c1/a;

    invoke-direct {v2, v0, p1}, Le/m/a/c/c1/a;-><init>(Le/m/a/c/c1/m$a;Lcom/google/android/exoplayer2/Format;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a0(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/m/a/c/c1/w;->M0:Landroid/media/MediaFormat;

    const-string v0, "channel-count"

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    const-string v1, "mime"

    .line 3
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p0, p2, v1}, Le/m/a/c/c1/w;->r0(ILjava/lang/String;)I

    move-result p2

    move v2, p2

    move-object p2, p1

    goto :goto_1

    :cond_0
    const-string p1, "v-bits-per-sample"

    .line 5
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Le/m/a/c/q1/d0;->l(I)I

    move-result p1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Le/m/a/c/c1/w;->N0:Lcom/google/android/exoplayer2/Format;

    .line 8
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->x:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    :goto_0
    move v2, p1

    .line 9
    :goto_1
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    const-string p1, "sample-rate"

    .line 10
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 11
    iget-boolean p1, p0, Le/m/a/c/c1/w;->K0:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x6

    if-ne v3, p1, :cond_3

    iget-object p2, p0, Le/m/a/c/c1/w;->N0:Lcom/google/android/exoplayer2/Format;

    iget p2, p2, Lcom/google/android/exoplayer2/Format;->v:I

    if-ge p2, p1, :cond_3

    .line 12
    new-array p1, p2, [I

    const/4 p2, 0x0

    .line 13
    :goto_2
    iget-object v0, p0, Le/m/a/c/c1/w;->N0:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->v:I

    if-ge p2, v0, :cond_4

    .line 14
    aput p2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :cond_4
    move-object v6, p1

    .line 15
    :try_start_0
    iget-object p1, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    const/4 v5, 0x0

    iget-object p2, p0, Le/m/a/c/c1/w;->N0:Lcom/google/android/exoplayer2/Format;

    iget v7, p2, Lcom/google/android/exoplayer2/Format;->y:I

    iget v8, p2, Lcom/google/android/exoplayer2/Format;->z:I
    :try_end_0
    .catch Le/m/a/c/c1/n$a; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    check-cast v1, Le/m/a/c/c1/t;

    :try_start_1
    invoke-virtual/range {v1 .. v8}, Le/m/a/c/c1/t;->b(IIII[III)V
    :try_end_1
    .catch Le/m/a/c/c1/n$a; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 16
    iget-object p2, p0, Le/m/a/c/c1/w;->N0:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, p2}, Le/m/a/c/u;->v(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Le/m/a/c/b0;

    move-result-object p1

    throw p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    check-cast v0, Le/m/a/c/c1/t;

    invoke-virtual {v0}, Le/m/a/c/c1/t;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Le/m/a/c/h1/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b0(J)V
    .locals 6

    .line 1
    :goto_0
    iget v0, p0, Le/m/a/c/c1/w;->S0:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Le/m/a/c/c1/w;->H0:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    cmp-long v3, p1, v3

    if-ltz v3, :cond_1

    .line 2
    iget-object v3, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    check-cast v3, Le/m/a/c/c1/t;

    .line 3
    iget v4, v3, Le/m/a/c/c1/t;->z:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x2

    .line 4
    iput v4, v3, Le/m/a/c/c1/t;->z:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 5
    iput v0, p0, Le/m/a/c/c1/w;->S0:I

    .line 6
    invoke-static {v1, v5, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/m/a/c/h1/f;->x0:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    check-cast v0, Le/m/a/c/c1/t;

    .line 3
    invoke-virtual {v0}, Le/m/a/c/c1/t;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Le/m/a/c/c1/t;->J:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Le/m/a/c/c1/t;->i()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public c0(Le/m/a/c/e1/e;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/m/a/c/c1/w;->P0:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Le/m/a/c/e1/a;->isDecodeOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-wide v0, p1, Le/m/a/c/e1/e;->d:J

    iget-wide v2, p0, Le/m/a/c/c1/w;->O0:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3
    iget-wide v0, p1, Le/m/a/c/e1/e;->d:J

    iput-wide v0, p0, Le/m/a/c/c1/w;->O0:J

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Le/m/a/c/c1/w;->P0:Z

    .line 5
    :cond_1
    iget-wide v0, p1, Le/m/a/c/e1/e;->d:J

    iget-wide v2, p0, Le/m/a/c/c1/w;->R0:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Le/m/a/c/c1/w;->R0:J

    return-void
.end method

.method public e0(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZLcom/google/android/exoplayer2/Format;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Le/m/a/c/c1/w;->L0:Z

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x0

    cmp-long p1, p9, p1

    if-nez p1, :cond_0

    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_0

    iget-wide p1, p0, Le/m/a/c/c1/w;->R0:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, p3

    if-eqz p3, :cond_0

    move-wide p9, p1

    .line 2
    :cond_0
    iget-boolean p1, p0, Le/m/a/c/c1/w;->J0:Z

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 p4, 0x2

    if-eqz p1, :cond_1

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return p3

    :cond_1
    if-eqz p11, :cond_3

    .line 4
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 5
    iget-object p1, p0, Le/m/a/c/h1/f;->C0:Le/m/a/c/e1/d;

    iget p2, p1, Le/m/a/c/e1/d;->f:I

    add-int/2addr p2, p3

    iput p2, p1, Le/m/a/c/e1/d;->f:I

    .line 6
    iget-object p1, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    check-cast p1, Le/m/a/c/c1/t;

    .line 7
    iget p2, p1, Le/m/a/c/c1/t;->z:I

    if-ne p2, p3, :cond_2

    .line 8
    iput p4, p1, Le/m/a/c/c1/t;->z:I

    :cond_2
    return p3

    .line 9
    :cond_3
    :try_start_0
    iget-object p1, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;
    :try_end_0
    .catch Le/m/a/c/c1/n$b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Le/m/a/c/c1/n$d; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p1, Le/m/a/c/c1/t;

    :try_start_1
    invoke-virtual {p1, p6, p9, p10}, Le/m/a/c/c1/t;->h(Ljava/nio/ByteBuffer;J)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 11
    iget-object p1, p0, Le/m/a/c/h1/f;->C0:Le/m/a/c/e1/d;

    iget p2, p1, Le/m/a/c/e1/d;->e:I

    add-int/2addr p2, p3

    iput p2, p1, Le/m/a/c/e1/d;->e:I
    :try_end_1
    .catch Le/m/a/c/c1/n$b; {:try_start_1 .. :try_end_1} :catch_1
    .catch Le/m/a/c/c1/n$d; {:try_start_1 .. :try_end_1} :catch_0

    return p3

    :cond_4
    return p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 12
    :goto_0
    iget-object p2, p0, Le/m/a/c/c1/w;->N0:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, p2}, Le/m/a/c/u;->v(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Le/m/a/c/b0;

    move-result-object p1

    throw p1
.end method

.method public f(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    check-cast p2, Le/m/a/c/c1/q;

    .line 2
    iget-object p1, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    check-cast p1, Le/m/a/c/c1/t;

    .line 3
    iget-object v0, p1, Le/m/a/c/c1/t;->N:Le/m/a/c/c1/q;

    invoke-virtual {v0, p2}, Le/m/a/c/c1/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p2, Le/m/a/c/c1/q;->a:I

    .line 5
    iget v1, p2, Le/m/a/c/c1/q;->b:F

    .line 6
    iget-object v2, p1, Le/m/a/c/c1/t;->m:Landroid/media/AudioTrack;

    if-eqz v2, :cond_3

    .line 7
    iget-object v3, p1, Le/m/a/c/c1/t;->N:Le/m/a/c/c1/q;

    iget v3, v3, Le/m/a/c/c1/q;->a:I

    if-eq v3, v0, :cond_2

    .line 8
    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    :cond_2
    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p1, Le/m/a/c/c1/t;->m:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 10
    :cond_3
    iput-object p2, p1, Le/m/a/c/c1/t;->N:Le/m/a/c/c1/q;

    goto :goto_0

    .line 11
    :cond_4
    check-cast p2, Le/m/a/c/c1/i;

    .line 12
    iget-object p1, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    check-cast p1, Le/m/a/c/c1/t;

    .line 13
    iget-object v0, p1, Le/m/a/c/c1/t;->n:Le/m/a/c/c1/i;

    invoke-virtual {v0, p2}, Le/m/a/c/c1/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 14
    :cond_5
    iput-object p2, p1, Le/m/a/c/c1/t;->n:Le/m/a/c/c1/i;

    .line 15
    iget-boolean p2, p1, Le/m/a/c/c1/t;->O:Z

    if-eqz p2, :cond_6

    goto :goto_0

    .line 16
    :cond_6
    invoke-virtual {p1}, Le/m/a/c/c1/t;->d()V

    const/4 p2, 0x0

    .line 17
    iput p2, p1, Le/m/a/c/c1/t;->M:I

    goto :goto_0

    .line 18
    :cond_7
    iget-object p1, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    check-cast p1, Le/m/a/c/c1/t;

    .line 19
    iget v0, p1, Le/m/a/c/c1/t;->B:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_8

    .line 20
    iput p2, p1, Le/m/a/c/c1/t;->B:F

    .line 21
    invoke-virtual {p1}, Le/m/a/c/c1/t;->o()V

    :cond_8
    :goto_0
    return-void
.end method

.method public getPlaybackParameters()Le/m/a/c/o0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    check-cast v0, Le/m/a/c/c1/t;

    invoke-virtual {v0}, Le/m/a/c/c1/t;->f()Le/m/a/c/o0;

    move-result-object v0

    return-object v0
.end method

.method public h0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    check-cast v0, Le/m/a/c/c1/t;

    .line 2
    iget-boolean v1, v0, Le/m/a/c/c1/t;->J:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Le/m/a/c/c1/t;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Le/m/a/c/c1/t;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Le/m/a/c/c1/t;->l()V

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Le/m/a/c/c1/t;->J:Z
    :try_end_0
    .catch Le/m/a/c/c1/n$d; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Le/m/a/c/c1/w;->N0:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Le/m/a/c/u;->v(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Le/m/a/c/b0;

    move-result-object v0

    throw v0
.end method

.method public m()Le/m/a/c/q1/p;
    .locals 0

    return-object p0
.end method

.method public n0(Le/m/a/c/h1/g;Le/m/a/c/f1/e;Lcom/google/android/exoplayer2/Format;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/h1/g;",
            "Le/m/a/c/f1/e<",
            "Le/m/a/c/f1/h;",
            ">;",
            "Lcom/google/android/exoplayer2/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/h1/h$c;
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Le/m/a/c/q1/q;->f(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    sget v1, Le/m/a/c/q1/d0;->a:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    const/16 v1, 0x20

    goto :goto_0

    :cond_1
    move v1, v2

    .line 4
    :goto_0
    iget-object v3, p3, Lcom/google/android/exoplayer2/Format;->l:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    const-class v3, Le/m/a/c/f1/h;

    iget-object v5, p3, Lcom/google/android/exoplayer2/Format;->C:Ljava/lang/Class;

    .line 5
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p3, Lcom/google/android/exoplayer2/Format;->C:Ljava/lang/Class;

    if-nez v3, :cond_2

    iget-object v3, p3, Lcom/google/android/exoplayer2/Format;->l:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 6
    invoke-static {p2, v3}, Le/m/a/c/u;->G(Le/m/a/c/f1/e;Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move p2, v2

    goto :goto_2

    :cond_3
    :goto_1
    move p2, v4

    :goto_2
    if-eqz p2, :cond_5

    .line 7
    iget v3, p3, Lcom/google/android/exoplayer2/Format;->v:I

    .line 8
    invoke-virtual {p0, v3, v0}, Le/m/a/c/c1/w;->r0(ILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    if-eqz v3, :cond_5

    .line 9
    invoke-interface {p1}, Le/m/a/c/h1/g;->a()Le/m/a/c/h1/e;

    move-result-object v3

    if-eqz v3, :cond_5

    or-int/lit8 p1, v1, 0xc

    return p1

    :cond_5
    const-string v3, "audio/raw"

    .line 10
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    iget v3, p3, Lcom/google/android/exoplayer2/Format;->v:I

    iget v5, p3, Lcom/google/android/exoplayer2/Format;->x:I

    .line 11
    check-cast v0, Le/m/a/c/c1/t;

    invoke-virtual {v0, v3, v5}, Le/m/a/c/c1/t;->p(II)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    iget v3, p3, Lcom/google/android/exoplayer2/Format;->v:I

    .line 12
    check-cast v0, Le/m/a/c/c1/t;

    const/4 v5, 0x2

    invoke-virtual {v0, v3, v5}, Le/m/a/c/c1/t;->p(II)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    return v4

    .line 13
    :cond_8
    invoke-virtual {p0, p1, p3, v2}, Le/m/a/c/c1/w;->T(Le/m/a/c/h1/g;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return v4

    :cond_9
    if-nez p2, :cond_a

    return v5

    .line 15
    :cond_a
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/a/c/h1/e;

    .line 16
    invoke-virtual {p1, p3}, Le/m/a/c/h1/e;->d(Lcom/google/android/exoplayer2/Format;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 17
    invoke-virtual {p1, p3}, Le/m/a/c/h1/e;->e(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p1, 0x10

    goto :goto_4

    :cond_b
    const/16 p1, 0x8

    :goto_4
    if-eqz p2, :cond_c

    const/4 p2, 0x4

    goto :goto_5

    :cond_c
    const/4 p2, 0x3

    :goto_5
    or-int/2addr p1, p2

    or-int/2addr p1, v1

    return p1
.end method

.method public final q0(Le/m/a/c/h1/e;Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .line 1
    iget-object p1, p1, Le/m/a/c/h1/e;->a:Ljava/lang/String;

    const-string v0, "OMX.google.raw.decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    sget p1, Le/m/a/c/q1/d0;->a:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Le/m/a/c/c1/w;->E0:Landroid/content/Context;

    invoke-static {p1}, Le/m/a/c/q1/d0;->v(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 3
    :cond_1
    iget p1, p2, Lcom/google/android/exoplayer2/Format;->j:I

    return p1
.end method

.method public r()J
    .locals 2

    .line 1
    iget v0, p0, Le/m/a/c/u;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/m/a/c/c1/w;->s0()V

    .line 3
    :cond_0
    iget-wide v0, p0, Le/m/a/c/c1/w;->O0:J

    return-wide v0
.end method

.method public r0(ILjava/lang/String;)I
    .locals 3

    const-string v0, "audio/eac3-joc"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    iget-object p2, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    const/4 v1, -0x1

    const/16 v2, 0x12

    check-cast p2, Le/m/a/c/c1/t;

    invoke-virtual {p2, v1, v2}, Le/m/a/c/c1/t;->p(II)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-static {v0}, Le/m/a/c/q1/q;->a(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const-string p2, "audio/eac3"

    .line 4
    :cond_1
    invoke-static {p2}, Le/m/a/c/q1/q;->a(Ljava/lang/String;)I

    move-result p2

    .line 5
    iget-object v0, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    check-cast v0, Le/m/a/c/c1/t;

    invoke-virtual {v0, p1, p2}, Le/m/a/c/c1/t;->p(II)Z

    move-result p1

    if-eqz p1, :cond_2

    return p2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final s0()V
    .locals 31

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    invoke-virtual/range {p0 .. p0}, Le/m/a/c/c1/w;->c()Z

    move-result v2

    check-cast v1, Le/m/a/c/c1/t;

    .line 2
    invoke-virtual {v1}, Le/m/a/c/c1/t;->j()Z

    move-result v3

    if-eqz v3, :cond_28

    iget v3, v1, Le/m/a/c/c1/t;->z:I

    if-nez v3, :cond_0

    goto/16 :goto_15

    .line 3
    :cond_0
    iget-object v3, v1, Le/m/a/c/c1/t;->h:Le/m/a/c/c1/p;

    .line 4
    iget-object v7, v3, Le/m/a/c/c1/p;->c:Landroid/media/AudioTrack;

    .line 5
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v7}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v15, 0x1

    const-wide/16 v16, 0x3e8

    if-ne v7, v8, :cond_19

    .line 7
    invoke-virtual {v3}, Le/m/a/c/c1/p;->b()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Le/m/a/c/c1/p;->a(J)J

    move-result-wide v27

    const-wide/16 v11, 0x0

    cmp-long v7, v27, v11

    if-nez v7, :cond_1

    goto/16 :goto_9

    .line 8
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    div-long v13, v20, v16

    .line 9
    iget-wide v4, v3, Le/m/a/c/c1/p;->k:J

    sub-long v4, v13, v4

    const-wide/16 v20, 0x7530

    cmp-long v4, v4, v20

    if-ltz v4, :cond_3

    .line 10
    iget-object v4, v3, Le/m/a/c/c1/p;->b:[J

    iget v5, v3, Le/m/a/c/c1/p;->t:I

    sub-long v20, v27, v13

    aput-wide v20, v4, v5

    add-int/2addr v5, v15

    const/16 v4, 0xa

    .line 11
    rem-int/2addr v5, v4

    iput v5, v3, Le/m/a/c/c1/p;->t:I

    .line 12
    iget v5, v3, Le/m/a/c/c1/p;->u:I

    if-ge v5, v4, :cond_2

    add-int/2addr v5, v15

    .line 13
    iput v5, v3, Le/m/a/c/c1/p;->u:I

    .line 14
    :cond_2
    iput-wide v13, v3, Le/m/a/c/c1/p;->k:J

    .line 15
    iput-wide v11, v3, Le/m/a/c/c1/p;->j:J

    const/4 v4, 0x0

    .line 16
    :goto_0
    iget v5, v3, Le/m/a/c/c1/p;->u:I

    if-ge v4, v5, :cond_3

    .line 17
    iget-wide v10, v3, Le/m/a/c/c1/p;->j:J

    iget-object v12, v3, Le/m/a/c/c1/p;->b:[J

    aget-wide v20, v12, v4

    int-to-long v6, v5

    div-long v20, v20, v6

    add-long v5, v20, v10

    iput-wide v5, v3, Le/m/a/c/c1/p;->j:J

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v11, 0x0

    goto :goto_0

    .line 18
    :cond_3
    iget-boolean v4, v3, Le/m/a/c/c1/p;->h:Z

    if-eqz v4, :cond_4

    goto/16 :goto_9

    .line 19
    :cond_4
    iget-object v4, v3, Le/m/a/c/c1/p;->f:Le/m/a/c/c1/o;

    .line 20
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v5, v4, Le/m/a/c/c1/o;->a:Le/m/a/c/c1/o$a;

    if-eqz v5, :cond_10

    iget-wide v10, v4, Le/m/a/c/c1/o;->e:J

    sub-long v10, v13, v10

    iget-wide v6, v4, Le/m/a/c/c1/o;->d:J

    cmp-long v6, v10, v6

    if-gez v6, :cond_5

    goto/16 :goto_3

    .line 22
    :cond_5
    iput-wide v13, v4, Le/m/a/c/c1/o;->e:J

    .line 23
    iget-object v6, v5, Le/m/a/c/c1/o$a;->a:Landroid/media/AudioTrack;

    iget-object v7, v5, Le/m/a/c/c1/o$a;->b:Landroid/media/AudioTimestamp;

    invoke-virtual {v6, v7}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 24
    iget-object v7, v5, Le/m/a/c/c1/o$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v10, v7, Landroid/media/AudioTimestamp;->framePosition:J

    move-wide/from16 v29, v13

    .line 25
    iget-wide v12, v5, Le/m/a/c/c1/o$a;->d:J

    cmp-long v12, v12, v10

    if-lez v12, :cond_6

    .line 26
    iget-wide v12, v5, Le/m/a/c/c1/o$a;->c:J

    const-wide/16 v20, 0x1

    add-long v12, v12, v20

    iput-wide v12, v5, Le/m/a/c/c1/o$a;->c:J

    .line 27
    :cond_6
    iput-wide v10, v5, Le/m/a/c/c1/o$a;->d:J

    .line 28
    iget-wide v12, v5, Le/m/a/c/c1/o$a;->c:J

    const/16 v14, 0x20

    shl-long/2addr v12, v14

    add-long/2addr v10, v12

    iput-wide v10, v5, Le/m/a/c/c1/o$a;->e:J

    goto :goto_1

    :cond_7
    move-wide/from16 v29, v13

    .line 29
    :goto_1
    iget v5, v4, Le/m/a/c/c1/o;->b:I

    if-eqz v5, :cond_d

    if-eq v5, v15, :cond_b

    if-eq v5, v9, :cond_a

    if-eq v5, v8, :cond_9

    const/4 v8, 0x4

    if-ne v5, v8, :cond_8

    goto :goto_2

    .line 30
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_9
    if-eqz v6, :cond_f

    .line 31
    invoke-virtual {v4}, Le/m/a/c/c1/o;->a()V

    goto :goto_2

    :cond_a
    if-nez v6, :cond_f

    .line 32
    invoke-virtual {v4}, Le/m/a/c/c1/o;->a()V

    goto :goto_2

    :cond_b
    if-eqz v6, :cond_c

    .line 33
    iget-object v5, v4, Le/m/a/c/c1/o;->a:Le/m/a/c/c1/o$a;

    .line 34
    iget-wide v10, v5, Le/m/a/c/c1/o$a;->e:J

    .line 35
    iget-wide v12, v4, Le/m/a/c/c1/o;->f:J

    cmp-long v5, v10, v12

    if-lez v5, :cond_f

    .line 36
    invoke-virtual {v4, v9}, Le/m/a/c/c1/o;->b(I)V

    goto :goto_2

    .line 37
    :cond_c
    invoke-virtual {v4}, Le/m/a/c/c1/o;->a()V

    goto :goto_2

    :cond_d
    if-eqz v6, :cond_e

    .line 38
    iget-object v5, v4, Le/m/a/c/c1/o;->a:Le/m/a/c/c1/o$a;

    .line 39
    iget-object v8, v5, Le/m/a/c/c1/o$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v10, v8, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v10, v10, v16

    .line 40
    iget-wide v12, v4, Le/m/a/c/c1/o;->c:J

    cmp-long v8, v10, v12

    if-ltz v8, :cond_11

    .line 41
    iget-wide v10, v5, Le/m/a/c/c1/o$a;->e:J

    .line 42
    iput-wide v10, v4, Le/m/a/c/c1/o;->f:J

    .line 43
    invoke-virtual {v4, v15}, Le/m/a/c/c1/o;->b(I)V

    goto :goto_2

    .line 44
    :cond_e
    iget-wide v10, v4, Le/m/a/c/c1/o;->c:J

    sub-long v13, v29, v10

    const-wide/32 v10, 0x7a120

    cmp-long v5, v13, v10

    if-lez v5, :cond_f

    .line 45
    invoke-virtual {v4, v8}, Le/m/a/c/c1/o;->b(I)V

    :cond_f
    :goto_2
    move v12, v6

    goto :goto_4

    :cond_10
    :goto_3
    move-wide/from16 v29, v13

    :cond_11
    const/4 v12, 0x0

    :goto_4
    const-wide/32 v5, 0x4c4b40

    if-nez v12, :cond_12

    goto :goto_7

    .line 46
    :cond_12
    iget-object v8, v4, Le/m/a/c/c1/o;->a:Le/m/a/c/c1/o$a;

    if-eqz v8, :cond_13

    .line 47
    iget-object v10, v8, Le/m/a/c/c1/o$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v10, v10, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v10, v10, v16

    move-wide/from16 v23, v10

    goto :goto_5

    :cond_13
    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    :goto_5
    if-eqz v8, :cond_14

    .line 48
    iget-wide v10, v8, Le/m/a/c/c1/o$a;->e:J

    goto :goto_6

    :cond_14
    const-wide/16 v10, -0x1

    :goto_6
    sub-long v12, v23, v29

    .line 49
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    cmp-long v8, v12, v5

    if-lez v8, :cond_15

    .line 50
    iget-object v8, v3, Le/m/a/c/c1/p;->a:Le/m/a/c/c1/p$a;

    move-object/from16 v20, v8

    move-wide/from16 v21, v10

    move-wide/from16 v25, v29

    invoke-interface/range {v20 .. v28}, Le/m/a/c/c1/p$a;->b(JJJJ)V

    const/4 v8, 0x4

    .line 51
    invoke-virtual {v4, v8}, Le/m/a/c/c1/o;->b(I)V

    goto :goto_7

    .line 52
    :cond_15
    invoke-virtual {v3, v10, v11}, Le/m/a/c/c1/p;->a(J)J

    move-result-wide v12

    sub-long v12, v12, v27

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    cmp-long v8, v12, v5

    if-lez v8, :cond_16

    .line 53
    iget-object v8, v3, Le/m/a/c/c1/p;->a:Le/m/a/c/c1/p$a;

    move-object/from16 v20, v8

    move-wide/from16 v21, v10

    move-wide/from16 v25, v29

    invoke-interface/range {v20 .. v28}, Le/m/a/c/c1/p$a;->a(JJJJ)V

    const/4 v8, 0x4

    .line 54
    invoke-virtual {v4, v8}, Le/m/a/c/c1/o;->b(I)V

    goto :goto_7

    :cond_16
    const/4 v8, 0x4

    .line 55
    iget v10, v4, Le/m/a/c/c1/o;->b:I

    if-ne v10, v8, :cond_17

    .line 56
    invoke-virtual {v4}, Le/m/a/c/c1/o;->a()V

    .line 57
    :cond_17
    :goto_7
    iget-boolean v4, v3, Le/m/a/c/c1/p;->o:Z

    if-eqz v4, :cond_19

    iget-object v4, v3, Le/m/a/c/c1/p;->l:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_19

    iget-wide v10, v3, Le/m/a/c/c1/p;->p:J

    sub-long v13, v29, v10

    const-wide/32 v10, 0x7a120

    cmp-long v8, v13, v10

    if-ltz v8, :cond_19

    .line 58
    :try_start_0
    iget-object v8, v3, Le/m/a/c/c1/p;->c:Landroid/media/AudioTrack;

    .line 59
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v10, v7, [Ljava/lang/Object;

    .line 60
    invoke-virtual {v4, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 61
    sget v7, Le/m/a/c/q1/d0;->a:I

    .line 62
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v7, v4

    mul-long v7, v7, v16

    iget-wide v10, v3, Le/m/a/c/c1/p;->i:J

    sub-long/2addr v7, v10

    iput-wide v7, v3, Le/m/a/c/c1/p;->m:J

    const-wide/16 v10, 0x0

    .line 63
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v3, Le/m/a/c/c1/p;->m:J

    cmp-long v4, v7, v5

    if-lez v4, :cond_18

    .line 64
    iget-object v4, v3, Le/m/a/c/c1/p;->a:Le/m/a/c/c1/p$a;

    invoke-interface {v4, v7, v8}, Le/m/a/c/c1/p$a;->d(J)V

    const-wide/16 v4, 0x0

    .line 65
    iput-wide v4, v3, Le/m/a/c/c1/p;->m:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_18
    move-wide/from16 v5, v29

    const/4 v4, 0x0

    goto :goto_8

    :catch_0
    const/4 v4, 0x0

    .line 66
    iput-object v4, v3, Le/m/a/c/c1/p;->l:Ljava/lang/reflect/Method;

    move-wide/from16 v5, v29

    .line 67
    :goto_8
    iput-wide v5, v3, Le/m/a/c/c1/p;->p:J

    goto :goto_a

    :cond_19
    :goto_9
    const/4 v4, 0x0

    .line 68
    :goto_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    div-long v5, v5, v16

    .line 69
    iget-object v7, v3, Le/m/a/c/c1/p;->f:Le/m/a/c/c1/o;

    .line 70
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget v8, v7, Le/m/a/c/c1/o;->b:I

    if-eq v8, v15, :cond_1b

    if-ne v8, v9, :cond_1a

    goto :goto_b

    :cond_1a
    const/4 v8, 0x0

    goto :goto_c

    :cond_1b
    :goto_b
    move v8, v15

    :goto_c
    if-eqz v8, :cond_20

    .line 72
    iget-object v2, v7, Le/m/a/c/c1/o;->a:Le/m/a/c/c1/o$a;

    if-eqz v2, :cond_1c

    .line 73
    iget-wide v13, v2, Le/m/a/c/c1/o$a;->e:J

    goto :goto_d

    :cond_1c
    const-wide/16 v13, -0x1

    .line 74
    :goto_d
    invoke-virtual {v3, v13, v14}, Le/m/a/c/c1/p;->a(J)J

    move-result-wide v2

    .line 75
    iget v8, v7, Le/m/a/c/c1/o;->b:I

    if-ne v8, v9, :cond_1d

    goto :goto_e

    :cond_1d
    const/4 v15, 0x0

    :goto_e
    if-nez v15, :cond_1e

    goto :goto_11

    .line 76
    :cond_1e
    iget-object v7, v7, Le/m/a/c/c1/o;->a:Le/m/a/c/c1/o$a;

    if-eqz v7, :cond_1f

    .line 77
    iget-object v7, v7, Le/m/a/c/c1/o$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v7, v7, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v7, v7, v16

    move-wide/from16 v18, v7

    goto :goto_f

    :cond_1f
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    :goto_f
    sub-long v5, v5, v18

    add-long/2addr v2, v5

    goto :goto_11

    .line 78
    :cond_20
    iget v7, v3, Le/m/a/c/c1/p;->u:I

    if-nez v7, :cond_21

    .line 79
    invoke-virtual {v3}, Le/m/a/c/c1/p;->b()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Le/m/a/c/c1/p;->a(J)J

    move-result-wide v5

    goto :goto_10

    .line 80
    :cond_21
    iget-wide v7, v3, Le/m/a/c/c1/p;->j:J

    add-long/2addr v5, v7

    :goto_10
    if-nez v2, :cond_22

    .line 81
    iget-wide v2, v3, Le/m/a/c/c1/p;->m:J

    sub-long/2addr v5, v2

    :cond_22
    move-wide v2, v5

    .line 82
    :goto_11
    iget-object v5, v1, Le/m/a/c/c1/t;->l:Le/m/a/c/c1/t$c;

    invoke-virtual {v1}, Le/m/a/c/c1/t;->g()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Le/m/a/c/c1/t$c;->a(J)J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 83
    iget-wide v5, v1, Le/m/a/c/c1/t;->A:J

    move-object v10, v4

    .line 84
    :goto_12
    iget-object v4, v1, Le/m/a/c/c1/t;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_23

    iget-object v4, v1, Le/m/a/c/c1/t;->i:Ljava/util/ArrayDeque;

    .line 85
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/c/c1/t$e;

    .line 86
    iget-wide v7, v4, Le/m/a/c/c1/t$e;->c:J

    cmp-long v4, v2, v7

    if-ltz v4, :cond_23

    .line 87
    iget-object v4, v1, Le/m/a/c/c1/t;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Le/m/a/c/c1/t$e;

    goto :goto_12

    :cond_23
    if-eqz v10, :cond_24

    .line 88
    iget-object v4, v10, Le/m/a/c/c1/t$e;->a:Le/m/a/c/o0;

    .line 89
    iput-object v4, v1, Le/m/a/c/c1/t;->p:Le/m/a/c/o0;

    .line 90
    iget-wide v7, v10, Le/m/a/c/c1/t$e;->c:J

    .line 91
    iput-wide v7, v1, Le/m/a/c/c1/t;->r:J

    .line 92
    iget-wide v7, v10, Le/m/a/c/c1/t$e;->b:J

    .line 93
    iget-wide v9, v1, Le/m/a/c/c1/t;->A:J

    sub-long/2addr v7, v9

    iput-wide v7, v1, Le/m/a/c/c1/t;->q:J

    .line 94
    :cond_24
    iget-object v4, v1, Le/m/a/c/c1/t;->p:Le/m/a/c/o0;

    iget v4, v4, Le/m/a/c/o0;->a:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v7

    if-nez v4, :cond_25

    .line 95
    iget-wide v7, v1, Le/m/a/c/c1/t;->q:J

    add-long/2addr v2, v7

    iget-wide v7, v1, Le/m/a/c/c1/t;->r:J

    sub-long/2addr v2, v7

    goto :goto_14

    .line 96
    :cond_25
    iget-object v4, v1, Le/m/a/c/c1/t;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 97
    iget-wide v7, v1, Le/m/a/c/c1/t;->q:J

    iget-object v4, v1, Le/m/a/c/c1/t;->b:Le/m/a/c/c1/t$b;

    iget-wide v9, v1, Le/m/a/c/c1/t;->r:J

    sub-long/2addr v2, v9

    .line 98
    invoke-interface {v4, v2, v3}, Le/m/a/c/c1/t$b;->b(J)J

    move-result-wide v2

    add-long/2addr v2, v7

    goto :goto_14

    .line 99
    :cond_26
    iget-wide v8, v1, Le/m/a/c/c1/t;->q:J

    iget-wide v10, v1, Le/m/a/c/c1/t;->r:J

    sub-long/2addr v2, v10

    iget-object v4, v1, Le/m/a/c/c1/t;->p:Le/m/a/c/o0;

    iget v4, v4, Le/m/a/c/o0;->a:F

    .line 100
    sget v10, Le/m/a/c/q1/d0;->a:I

    cmpl-float v7, v4, v7

    if-nez v7, :cond_27

    goto :goto_13

    :cond_27
    long-to-double v2, v2

    float-to-double v10, v4

    mul-double/2addr v2, v10

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    :goto_13
    add-long/2addr v2, v8

    .line 102
    :goto_14
    iget-object v4, v1, Le/m/a/c/c1/t;->l:Le/m/a/c/c1/t$c;

    iget-object v1, v1, Le/m/a/c/c1/t;->b:Le/m/a/c/c1/t$b;

    .line 103
    invoke-interface {v1}, Le/m/a/c/c1/t$b;->a()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Le/m/a/c/c1/t$c;->a(J)J

    move-result-wide v7

    add-long/2addr v7, v2

    add-long/2addr v7, v5

    goto :goto_16

    :cond_28
    :goto_15
    const-wide/high16 v7, -0x8000000000000000L

    :goto_16
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, v7, v1

    if-eqz v1, :cond_2a

    .line 104
    iget-boolean v1, v0, Le/m/a/c/c1/w;->Q0:Z

    if-eqz v1, :cond_29

    goto :goto_17

    :cond_29
    iget-wide v1, v0, Le/m/a/c/c1/w;->O0:J

    .line 105
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    :goto_17
    iput-wide v7, v0, Le/m/a/c/c1/w;->O0:J

    const/4 v1, 0x0

    .line 106
    iput-boolean v1, v0, Le/m/a/c/c1/w;->Q0:Z

    :cond_2a
    return-void
.end method

.method public t(Le/m/a/c/o0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    check-cast v0, Le/m/a/c/c1/t;

    .line 2
    iget-object v1, v0, Le/m/a/c/c1/t;->l:Le/m/a/c/c1/t$c;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Le/m/a/c/c1/t$c;->j:Z

    if-nez v1, :cond_0

    .line 3
    sget-object p1, Le/m/a/c/o0;->e:Le/m/a/c/o0;

    iput-object p1, v0, Le/m/a/c/c1/t;->p:Le/m/a/c/o0;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Le/m/a/c/c1/t;->f()Le/m/a/c/o0;

    move-result-object v1

    .line 5
    invoke-virtual {p1, v1}, Le/m/a/c/o0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {v0}, Le/m/a/c/c1/t;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iput-object p1, v0, Le/m/a/c/c1/t;->o:Le/m/a/c/o0;

    goto :goto_0

    .line 8
    :cond_1
    iput-object p1, v0, Le/m/a/c/c1/t;->p:Le/m/a/c/o0;

    :cond_2
    :goto_0
    return-void
.end method

.method public x()V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    :try_start_0
    iput-wide v0, p0, Le/m/a/c/c1/w;->R0:J

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/m/a/c/c1/w;->S0:I

    .line 3
    iget-object v0, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    check-cast v0, Le/m/a/c/c1/t;

    :try_start_1
    invoke-virtual {v0}, Le/m/a/c/c1/t;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    invoke-super {p0}, Le/m/a/c/h1/f;->x()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    iget-object v0, p0, Le/m/a/c/c1/w;->F0:Le/m/a/c/c1/m$a;

    iget-object v1, p0, Le/m/a/c/h1/f;->C0:Le/m/a/c/e1/d;

    invoke-virtual {v0, v1}, Le/m/a/c/c1/m$a;->a(Le/m/a/c/e1/d;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Le/m/a/c/c1/w;->F0:Le/m/a/c/c1/m$a;

    iget-object v2, p0, Le/m/a/c/h1/f;->C0:Le/m/a/c/e1/d;

    invoke-virtual {v1, v2}, Le/m/a/c/c1/m$a;->a(Le/m/a/c/e1/d;)V

    .line 6
    throw v0

    :catchall_1
    move-exception v0

    .line 7
    :try_start_3
    invoke-super {p0}, Le/m/a/c/h1/f;->x()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 8
    iget-object v1, p0, Le/m/a/c/c1/w;->F0:Le/m/a/c/c1/m$a;

    iget-object v2, p0, Le/m/a/c/h1/f;->C0:Le/m/a/c/e1/d;

    invoke-virtual {v1, v2}, Le/m/a/c/c1/m$a;->a(Le/m/a/c/e1/d;)V

    .line 9
    throw v0

    :catchall_2
    move-exception v0

    .line 10
    iget-object v1, p0, Le/m/a/c/c1/w;->F0:Le/m/a/c/c1/m$a;

    iget-object v2, p0, Le/m/a/c/h1/f;->C0:Le/m/a/c/e1/d;

    invoke-virtual {v1, v2}, Le/m/a/c/c1/m$a;->a(Le/m/a/c/e1/d;)V

    .line 11
    throw v0
.end method

.method public y(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Le/m/a/c/h1/f;->y(Z)V

    .line 2
    iget-object p1, p0, Le/m/a/c/c1/w;->F0:Le/m/a/c/c1/m$a;

    iget-object v0, p0, Le/m/a/c/h1/f;->C0:Le/m/a/c/e1/d;

    .line 3
    iget-object v1, p1, Le/m/a/c/c1/m$a;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 4
    new-instance v2, Le/m/a/c/c1/e;

    invoke-direct {v2, p1, v0}, Le/m/a/c/c1/e;-><init>(Le/m/a/c/c1/m$a;Le/m/a/c/e1/d;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    :cond_0
    iget-object p1, p0, Le/m/a/c/u;->c:Le/m/a/c/v0;

    .line 6
    iget p1, p1, Le/m/a/c/v0;->a:I

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 7
    iget-object v1, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    check-cast v1, Le/m/a/c/c1/t;

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget v2, Le/m/a/c/q1/d0;->a:I

    const/4 v3, 0x1

    const/16 v4, 0x15

    if-lt v2, v4, :cond_1

    move v0, v3

    :cond_1
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 10
    iget-boolean v0, v1, Le/m/a/c/c1/t;->O:Z

    if-eqz v0, :cond_2

    iget v0, v1, Le/m/a/c/c1/t;->M:I

    if-eq v0, p1, :cond_4

    .line 11
    :cond_2
    iput-boolean v3, v1, Le/m/a/c/c1/t;->O:Z

    .line 12
    iput p1, v1, Le/m/a/c/c1/t;->M:I

    .line 13
    invoke-virtual {v1}, Le/m/a/c/c1/t;->d()V

    goto :goto_0

    .line 14
    :cond_3
    iget-object p1, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    check-cast p1, Le/m/a/c/c1/t;

    .line 15
    iget-boolean v1, p1, Le/m/a/c/c1/t;->O:Z

    if-eqz v1, :cond_4

    .line 16
    iput-boolean v0, p1, Le/m/a/c/c1/t;->O:Z

    .line 17
    iput v0, p1, Le/m/a/c/c1/t;->M:I

    .line 18
    invoke-virtual {p1}, Le/m/a/c/c1/t;->d()V

    :cond_4
    :goto_0
    return-void
.end method

.method public z(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    const/4 p3, 0x0

    .line 1
    iput-boolean p3, p0, Le/m/a/c/h1/f;->w0:Z

    .line 2
    iput-boolean p3, p0, Le/m/a/c/h1/f;->x0:Z

    .line 3
    iput-boolean p3, p0, Le/m/a/c/h1/f;->B0:Z

    .line 4
    invoke-virtual {p0}, Le/m/a/c/h1/f;->O()Z

    .line 5
    iget-object v0, p0, Le/m/a/c/h1/f;->s:Le/m/a/c/q1/b0;

    invoke-virtual {v0}, Le/m/a/c/q1/b0;->b()V

    .line 6
    iget-object v0, p0, Le/m/a/c/c1/w;->G0:Le/m/a/c/c1/n;

    check-cast v0, Le/m/a/c/c1/t;

    invoke-virtual {v0}, Le/m/a/c/c1/t;->d()V

    .line 7
    iput-wide p1, p0, Le/m/a/c/c1/w;->O0:J

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Le/m/a/c/c1/w;->P0:Z

    .line 9
    iput-boolean p1, p0, Le/m/a/c/c1/w;->Q0:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    iput-wide p1, p0, Le/m/a/c/c1/w;->R0:J

    .line 11
    iput p3, p0, Le/m/a/c/c1/w;->S0:I

    return-void
.end method
