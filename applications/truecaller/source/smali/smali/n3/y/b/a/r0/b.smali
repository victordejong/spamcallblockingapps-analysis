.class public abstract Ln3/y/b/a/r0/b;
.super Ln3/y/b/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/r0/b$a;,
        Ln3/y/b/a/r0/b$b;
    }
.end annotation


# static fields
.field public static final y0:[B


# instance fields
.field public A:J

.field public B:F

.field public C:Landroid/media/MediaCodec;

.field public D:Landroidx/media2/exoplayer/external/Format;

.field public E:F

.field public J:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ln3/y/b/a/r0/a;",
            ">;"
        }
    .end annotation
.end field

.field public K:Ln3/y/b/a/r0/b$b;

.field public L:Ln3/y/b/a/r0/a;

.field public M:I

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:[Ljava/nio/ByteBuffer;

.field public X:[Ljava/nio/ByteBuffer;

.field public Y:J

.field public Z:I

.field public g0:I

.field public h0:Ljava/nio/ByteBuffer;

.field public i0:Z

.field public final j:Ln3/y/b/a/r0/c;

.field public j0:Z

.field public final k:Ln3/y/b/a/p0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/y/b/a/p0/c<",
            "Ln3/y/b/a/p0/e;",
            ">;"
        }
    .end annotation
.end field

.field public k0:Z

.field public final l:Z

.field public l0:I

.field public final m:Z

.field public m0:I

.field public final n:F

.field public n0:I

.field public final o:Ln3/y/b/a/o0/c;

.field public o0:Z

.field public final p:Ln3/y/b/a/o0/c;

.field public p0:Z

.field public final q:Ln3/y/b/a/x;

.field public q0:J

.field public final r:Ln3/y/b/a/x0/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/y/b/a/x0/u<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field public r0:J

.field public final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public s0:Z

.field public final t:Landroid/media/MediaCodec$BufferInfo;

.field public t0:Z

.field public u:Landroidx/media2/exoplayer/external/Format;

.field public u0:Z

.field public v:Landroidx/media2/exoplayer/external/Format;

.field public v0:Z

.field public w:Ln3/y/b/a/p0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/y/b/a/p0/b<",
            "Ln3/y/b/a/p0/e;",
            ">;"
        }
    .end annotation
.end field

.field public w0:Z

.field public x:Ln3/y/b/a/p0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/y/b/a/p0/b<",
            "Ln3/y/b/a/p0/e;",
            ">;"
        }
    .end annotation
.end field

.field public x0:Ln3/y/b/a/o0/b;

