.class public Ln3/y/b/a/n0/x;
.super Ln3/y/b/a/r0/b;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/x0/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/n0/x$b;
    }
.end annotation


# instance fields
.field public final A0:Ln3/y/b/a/n0/n$a;

.field public final B0:Ln3/y/b/a/n0/o;

.field public final C0:[J

.field public D0:I

.field public E0:Z

.field public F0:Z

.field public G0:Z

.field public H0:Landroid/media/MediaFormat;

.field public I0:I

.field public J0:I

.field public K0:I

.field public L0:I

.field public M0:J

.field public N0:Z

.field public O0:Z

.field public P0:J

.field public Q0:I

.field public final z0:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln3/y/b/a/r0/c;Ln3/y/b/a/p0/c;ZLandroid/os/Handler;Ln3/y/b/a/n0/n;Ln3/y/b/a/n0/o;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ln3/y/b/a/r0/c;",
            "Ln3/y/b/a/p0/c<",
            "Ln3/y/b/a/p0/e;",
            ">;Z",
            "Landroid/os/Handler;",
            "Ln3/y/b/a/n0/n;",
            "Ln3/y/b/a/n0/o;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v5, 0x0

    const v6, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Ln3/y/b/a/r0/b;-><init>(ILn3/y/b/a/r0/c;Ln3/y/b/a/p0/c;ZZF)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/n0/x;->z0:Landroid/content/Context;

    .line 3
    iput-object p7, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide p1, p0, Ln3/y/b/a/n0/x;->P0:J

    const/16 p1, 0xa

    new-array p1, p1, [J

    .line 5
    iput-object p1, p0, Ln3/y/b/a/n0/x;->C0:[J

    .line 6
    new-instance p1, Ln3/y/b/a/n0/n$a;

    invoke-direct {p1, p5, p6}, Ln3/y/b/a/n0/n$a;-><init>(Landroid/os/Handler;Ln3/y/b/a/n0/n;)V

    iput-object p1, p0, Ln3/y/b/a/n0/x;->A0:Ln3/y/b/a/n0/n$a;

    .line 7
    new-instance p1, Ln3/y/b/a/n0/x$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Ln3/y/b/a/n0/x$b;-><init>(Ln3/y/b/a/n0/x;Ln3/y/b/a/n0/x$a;)V

    check-cast p7, Ln3/y/b/a/n0/u;

    .line 8
    iput-object p1, p7, Ln3/y/b/a/n0/u;->j:Ln3/y/b/a/n0/o$c;

    return-void
.end method


# virtual methods
.method public A()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/n0/x;->r0()V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    check-cast v0, Ln3/y/b/a/n0/u;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Ln3/y/b/a/n0/u;->L:Z

    .line 4
    invoke-virtual {v0}, Ln3/y/b/a/n0/u;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Ln3/y/b/a/n0/u;->h:Ln3/y/b/a/n0/q;

    const-wide/16 v3, 0x0

    .line 5
    iput-wide v3, v2, Ln3/y/b/a/n0/q;->j:J

    .line 6
    iput v1, v2, Ln3/y/b/a/n0/q;->u:I

    .line 7
    iput v1, v2, Ln3/y/b/a/n0/q;->t:I

    .line 8
    iput-wide v3, v2, Ln3/y/b/a/n0/q;->k:J

    .line 9
    iget-wide v3, v2, Ln3/y/b/a/n0/q;->v:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 10
    iget-object v1, v2, Ln3/y/b/a/n0/q;->f:Ln3/y/b/a/n0/p;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v1}, Ln3/y/b/a/n0/p;->a()V

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 13
    iget-object v0, v0, Ln3/y/b/a/n0/u;->m:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_1
    return-void
.end method

.method public B([Landroidx/media2/exoplayer/external/Format;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget-wide p1, p0, Ln3/y/b/a/n0/x;->P0:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    .line 2
    iget p3, p0, Ln3/y/b/a/n0/x;->Q0:I

    iget-object v0, p0, Ln3/y/b/a/n0/x;->C0:[J

    array-length v1, v0

    if-ne p3, v1, :cond_0

    add-int/lit8 p3, p3, -0x1

    .line 3
    aget-wide v1, v0, p3

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    .line 4
    iput p3, p0, Ln3/y/b/a/n0/x;->Q0:I

    .line 5
    :goto_0
    iget p3, p0, Ln3/y/b/a/n0/x;->Q0:I

    add-int/lit8 p3, p3, -0x1

    aput-wide p1, v0, p3

    :cond_1
    return-void
.end method

.method public G(Landroid/media/MediaCodec;Ln3/y/b/a/r0/a;Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)I
    .locals 2

    .line 1
    invoke-virtual {p0, p2, p4}, Ln3/y/b/a/n0/x;->p0(Ln3/y/b/a/r0/a;Landroidx/media2/exoplayer/external/Format;)I

    move-result p1

    iget v0, p0, Ln3/y/b/a/n0/x;->D0:I

    const/4 v1, 0x0

    if-gt p1, v0, :cond_3

    iget p1, p3, Landroidx/media2/exoplayer/external/Format;->y:I

    if-nez p1, :cond_3

    iget p1, p3, Landroidx/media2/exoplayer/external/Format;->z:I

    if-nez p1, :cond_3

    iget p1, p4, Landroidx/media2/exoplayer/external/Format;->y:I

    if-nez p1, :cond_3

    iget p1, p4, Landroidx/media2/exoplayer/external/Format;->z:I

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p2, p3, p4, p1}, Ln3/y/b/a/r0/a;->e(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x3

    return p1

    .line 3
    :cond_1
    iget-object p2, p3, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    iget-object v0, p4, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    invoke-static {p2, v0}, Ln3/y/b/a/x0/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p3, Landroidx/media2/exoplayer/external/Format;->v:I

    iget v0, p4, Landroidx/media2/exoplayer/external/Format;->v:I

    if-ne p2, v0, :cond_2

    iget p2, p3, Landroidx/media2/exoplayer/external/Format;->w:I

    iget v0, p4, Landroidx/media2/exoplayer/external/Format;->w:I

    if-ne p2, v0, :cond_2

    .line 4
    invoke-virtual {p3, p4}, Landroidx/media2/exoplayer/external/Format;->x(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p2

    if-eqz p2, :cond_2

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

.method public H(Ln3/y/b/a/r0/a;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/Format;Landroid/media/MediaCrypto;F)V
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/y/b/a/b;->f:[Landroidx/media2/exoplayer/external/Format;

    .line 2
    invoke-virtual {p0, p1, p3}, Ln3/y/b/a/n0/x;->p0(Ln3/y/b/a/r0/a;Landroidx/media2/exoplayer/external/Format;)I

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
    invoke-virtual {p1, p3, v6, v4}, Ln3/y/b/a/r0/a;->e(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6
    invoke-virtual {p0, p1, v6}, Ln3/y/b/a/n0/x;->p0(Ln3/y/b/a/r0/a;Landroidx/media2/exoplayer/external/Format;)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    iput v1, p0, Ln3/y/b/a/n0/x;->D0:I

    .line 8
    iget-object v0, p1, Ln3/y/b/a/r0/a;->a:Ljava/lang/String;

    .line 9
    sget v1, Ln3/y/b/a/x0/x;->a:I

    const/16 v2, 0x18

    const-string v5, "samsung"

    if-ge v1, v2, :cond_4

    const-string v2, "OMX.SEC.aac.dec"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ln3/y/b/a/x0/x;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ln3/y/b/a/x0/x;->b:Ljava/lang/String;

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
    iput-boolean v0, p0, Ln3/y/b/a/n0/x;->F0:Z

    .line 14
    iget-object v0, p1, Ln3/y/b/a/r0/a;->a:Ljava/lang/String;

    const/16 v2, 0x15

    if-ge v1, v2, :cond_6

    const-string v2, "OMX.SEC.mp3.dec"

    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Ln3/y/b/a/x0/x;->c:Ljava/lang/String;

    .line 16
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Ln3/y/b/a/x0/x;->b:Ljava/lang/String;

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
    iput-boolean v0, p0, Ln3/y/b/a/n0/x;->G0:Z

    .line 24
    iget-boolean v0, p1, Ln3/y/b/a/r0/a;->g:Z

    iput-boolean v0, p0, Ln3/y/b/a/n0/x;->E0:Z

    if-eqz v0, :cond_7

    const-string p1, "audio/raw"

    goto :goto_4

    .line 25
    :cond_7
    iget-object p1, p1, Ln3/y/b/a/r0/a;->c:Ljava/lang/String;

    .line 26
    :goto_4
    iget v0, p0, Ln3/y/b/a/n0/x;->D0:I

    .line 27
    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    const-string v5, "mime"

    .line 28
    invoke-virtual {v2, v5, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget p1, p3, Landroidx/media2/exoplayer/external/Format;->v:I

    const-string v6, "channel-count"

    invoke-virtual {v2, v6, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 30
    iget p1, p3, Landroidx/media2/exoplayer/external/Format;->w:I

    const-string v6, "sample-rate"

    invoke-virtual {v2, v6, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 31
    iget-object p1, p3, Landroidx/media2/exoplayer/external/Format;->k:Ljava/util/List;

    invoke-static {v2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->p1(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p1, "max-input-size"

    .line 32
    invoke-static {v2, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->T0(Landroid/media/MediaFormat;Ljava/lang/String;I)V

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
    sget-object p1, Ln3/y/b/a/x0/x;->d:Ljava/lang/String;

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
    iget-object p1, p3, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

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
    iget-boolean p2, p0, Ln3/y/b/a/n0/x;->E0:Z

    if-eqz p2, :cond_c

    .line 41
    iput-object v2, p0, Ln3/y/b/a/n0/x;->H0:Landroid/media/MediaFormat;

    .line 42
    iget-object p1, p3, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    invoke-virtual {v2, v5, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 43
    :cond_c
    iput-object p1, p0, Ln3/y/b/a/n0/x;->H0:Landroid/media/MediaFormat;

    :goto_6
    return-void
.end method

.method public Q(FLandroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)F
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
    iget v3, v3, Landroidx/media2/exoplayer/external/Format;->w:I

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

.method public R(Ln3/y/b/a/r0/c;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/b/a/r0/c;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Z)",
            "Ljava/util/List<",
            "Ln3/y/b/a/r0/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/r0/h$c;
        }
    .end annotation

    .line 1
    iget v0, p2, Landroidx/media2/exoplayer/external/Format;->v:I

    iget-object v1, p2, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0, v1}, Ln3/y/b/a/n0/x;->q0(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Ln3/y/b/a/r0/c;->a()Ln3/y/b/a/r0/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p2, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    .line 6
    invoke-interface {p1, v0, p3, v1}, Ln3/y/b/a/r0/c;->b(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 7
    sget-object v2, Ln3/y/b/a/r0/h;->a:Ljava/util/regex/Pattern;

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    new-instance v0, Ln3/y/b/a/r0/d;

    invoke-direct {v0, p2}, Ln3/y/b/a/r0/d;-><init>(Landroidx/media2/exoplayer/external/Format;)V

    invoke-static {v2, v0}, Ln3/y/b/a/r0/h;->i(Ljava/util/List;Ln3/y/b/a/r0/h$g;)V

    .line 10
    iget-object p2, p2, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    const-string v0, "audio/eac3-joc"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "audio/eac3"

    .line 11
    invoke-interface {p1, p2, p3, v1}, Ln3/y/b/a/r0/c;->b(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 12
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public W(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v1, p0, Ln3/y/b/a/n0/x;->A0:Ln3/y/b/a/n0/n$a;

    .line 2
    iget-object v0, v1, Ln3/y/b/a/n0/n$a;->b:Ln3/y/b/a/n0/n;

    if-eqz v0, :cond_0

    .line 3
    iget-object v7, v1, Ln3/y/b/a/n0/n$a;->a:Landroid/os/Handler;

    new-instance v8, Ln3/y/b/a/n0/i;

    move-object v0, v8

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Ln3/y/b/a/n0/i;-><init>(Ln3/y/b/a/n0/n$a;Ljava/lang/String;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public X(Ln3/y/b/a/x;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Ln3/y/b/a/r0/b;->X(Ln3/y/b/a/x;)V

    .line 2
    iget-object p1, p1, Ln3/y/b/a/x;->c:Landroidx/media2/exoplayer/external/Format;

    .line 3
    iget-object v0, p0, Ln3/y/b/a/n0/x;->A0:Ln3/y/b/a/n0/n$a;

    .line 4
    iget-object v1, v0, Ln3/y/b/a/n0/n$a;->b:Ln3/y/b/a/n0/n;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v0, Ln3/y/b/a/n0/n$a;->a:Landroid/os/Handler;

    new-instance v2, Ln3/y/b/a/n0/j;

    invoke-direct {v2, v0, p1}, Ln3/y/b/a/n0/j;-><init>(Ln3/y/b/a/n0/n$a;Landroidx/media2/exoplayer/external/Format;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    :cond_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->x:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 7
    :goto_0
    iput v0, p0, Ln3/y/b/a/n0/x;->I0:I

    .line 8
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->v:I

    iput v0, p0, Ln3/y/b/a/n0/x;->J0:I

    .line 9
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->y:I

    iput v0, p0, Ln3/y/b/a/n0/x;->K0:I

    .line 10
    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->z:I

    iput p1, p0, Ln3/y/b/a/n0/x;->L0:I

    return-void
.end method

.method public Y(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ln3/y/b/a/n0/x;->H0:Landroid/media/MediaFormat;

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
    invoke-virtual {p0, p2, v1}, Ln3/y/b/a/n0/x;->q0(ILjava/lang/String;)I

    move-result p2

    move v2, p2

    move-object p2, p1

    goto :goto_0

    .line 5
    :cond_0
    iget p1, p0, Ln3/y/b/a/n0/x;->I0:I

    move v2, p1

    .line 6
    :goto_0
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    const-string p1, "sample-rate"

    .line 7
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 8
    iget-boolean p1, p0, Ln3/y/b/a/n0/x;->F0:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    if-ne v3, p1, :cond_1

    iget p2, p0, Ln3/y/b/a/n0/x;->J0:I

    if-ge p2, p1, :cond_1

    .line 9
    new-array p1, p2, [I

    const/4 p2, 0x0

    .line 10
    :goto_1
    iget v0, p0, Ln3/y/b/a/n0/x;->J0:I

    if-ge p2, v0, :cond_2

    .line 11
    aput p2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :cond_2
    move-object v6, p1

    .line 12
    :try_start_0
    iget-object p1, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    const/4 v5, 0x0

    iget v7, p0, Ln3/y/b/a/n0/x;->K0:I

    iget v8, p0, Ln3/y/b/a/n0/x;->L0:I
    :try_end_0
    .catch Ln3/y/b/a/n0/o$a; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    check-cast v1, Ln3/y/b/a/n0/u;

    :try_start_1
    invoke-virtual/range {v1 .. v8}, Ln3/y/b/a/n0/u;->b(IIII[III)V
    :try_end_1
    .catch Ln3/y/b/a/n0/o$a; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 13
    iget p2, p0, Ln3/y/b/a/b;->c:I

    .line 14
    invoke-static {p1, p2}, Ln3/y/b/a/f;->a(Ljava/lang/Exception;I)Ln3/y/b/a/f;

    move-result-object p1

    throw p1
.end method

.method public Z(J)V
    .locals 6

    .line 1
    :goto_0
    iget v0, p0, Ln3/y/b/a/n0/x;->Q0:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Ln3/y/b/a/n0/x;->C0:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    cmp-long v3, p1, v3

    if-ltz v3, :cond_1

    .line 2
    iget-object v3, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    check-cast v3, Ln3/y/b/a/n0/u;

    .line 3
    iget v4, v3, Ln3/y/b/a/n0/u;->z:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x2

    .line 4
    iput v4, v3, Ln3/y/b/a/n0/u;->z:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 5
    iput v0, p0, Ln3/y/b/a/n0/x;->Q0:I

    .line 6
    invoke-static {v1, v5, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a0(Ln3/y/b/a/o0/c;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/n0/x;->N0:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ln3/y/b/a/o0/c;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-wide v0, p1, Ln3/y/b/a/o0/c;->d:J

    iget-wide v2, p0, Ln3/y/b/a/n0/x;->M0:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3
    iget-wide v0, p1, Ln3/y/b/a/o0/c;->d:J

    iput-wide v0, p0, Ln3/y/b/a/n0/x;->M0:J

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Ln3/y/b/a/n0/x;->N0:Z

    .line 5
    :cond_1
    iget-wide v0, p1, Ln3/y/b/a/o0/c;->d:J

    iget-wide v2, p0, Ln3/y/b/a/n0/x;->P0:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ln3/y/b/a/n0/x;->P0:J

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    check-cast v0, Ln3/y/b/a/n0/u;

    invoke-virtual {v0}, Ln3/y/b/a/n0/u;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Ln3/y/b/a/r0/b;->b()Z

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

.method public c()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/r0/b;->t0:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    check-cast v0, Ln3/y/b/a/n0/u;

    .line 3
    invoke-virtual {v0}, Ln3/y/b/a/n0/u;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Ln3/y/b/a/n0/u;->J:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ln3/y/b/a/n0/u;->i()Z

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

.method public c0(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZLandroidx/media2/exoplayer/external/Format;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Ln3/y/b/a/n0/x;->G0:Z

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x0

    cmp-long p1, p9, p1

    if-nez p1, :cond_0

    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_0

    iget-wide p1, p0, Ln3/y/b/a/n0/x;->P0:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, p3

    if-eqz p3, :cond_0

    move-wide p9, p1

    .line 2
    :cond_0
    iget-boolean p1, p0, Ln3/y/b/a/n0/x;->E0:Z

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
    iget-object p1, p0, Ln3/y/b/a/r0/b;->x0:Ln3/y/b/a/o0/b;

    iget p2, p1, Ln3/y/b/a/o0/b;->f:I

    add-int/2addr p2, p3

    iput p2, p1, Ln3/y/b/a/o0/b;->f:I

    .line 6
    iget-object p1, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    check-cast p1, Ln3/y/b/a/n0/u;

    .line 7
    iget p2, p1, Ln3/y/b/a/n0/u;->z:I

    if-ne p2, p3, :cond_2

    .line 8
    iput p4, p1, Ln3/y/b/a/n0/u;->z:I

    :cond_2
    return p3

    .line 9
    :cond_3
    :try_start_0
    iget-object p1, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;
    :try_end_0
    .catch Ln3/y/b/a/n0/o$b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ln3/y/b/a/n0/o$d; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p1, Ln3/y/b/a/n0/u;

    :try_start_1
    invoke-virtual {p1, p6, p9, p10}, Ln3/y/b/a/n0/u;->h(Ljava/nio/ByteBuffer;J)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 11
    iget-object p1, p0, Ln3/y/b/a/r0/b;->x0:Ln3/y/b/a/o0/b;

    iget p2, p1, Ln3/y/b/a/o0/b;->e:I

    add-int/2addr p2, p3

    iput p2, p1, Ln3/y/b/a/o0/b;->e:I
    :try_end_1
    .catch Ln3/y/b/a/n0/o$b; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ln3/y/b/a/n0/o$d; {:try_start_1 .. :try_end_1} :catch_0

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
    iget p2, p0, Ln3/y/b/a/b;->c:I

    .line 13
    invoke-static {p1, p2}, Ln3/y/b/a/f;->a(Ljava/lang/Exception;I)Ln3/y/b/a/f;

    move-result-object p1

    throw p1
.end method

.method public f(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
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
    check-cast p2, Ln3/y/b/a/n0/r;

    .line 2
    iget-object p1, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    check-cast p1, Ln3/y/b/a/n0/u;

    .line 3
    iget-object v0, p1, Ln3/y/b/a/n0/u;->N:Ln3/y/b/a/n0/r;

    invoke-virtual {v0, p2}, Ln3/y/b/a/n0/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p2, Ln3/y/b/a/n0/r;->a:I

    .line 5
    iget v1, p2, Ln3/y/b/a/n0/r;->b:F

    .line 6
    iget-object v2, p1, Ln3/y/b/a/n0/u;->m:Landroid/media/AudioTrack;

    if-eqz v2, :cond_3

    .line 7
    iget-object v3, p1, Ln3/y/b/a/n0/u;->N:Ln3/y/b/a/n0/r;

    iget v3, v3, Ln3/y/b/a/n0/r;->a:I

    if-eq v3, v0, :cond_2

    .line 8
    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    :cond_2
    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p1, Ln3/y/b/a/n0/u;->m:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 10
    :cond_3
    iput-object p2, p1, Ln3/y/b/a/n0/u;->N:Ln3/y/b/a/n0/r;

    goto :goto_0

    .line 11
    :cond_4
    check-cast p2, Ln3/y/b/a/n0/c;

    .line 12
    iget-object p1, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    check-cast p1, Ln3/y/b/a/n0/u;

    .line 13
    iget-object v0, p1, Ln3/y/b/a/n0/u;->n:Ln3/y/b/a/n0/c;

    invoke-virtual {v0, p2}, Ln3/y/b/a/n0/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 14
    :cond_5
    iput-object p2, p1, Ln3/y/b/a/n0/u;->n:Ln3/y/b/a/n0/c;

    .line 15
    iget-boolean p2, p1, Ln3/y/b/a/n0/u;->O:Z

    if-eqz p2, :cond_6

    goto :goto_0

    .line 16
    :cond_6
    invoke-virtual {p1}, Ln3/y/b/a/n0/u;->d()V

    const/4 p2, 0x0

    .line 17
    iput p2, p1, Ln3/y/b/a/n0/u;->M:I

    goto :goto_0

    .line 18
    :cond_7
    iget-object p1, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    check-cast p1, Ln3/y/b/a/n0/u;

    .line 19
    iget v0, p1, Ln3/y/b/a/n0/u;->B:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_8

    .line 20
    iput p2, p1, Ln3/y/b/a/n0/u;->B:F

    .line 21
    invoke-virtual {p1}, Ln3/y/b/a/n0/u;->o()V

    :cond_8
    :goto_0
    return-void
.end method

.method public f0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    check-cast v0, Ln3/y/b/a/n0/u;

    .line 2
    iget-boolean v1, v0, Ln3/y/b/a/n0/u;->J:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ln3/y/b/a/n0/u;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ln3/y/b/a/n0/u;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ln3/y/b/a/n0/u;->l()V

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Ln3/y/b/a/n0/u;->J:Z
    :try_end_0
    .catch Ln3/y/b/a/n0/o$d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    .line 5
    :goto_1
    iget v1, p0, Ln3/y/b/a/b;->c:I

    .line 6
    invoke-static {v0, v1}, Ln3/y/b/a/f;->a(Ljava/lang/Exception;I)Ln3/y/b/a/f;

    move-result-object v0

    throw v0
.end method

.method public getPlaybackParameters()Ln3/y/b/a/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    check-cast v0, Ln3/y/b/a/n0/u;

    invoke-virtual {v0}, Ln3/y/b/a/n0/u;->f()Ln3/y/b/a/e0;

    move-result-object v0

    return-object v0
.end method

.method public l0(Ln3/y/b/a/r0/c;Ln3/y/b/a/p0/c;Landroidx/media2/exoplayer/external/Format;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/b/a/r0/c;",
            "Ln3/y/b/a/p0/c<",
            "Ln3/y/b/a/p0/e;",
            ">;",
            "Landroidx/media2/exoplayer/external/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/r0/h$c;
        }
    .end annotation

    .line 1
    iget-object v0, p3, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ln3/y/b/a/x0/j;->f(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    sget v1, Ln3/y/b/a/x0/x;->a:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    const/16 v1, 0x20

    goto :goto_0

    :cond_1
    move v1, v2

    .line 4
    :goto_0
    iget-object v3, p3, Landroidx/media2/exoplayer/external/Format;->l:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    const-class v3, Ln3/y/b/a/p0/e;

    iget-object v5, p3, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/Class;

    .line 5
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p3, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/Class;

    if-nez v3, :cond_2

    iget-object v3, p3, Landroidx/media2/exoplayer/external/Format;->l:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 6
    invoke-static {p2, v3}, Ln3/y/b/a/b;->E(Ln3/y/b/a/p0/c;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z

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
    const/4 v3, 0x4

    const/16 v5, 0x8

    if-eqz p2, :cond_5

    .line 7
    iget v6, p3, Landroidx/media2/exoplayer/external/Format;->v:I

    .line 8
    invoke-virtual {p0, v6, v0}, Ln3/y/b/a/n0/x;->q0(ILjava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_4

    move v6, v4

    goto :goto_3

    :cond_4
    move v6, v2

    :goto_3
    if-eqz v6, :cond_5

    .line 9
    invoke-interface {p1}, Ln3/y/b/a/r0/c;->a()Ln3/y/b/a/r0/a;

    move-result-object v6

    if-eqz v6, :cond_5

    or-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v3

    return p1

    :cond_5
    const-string v6, "audio/raw"

    .line 10
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    iget v6, p3, Landroidx/media2/exoplayer/external/Format;->v:I

    iget v7, p3, Landroidx/media2/exoplayer/external/Format;->x:I

    .line 11
    check-cast v0, Ln3/y/b/a/n0/u;

    invoke-virtual {v0, v6, v7}, Ln3/y/b/a/n0/u;->p(II)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    iget v6, p3, Landroidx/media2/exoplayer/external/Format;->v:I

    .line 12
    check-cast v0, Ln3/y/b/a/n0/u;

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Ln3/y/b/a/n0/u;->p(II)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    return v4

    .line 13
    :cond_8
    invoke-virtual {p0, p1, p3, v2}, Ln3/y/b/a/n0/x;->R(Ln3/y/b/a/r0/c;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return v4

    :cond_9
    if-nez p2, :cond_a

    return v7

    .line 15
    :cond_a
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/y/b/a/r0/a;

    .line 16
    invoke-virtual {p1, p3}, Ln3/y/b/a/r0/a;->c(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 17
    invoke-virtual {p1, p3}, Ln3/y/b/a/r0/a;->d(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 v5, 0x10

    :cond_b
    if-eqz p2, :cond_c

    goto :goto_4

    :cond_c
    const/4 v3, 0x3

    :goto_4
    or-int p1, v5, v1

    or-int/2addr p1, v3

    return p1
.end method

.method public m()Ln3/y/b/a/x0/i;
    .locals 0

    return-object p0
.end method

.method public final p0(Ln3/y/b/a/r0/a;Landroidx/media2/exoplayer/external/Format;)I
    .locals 1

    .line 1
    iget-object p1, p1, Ln3/y/b/a/r0/a;->a:Ljava/lang/String;

    const-string v0, "OMX.google.raw.decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    sget p1, Ln3/y/b/a/x0/x;->a:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Ln3/y/b/a/n0/x;->z0:Landroid/content/Context;

    invoke-static {p1}, Ln3/y/b/a/x0/x;->v(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 3
    :cond_1
    iget p1, p2, Landroidx/media2/exoplayer/external/Format;->j:I

    return p1
.end method

.method public q0(ILjava/lang/String;)I
    .locals 2

    const-string v0, "audio/eac3-joc"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    iget-object p2, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    const/16 v1, 0x12

    check-cast p2, Ln3/y/b/a/n0/u;

    invoke-virtual {p2, p1, v1}, Ln3/y/b/a/n0/u;->p(II)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-static {v0}, Ln3/y/b/a/x0/j;->a(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const-string p2, "audio/eac3"

    .line 4
    :cond_1
    invoke-static {p2}, Ln3/y/b/a/x0/j;->a(Ljava/lang/String;)I

    move-result p2

    .line 5
    iget-object v0, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    check-cast v0, Ln3/y/b/a/n0/u;

    invoke-virtual {v0, p1, p2}, Ln3/y/b/a/n0/u;->p(II)Z

    move-result p1

    if-eqz p1, :cond_2

    return p2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public r()J
    .locals 2

    .line 1
    iget v0, p0, Ln3/y/b/a/b;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ln3/y/b/a/n0/x;->r0()V

    .line 3
    :cond_0
    iget-wide v0, p0, Ln3/y/b/a/n0/x;->M0:J

    return-wide v0
.end method

.method public final r0()V
    .locals 31

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/n0/x;->c()Z

    move-result v2

    check-cast v1, Ln3/y/b/a/n0/u;

    .line 2
    invoke-virtual {v1}, Ln3/y/b/a/n0/u;->j()Z

    move-result v3

    if-eqz v3, :cond_28

    iget v3, v1, Ln3/y/b/a/n0/u;->z:I

    if-nez v3, :cond_0

    goto/16 :goto_15

    .line 3
    :cond_0
    iget-object v3, v1, Ln3/y/b/a/n0/u;->h:Ln3/y/b/a/n0/q;

    .line 4
    iget-object v7, v3, Ln3/y/b/a/n0/q;->c:Landroid/media/AudioTrack;

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
    invoke-virtual {v3}, Ln3/y/b/a/n0/q;->b()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Ln3/y/b/a/n0/q;->a(J)J

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
    iget-wide v4, v3, Ln3/y/b/a/n0/q;->k:J

    sub-long v4, v13, v4

    const-wide/16 v20, 0x7530

    cmp-long v4, v4, v20

    if-ltz v4, :cond_3

    .line 10
    iget-object v4, v3, Ln3/y/b/a/n0/q;->b:[J

    iget v5, v3, Ln3/y/b/a/n0/q;->t:I

    sub-long v20, v27, v13

    aput-wide v20, v4, v5

    add-int/2addr v5, v15

    const/16 v4, 0xa

    .line 11
    rem-int/2addr v5, v4

    iput v5, v3, Ln3/y/b/a/n0/q;->t:I

    .line 12
    iget v5, v3, Ln3/y/b/a/n0/q;->u:I

    if-ge v5, v4, :cond_2

    add-int/2addr v5, v15

    .line 13
    iput v5, v3, Ln3/y/b/a/n0/q;->u:I

    .line 14
    :cond_2
    iput-wide v13, v3, Ln3/y/b/a/n0/q;->k:J

    .line 15
    iput-wide v11, v3, Ln3/y/b/a/n0/q;->j:J

    const/4 v4, 0x0

    .line 16
    :goto_0
    iget v5, v3, Ln3/y/b/a/n0/q;->u:I

    if-ge v4, v5, :cond_3

    .line 17
    iget-wide v10, v3, Ln3/y/b/a/n0/q;->j:J

    iget-object v12, v3, Ln3/y/b/a/n0/q;->b:[J

    aget-wide v20, v12, v4

    int-to-long v6, v5

    div-long v20, v20, v6

    add-long v5, v20, v10

    iput-wide v5, v3, Ln3/y/b/a/n0/q;->j:J

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v11, 0x0

    goto :goto_0

    .line 18
    :cond_3
    iget-boolean v4, v3, Ln3/y/b/a/n0/q;->h:Z

    if-eqz v4, :cond_4

    goto/16 :goto_9

    .line 19
    :cond_4
    iget-object v4, v3, Ln3/y/b/a/n0/q;->f:Ln3/y/b/a/n0/p;

    .line 20
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v5, v4, Ln3/y/b/a/n0/p;->a:Ln3/y/b/a/n0/p$a;

    if-eqz v5, :cond_10

    iget-wide v10, v4, Ln3/y/b/a/n0/p;->e:J

    sub-long v10, v13, v10

    iget-wide v6, v4, Ln3/y/b/a/n0/p;->d:J

    cmp-long v6, v10, v6

    if-gez v6, :cond_5

    goto/16 :goto_3

    .line 22
    :cond_5
    iput-wide v13, v4, Ln3/y/b/a/n0/p;->e:J

    .line 23
    iget-object v6, v5, Ln3/y/b/a/n0/p$a;->a:Landroid/media/AudioTrack;

    iget-object v7, v5, Ln3/y/b/a/n0/p$a;->b:Landroid/media/AudioTimestamp;

    invoke-virtual {v6, v7}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 24
    iget-object v7, v5, Ln3/y/b/a/n0/p$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v10, v7, Landroid/media/AudioTimestamp;->framePosition:J

    move-wide/from16 v29, v13

    .line 25
    iget-wide v12, v5, Ln3/y/b/a/n0/p$a;->d:J

    cmp-long v12, v12, v10

    if-lez v12, :cond_6

    .line 26
    iget-wide v12, v5, Ln3/y/b/a/n0/p$a;->c:J

    const-wide/16 v20, 0x1

    add-long v12, v12, v20

    iput-wide v12, v5, Ln3/y/b/a/n0/p$a;->c:J

    .line 27
    :cond_6
    iput-wide v10, v5, Ln3/y/b/a/n0/p$a;->d:J

    .line 28
    iget-wide v12, v5, Ln3/y/b/a/n0/p$a;->c:J

    const/16 v14, 0x20

    shl-long/2addr v12, v14

    add-long/2addr v10, v12

    iput-wide v10, v5, Ln3/y/b/a/n0/p$a;->e:J

    goto :goto_1

    :cond_7
    move-wide/from16 v29, v13

    .line 29
    :goto_1
    iget v5, v4, Ln3/y/b/a/n0/p;->b:I

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
    invoke-virtual {v4}, Ln3/y/b/a/n0/p;->a()V

    goto :goto_2

    :cond_a
    if-nez v6, :cond_f

    .line 32
    invoke-virtual {v4}, Ln3/y/b/a/n0/p;->a()V

    goto :goto_2

    :cond_b
    if-eqz v6, :cond_c

    .line 33
    iget-object v5, v4, Ln3/y/b/a/n0/p;->a:Ln3/y/b/a/n0/p$a;

    .line 34
    iget-wide v10, v5, Ln3/y/b/a/n0/p$a;->e:J

    .line 35
    iget-wide v12, v4, Ln3/y/b/a/n0/p;->f:J

    cmp-long v5, v10, v12

    if-lez v5, :cond_f

    .line 36
    invoke-virtual {v4, v9}, Ln3/y/b/a/n0/p;->b(I)V

    goto :goto_2

    .line 37
    :cond_c
    invoke-virtual {v4}, Ln3/y/b/a/n0/p;->a()V

    goto :goto_2

    :cond_d
    if-eqz v6, :cond_e

    .line 38
    iget-object v5, v4, Ln3/y/b/a/n0/p;->a:Ln3/y/b/a/n0/p$a;

    .line 39
    iget-object v8, v5, Ln3/y/b/a/n0/p$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v10, v8, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v10, v10, v16

    .line 40
    iget-wide v12, v4, Ln3/y/b/a/n0/p;->c:J

    cmp-long v8, v10, v12

    if-ltz v8, :cond_11

    .line 41
    iget-wide v10, v5, Ln3/y/b/a/n0/p$a;->e:J

    .line 42
    iput-wide v10, v4, Ln3/y/b/a/n0/p;->f:J

    .line 43
    invoke-virtual {v4, v15}, Ln3/y/b/a/n0/p;->b(I)V

    goto :goto_2

    .line 44
    :cond_e
    iget-wide v10, v4, Ln3/y/b/a/n0/p;->c:J

    sub-long v13, v29, v10

    const-wide/32 v10, 0x7a120

    cmp-long v5, v13, v10

    if-lez v5, :cond_f

    .line 45
    invoke-virtual {v4, v8}, Ln3/y/b/a/n0/p;->b(I)V

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
    iget-object v8, v4, Ln3/y/b/a/n0/p;->a:Ln3/y/b/a/n0/p$a;

    if-eqz v8, :cond_13

    .line 47
    iget-object v10, v8, Ln3/y/b/a/n0/p$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v10, v10, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v10, v10, v16

    move-wide/from16 v23, v10

    goto :goto_5

    :cond_13
    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    :goto_5
    if-eqz v8, :cond_14

    .line 48
    iget-wide v10, v8, Ln3/y/b/a/n0/p$a;->e:J

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
    iget-object v8, v3, Ln3/y/b/a/n0/q;->a:Ln3/y/b/a/n0/q$a;

    move-object/from16 v20, v8

    move-wide/from16 v21, v10

    move-wide/from16 v25, v29

    invoke-interface/range {v20 .. v28}, Ln3/y/b/a/n0/q$a;->b(JJJJ)V

    const/4 v8, 0x4

    .line 51
    invoke-virtual {v4, v8}, Ln3/y/b/a/n0/p;->b(I)V

    goto :goto_7

    .line 52
    :cond_15
    invoke-virtual {v3, v10, v11}, Ln3/y/b/a/n0/q;->a(J)J

    move-result-wide v12

    sub-long v12, v12, v27

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    cmp-long v8, v12, v5

    if-lez v8, :cond_16

    .line 53
    iget-object v8, v3, Ln3/y/b/a/n0/q;->a:Ln3/y/b/a/n0/q$a;

    move-object/from16 v20, v8

    move-wide/from16 v21, v10

    move-wide/from16 v25, v29

    invoke-interface/range {v20 .. v28}, Ln3/y/b/a/n0/q$a;->a(JJJJ)V

    const/4 v8, 0x4

    .line 54
    invoke-virtual {v4, v8}, Ln3/y/b/a/n0/p;->b(I)V

    goto :goto_7

    :cond_16
    const/4 v8, 0x4

    .line 55
    iget v10, v4, Ln3/y/b/a/n0/p;->b:I

    if-ne v10, v8, :cond_17

    .line 56
    invoke-virtual {v4}, Ln3/y/b/a/n0/p;->a()V

    .line 57
    :cond_17
    :goto_7
    iget-boolean v4, v3, Ln3/y/b/a/n0/q;->o:Z

    if-eqz v4, :cond_19

    iget-object v4, v3, Ln3/y/b/a/n0/q;->l:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_19

    iget-wide v10, v3, Ln3/y/b/a/n0/q;->p:J

    sub-long v13, v29, v10

    const-wide/32 v10, 0x7a120

    cmp-long v8, v13, v10

    if-ltz v8, :cond_19

    .line 58
    :try_start_0
    iget-object v8, v3, Ln3/y/b/a/n0/q;->c:Landroid/media/AudioTrack;

    .line 59
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v10, v7, [Ljava/lang/Object;

    .line 60
    invoke-virtual {v4, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 61
    sget v7, Ln3/y/b/a/x0/x;->a:I

    .line 62
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v7, v4

    mul-long v7, v7, v16

    iget-wide v10, v3, Ln3/y/b/a/n0/q;->i:J

    sub-long/2addr v7, v10

    iput-wide v7, v3, Ln3/y/b/a/n0/q;->m:J

    const-wide/16 v10, 0x0

    .line 63
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v3, Ln3/y/b/a/n0/q;->m:J

    cmp-long v4, v7, v5

    if-lez v4, :cond_18

    .line 64
    iget-object v4, v3, Ln3/y/b/a/n0/q;->a:Ln3/y/b/a/n0/q$a;

    invoke-interface {v4, v7, v8}, Ln3/y/b/a/n0/q$a;->d(J)V

    const-wide/16 v4, 0x0

    .line 65
    iput-wide v4, v3, Ln3/y/b/a/n0/q;->m:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_18
    move-wide/from16 v5, v29

    const/4 v4, 0x0

    goto :goto_8

    :catch_0
    const/4 v4, 0x0

    .line 66
    iput-object v4, v3, Ln3/y/b/a/n0/q;->l:Ljava/lang/reflect/Method;

    move-wide/from16 v5, v29

    .line 67
    :goto_8
    iput-wide v5, v3, Ln3/y/b/a/n0/q;->p:J

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
    iget-object v7, v3, Ln3/y/b/a/n0/q;->f:Ln3/y/b/a/n0/p;

    .line 70
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget v8, v7, Ln3/y/b/a/n0/p;->b:I

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
    iget-object v2, v7, Ln3/y/b/a/n0/p;->a:Ln3/y/b/a/n0/p$a;

    if-eqz v2, :cond_1c

    .line 73
    iget-wide v13, v2, Ln3/y/b/a/n0/p$a;->e:J

    goto :goto_d

    :cond_1c
    const-wide/16 v13, -0x1

    .line 74
    :goto_d
    invoke-virtual {v3, v13, v14}, Ln3/y/b/a/n0/q;->a(J)J

    move-result-wide v2

    .line 75
    iget v8, v7, Ln3/y/b/a/n0/p;->b:I

    if-ne v8, v9, :cond_1d

    goto :goto_e

    :cond_1d
    const/4 v15, 0x0

    :goto_e
    if-nez v15, :cond_1e

    goto :goto_11

    .line 76
    :cond_1e
    iget-object v7, v7, Ln3/y/b/a/n0/p;->a:Ln3/y/b/a/n0/p$a;

    if-eqz v7, :cond_1f

    .line 77
    iget-object v7, v7, Ln3/y/b/a/n0/p$a;->b:Landroid/media/AudioTimestamp;

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
    iget v7, v3, Ln3/y/b/a/n0/q;->u:I

    if-nez v7, :cond_21

    .line 79
    invoke-virtual {v3}, Ln3/y/b/a/n0/q;->b()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ln3/y/b/a/n0/q;->a(J)J

    move-result-wide v5

    goto :goto_10

    .line 80
    :cond_21
    iget-wide v7, v3, Ln3/y/b/a/n0/q;->j:J

    add-long/2addr v5, v7

    :goto_10
    if-nez v2, :cond_22

    .line 81
    iget-wide v2, v3, Ln3/y/b/a/n0/q;->m:J

    sub-long/2addr v5, v2

    :cond_22
    move-wide v2, v5

    .line 82
    :goto_11
    iget-object v5, v1, Ln3/y/b/a/n0/u;->l:Ln3/y/b/a/n0/u$c;

    invoke-virtual {v1}, Ln3/y/b/a/n0/u;->g()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ln3/y/b/a/n0/u$c;->b(J)J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 83
    iget-wide v5, v1, Ln3/y/b/a/n0/u;->A:J

    move-object v10, v4

    .line 84
    :goto_12
    iget-object v4, v1, Ln3/y/b/a/n0/u;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_23

    iget-object v4, v1, Ln3/y/b/a/n0/u;->i:Ljava/util/ArrayDeque;

    .line 85
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/y/b/a/n0/u$e;

    .line 86
    iget-wide v7, v4, Ln3/y/b/a/n0/u$e;->c:J

    cmp-long v4, v2, v7

    if-ltz v4, :cond_23

    .line 87
    iget-object v4, v1, Ln3/y/b/a/n0/u;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ln3/y/b/a/n0/u$e;

    goto :goto_12

    :cond_23
    if-eqz v10, :cond_24

    .line 88
    iget-object v4, v10, Ln3/y/b/a/n0/u$e;->a:Ln3/y/b/a/e0;

    .line 89
    iput-object v4, v1, Ln3/y/b/a/n0/u;->p:Ln3/y/b/a/e0;

    .line 90
    iget-wide v7, v10, Ln3/y/b/a/n0/u$e;->c:J

    .line 91
    iput-wide v7, v1, Ln3/y/b/a/n0/u;->r:J

    .line 92
    iget-wide v7, v10, Ln3/y/b/a/n0/u$e;->b:J

    .line 93
    iget-wide v9, v1, Ln3/y/b/a/n0/u;->A:J

    sub-long/2addr v7, v9

    iput-wide v7, v1, Ln3/y/b/a/n0/u;->q:J

    .line 94
    :cond_24
    iget-object v4, v1, Ln3/y/b/a/n0/u;->p:Ln3/y/b/a/e0;

    iget v4, v4, Ln3/y/b/a/e0;->a:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v7

    if-nez v4, :cond_25

    .line 95
    iget-wide v7, v1, Ln3/y/b/a/n0/u;->q:J

    add-long/2addr v2, v7

    iget-wide v7, v1, Ln3/y/b/a/n0/u;->r:J

    sub-long/2addr v2, v7

    goto :goto_14

    .line 96
    :cond_25
    iget-object v4, v1, Ln3/y/b/a/n0/u;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 97
    iget-wide v7, v1, Ln3/y/b/a/n0/u;->q:J

    iget-object v4, v1, Ln3/y/b/a/n0/u;->b:Ln3/y/b/a/n0/u$b;

    iget-wide v9, v1, Ln3/y/b/a/n0/u;->r:J

    sub-long/2addr v2, v9

    .line 98
    invoke-interface {v4, v2, v3}, Ln3/y/b/a/n0/u$b;->b(J)J

    move-result-wide v2

    add-long/2addr v2, v7

    goto :goto_14

    .line 99
    :cond_26
    iget-wide v8, v1, Ln3/y/b/a/n0/u;->q:J

    iget-wide v10, v1, Ln3/y/b/a/n0/u;->r:J

    sub-long/2addr v2, v10

    iget-object v4, v1, Ln3/y/b/a/n0/u;->p:Ln3/y/b/a/e0;

    iget v4, v4, Ln3/y/b/a/e0;->a:F

    .line 100
    sget v10, Ln3/y/b/a/x0/x;->a:I

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
    iget-object v4, v1, Ln3/y/b/a/n0/u;->l:Ln3/y/b/a/n0/u$c;

    iget-object v1, v1, Ln3/y/b/a/n0/u;->b:Ln3/y/b/a/n0/u$b;

    .line 103
    invoke-interface {v1}, Ln3/y/b/a/n0/u$b;->a()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ln3/y/b/a/n0/u$c;->b(J)J

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
    iget-boolean v1, v0, Ln3/y/b/a/n0/x;->O0:Z

    if-eqz v1, :cond_29

    goto :goto_17

    .line 105
    :cond_29
    iget-wide v1, v0, Ln3/y/b/a/n0/x;->M0:J

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    :goto_17
    iput-wide v7, v0, Ln3/y/b/a/n0/x;->M0:J

    const/4 v1, 0x0

    .line 106
    iput-boolean v1, v0, Ln3/y/b/a/n0/x;->O0:Z

    :cond_2a
    return-void
.end method

.method public u(Ln3/y/b/a/e0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    check-cast v0, Ln3/y/b/a/n0/u;

    .line 2
    iget-object v1, v0, Ln3/y/b/a/n0/u;->l:Ln3/y/b/a/n0/u$c;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Ln3/y/b/a/n0/u$c;->j:Z

    if-nez v1, :cond_0

    .line 3
    sget-object p1, Ln3/y/b/a/e0;->e:Ln3/y/b/a/e0;

    iput-object p1, v0, Ln3/y/b/a/n0/u;->p:Ln3/y/b/a/e0;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ln3/y/b/a/n0/u;->f()Ln3/y/b/a/e0;

    move-result-object v1

    .line 5
    invoke-virtual {p1, v1}, Ln3/y/b/a/e0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {v0}, Ln3/y/b/a/n0/u;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iput-object p1, v0, Ln3/y/b/a/n0/u;->o:Ln3/y/b/a/e0;

    goto :goto_0

    .line 8
    :cond_1
    iput-object p1, v0, Ln3/y/b/a/n0/u;->p:Ln3/y/b/a/e0;

    :cond_2
    :goto_0
    return-void
.end method

.method public v()V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    :try_start_0
    iput-wide v0, p0, Ln3/y/b/a/n0/x;->P0:J

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln3/y/b/a/n0/x;->Q0:I

    .line 3
    iget-object v0, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    check-cast v0, Ln3/y/b/a/n0/u;

    :try_start_1
    invoke-virtual {v0}, Ln3/y/b/a/n0/u;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    invoke-super {p0}, Ln3/y/b/a/r0/b;->v()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    iget-object v0, p0, Ln3/y/b/a/n0/x;->A0:Ln3/y/b/a/n0/n$a;

    iget-object v1, p0, Ln3/y/b/a/r0/b;->x0:Ln3/y/b/a/o0/b;

    invoke-virtual {v0, v1}, Ln3/y/b/a/n0/n$a;->a(Ln3/y/b/a/o0/b;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ln3/y/b/a/n0/x;->A0:Ln3/y/b/a/n0/n$a;

    iget-object v2, p0, Ln3/y/b/a/r0/b;->x0:Ln3/y/b/a/o0/b;

    invoke-virtual {v1, v2}, Ln3/y/b/a/n0/n$a;->a(Ln3/y/b/a/o0/b;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 6
    :try_start_3
    invoke-super {p0}, Ln3/y/b/a/r0/b;->v()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 7
    iget-object v1, p0, Ln3/y/b/a/n0/x;->A0:Ln3/y/b/a/n0/n$a;

    iget-object v2, p0, Ln3/y/b/a/r0/b;->x0:Ln3/y/b/a/o0/b;

    invoke-virtual {v1, v2}, Ln3/y/b/a/n0/n$a;->a(Ln3/y/b/a/o0/b;)V

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Ln3/y/b/a/n0/x;->A0:Ln3/y/b/a/n0/n$a;

    iget-object v2, p0, Ln3/y/b/a/r0/b;->x0:Ln3/y/b/a/o0/b;

    invoke-virtual {v1, v2}, Ln3/y/b/a/n0/n$a;->a(Ln3/y/b/a/o0/b;)V

    throw v0
.end method

.method public w(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    new-instance p1, Ln3/y/b/a/o0/b;

    invoke-direct {p1}, Ln3/y/b/a/o0/b;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/r0/b;->x0:Ln3/y/b/a/o0/b;

    .line 2
    iget-object v0, p0, Ln3/y/b/a/n0/x;->A0:Ln3/y/b/a/n0/n$a;

    .line 3
    iget-object v1, v0, Ln3/y/b/a/n0/n$a;->b:Ln3/y/b/a/n0/n;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v0, Ln3/y/b/a/n0/n$a;->a:Landroid/os/Handler;

    new-instance v2, Ln3/y/b/a/n0/h;

    invoke-direct {v2, v0, p1}, Ln3/y/b/a/n0/h;-><init>(Ln3/y/b/a/n0/n$a;Ln3/y/b/a/o0/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    :cond_0
    iget-object p1, p0, Ln3/y/b/a/b;->b:Ln3/y/b/a/i0;

    .line 6
    iget p1, p1, Ln3/y/b/a/i0;->a:I

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 7
    iget-object v1, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    check-cast v1, Ln3/y/b/a/n0/u;

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget v2, Ln3/y/b/a/x0/x;->a:I

    const/4 v3, 0x1

    const/16 v4, 0x15

    if-lt v2, v4, :cond_1

    move v0, v3

    :cond_1
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 10
    iget-boolean v0, v1, Ln3/y/b/a/n0/u;->O:Z

    if-eqz v0, :cond_2

    iget v0, v1, Ln3/y/b/a/n0/u;->M:I

    if-eq v0, p1, :cond_4

    .line 11
    :cond_2
    iput-boolean v3, v1, Ln3/y/b/a/n0/u;->O:Z

    .line 12
    iput p1, v1, Ln3/y/b/a/n0/u;->M:I

    .line 13
    invoke-virtual {v1}, Ln3/y/b/a/n0/u;->d()V

    goto :goto_0

    .line 14
    :cond_3
    iget-object p1, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    check-cast p1, Ln3/y/b/a/n0/u;

    .line 15
    iget-boolean v1, p1, Ln3/y/b/a/n0/u;->O:Z

    if-eqz v1, :cond_4

    .line 16
    iput-boolean v0, p1, Ln3/y/b/a/n0/u;->O:Z

    .line 17
    iput v0, p1, Ln3/y/b/a/n0/u;->M:I

    .line 18
    invoke-virtual {p1}, Ln3/y/b/a/n0/u;->d()V

    :cond_4
    :goto_0
    return-void
.end method

.method public x(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    const/4 p3, 0x0

    .line 1
    iput-boolean p3, p0, Ln3/y/b/a/r0/b;->s0:Z

    .line 2
    iput-boolean p3, p0, Ln3/y/b/a/r0/b;->t0:Z

    .line 3
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->N()Z

    .line 4
    iget-object v0, p0, Ln3/y/b/a/r0/b;->r:Ln3/y/b/a/x0/u;

    invoke-virtual {v0}, Ln3/y/b/a/x0/u;->b()V

    .line 5
    iget-object v0, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    check-cast v0, Ln3/y/b/a/n0/u;

    invoke-virtual {v0}, Ln3/y/b/a/n0/u;->d()V

    .line 6
    iput-wide p1, p0, Ln3/y/b/a/n0/x;->M0:J

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Ln3/y/b/a/n0/x;->N0:Z

    .line 8
    iput-boolean p1, p0, Ln3/y/b/a/n0/x;->O0:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Ln3/y/b/a/n0/x;->P0:J

    .line 10
    iput p3, p0, Ln3/y/b/a/n0/x;->Q0:I

    return-void
.end method

.method public y()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {p0, v0}, Ln3/y/b/a/r0/b;->j0(Ln3/y/b/a/p0/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    iget-object v0, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    check-cast v0, Ln3/y/b/a/n0/u;

    invoke-virtual {v0}, Ln3/y/b/a/n0/u;->n()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 4
    :try_start_2
    invoke-virtual {p0, v0}, Ln3/y/b/a/r0/b;->j0(Ln3/y/b/a/p0/b;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    :goto_0
    iget-object v1, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    check-cast v1, Ln3/y/b/a/n0/u;

    invoke-virtual {v1}, Ln3/y/b/a/n0/u;->n()V

    throw v0
.end method

.method public z()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/n0/x;->B0:Ln3/y/b/a/n0/o;

    check-cast v0, Ln3/y/b/a/n0/u;

    invoke-virtual {v0}, Ln3/y/b/a/n0/u;->k()V

    return-void
.end method