.field public y:Landroid/media/MediaCrypto;

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    sget v0, Ln3/y/b/a/x0/x;->a:I

    const/16 v0, 0x26

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    const-string v4, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    .line 2
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v3, v3, 0x1

    .line 3
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    sput-object v1, Ln3/y/b/a/r0/b;->y0:[B

    return-void
.end method

.method public constructor <init>(ILn3/y/b/a/r0/c;Ln3/y/b/a/p0/c;ZZF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ln3/y/b/a/r0/c;",
            "Ln3/y/b/a/p0/c<",
            "Ln3/y/b/a/p0/e;",
            ">;ZZF)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ln3/y/b/a/b;-><init>(I)V

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Ln3/y/b/a/r0/b;->j:Ln3/y/b/a/r0/c;

    .line 4
    iput-object p3, p0, Ln3/y/b/a/r0/b;->k:Ln3/y/b/a/p0/c;

    .line 5
    iput-boolean p4, p0, Ln3/y/b/a/r0/b;->l:Z

    .line 6
    iput-boolean p5, p0, Ln3/y/b/a/r0/b;->m:Z

    .line 7
    iput p6, p0, Ln3/y/b/a/r0/b;->n:F

    .line 8
    new-instance p1, Ln3/y/b/a/o0/c;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ln3/y/b/a/o0/c;-><init>(I)V

    iput-object p1, p0, Ln3/y/b/a/r0/b;->o:Ln3/y/b/a/o0/c;

    .line 9
    new-instance p1, Ln3/y/b/a/o0/c;

    invoke-direct {p1, p2}, Ln3/y/b/a/o0/c;-><init>(I)V

    .line 10
    iput-object p1, p0, Ln3/y/b/a/r0/b;->p:Ln3/y/b/a/o0/c;

    .line 11
    new-instance p1, Ln3/y/b/a/x;

    invoke-direct {p1}, Ln3/y/b/a/x;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/r0/b;->q:Ln3/y/b/a/x;

    .line 12
    new-instance p1, Ln3/y/b/a/x0/u;

    invoke-direct {p1}, Ln3/y/b/a/x0/u;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/r0/b;->r:Ln3/y/b/a/x0/u;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/r0/b;->s:Ljava/util/ArrayList;

    .line 14
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/r0/b;->t:Landroid/media/MediaCodec$BufferInfo;

    .line 15
    iput p2, p0, Ln3/y/b/a/r0/b;->l0:I

    .line 16
    iput p2, p0, Ln3/y/b/a/r0/b;->m0:I

    .line 17
    iput p2, p0, Ln3/y/b/a/r0/b;->n0:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 18
    iput p1, p0, Ln3/y/b/a/r0/b;->E:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 19
    iput p1, p0, Ln3/y/b/a/r0/b;->B:F

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    iput-wide p1, p0, Ln3/y/b/a/r0/b;->A:J

    return-void
.end method


# virtual methods
.method public final D(Landroidx/media2/exoplayer/external/Format;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/y/b/a/r0/b;->j:Ln3/y/b/a/r0/c;

    iget-object v1, p0, Ln3/y/b/a/r0/b;->k:Ln3/y/b/a/p0/c;

    invoke-virtual {p0, v0, v1, p1}, Ln3/y/b/a/r0/b;->l0(Ln3/y/b/a/r0/c;Ln3/y/b/a/p0/c;Landroidx/media2/exoplayer/external/Format;)I

    move-result p1
    :try_end_0
    .catch Ln3/y/b/a/r0/h$c; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    iget v0, p0, Ln3/y/b/a/b;->c:I

    .line 3
    invoke-static {p1, v0}, Ln3/y/b/a/f;->a(Ljava/lang/Exception;I)Ln3/y/b/a/f;

    move-result-object p1

    throw p1
.end method

.method public final F()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public abstract G(Landroid/media/MediaCodec;Ln3/y/b/a/r0/a;Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)I
.end method

.method public abstract H(Ln3/y/b/a/r0/a;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/Format;Landroid/media/MediaCrypto;F)V
.end method

.method public I(Ljava/lang/Throwable;Ln3/y/b/a/r0/a;)Ln3/y/b/a/r0/b$a;
    .locals 1

    .line 1
    new-instance v0, Ln3/y/b/a/r0/b$a;

    invoke-direct {v0, p1, p2}, Ln3/y/b/a/r0/b$a;-><init>(Ljava/lang/Throwable;Ln3/y/b/a/r0/a;)V

    return-object v0
.end method

.method public final J()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/r0/b;->o0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Ln3/y/b/a/r0/b;->m0:I

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Ln3/y/b/a/r0/b;->n0:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->e0()V

    .line 5
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->U()V

    :goto_0
    return-void
.end method

.method public final K()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    sget v0, Ln3/y/b/a/x0/x;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->J()V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Ln3/y/b/a/r0/b;->o0:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Ln3/y/b/a/r0/b;->m0:I

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Ln3/y/b/a/r0/b;->n0:I

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->n0()V

    :goto_0
    return-void
.end method

.method public final L(JJ)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    move-object/from16 v14, p0

    .line 1
    iget v0, v14, Ln3/y/b/a/r0/b;->g0:I

    const/4 v15, 0x1

    const/4 v13, 0x0

    if-ltz v0, :cond_0

    move v0, v15

    goto :goto_0

    :cond_0
    move v0, v13

    :goto_0
    if-nez v0, :cond_12

    .line 2
    iget-boolean v0, v14, Ln3/y/b/a/r0/b;->R:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, v14, Ln3/y/b/a/r0/b;->p0:Z

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    iget-object v0, v14, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    iget-object v3, v14, Ln3/y/b/a/r0/b;->t:Landroid/media/MediaCodec$BufferInfo;

    .line 4
    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5
    :catch_0
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/r0/b;->b0()V

    .line 6
    iget-boolean v0, v14, Ln3/y/b/a/r0/b;->t0:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/r0/b;->e0()V

    :cond_1
    return v13

    .line 8
    :cond_2
    iget-object v0, v14, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    iget-object v3, v14, Ln3/y/b/a/r0/b;->t:Landroid/media/MediaCodec$BufferInfo;

    .line 9
    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    :goto_1
    const/16 v1, 0x15

    if-gez v0, :cond_a

    const/4 v2, -0x2

    if-ne v0, v2, :cond_5

    .line 10
    iget-object v0, v14, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 11
    iget v1, v14, Ln3/y/b/a/r0/b;->M:I

    if-eqz v1, :cond_3

    const-string v1, "width"

    .line 12
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    const-string v1, "height"

    .line 13
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 14
    iput-boolean v15, v14, Ln3/y/b/a/r0/b;->U:Z

    goto :goto_2

    .line 15
    :cond_3
    iget-boolean v1, v14, Ln3/y/b/a/r0/b;->S:Z

    if-eqz v1, :cond_4

    const-string v1, "channel-count"

    .line 16
    invoke-virtual {v0, v1, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 17
    :cond_4
    iget-object v1, v14, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    invoke-virtual {v14, v1, v0}, Ln3/y/b/a/r0/b;->Y(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    :goto_2
    return v15

    :cond_5
    const/4 v2, -0x3

    if-ne v0, v2, :cond_7

    .line 18
    sget v0, Ln3/y/b/a/x0/x;->a:I

    if-ge v0, v1, :cond_6

    .line 19
    iget-object v0, v14, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v14, Ln3/y/b/a/r0/b;->X:[Ljava/nio/ByteBuffer;

    :cond_6
    return v15

    .line 20
    :cond_7
    iget-boolean v0, v14, Ln3/y/b/a/r0/b;->V:Z

    if-eqz v0, :cond_9

    iget-boolean v0, v14, Ln3/y/b/a/r0/b;->s0:Z

    if-nez v0, :cond_8

    iget v0, v14, Ln3/y/b/a/r0/b;->m0:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 21
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/r0/b;->b0()V

    :cond_9
    return v13

    .line 22
    :cond_a
    iget-boolean v2, v14, Ln3/y/b/a/r0/b;->U:Z

    if-eqz v2, :cond_b

    .line 23
    iput-boolean v13, v14, Ln3/y/b/a/r0/b;->U:Z

    .line 24
    iget-object v1, v14, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v13}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v15

    .line 25
    :cond_b
    iget-object v2, v14, Ln3/y/b/a/r0/b;->t:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v3, :cond_c

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_c

    .line 26
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/r0/b;->b0()V

    return v13

    .line 27
    :cond_c
    iput v0, v14, Ln3/y/b/a/r0/b;->g0:I

    .line 28
    sget v2, Ln3/y/b/a/x0/x;->a:I

    if-lt v2, v1, :cond_d

    .line 29
    iget-object v1, v14, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_3

    .line 30
    :cond_d
    iget-object v1, v14, Ln3/y/b/a/r0/b;->X:[Ljava/nio/ByteBuffer;

    aget-object v0, v1, v0

    .line 31
    :goto_3
    iput-object v0, v14, Ln3/y/b/a/r0/b;->h0:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_e

    .line 32
    iget-object v1, v14, Ln3/y/b/a/r0/b;->t:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 33
    iget-object v0, v14, Ln3/y/b/a/r0/b;->h0:Ljava/nio/ByteBuffer;

    iget-object v1, v14, Ln3/y/b/a/r0/b;->t:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 34
    :cond_e
    iget-object v0, v14, Ln3/y/b/a/r0/b;->t:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 35
    iget-object v2, v14, Ln3/y/b/a/r0/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v13

    :goto_4
    if-ge v3, v2, :cond_10

    .line 36
    iget-object v4, v14, Ln3/y/b/a/r0/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_f

    .line 37
    iget-object v0, v14, Ln3/y/b/a/r0/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v15

    goto :goto_5

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_10
    move v0, v13

    .line 38
    :goto_5
    iput-boolean v0, v14, Ln3/y/b/a/r0/b;->i0:Z

    .line 39
    iget-wide v0, v14, Ln3/y/b/a/r0/b;->q0:J

    iget-object v2, v14, Ln3/y/b/a/r0/b;->t:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    move v0, v15

    goto :goto_6

    :cond_11
    move v0, v13

    :goto_6
    iput-boolean v0, v14, Ln3/y/b/a/r0/b;->j0:Z

    .line 40
    invoke-virtual {v14, v2, v3}, Ln3/y/b/a/r0/b;->o0(J)Landroidx/media2/exoplayer/external/Format;

    .line 41
    :cond_12
    iget-boolean v0, v14, Ln3/y/b/a/r0/b;->R:Z

    if-eqz v0, :cond_14

    iget-boolean v0, v14, Ln3/y/b/a/r0/b;->p0:Z

    if-eqz v0, :cond_14

    .line 42
    :try_start_1
    iget-object v5, v14, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    iget-object v6, v14, Ln3/y/b/a/r0/b;->h0:Ljava/nio/ByteBuffer;

    iget v7, v14, Ln3/y/b/a/r0/b;->g0:I

    iget-object v0, v14, Ln3/y/b/a/r0/b;->t:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v14, Ln3/y/b/a/r0/b;->i0:Z

    iget-boolean v12, v14, Ln3/y/b/a/r0/b;->j0:Z

    iget-object v3, v14, Ln3/y/b/a/r0/b;->v:Landroidx/media2/exoplayer/external/Format;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v16, v3

    move-wide/from16 v3, p3

    move/from16 v17, v13

    move-object/from16 v13, v16

    .line 43
    :try_start_2
    invoke-virtual/range {v0 .. v13}, Ln3/y/b/a/r0/b;->c0(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZLandroidx/media2/exoplayer/external/Format;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_1
    move/from16 v17, v13

    .line 44
    :catch_2
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/r0/b;->b0()V

    .line 45
    iget-boolean v0, v14, Ln3/y/b/a/r0/b;->t0:Z

    if-eqz v0, :cond_13

    .line 46
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/r0/b;->e0()V

    :cond_13
    return v17

    :cond_14
    move/from16 v17, v13

    .line 47
    iget-object v5, v14, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    iget-object v6, v14, Ln3/y/b/a/r0/b;->h0:Ljava/nio/ByteBuffer;

    iget v7, v14, Ln3/y/b/a/r0/b;->g0:I

    iget-object v0, v14, Ln3/y/b/a/r0/b;->t:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v14, Ln3/y/b/a/r0/b;->i0:Z

    iget-boolean v12, v14, Ln3/y/b/a/r0/b;->j0:Z

    iget-object v13, v14, Ln3/y/b/a/r0/b;->v:Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 48
    invoke-virtual/range {v0 .. v13}, Ln3/y/b/a/r0/b;->c0(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZLandroidx/media2/exoplayer/external/Format;)Z

    move-result v0

    :goto_7
    if-eqz v0, :cond_17

    .line 49
    iget-object v0, v14, Ln3/y/b/a/r0/b;->t:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v14, v0, v1}, Ln3/y/b/a/r0/b;->Z(J)V

    .line 50
    iget-object v0, v14, Ln3/y/b/a/r0/b;->t:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_15

    move v13, v15

    goto :goto_8

    :cond_15
    move/from16 v13, v17

    .line 51
    :goto_8
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/r0/b;->h0()V

    if-nez v13, :cond_16

    return v15

    .line 52
    :cond_16
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/r0/b;->b0()V

    :cond_17
    return v17
.end method

.method public final M()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget v2, p0, Ln3/y/b/a/r0/b;->m0:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_24

    iget-boolean v2, p0, Ln3/y/b/a/r0/b;->s0:Z

    if-eqz v2, :cond_0

    goto/16 :goto_b

    .line 2
    :cond_0
    iget v2, p0, Ln3/y/b/a/r0/b;->Z:I

    if-gez v2, :cond_3

    const-wide/16 v4, 0x0

    .line 3
    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Ln3/y/b/a/r0/b;->Z:I

    if-gez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v2, p0, Ln3/y/b/a/r0/b;->o:Ln3/y/b/a/o0/c;

    .line 5
    sget v4, Ln3/y/b/a/x0/x;->a:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    .line 6
    iget-object v4, p0, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    invoke-virtual {v4, v0}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_2
    iget-object v4, p0, Ln3/y/b/a/r0/b;->W:[Ljava/nio/ByteBuffer;

    aget-object v0, v4, v0

    .line 8
    :goto_0
    iput-object v0, v2, Ln3/y/b/a/o0/c;->c:Ljava/nio/ByteBuffer;

    .line 9
    iget-object v0, p0, Ln3/y/b/a/r0/b;->o:Ln3/y/b/a/o0/c;

    invoke-virtual {v0}, Ln3/y/b/a/o0/c;->a()V

    .line 10
    :cond_3
    iget v0, p0, Ln3/y/b/a/r0/b;->m0:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 11
    iget-boolean v0, p0, Ln3/y/b/a/r0/b;->V:Z

    if-eqz v0, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    iput-boolean v2, p0, Ln3/y/b/a/r0/b;->p0:Z

    .line 13
    iget-object v4, p0, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    iget v5, p0, Ln3/y/b/a/r0/b;->Z:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 14
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->g0()V

    .line 15
    :goto_1
    iput v3, p0, Ln3/y/b/a/r0/b;->m0:I

    return v1

    .line 16
    :cond_5
    iget-boolean v0, p0, Ln3/y/b/a/r0/b;->T:Z

    if-eqz v0, :cond_6

    .line 17
    iput-boolean v1, p0, Ln3/y/b/a/r0/b;->T:Z

    .line 18
    iget-object v0, p0, Ln3/y/b/a/r0/b;->o:Ln3/y/b/a/o0/c;

    iget-object v0, v0, Ln3/y/b/a/o0/c;->c:Ljava/nio/ByteBuffer;

    sget-object v1, Ln3/y/b/a/r0/b;->y0:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 19
    iget-object v3, p0, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    iget v4, p0, Ln3/y/b/a/r0/b;->Z:I

    const/4 v5, 0x0

    array-length v6, v1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 20
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->g0()V

    .line 21
    iput-boolean v2, p0, Ln3/y/b/a/r0/b;->o0:Z

    return v2

    .line 22
    :cond_6
    iget-boolean v0, p0, Ln3/y/b/a/r0/b;->u0:Z

    if-eqz v0, :cond_7

    const/4 v0, -0x4

    move v4, v1

    goto :goto_3

    .line 23
    :cond_7
    iget v0, p0, Ln3/y/b/a/r0/b;->l0:I

    if-ne v0, v2, :cond_9

    move v0, v1

    .line 24
    :goto_2
    iget-object v4, p0, Ln3/y/b/a/r0/b;->D:Landroidx/media2/exoplayer/external/Format;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/Format;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_8

    .line 25
    iget-object v4, p0, Ln3/y/b/a/r0/b;->D:Landroidx/media2/exoplayer/external/Format;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/Format;->k:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 26
    iget-object v5, p0, Ln3/y/b/a/r0/b;->o:Ln3/y/b/a/o0/c;

    iget-object v5, v5, Ln3/y/b/a/o0/c;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 27
    :cond_8
    iput v3, p0, Ln3/y/b/a/r0/b;->l0:I

    .line 28
    :cond_9
    iget-object v0, p0, Ln3/y/b/a/r0/b;->o:Ln3/y/b/a/o0/c;

    iget-object v0, v0, Ln3/y/b/a/o0/c;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 29
    iget-object v4, p0, Ln3/y/b/a/r0/b;->q:Ln3/y/b/a/x;

    iget-object v5, p0, Ln3/y/b/a/r0/b;->o:Ln3/y/b/a/o0/c;

    invoke-virtual {p0, v4, v5, v1}, Ln3/y/b/a/b;->C(Ln3/y/b/a/x;Ln3/y/b/a/o0/c;Z)I

    move-result v4

    move v13, v4

    move v4, v0

    move v0, v13

    .line 30
    :goto_3
    invoke-virtual {p0}, Ln3/y/b/a/b;->e()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 31
    iget-wide v5, p0, Ln3/y/b/a/r0/b;->r0:J

    iput-wide v5, p0, Ln3/y/b/a/r0/b;->q0:J

    :cond_a
    const/4 v5, -0x3

    if-ne v0, v5, :cond_b

    return v1

    :cond_b
    const/4 v5, -0x5

    if-ne v0, v5, :cond_d

    .line 32
    iget v0, p0, Ln3/y/b/a/r0/b;->l0:I

    if-ne v0, v3, :cond_c

    .line 33
    iget-object v0, p0, Ln3/y/b/a/r0/b;->o:Ln3/y/b/a/o0/c;

    invoke-virtual {v0}, Ln3/y/b/a/o0/c;->a()V

    .line 34
    iput v2, p0, Ln3/y/b/a/r0/b;->l0:I

    .line 35
    :cond_c
    iget-object v0, p0, Ln3/y/b/a/r0/b;->q:Ln3/y/b/a/x;

    invoke-virtual {p0, v0}, Ln3/y/b/a/r0/b;->X(Ln3/y/b/a/x;)V

    return v2

    .line 36
    :cond_d
    iget-object v0, p0, Ln3/y/b/a/r0/b;->o:Ln3/y/b/a/o0/c;

    invoke-virtual {v0}, Ln3/y/b/a/o0/c;->g()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 37
    iget v0, p0, Ln3/y/b/a/r0/b;->l0:I

    if-ne v0, v3, :cond_e

    .line 38
    iget-object v0, p0, Ln3/y/b/a/r0/b;->o:Ln3/y/b/a/o0/c;

    invoke-virtual {v0}, Ln3/y/b/a/o0/c;->a()V

    .line 39
    iput v2, p0, Ln3/y/b/a/r0/b;->l0:I

    .line 40
    :cond_e
    iput-boolean v2, p0, Ln3/y/b/a/r0/b;->s0:Z

    .line 41
    iget-boolean v0, p0, Ln3/y/b/a/r0/b;->o0:Z

    if-nez v0, :cond_f

    .line 42
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->b0()V

    return v1

    .line 43
    :cond_f
    :try_start_0
    iget-boolean v0, p0, Ln3/y/b/a/r0/b;->V:Z

    if-eqz v0, :cond_10

    goto :goto_4

    .line 44
    :cond_10
    iput-boolean v2, p0, Ln3/y/b/a/r0/b;->p0:Z

    .line 45
    iget-object v3, p0, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    iget v4, p0, Ln3/y/b/a/r0/b;->Z:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 46
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->g0()V
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return v1

    :catch_0
    move-exception v0

    .line 47
    iget v1, p0, Ln3/y/b/a/b;->c:I

    .line 48
    invoke-static {v0, v1}, Ln3/y/b/a/f;->a(Ljava/lang/Exception;I)Ln3/y/b/a/f;

    move-result-object v0

    throw v0

    .line 49
    :cond_11
    iget-boolean v0, p0, Ln3/y/b/a/r0/b;->v0:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Ln3/y/b/a/r0/b;->o:Ln3/y/b/a/o0/c;

    .line 50
    invoke-virtual {v0, v2}, Ln3/y/b/a/o0/c;->e(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 51
    iget-object v0, p0, Ln3/y/b/a/r0/b;->o:Ln3/y/b/a/o0/c;

    invoke-virtual {v0}, Ln3/y/b/a/o0/c;->a()V

    .line 52
    iget v0, p0, Ln3/y/b/a/r0/b;->l0:I

    if-ne v0, v3, :cond_12

    .line 53
    iput v2, p0, Ln3/y/b/a/r0/b;->l0:I

    :cond_12
    return v2

    .line 54
    :cond_13
    iput-boolean v1, p0, Ln3/y/b/a/r0/b;->v0:Z

    .line 55
    iget-object v0, p0, Ln3/y/b/a/r0/b;->o:Ln3/y/b/a/o0/c;

    const/high16 v3, 0x40000000    # 2.0f

    .line 56
    invoke-virtual {v0, v3}, Ln3/y/b/a/o0/c;->e(I)Z

    move-result v0

    .line 57
    iget-object v3, p0, Ln3/y/b/a/r0/b;->w:Ln3/y/b/a/p0/b;

    if-eqz v3, :cond_16

    if-nez v0, :cond_14

    iget-boolean v5, p0, Ln3/y/b/a/r0/b;->l:Z

    if-eqz v5, :cond_14

    goto :goto_5

    .line 58
    :cond_14
    invoke-interface {v3}, Ln3/y/b/a/p0/b;->getState()I

    move-result v3

    if-eq v3, v2, :cond_15

    const/4 v5, 0x4

    if-eq v3, v5, :cond_16

    move v3, v2

    goto :goto_6

    .line 59
    :cond_15
    iget-object v0, p0, Ln3/y/b/a/r0/b;->w:Ln3/y/b/a/p0/b;

    invoke-interface {v0}, Ln3/y/b/a/p0/b;->b()Ln3/y/b/a/p0/b$a;

    move-result-object v0

    .line 60
    iget v1, p0, Ln3/y/b/a/b;->c:I

    .line 61
    invoke-static {v0, v1}, Ln3/y/b/a/f;->a(Ljava/lang/Exception;I)Ln3/y/b/a/f;

    move-result-object v0

    throw v0

    :cond_16
    :goto_5
    move v3, v1

    .line 62
    :goto_6
    iput-boolean v3, p0, Ln3/y/b/a/r0/b;->u0:Z

    if-eqz v3, :cond_17

    return v1

    .line 63
    :cond_17
    iget-boolean v3, p0, Ln3/y/b/a/r0/b;->O:Z

    if-eqz v3, :cond_1d

    if-nez v0, :cond_1d

    .line 64
    iget-object v3, p0, Ln3/y/b/a/r0/b;->o:Ln3/y/b/a/o0/c;

    iget-object v3, v3, Ln3/y/b/a/o0/c;->c:Ljava/nio/ByteBuffer;

    .line 65
    sget-object v5, Ln3/y/b/a/x0/k;->a:[B

    .line 66
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    move v6, v1

    move v7, v6

    :goto_7
    add-int/lit8 v8, v6, 0x1

    if-ge v8, v5, :cond_1b

    .line 67
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x3

    if-ne v7, v10, :cond_18

    if-ne v9, v2, :cond_19

    .line 68
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    and-int/lit8 v11, v11, 0x1f

    const/4 v12, 0x7

    if-ne v11, v12, :cond_19

    .line 69
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    sub-int/2addr v6, v10

    .line 70
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 71
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 72
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 73
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_8

    :cond_18
    if-nez v9, :cond_19

    add-int/lit8 v7, v7, 0x1

    :cond_19
    if-eqz v9, :cond_1a

    move v7, v1

    :cond_1a
    move v6, v8

    goto :goto_7

    .line 74
    :cond_1b
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 75
    :goto_8
    iget-object v3, p0, Ln3/y/b/a/r0/b;->o:Ln3/y/b/a/o0/c;

    iget-object v3, v3, Ln3/y/b/a/o0/c;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-nez v3, :cond_1c

    return v2

    .line 76
    :cond_1c
    iput-boolean v1, p0, Ln3/y/b/a/r0/b;->O:Z

    .line 77
    :cond_1d
    :try_start_1
    iget-object v3, p0, Ln3/y/b/a/r0/b;->o:Ln3/y/b/a/o0/c;

    iget-wide v9, v3, Ln3/y/b/a/o0/c;->d:J

    .line 78
    invoke-virtual {v3}, Ln3/y/b/a/o0/c;->f()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 79
    iget-object v3, p0, Ln3/y/b/a/r0/b;->s:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_1e
    iget-boolean v3, p0, Ln3/y/b/a/r0/b;->w0:Z

    if-eqz v3, :cond_1f

    .line 81
    iget-object v3, p0, Ln3/y/b/a/r0/b;->r:Ln3/y/b/a/x0/u;

    iget-object v5, p0, Ln3/y/b/a/r0/b;->u:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v3, v9, v10, v5}, Ln3/y/b/a/x0/u;->a(JLjava/lang/Object;)V

    .line 82
    iput-boolean v1, p0, Ln3/y/b/a/r0/b;->w0:Z

    .line 83
    :cond_1f
    iget-wide v5, p0, Ln3/y/b/a/r0/b;->r0:J

    .line 84
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Ln3/y/b/a/r0/b;->r0:J

    .line 85
    iget-object v3, p0, Ln3/y/b/a/r0/b;->o:Ln3/y/b/a/o0/c;

    invoke-virtual {v3}, Ln3/y/b/a/o0/c;->d()V

    .line 86
    iget-object v3, p0, Ln3/y/b/a/r0/b;->o:Ln3/y/b/a/o0/c;

    const/high16 v5, 0x10000000

    .line 87
    invoke-virtual {v3, v5}, Ln3/y/b/a/o0/c;->e(I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 88
    iget-object v3, p0, Ln3/y/b/a/r0/b;->o:Ln3/y/b/a/o0/c;

    invoke-virtual {p0, v3}, Ln3/y/b/a/r0/b;->S(Ln3/y/b/a/o0/c;)V

    .line 89
    :cond_20
    iget-object v3, p0, Ln3/y/b/a/r0/b;->o:Ln3/y/b/a/o0/c;

    invoke-virtual {p0, v3}, Ln3/y/b/a/r0/b;->a0(Ln3/y/b/a/o0/c;)V

    if-eqz v0, :cond_23

    .line 90
    iget-object v0, p0, Ln3/y/b/a/r0/b;->o:Ln3/y/b/a/o0/c;

    .line 91
    iget-object v0, v0, Ln3/y/b/a/o0/c;->b:Ln3/y/b/a/o0/a;

    .line 92
    iget-object v8, v0, Ln3/y/b/a/o0/a;->d:Landroid/media/MediaCodec$CryptoInfo;

    if-nez v4, :cond_21

    goto :goto_9

    .line 93
    :cond_21
    iget-object v0, v8, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_22

    new-array v0, v2, [I

    .line 94
    iput-object v0, v8, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 95
    :cond_22
    iget-object v0, v8, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    aget v3, v0, v1

    add-int/2addr v3, v4

    aput v3, v0, v1

    .line 96
    :goto_9
    iget-object v5, p0, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    iget v6, p0, Ln3/y/b/a/r0/b;->Z:I

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_a

    .line 97
    :cond_23
    iget-object v5, p0, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    iget v6, p0, Ln3/y/b/a/r0/b;->Z:I

    const/4 v7, 0x0

    iget-object v0, p0, Ln3/y/b/a/r0/b;->o:Ln3/y/b/a/o0/c;

    iget-object v0, v0, Ln3/y/b/a/o0/c;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 98
    :goto_a
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->g0()V

    .line 99
    iput-boolean v2, p0, Ln3/y/b/a/r0/b;->o0:Z

    .line 100
    iput v1, p0, Ln3/y/b/a/r0/b;->l0:I

    .line 101
    iget-object v0, p0, Ln3/y/b/a/r0/b;->x0:Ln3/y/b/a/o0/b;

    iget v1, v0, Ln3/y/b/a/o0/b;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Ln3/y/b/a/o0/b;->c:I
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_1
    move-exception v0

    .line 102
    iget v1, p0, Ln3/y/b/a/b;->c:I

    .line 103
    invoke-static {v0, v1}, Ln3/y/b/a/f;->a(Ljava/lang/Exception;I)Ln3/y/b/a/f;

    move-result-object v0

    throw v0

    :cond_24
    :goto_b
    return v1
.end method

.method public final N()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->U()V

    :cond_0
    return v0
.end method

.method public O()Z
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v2, p0, Ln3/y/b/a/r0/b;->n0:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    iget-boolean v2, p0, Ln3/y/b/a/r0/b;->P:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Ln3/y/b/a/r0/b;->Q:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Ln3/y/b/a/r0/b;->p0:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 4
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->g0()V

    .line 5
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->h0()V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide v2, p0, Ln3/y/b/a/r0/b;->Y:J

    .line 7
    iput-boolean v1, p0, Ln3/y/b/a/r0/b;->p0:Z

    .line 8
    iput-boolean v1, p0, Ln3/y/b/a/r0/b;->o0:Z

    .line 9
    iput-boolean v4, p0, Ln3/y/b/a/r0/b;->v0:Z

    .line 10
    iput-boolean v1, p0, Ln3/y/b/a/r0/b;->T:Z

    .line 11
    iput-boolean v1, p0, Ln3/y/b/a/r0/b;->U:Z

    .line 12
    iput-boolean v1, p0, Ln3/y/b/a/r0/b;->i0:Z

    .line 13
    iput-boolean v1, p0, Ln3/y/b/a/r0/b;->j0:Z

    .line 14
    iput-boolean v1, p0, Ln3/y/b/a/r0/b;->u0:Z

    .line 15
    iget-object v0, p0, Ln3/y/b/a/r0/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    iput-wide v2, p0, Ln3/y/b/a/r0/b;->r0:J

    .line 17
    iput-wide v2, p0, Ln3/y/b/a/r0/b;->q0:J

    .line 18
    iput v1, p0, Ln3/y/b/a/r0/b;->m0:I

    .line 19
    iput v1, p0, Ln3/y/b/a/r0/b;->n0:I

    .line 20
    iget-boolean v0, p0, Ln3/y/b/a/r0/b;->k0:Z

    iput v0, p0, Ln3/y/b/a/r0/b;->l0:I

    return v1

    .line 21
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->e0()V

    return v4
.end method

.method public P()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract Q(FLandroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)F
.end method

.method public abstract R(Ln3/y/b/a/r0/c;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;
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
.end method

.method public S(Ln3/y/b/a/o0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    return-void
.end method

.method public final T(Ln3/y/b/a/r0/a;Landroid/media/MediaCrypto;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v8, v0, Ln3/y/b/a/r0/a;->a:Ljava/lang/String;

    .line 2
    sget v9, Ln3/y/b/a/x0/x;->a:I

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v10, 0x17

    if-ge v9, v10, :cond_0

    move v2, v1

    goto :goto_0

    .line 3
    :cond_0
    iget v2, v7, Ln3/y/b/a/r0/b;->B:F

    iget-object v3, v7, Ln3/y/b/a/r0/b;->u:Landroidx/media2/exoplayer/external/Format;

    .line 4
    iget-object v4, v7, Ln3/y/b/a/b;->f:[Landroidx/media2/exoplayer/external/Format;

    .line 5
    invoke-virtual {v7, v2, v3, v4}, Ln3/y/b/a/r0/b;->Q(FLandroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)F

    move-result v2

    .line 6
    :goto_0
    iget v3, v7, Ln3/y/b/a/r0/b;->n:F

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    move v11, v1

    goto :goto_1

    :cond_1
    move v11, v2

    :goto_1
    const/4 v12, 0x0

    const/16 v13, 0x15

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-string v1, "createCodec:"

    .line 8
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->h(Ljava/lang/String;)V

    .line 9
    invoke-static {v8}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 10
    :try_start_1
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->X()V

    const-string v1, "configureCodec"

    .line 11
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->h(Ljava/lang/String;)V

    .line 12
    iget-object v4, v7, Ln3/y/b/a/r0/b;->u:Landroidx/media2/exoplayer/external/Format;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v6

    move-object/from16 v5, p2

    move-object/from16 p2, v6

    move v6, v11

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Ln3/y/b/a/r0/b;->H(Ln3/y/b/a/r0/a;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/Format;Landroid/media/MediaCrypto;F)V

    .line 13
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->X()V

    const-string v1, "startCodec"

    .line 14
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->h(Ljava/lang/String;)V

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaCodec;->start()V

    .line 16
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->X()V

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-ge v9, v13, :cond_3

    .line 18
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v7, Ln3/y/b/a/r0/b;->W:[Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v7, Ln3/y/b/a/r0/b;->X:[Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v6, p2

    goto/16 :goto_11

    :cond_3
    :goto_3
    move-object/from16 v1, p2

    .line 20
    iput-object v1, v7, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    .line 21
    iput-object v0, v7, Ln3/y/b/a/r0/b;->L:Ln3/y/b/a/r0/a;

    .line 22
    iput v11, v7, Ln3/y/b/a/r0/b;->E:F

    .line 23
    iget-object v1, v7, Ln3/y/b/a/r0/b;->u:Landroidx/media2/exoplayer/external/Format;

    iput-object v1, v7, Ln3/y/b/a/r0/b;->D:Landroidx/media2/exoplayer/external/Format;

    const-string v1, "OMX.Exynos.avc.dec.secure"

    const/4 v2, 0x1

    const/16 v6, 0x19

    if-gt v9, v6, :cond_5

    .line 24
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    sget-object v12, Ln3/y/b/a/x0/x;->d:Ljava/lang/String;

    const-string v11, "SM-T585"

    .line 25
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "SM-A510"

    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "SM-A520"

    .line 26
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "SM-J700"

    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    const/4 v11, 0x2

    goto :goto_4

    :cond_5
    const/16 v11, 0x18

    if-ge v9, v11, :cond_8

    const-string v11, "OMX.Nvidia.h264.decode"

    .line 27
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    :cond_6
    sget-object v11, Ln3/y/b/a/x0/x;->b:Ljava/lang/String;

    const-string v12, "flounder"

    .line 28
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "flounder_lte"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "grouper"

    .line 29
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "tilapia"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    :cond_7
    move v11, v2

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    .line 30
    :goto_4
    iput v11, v7, Ln3/y/b/a/r0/b;->M:I

    .line 31
    sget-object v11, Ln3/y/b/a/x0/x;->d:Ljava/lang/String;

    const-string v12, "SM-T230"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    const-string v12, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    move v12, v2

    goto :goto_5

    :cond_9
    const/4 v12, 0x0

    .line 32
    :goto_5
    iput-boolean v12, v7, Ln3/y/b/a/r0/b;->N:Z

    .line 33
    iget-object v12, v7, Ln3/y/b/a/r0/b;->D:Landroidx/media2/exoplayer/external/Format;

    if-ge v9, v13, :cond_a

    .line 34
    iget-object v12, v12, Landroidx/media2/exoplayer/external/Format;->k:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_a

    const-string v12, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 35
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    move v12, v2

    goto :goto_6

    :cond_a
    const/4 v12, 0x0

    .line 36
    :goto_6
    iput-boolean v12, v7, Ln3/y/b/a/r0/b;->O:Z

    const/16 v12, 0x13

    const/16 v5, 0x12

    if-lt v9, v5, :cond_d

    if-ne v9, v5, :cond_b

    const-string v6, "OMX.SEC.avc.dec"

    .line 37
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    :cond_b
    if-ne v9, v12, :cond_c

    const-string v6, "SM-G800"

    .line 38
    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "OMX.Exynos.avc.dec"

    .line 39
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    goto :goto_8

    :cond_d
    :goto_7
    move v1, v2

    .line 40
    :goto_8
    iput-boolean v1, v7, Ln3/y/b/a/r0/b;->P:Z

    if-gt v9, v10, :cond_e

    const-string v1, "OMX.google.vorbis.decoder"

    .line 41
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :cond_e
    if-gt v9, v12, :cond_11

    sget-object v1, Ln3/y/b/a/x0/x;->b:Ljava/lang/String;

    const-string v6, "hb2000"

    .line 42
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "stvm8"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_f
    const-string v1, "OMX.amlogic.avc.decoder.awesome"

    .line 43
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 44
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    move v1, v2

    goto :goto_9

    :cond_11
    const/4 v1, 0x0

    .line 45
    :goto_9
    iput-boolean v1, v7, Ln3/y/b/a/r0/b;->Q:Z

    if-ne v9, v13, :cond_12

    const-string v1, "OMX.google.aac.decoder"

    .line 46
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v2

    goto :goto_a

    :cond_12
    const/4 v1, 0x0

    .line 47
    :goto_a
    iput-boolean v1, v7, Ln3/y/b/a/r0/b;->R:Z

    .line 48
    iget-object v1, v7, Ln3/y/b/a/r0/b;->D:Landroidx/media2/exoplayer/external/Format;

    if-gt v9, v5, :cond_13

    .line 49
    iget v1, v1, Landroidx/media2/exoplayer/external/Format;->v:I

    if-ne v1, v2, :cond_13

    const-string v1, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 50
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v2

    goto :goto_b

    :cond_13
    const/4 v1, 0x0

    .line 51
    :goto_b
    iput-boolean v1, v7, Ln3/y/b/a/r0/b;->S:Z

    .line 52
    iget-object v1, v0, Ln3/y/b/a/r0/a;->a:Ljava/lang/String;

    const/16 v5, 0x19

    if-gt v9, v5, :cond_14

    const-string v5, "OMX.rk.video_decoder.avc"

    .line 53
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    :cond_14
    const/16 v5, 0x11

    if-gt v9, v5, :cond_15

    const-string v5, "OMX.allwinner.video.decoder.avc"

    .line 54
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    :cond_15
    sget-object v1, Ln3/y/b/a/x0/x;->c:Ljava/lang/String;

    const-string v5, "Amazon"

    .line 55
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "AFTS"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-boolean v0, v0, Ln3/y/b/a/r0/a;->f:Z

    if-eqz v0, :cond_17

    :cond_16
    move v0, v2

    goto :goto_c

    :cond_17
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_19

    .line 56
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/r0/b;->P()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_d

    :cond_18
    const/4 v0, 0x0

    goto :goto_e

    :cond_19
    :goto_d
    move v0, v2

    :goto_e
    iput-boolean v0, v7, Ln3/y/b/a/r0/b;->V:Z

    .line 57
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/r0/b;->g0()V

    .line 58
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/r0/b;->h0()V

    .line 59
    iget v0, v7, Ln3/y/b/a/b;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    add-long/2addr v0, v5

    goto :goto_f

    :cond_1a
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 61
    :goto_f
    iput-wide v0, v7, Ln3/y/b/a/r0/b;->Y:J

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, v7, Ln3/y/b/a/r0/b;->k0:Z

    .line 63
    iput v0, v7, Ln3/y/b/a/r0/b;->l0:I

    .line 64
    iput-boolean v0, v7, Ln3/y/b/a/r0/b;->p0:Z

    .line 65
    iput-boolean v0, v7, Ln3/y/b/a/r0/b;->o0:Z

    .line 66
    iput v0, v7, Ln3/y/b/a/r0/b;->m0:I

    .line 67
    iput v0, v7, Ln3/y/b/a/r0/b;->n0:I

    .line 68
    iput-boolean v0, v7, Ln3/y/b/a/r0/b;->T:Z

    .line 69
    iput-boolean v0, v7, Ln3/y/b/a/r0/b;->U:Z

    .line 70
    iput-boolean v0, v7, Ln3/y/b/a/r0/b;->i0:Z

    .line 71
    iput-boolean v0, v7, Ln3/y/b/a/r0/b;->j0:Z

    .line 72
    iput-boolean v2, v7, Ln3/y/b/a/r0/b;->v0:Z

    .line 73
    iget-object v0, v7, Ln3/y/b/a/r0/b;->x0:Ln3/y/b/a/o0/b;

    iget v1, v0, Ln3/y/b/a/o0/b;->a:I

    add-int/2addr v1, v2

    iput v1, v0, Ln3/y/b/a/o0/b;->a:I

    sub-long v5, v3, v14

    move-object/from16 v1, p0

    move-object v2, v8

    .line 74
    invoke-virtual/range {v1 .. v6}, Ln3/y/b/a/r0/b;->W(Ljava/lang/String;JJ)V

    return-void

    :catch_1
    move-exception v0

    move-object/from16 v1, p2

    goto :goto_10

    :catch_2
    move-exception v0

    move-object v1, v6

    :goto_10
    move-object v6, v1

    goto :goto_11

    :catch_3
    move-exception v0

    move-object v6, v12

    :goto_11
    if-eqz v6, :cond_1c

    .line 75
    sget v1, Ln3/y/b/a/x0/x;->a:I

    if-ge v1, v13, :cond_1b

    .line 76
    iput-object v12, v7, Ln3/y/b/a/r0/b;->W:[Ljava/nio/ByteBuffer;

    .line 77
    iput-object v12, v7, Ln3/y/b/a/r0/b;->X:[Ljava/nio/ByteBuffer;

    .line 78
    :cond_1b
    invoke-virtual {v6}, Landroid/media/MediaCodec;->release()V

    .line 79
    :cond_1c
    throw v0
.end method

.method public final U()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    if-nez v0, :cond_9

    iget-object v0, p0, Ln3/y/b/a/r0/b;->u:Landroidx/media2/exoplayer/external/Format;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/r0/b;->x:Ln3/y/b/a/p0/b;

    invoke-virtual {p0, v0}, Ln3/y/b/a/r0/b;->i0(Ln3/y/b/a/p0/b;)V

    .line 3
    iget-object v0, p0, Ln3/y/b/a/r0/b;->u:Landroidx/media2/exoplayer/external/Format;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Ln3/y/b/a/r0/b;->w:Ln3/y/b/a/p0/b;

    if-eqz v1, :cond_8

    .line 5
    iget-object v2, p0, Ln3/y/b/a/r0/b;->y:Landroid/media/MediaCrypto;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_4

    .line 6
    invoke-interface {v1}, Ln3/y/b/a/p0/b;->c()Ln3/y/b/a/p0/e;

    move-result-object v1

    if-nez v1, :cond_2

    .line 7
    iget-object v0, p0, Ln3/y/b/a/r0/b;->w:Ln3/y/b/a/p0/b;

    invoke-interface {v0}, Ln3/y/b/a/p0/b;->b()Ln3/y/b/a/p0/b$a;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return-void

    .line 8
    :cond_2
    :try_start_0
    new-instance v1, Landroid/media/MediaCrypto;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v1, p0, Ln3/y/b/a/r0/b;->y:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    invoke-virtual {v1, v0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Ln3/y/b/a/r0/b;->z:Z

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    iget v1, p0, Ln3/y/b/a/b;->c:I

    .line 11
    invoke-static {v0, v1}, Ln3/y/b/a/f;->a(Ljava/lang/Exception;I)Ln3/y/b/a/f;

    move-result-object v0

    throw v0

    .line 12
    :cond_4
    :goto_1
    sget-object v0, Ln3/y/b/a/x0/x;->c:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Ln3/y/b/a/x0/x;->d:Ljava/lang/String;

    const-string v1, "AFTM"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "AFTB"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v3, v4

    :cond_6
    if-eqz v3, :cond_8

    .line 15
    iget-object v0, p0, Ln3/y/b/a/r0/b;->w:Ln3/y/b/a/p0/b;

    invoke-interface {v0}, Ln3/y/b/a/p0/b;->getState()I

    move-result v0

    if-eq v0, v4, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    return-void

    .line 16
    :cond_7
    iget-object v0, p0, Ln3/y/b/a/r0/b;->w:Ln3/y/b/a/p0/b;

    invoke-interface {v0}, Ln3/y/b/a/p0/b;->b()Ln3/y/b/a/p0/b$a;

    move-result-object v0

    .line 17
    iget v1, p0, Ln3/y/b/a/b;->c:I

    .line 18
    invoke-static {v0, v1}, Ln3/y/b/a/f;->a(Ljava/lang/Exception;I)Ln3/y/b/a/f;

    move-result-object v0

    throw v0

    .line 19
    :cond_8
    :try_start_1
    iget-object v0, p0, Ln3/y/b/a/r0/b;->y:Landroid/media/MediaCrypto;

    iget-boolean v1, p0, Ln3/y/b/a/r0/b;->z:Z

    invoke-virtual {p0, v0, v1}, Ln3/y/b/a/r0/b;->V(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch Ln3/y/b/a/r0/b$b; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 20
    iget v1, p0, Ln3/y/b/a/b;->c:I

    .line 21
    invoke-static {v0, v1}, Ln3/y/b/a/f;->a(Ljava/lang/Exception;I)Ln3/y/b/a/f;

    move-result-object v0

    throw v0

    :cond_9
    :goto_2
    return-void
.end method

.method public final V(Landroid/media/MediaCrypto;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/r0/b$b;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v10, p2

    .line 1
    iget-object v0, v1, Ln3/y/b/a/r0/b;->J:Ljava/util/ArrayDeque;

    const/4 v11, 0x0

    if-nez v0, :cond_3

    .line 2
    :try_start_0
    iget-object v0, v1, Ln3/y/b/a/r0/b;->j:Ln3/y/b/a/r0/c;

    iget-object v2, v1, Ln3/y/b/a/r0/b;->u:Landroidx/media2/exoplayer/external/Format;

    .line 3
    invoke-virtual {v1, v0, v2, v10}, Ln3/y/b/a/r0/b;->R(Ln3/y/b/a/r0/c;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-eqz v10, :cond_0

    .line 5
    iget-object v0, v1, Ln3/y/b/a/r0/b;->j:Ln3/y/b/a/r0/c;

    iget-object v2, v1, Ln3/y/b/a/r0/b;->u:Landroidx/media2/exoplayer/external/Format;

    .line 6
    invoke-virtual {v1, v0, v2, v3}, Ln3/y/b/a/r0/b;->R(Ln3/y/b/a/r0/c;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    iget-object v2, v1, Ln3/y/b/a/r0/b;->u:Landroidx/media2/exoplayer/external/Format;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 9
    :cond_0
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, v1, Ln3/y/b/a/r0/b;->J:Ljava/util/ArrayDeque;

    .line 10
    iget-boolean v4, v1, Ln3/y/b/a/r0/b;->m:Z

    if-eqz v4, :cond_1

    .line 11
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 13
    iget-object v2, v1, Ln3/y/b/a/r0/b;->J:Ljava/util/ArrayDeque;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/r0/a;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_2
    :goto_0
    iput-object v11, v1, Ln3/y/b/a/r0/b;->K:Ln3/y/b/a/r0/b$b;
    :try_end_0
    .catch Ln3/y/b/a/r0/h$c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 15
    new-instance v2, Ln3/y/b/a/r0/b$b;

    iget-object v3, v1, Ln3/y/b/a/r0/b;->u:Landroidx/media2/exoplayer/external/Format;

    const v4, -0xc34e

    invoke-direct {v2, v3, v0, v10, v4}, Ln3/y/b/a/r0/b$b;-><init>(Landroidx/media2/exoplayer/external/Format;Ljava/lang/Throwable;ZI)V

    throw v2

    .line 16
    :cond_3
    :goto_1
    iget-object v0, v1, Ln3/y/b/a/r0/b;->J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 17
    :goto_2
    iget-object v0, v1, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    if-nez v0, :cond_8

    .line 18
    iget-object v0, v1, Ln3/y/b/a/r0/b;->J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ln3/y/b/a/r0/a;

    .line 19
    invoke-virtual {v1, v7}, Ln3/y/b/a/r0/b;->k0(Ln3/y/b/a/r0/a;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    move-object/from16 v12, p1

    .line 20
    :try_start_1
    invoke-virtual {v1, v7, v12}, Ln3/y/b/a/r0/b;->T(Ln3/y/b/a/r0/a;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v0

    .line 21
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 22
    iget-object v0, v1, Ln3/y/b/a/r0/b;->J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 23
    new-instance v0, Ln3/y/b/a/r0/b$b;

    iget-object v2, v1, Ln3/y/b/a/r0/b;->u:Landroidx/media2/exoplayer/external/Format;

    .line 24
    iget-object v3, v7, Ln3/y/b/a/r0/a;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x17

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Decoder init failed: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v2, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    .line 25
    sget v2, Ln3/y/b/a/x0/x;->a:I

    const/16 v6, 0x15

    if-lt v2, v6, :cond_5

    .line 26
    instance-of v2, v4, Landroid/media/MediaCodec$CodecException;

    if-eqz v2, :cond_5

    .line 27
    move-object v2, v4

    check-cast v2, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v2}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_3

    :cond_5
    move-object v8, v11

    :goto_3
    const/4 v9, 0x0

    move-object v2, v0

    move/from16 v6, p2

    .line 28
    invoke-direct/range {v2 .. v9}, Ln3/y/b/a/r0/b$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLn3/y/b/a/r0/a;Ljava/lang/String;Ln3/y/b/a/r0/b$b;)V

    .line 29
    iget-object v2, v1, Ln3/y/b/a/r0/b;->K:Ln3/y/b/a/r0/b$b;

    if-nez v2, :cond_6

    .line 30
    iput-object v0, v1, Ln3/y/b/a/r0/b;->K:Ln3/y/b/a/r0/b$b;

    goto :goto_4

    .line 31
    :cond_6
    new-instance v3, Ln3/y/b/a/r0/b$b;

    .line 32
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 33
    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    iget-object v4, v2, Ln3/y/b/a/r0/b$b;->a:Ljava/lang/String;

    iget-boolean v5, v2, Ln3/y/b/a/r0/b$b;->b:Z

    iget-object v6, v2, Ln3/y/b/a/r0/b$b;->c:Ln3/y/b/a/r0/a;

    iget-object v2, v2, Ln3/y/b/a/r0/b$b;->d:Ljava/lang/String;

    move-object v13, v3

    move-object/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v2

    move-object/from16 v20, v0

    invoke-direct/range {v13 .. v20}, Ln3/y/b/a/r0/b$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLn3/y/b/a/r0/a;Ljava/lang/String;Ln3/y/b/a/r0/b$b;)V

    .line 34
    iput-object v3, v1, Ln3/y/b/a/r0/b;->K:Ln3/y/b/a/r0/b$b;

    .line 35
    :goto_4
    iget-object v0, v1, Ln3/y/b/a/r0/b;->J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_2

    .line 36
    :cond_7
    iget-object v0, v1, Ln3/y/b/a/r0/b;->K:Ln3/y/b/a/r0/b$b;

    throw v0

    .line 37
    :cond_8
    iput-object v11, v1, Ln3/y/b/a/r0/b;->J:Ljava/util/ArrayDeque;

    return-void

    .line 38
    :cond_9
    new-instance v0, Ln3/y/b/a/r0/b$b;

    iget-object v2, v1, Ln3/y/b/a/r0/b;->u:Landroidx/media2/exoplayer/external/Format;

    const v3, -0xc34f

    invoke-direct {v0, v2, v11, v10, v3}, Ln3/y/b/a/r0/b$b;-><init>(Landroidx/media2/exoplayer/external/Format;Ljava/lang/Throwable;ZI)V

    throw v0
.end method

.method public abstract W(Ljava/lang/String;JJ)V
.end method

.method public X(Ln3/y/b/a/x;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/r0/b;->u:Landroidx/media2/exoplayer/external/Format;

    .line 2
    iget-object v1, p1, Ln3/y/b/a/x;->c:Landroidx/media2/exoplayer/external/Format;

    .line 3
    iput-object v1, p0, Ln3/y/b/a/r0/b;->u:Landroidx/media2/exoplayer/external/Format;

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Ln3/y/b/a/r0/b;->w0:Z

    .line 5
    iget-object v3, v1, Landroidx/media2/exoplayer/external/Format;->l:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    const/4 v4, 0x0

    if-nez v0, :cond_0

    move-object v0, v4

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, Landroidx/media2/exoplayer/external/Format;->l:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    :goto_0
    invoke-static {v3, v0}, Ln3/y/b/a/x0/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_5

    .line 7
    iget-object v0, v1, Landroidx/media2/exoplayer/external/Format;->l:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v0, :cond_4

    .line 8
    iget-boolean v0, p1, Ln3/y/b/a/x;->a:Z

    if-eqz v0, :cond_1

    .line 9
    iget-object p1, p1, Ln3/y/b/a/x;->b:Ln3/y/b/a/p0/b;

    invoke-virtual {p0, p1}, Ln3/y/b/a/r0/b;->j0(Ln3/y/b/a/p0/b;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object p1, p0, Ln3/y/b/a/r0/b;->k:Ln3/y/b/a/p0/c;

    if-eqz p1, :cond_3

    .line 11
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v3, v1, Landroidx/media2/exoplayer/external/Format;->l:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-interface {p1, v0, v3}, Ln3/y/b/a/p0/c;->c(Landroid/os/Looper;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Ln3/y/b/a/p0/b;

    move-result-object p1

    .line 12
    iget-object v0, p0, Ln3/y/b/a/r0/b;->x:Ln3/y/b/a/p0/b;

    if-eqz v0, :cond_2

    .line 13
    invoke-interface {v0}, Ln3/y/b/a/p0/b;->d()V

    .line 14
    :cond_2
    iput-object p1, p0, Ln3/y/b/a/r0/b;->x:Ln3/y/b/a/p0/b;

    goto :goto_1

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    iget v0, p0, Ln3/y/b/a/b;->c:I

    .line 17
    invoke-static {p1, v0}, Ln3/y/b/a/f;->a(Ljava/lang/Exception;I)Ln3/y/b/a/f;

    move-result-object p1

    throw p1

    .line 18
    :cond_4
    invoke-virtual {p0, v4}, Ln3/y/b/a/r0/b;->j0(Ln3/y/b/a/p0/b;)V

    .line 19
    :cond_5
    :goto_1
    iget-object p1, p0, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    if-nez p1, :cond_6

    .line 20
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->U()V

    return-void

    .line 21
    :cond_6
    iget-object v0, p0, Ln3/y/b/a/r0/b;->x:Ln3/y/b/a/p0/b;

    if-nez v0, :cond_7

    iget-object v3, p0, Ln3/y/b/a/r0/b;->w:Ln3/y/b/a/p0/b;

    if-nez v3, :cond_a

    :cond_7
    if-eqz v0, :cond_8

    iget-object v3, p0, Ln3/y/b/a/r0/b;->w:Ln3/y/b/a/p0/b;

    if-eqz v3, :cond_a

    :cond_8
    if-eqz v0, :cond_9

    iget-object v3, p0, Ln3/y/b/a/r0/b;->L:Ln3/y/b/a/r0/a;

    iget-boolean v3, v3, Ln3/y/b/a/r0/a;->f:Z

    if-eqz v3, :cond_a

    :cond_9
    sget v3, Ln3/y/b/a/x0/x;->a:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_b

    iget-object v3, p0, Ln3/y/b/a/r0/b;->w:Ln3/y/b/a/p0/b;

    if-eq v0, v3, :cond_b

    .line 22
    :cond_a
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->J()V

    return-void

    .line 23
    :cond_b
    iget-object v0, p0, Ln3/y/b/a/r0/b;->L:Ln3/y/b/a/r0/a;

    iget-object v3, p0, Ln3/y/b/a/r0/b;->D:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p0, p1, v0, v3, v1}, Ln3/y/b/a/r0/b;->G(Landroid/media/MediaCodec;Ln3/y/b/a/r0/a;Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)I

    move-result p1

    if-eqz p1, :cond_13

    if-eq p1, v2, :cond_11

    const/4 v0, 0x2

    if-eq p1, v0, :cond_d

    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    .line 24
    iput-object v1, p0, Ln3/y/b/a/r0/b;->D:Landroidx/media2/exoplayer/external/Format;

    .line 25
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->m0()V

    .line 26
    iget-object p1, p0, Ln3/y/b/a/r0/b;->x:Ln3/y/b/a/p0/b;

    iget-object v0, p0, Ln3/y/b/a/r0/b;->w:Ln3/y/b/a/p0/b;

    if-eq p1, v0, :cond_14

    .line 27
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->K()V

    goto :goto_3

    .line 28
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 29
    :cond_d
    iget-boolean p1, p0, Ln3/y/b/a/r0/b;->N:Z

    if-eqz p1, :cond_e

    .line 30
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->J()V

    goto :goto_3

    .line 31
    :cond_e
    iput-boolean v2, p0, Ln3/y/b/a/r0/b;->k0:Z

    .line 32
    iput v2, p0, Ln3/y/b/a/r0/b;->l0:I

    .line 33
    iget p1, p0, Ln3/y/b/a/r0/b;->M:I

    if-eq p1, v0, :cond_10

    if-ne p1, v2, :cond_f

    iget p1, v1, Landroidx/media2/exoplayer/external/Format;->n:I

    iget-object v0, p0, Ln3/y/b/a/r0/b;->D:Landroidx/media2/exoplayer/external/Format;

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->n:I

    if-ne p1, v3, :cond_f

    iget p1, v1, Landroidx/media2/exoplayer/external/Format;->o:I

    iget v0, v0, Landroidx/media2/exoplayer/external/Format;->o:I

    if-ne p1, v0, :cond_f

    goto :goto_2

    :cond_f
    const/4 v2, 0x0

    :cond_10
    :goto_2
    iput-boolean v2, p0, Ln3/y/b/a/r0/b;->T:Z

    .line 34
    iput-object v1, p0, Ln3/y/b/a/r0/b;->D:Landroidx/media2/exoplayer/external/Format;

    .line 35
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->m0()V

    .line 36
    iget-object p1, p0, Ln3/y/b/a/r0/b;->x:Ln3/y/b/a/p0/b;

    iget-object v0, p0, Ln3/y/b/a/r0/b;->w:Ln3/y/b/a/p0/b;

    if-eq p1, v0, :cond_14

    .line 37
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->K()V

    goto :goto_3

    .line 38
    :cond_11
    iput-object v1, p0, Ln3/y/b/a/r0/b;->D:Landroidx/media2/exoplayer/external/Format;

    .line 39
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->m0()V

    .line 40
    iget-object p1, p0, Ln3/y/b/a/r0/b;->x:Ln3/y/b/a/p0/b;

    iget-object v0, p0, Ln3/y/b/a/r0/b;->w:Ln3/y/b/a/p0/b;

    if-eq p1, v0, :cond_12

    .line 41
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->K()V

    goto :goto_3

    .line 42
    :cond_12
    iget-boolean p1, p0, Ln3/y/b/a/r0/b;->o0:Z

    if-eqz p1, :cond_14

    .line 43
    iput v2, p0, Ln3/y/b/a/r0/b;->m0:I

    .line 44
    iput v2, p0, Ln3/y/b/a/r0/b;->n0:I

    goto :goto_3

    .line 45
    :cond_13
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->J()V

    :cond_14
    :goto_3
    return-void
.end method

.method public abstract Y(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation
.end method

.method public abstract Z(J)V
.end method

.method public abstract a0(Ln3/y/b/a/o0/c;)V
.end method

.method public b()Z
    .locals 7

    .line 1
    iget-object v0, p0, Ln3/y/b/a/r0/b;->u:Landroidx/media2/exoplayer/external/Format;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Ln3/y/b/a/r0/b;->u0:Z

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Ln3/y/b/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ln3/y/b/a/b;->i:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ln3/y/b/a/b;->e:Ln3/y/b/a/t0/j0;

    invoke-interface {v0}, Ln3/y/b/a/t0/j0;->b()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_3

    .line 3
    iget v0, p0, Ln3/y/b/a/r0/b;->g0:I

    if-ltz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_3

    .line 4
    iget-wide v3, p0, Ln3/y/b/a/r0/b;->Y:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Ln3/y/b/a/r0/b;->Y:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method public final b0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget v0, p0, Ln3/y/b/a/r0/b;->n0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 2
    iput-boolean v1, p0, Ln3/y/b/a/r0/b;->t0:Z

    .line 3
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->f0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->e0()V

    .line 5
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->U()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->n0()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->N()Z

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/y/b/a/r0/b;->t0:Z

    return v0
.end method

.method public abstract c0(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZLandroidx/media2/exoplayer/external/Format;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation
.end method

.method public final d0(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/r0/b;->p:Ln3/y/b/a/o0/c;

    invoke-virtual {v0}, Ln3/y/b/a/o0/c;->a()V

    .line 2
    iget-object v0, p0, Ln3/y/b/a/r0/b;->q:Ln3/y/b/a/x;

    iget-object v1, p0, Ln3/y/b/a/r0/b;->p:Ln3/y/b/a/o0/c;

    invoke-virtual {p0, v0, v1, p1}, Ln3/y/b/a/b;->C(Ln3/y/b/a/x;Ln3/y/b/a/o0/c;Z)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, -0x5

    if-ne p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Ln3/y/b/a/r0/b;->q:Ln3/y/b/a/x;

    invoke-virtual {p0, p1}, Ln3/y/b/a/r0/b;->X(Ln3/y/b/a/x;)V

    return v0

    :cond_0
    const/4 v1, -0x4

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Ln3/y/b/a/r0/b;->p:Ln3/y/b/a/o0/c;

    invoke-virtual {p1}, Ln3/y/b/a/o0/c;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iput-boolean v0, p0, Ln3/y/b/a/r0/b;->s0:Z

    .line 6
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->b0()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public e0()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Ln3/y/b/a/r0/b;->J:Ljava/util/ArrayDeque;

    .line 2
    iput-object v0, p0, Ln3/y/b/a/r0/b;->L:Ln3/y/b/a/r0/a;

    .line 3
    iput-object v0, p0, Ln3/y/b/a/r0/b;->D:Landroidx/media2/exoplayer/external/Format;

    .line 4
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->g0()V

    .line 5
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->h0()V

    .line 6
    sget v1, Ln3/y/b/a/x0/x;->a:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 7
    iput-object v0, p0, Ln3/y/b/a/r0/b;->W:[Ljava/nio/ByteBuffer;

    .line 8
    iput-object v0, p0, Ln3/y/b/a/r0/b;->X:[Ljava/nio/ByteBuffer;

    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Ln3/y/b/a/r0/b;->u0:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    iput-wide v2, p0, Ln3/y/b/a/r0/b;->Y:J

    .line 11
    iget-object v4, p0, Ln3/y/b/a/r0/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 12
    iput-wide v2, p0, Ln3/y/b/a/r0/b;->r0:J

    .line 13
    iput-wide v2, p0, Ln3/y/b/a/r0/b;->q0:J

    .line 14
    :try_start_0
    iget-object v2, p0, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    if-eqz v2, :cond_1

    .line 15
    iget-object v3, p0, Ln3/y/b/a/r0/b;->x0:Ln3/y/b/a/o0/b;

    iget v4, v3, Ln3/y/b/a/o0/b;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Ln3/y/b/a/o0/b;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    iget-object v2, p0, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 18
    :cond_1
    :goto_0
    iput-object v0, p0, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    .line 19
    :try_start_3
    iget-object v2, p0, Ln3/y/b/a/r0/b;->y:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_2

    .line 20
    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 21
    :cond_2
    iput-object v0, p0, Ln3/y/b/a/r0/b;->y:Landroid/media/MediaCrypto;

    .line 22
    iput-boolean v1, p0, Ln3/y/b/a/r0/b;->z:Z

    .line 23
    invoke-virtual {p0, v0}, Ln3/y/b/a/r0/b;->i0(Ln3/y/b/a/p0/b;)V

    return-void

    :catchall_1
    move-exception v2

    .line 24
    iput-object v0, p0, Ln3/y/b/a/r0/b;->y:Landroid/media/MediaCrypto;

    .line 25
    iput-boolean v1, p0, Ln3/y/b/a/r0/b;->z:Z

    .line 26
    invoke-virtual {p0, v0}, Ln3/y/b/a/r0/b;->i0(Ln3/y/b/a/p0/b;)V

    throw v2

    :catchall_2
    move-exception v2

    .line 27
    iput-object v0, p0, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    .line 28
    :try_start_4
    iget-object v3, p0, Ln3/y/b/a/r0/b;->y:Landroid/media/MediaCrypto;

    if-eqz v3, :cond_3

    .line 29
    invoke-virtual {v3}, Landroid/media/MediaCrypto;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 30
    :cond_3
    iput-object v0, p0, Ln3/y/b/a/r0/b;->y:Landroid/media/MediaCrypto;

    .line 31
    iput-boolean v1, p0, Ln3/y/b/a/r0/b;->z:Z

    .line 32
    invoke-virtual {p0, v0}, Ln3/y/b/a/r0/b;->i0(Ln3/y/b/a/p0/b;)V

    throw v2

    :catchall_3
    move-exception v2

    .line 33
    iput-object v0, p0, Ln3/y/b/a/r0/b;->y:Landroid/media/MediaCrypto;

    .line 34
    iput-boolean v1, p0, Ln3/y/b/a/r0/b;->z:Z

    .line 35
    invoke-virtual {p0, v0}, Ln3/y/b/a/r0/b;->i0(Ln3/y/b/a/p0/b;)V

    throw v2
.end method

.method public f0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    return-void
.end method

.method public final g(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iput p1, p0, Ln3/y/b/a/r0/b;->B:F

    .line 2
    iget-object p1, p0, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    if-eqz p1, :cond_0

    iget p1, p0, Ln3/y/b/a/r0/b;->n0:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 3
    iget p1, p0, Ln3/y/b/a/b;->d:I

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->m0()V

    :cond_0
    return-void
.end method

.method public final g0()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Ln3/y/b/a/r0/b;->Z:I

    .line 2
    iget-object v0, p0, Ln3/y/b/a/r0/b;->o:Ln3/y/b/a/o0/c;

    const/4 v1, 0x0

    iput-object v1, v0, Ln3/y/b/a/o0/c;->c:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final h0()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Ln3/y/b/a/r0/b;->g0:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ln3/y/b/a/r0/b;->h0:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public i(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    iget-boolean v2, p0, Ln3/y/b/a/r0/b;->t0:Z

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->f0()V

    return-void

    .line 3
    :cond_0
    iget-object v2, p0, Ln3/y/b/a/r0/b;->u:Landroidx/media2/exoplayer/external/Format;

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Ln3/y/b/a/r0/b;->d0(Z)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->U()V

    .line 5
    iget-object v2, p0, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    if-eqz v2, :cond_6

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "drainAndFeed"

    .line 7
    invoke-static {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->h(Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ln3/y/b/a/r0/b;->L(JJ)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->M()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    iget-wide p1, p0, Ln3/y/b/a/r0/b;->A:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, p3

    if-eqz p1, :cond_4

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sub-long/2addr p1, v2

    iget-wide p3, p0, Ln3/y/b/a/r0/b;->A:J

    cmp-long p1, p1, p3

    if-gez p1, :cond_3

    goto :goto_2

    :cond_3
    move p1, v0

    goto :goto_3

    :cond_4
    :goto_2
    move p1, v1

    :goto_3
    if-eqz p1, :cond_5

    goto :goto_1

    .line 12
    :cond_5
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->X()V

    goto :goto_4

    .line 13
    :cond_6
    iget-object p3, p0, Ln3/y/b/a/r0/b;->x0:Ln3/y/b/a/o0/b;

    iget p4, p3, Ln3/y/b/a/o0/b;->d:I

    .line 14
    iget-object v2, p0, Ln3/y/b/a/b;->e:Ln3/y/b/a/t0/j0;

    iget-wide v3, p0, Ln3/y/b/a/b;->g:J

    sub-long/2addr p1, v3

    invoke-interface {v2, p1, p2}, Ln3/y/b/a/t0/j0;->c(J)I

    move-result p1

    add-int/2addr p4, p1

    .line 15
    iput p4, p3, Ln3/y/b/a/o0/b;->d:I

    .line 16
    invoke-virtual {p0, v0}, Ln3/y/b/a/r0/b;->d0(Z)Z

    .line 17
    :goto_4
    iget-object p1, p0, Ln3/y/b/a/r0/b;->x0:Ln3/y/b/a/o0/b;

    .line 18
    monitor-enter p1

    .line 19
    monitor-exit p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 20
    sget p2, Ln3/y/b/a/x0/x;->a:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_7

    .line 21
    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p2, :cond_7

    goto :goto_5

    .line 22
    :cond_7
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    .line 23
    array-length p3, p2

    if-lez p3, :cond_8

    aget-object p2, p2, v0

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.media.MediaCodec"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    move v0, v1

    :cond_8
    move v1, v0

    :goto_5
    if-eqz v1, :cond_9

    .line 24
    iget-object p2, p0, Ln3/y/b/a/r0/b;->L:Ln3/y/b/a/r0/a;

    .line 25
    invoke-virtual {p0, p1, p2}, Ln3/y/b/a/r0/b;->I(Ljava/lang/Throwable;Ln3/y/b/a/r0/a;)Ln3/y/b/a/r0/b$a;

    move-result-object p1

    .line 26
    iget p2, p0, Ln3/y/b/a/b;->c:I

    .line 27
    invoke-static {p1, p2}, Ln3/y/b/a/f;->a(Ljava/lang/Exception;I)Ln3/y/b/a/f;

    move-result-object p1

    throw p1

    .line 28
    :cond_9
    throw p1
.end method

.method public final i0(Ln3/y/b/a/p0/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/b/a/p0/b<",
            "Ln3/y/b/a/p0/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/r0/b;->w:Ln3/y/b/a/p0/b;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ln3/y/b/a/p0/b;->e()V

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Ln3/y/b/a/p0/b;->d()V

    .line 4
    :cond_2
    :goto_0
    iput-object p1, p0, Ln3/y/b/a/r0/b;->w:Ln3/y/b/a/p0/b;

    return-void
.end method

.method public final j0(Ln3/y/b/a/p0/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/b/a/p0/b<",
            "Ln3/y/b/a/p0/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/r0/b;->x:Ln3/y/b/a/p0/b;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ln3/y/b/a/p0/b;->e()V

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Ln3/y/b/a/p0/b;->d()V

    .line 4
    :cond_2
    :goto_0
    iput-object p1, p0, Ln3/y/b/a/r0/b;->x:Ln3/y/b/a/p0/b;

    return-void
.end method

.method public k0(Ln3/y/b/a/r0/a;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract l0(Ln3/y/b/a/r0/c;Ln3/y/b/a/p0/c;Landroidx/media2/exoplayer/external/Format;)I
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
.end method

.method public final m0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    sget v0, Ln3/y/b/a/x0/x;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Ln3/y/b/a/r0/b;->B:F

    iget-object v1, p0, Ln3/y/b/a/r0/b;->D:Landroidx/media2/exoplayer/external/Format;

    .line 3
    iget-object v2, p0, Ln3/y/b/a/b;->f:[Landroidx/media2/exoplayer/external/Format;

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Ln3/y/b/a/r0/b;->Q(FLandroidx/media2/exoplayer/external/Format;[Landroidx/media2/exoplayer/external/Format;)F

    move-result v0

    .line 5
    iget v1, p0, Ln3/y/b/a/r0/b;->E:F

    cmpl-float v2, v1, v0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v0, v2

    if-nez v3, :cond_2

    .line 6
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->J()V

    goto :goto_0

    :cond_2
    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    .line 7
    iget v1, p0, Ln3/y/b/a/r0/b;->n:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    .line 8
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    .line 9
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 10
    iget-object v2, p0, Ln3/y/b/a/r0/b;->C:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 11
    iput v0, p0, Ln3/y/b/a/r0/b;->E:F

    :cond_4
    :goto_0
    return-void
.end method

.method public final n0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/f;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/r0/b;->x:Ln3/y/b/a/p0/b;

    invoke-interface {v0}, Ln3/y/b/a/p0/b;->c()Ln3/y/b/a/p0/e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->e0()V

    .line 3
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->U()V

    return-void

    .line 4
    :cond_0
    sget-object v0, Ln3/y/b/a/c;->e:Ljava/util/UUID;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->e0()V

    .line 6
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->U()V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->N()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 8
    :cond_2
    :try_start_0
    iget-object v0, p0, Ln3/y/b/a/r0/b;->y:Landroid/media/MediaCrypto;

    invoke-virtual {v0, v1}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object v0, p0, Ln3/y/b/a/r0/b;->x:Ln3/y/b/a/p0/b;

    invoke-virtual {p0, v0}, Ln3/y/b/a/r0/b;->i0(Ln3/y/b/a/p0/b;)V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Ln3/y/b/a/r0/b;->m0:I

    .line 11
    iput v0, p0, Ln3/y/b/a/r0/b;->n0:I

    return-void

    :catch_0
    move-exception v0

    .line 12
    iget v1, p0, Ln3/y/b/a/b;->c:I

    .line 13
    invoke-static {v0, v1}, Ln3/y/b/a/f;->a(Ljava/lang/Exception;I)Ln3/y/b/a/f;

    move-result-object v0

    throw v0
.end method

.method public final o0(J)Landroidx/media2/exoplayer/external/Format;
    .locals 10

    .line 1
    iget-object v0, p0, Ln3/y/b/a/r0/b;->r:Ln3/y/b/a/x0/u;

    .line 2
    monitor-enter v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 3
    :goto_0
    :try_start_0
    iget v3, v0, Ln3/y/b/a/x0/u;->d:I

    if-lez v3, :cond_1

    .line 4
    iget-object v4, v0, Ln3/y/b/a/x0/u;->a:[J

    iget v5, v0, Ln3/y/b/a/x0/u;->c:I

    aget-wide v6, v4, v5

    sub-long v6, p1, v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gez v4, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v2, v0, Ln3/y/b/a/x0/u;->b:[Ljava/lang/Object;

    aget-object v4, v2, v5

    .line 6
    aput-object v1, v2, v5

    add-int/lit8 v5, v5, 0x1

    .line 7
    array-length v2, v2

    rem-int/2addr v5, v2

    iput v5, v0, Ln3/y/b/a/x0/u;->c:I

    add-int/lit8 v3, v3, -0x1

    .line 8
    iput v3, v0, Ln3/y/b/a/x0/u;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    monitor-exit v0

    .line 10
    check-cast v2, Landroidx/media2/exoplayer/external/Format;

    if-eqz v2, :cond_2

    .line 11
    iput-object v2, p0, Ln3/y/b/a/r0/b;->v:Landroidx/media2/exoplayer/external/Format;

    :cond_2
    return-object v2

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0

    throw p1
.end method

.method public v()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Ln3/y/b/a/r0/b;->u:Landroidx/media2/exoplayer/external/Format;

    .line 2
    iget-object v0, p0, Ln3/y/b/a/r0/b;->x:Ln3/y/b/a/p0/b;

    if-nez v0, :cond_1

    iget-object v0, p0, Ln3/y/b/a/r0/b;->w:Ln3/y/b/a/p0/b;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->O()Z

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ln3/y/b/a/r0/b;->y()V

    :goto_1
    return-void
.end method

.method public abstract y()V
.end method
