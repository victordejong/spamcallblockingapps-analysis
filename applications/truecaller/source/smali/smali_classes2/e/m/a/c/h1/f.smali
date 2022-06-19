.class public abstract Le/m/a/c/h1/f;
.super Le/m/a/c/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/h1/f$a;
    }
.end annotation


# static fields
.field public static final D0:[B


# instance fields
.field public A:Landroid/media/MediaCrypto;

.field public A0:Z

.field public B:Z

.field public B0:Z

.field public C:J

.field public C0:Le/m/a/c/e1/d;

.field public D:F

.field public E:Landroid/media/MediaCodec;

.field public J:Lcom/google/android/exoplayer2/Format;

.field public K:F

.field public L:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Le/m/a/c/h1/e;",
            ">;"
        }
    .end annotation
.end field

.field public M:Le/m/a/c/h1/f$a;

.field public N:Le/m/a/c/h1/e;

.field public O:I

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:Z

.field public Z:[Ljava/nio/ByteBuffer;

.field public g0:[Ljava/nio/ByteBuffer;

.field public h0:J

.field public i0:I

.field public j0:I

.field public k0:Ljava/nio/ByteBuffer;

.field public final l:Le/m/a/c/h1/g;

.field public l0:Z

.field public final m:Le/m/a/c/f1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/c/f1/e<",
            "Le/m/a/c/f1/h;",
            ">;"
        }
    .end annotation
.end field

.field public m0:Z

.field public final n:Z

.field public n0:Z

.field public final o:Z

.field public o0:I

.field public final p:F

.field public p0:I

.field public final q:Le/m/a/c/e1/e;

.field public q0:I

.field public final r:Le/m/a/c/e1/e;

.field public r0:Z

.field public final s:Le/m/a/c/q1/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/c/q1/b0<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field public s0:Z

.field public final t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public t0:Z

.field public final u:Landroid/media/MediaCodec$BufferInfo;

.field public u0:J

.field public v:Z

.field public v0:J

.field public w:Lcom/google/android/exoplayer2/Format;

.field public w0:Z

.field public x:Lcom/google/android/exoplayer2/Format;

.field public x0:Z

.field public y:Le/m/a/c/f1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/c/f1/c<",
            "Le/m/a/c/f1/h;",
            ">;"
        }
    .end annotation
.end field

.field public y0:Z

.field public z:Le/m/a/c/f1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/c/f1/c<",
            "Le/m/a/c/f1/h;",
            ">;"
        }
    .end annotation
.end field

.field public z0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Le/m/a/c/h1/f;->D0:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILe/m/a/c/h1/g;Le/m/a/c/f1/e;ZZF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le/m/a/c/h1/g;",
            "Le/m/a/c/f1/e<",
            "Le/m/a/c/f1/h;",
            ">;ZZF)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/m/a/c/u;-><init>(I)V

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Le/m/a/c/h1/f;->l:Le/m/a/c/h1/g;

    .line 4
    iput-object p3, p0, Le/m/a/c/h1/f;->m:Le/m/a/c/f1/e;

    .line 5
    iput-boolean p4, p0, Le/m/a/c/h1/f;->n:Z

    .line 6
    iput-boolean p5, p0, Le/m/a/c/h1/f;->o:Z

    .line 7
    iput p6, p0, Le/m/a/c/h1/f;->p:F

    .line 8
    new-instance p1, Le/m/a/c/e1/e;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Le/m/a/c/e1/e;-><init>(I)V

    iput-object p1, p0, Le/m/a/c/h1/f;->q:Le/m/a/c/e1/e;

    .line 9
    new-instance p1, Le/m/a/c/e1/e;

    invoke-direct {p1, p2}, Le/m/a/c/e1/e;-><init>(I)V

    .line 10
    iput-object p1, p0, Le/m/a/c/h1/f;->r:Le/m/a/c/e1/e;

    .line 11
    new-instance p1, Le/m/a/c/q1/b0;

    invoke-direct {p1}, Le/m/a/c/q1/b0;-><init>()V

    iput-object p1, p0, Le/m/a/c/h1/f;->s:Le/m/a/c/q1/b0;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/m/a/c/h1/f;->t:Ljava/util/ArrayList;

    .line 13
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Le/m/a/c/h1/f;->u:Landroid/media/MediaCodec$BufferInfo;

    .line 14
    iput p2, p0, Le/m/a/c/h1/f;->o0:I

    .line 15
    iput p2, p0, Le/m/a/c/h1/f;->p0:I

    .line 16
    iput p2, p0, Le/m/a/c/h1/f;->q0:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 17
    iput p1, p0, Le/m/a/c/h1/f;->K:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    iput p1, p0, Le/m/a/c/h1/f;->D:F

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    iput-wide p1, p0, Le/m/a/c/h1/f;->C:J

    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/m/a/c/h1/f;->g0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0, v0}, Le/m/a/c/h1/f;->l0(Le/m/a/c/f1/c;)V

    .line 3
    iget-object v0, p0, Le/m/a/c/h1/f;->m:Le/m/a/c/f1/e;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Le/m/a/c/h1/f;->v:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Le/m/a/c/h1/f;->v:Z

    .line 5
    invoke-interface {v0}, Le/m/a/c/f1/e;->release()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 6
    invoke-virtual {p0, v0}, Le/m/a/c/h1/f;->l0(Le/m/a/c/f1/c;)V

    .line 7
    throw v1
.end method

.method public final F(Lcom/google/android/exoplayer2/Format;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/m/a/c/h1/f;->l:Le/m/a/c/h1/g;

    iget-object v1, p0, Le/m/a/c/h1/f;->m:Le/m/a/c/f1/e;

    invoke-virtual {p0, v0, v1, p1}, Le/m/a/c/h1/f;->n0(Le/m/a/c/h1/g;Le/m/a/c/f1/e;Lcom/google/android/exoplayer2/Format;)I

    move-result p1
    :try_end_0
    .catch Le/m/a/c/h1/h$c; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {p0, v0, p1}, Le/m/a/c/u;->v(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Le/m/a/c/b0;

    move-result-object p1

    throw p1
.end method

.method public final H()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public abstract I(Landroid/media/MediaCodec;Le/m/a/c/h1/e;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)I
.end method

.method public abstract J(Le/m/a/c/h1/e;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;F)V
.end method

.method public final K()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/m/a/c/h1/f;->r0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Le/m/a/c/h1/f;->p0:I

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Le/m/a/c/h1/f;->q0:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/m/a/c/h1/f;->g0()V

    .line 5
    invoke-virtual {p0}, Le/m/a/c/h1/f;->W()V

    :goto_0
    return-void
.end method

.method public final L()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    sget v0, Le/m/a/c/q1/d0;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/m/a/c/h1/f;->K()V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Le/m/a/c/h1/f;->r0:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Le/m/a/c/h1/f;->p0:I

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Le/m/a/c/h1/f;->q0:I

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Le/m/a/c/h1/f;->p0()V

    :goto_0
    return-void
.end method

.method public final M(JJ)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    move-object/from16 v14, p0

    .line 1
    iget v0, v14, Le/m/a/c/h1/f;->j0:I

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
    iget-boolean v0, v14, Le/m/a/c/h1/f;->U:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, v14, Le/m/a/c/h1/f;->s0:Z

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    iget-object v0, v14, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    iget-object v3, v14, Le/m/a/c/h1/f;->u:Landroid/media/MediaCodec$BufferInfo;

    .line 4
    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5
    :catch_0
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/h1/f;->d0()V

    .line 6
    iget-boolean v0, v14, Le/m/a/c/h1/f;->x0:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/h1/f;->g0()V

    :cond_1
    return v13

    .line 8
    :cond_2
    iget-object v0, v14, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    iget-object v3, v14, Le/m/a/c/h1/f;->u:Landroid/media/MediaCodec$BufferInfo;

    .line 9
    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    :goto_1
    const/16 v1, 0x15

    if-gez v0, :cond_a

    const/4 v2, -0x2

    if-ne v0, v2, :cond_5

    .line 10
    iput-boolean v15, v14, Le/m/a/c/h1/f;->t0:Z

    .line 11
    iget-object v0, v14, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 12
    iget v1, v14, Le/m/a/c/h1/f;->O:I

    if-eqz v1, :cond_3

    const-string v1, "width"

    .line 13
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    const-string v1, "height"

    .line 14
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 15
    iput-boolean v15, v14, Le/m/a/c/h1/f;->X:Z

    goto :goto_2

    .line 16
    :cond_3
    iget-boolean v1, v14, Le/m/a/c/h1/f;->V:Z

    if-eqz v1, :cond_4

    const-string v1, "channel-count"

    .line 17
    invoke-virtual {v0, v1, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 18
    :cond_4
    iget-object v1, v14, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    invoke-virtual {v14, v1, v0}, Le/m/a/c/h1/f;->a0(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    :goto_2
    return v15

    :cond_5
    const/4 v2, -0x3

    if-ne v0, v2, :cond_7

    .line 19
    sget v0, Le/m/a/c/q1/d0;->a:I

    if-ge v0, v1, :cond_6

    .line 20
    iget-object v0, v14, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v14, Le/m/a/c/h1/f;->g0:[Ljava/nio/ByteBuffer;

    :cond_6
    return v15

    .line 21
    :cond_7
    iget-boolean v0, v14, Le/m/a/c/h1/f;->Y:Z

    if-eqz v0, :cond_9

    iget-boolean v0, v14, Le/m/a/c/h1/f;->w0:Z

    if-nez v0, :cond_8

    iget v0, v14, Le/m/a/c/h1/f;->p0:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 22
    :cond_8
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/h1/f;->d0()V

    :cond_9
    return v13

    .line 23
    :cond_a
    iget-boolean v2, v14, Le/m/a/c/h1/f;->X:Z

    if-eqz v2, :cond_b

    .line 24
    iput-boolean v13, v14, Le/m/a/c/h1/f;->X:Z

    .line 25
    iget-object v1, v14, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v13}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v15

    .line 26
    :cond_b
    iget-object v2, v14, Le/m/a/c/h1/f;->u:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v3, :cond_c

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_c

    .line 27
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/h1/f;->d0()V

    return v13

    .line 28
    :cond_c
    iput v0, v14, Le/m/a/c/h1/f;->j0:I

    .line 29
    sget v2, Le/m/a/c/q1/d0;->a:I

    if-lt v2, v1, :cond_d

    .line 30
    iget-object v1, v14, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_3

    .line 31
    :cond_d
    iget-object v1, v14, Le/m/a/c/h1/f;->g0:[Ljava/nio/ByteBuffer;

    aget-object v0, v1, v0

    .line 32
    :goto_3
    iput-object v0, v14, Le/m/a/c/h1/f;->k0:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_e

    .line 33
    iget-object v1, v14, Le/m/a/c/h1/f;->u:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 34
    iget-object v0, v14, Le/m/a/c/h1/f;->k0:Ljava/nio/ByteBuffer;

    iget-object v1, v14, Le/m/a/c/h1/f;->u:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 35
    :cond_e
    iget-object v0, v14, Le/m/a/c/h1/f;->u:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 36
    iget-object v2, v14, Le/m/a/c/h1/f;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v13

    :goto_4
    if-ge v3, v2, :cond_10

    .line 37
    iget-object v4, v14, Le/m/a/c/h1/f;->t:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_f

    .line 38
    iget-object v0, v14, Le/m/a/c/h1/f;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v15

    goto :goto_5

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_10
    move v0, v13

    .line 39
    :goto_5
    iput-boolean v0, v14, Le/m/a/c/h1/f;->l0:Z

    .line 40
    iget-wide v0, v14, Le/m/a/c/h1/f;->v0:J

    iget-object v2, v14, Le/m/a/c/h1/f;->u:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    move v0, v15

    goto :goto_6

    :cond_11
    move v0, v13

    :goto_6
    iput-boolean v0, v14, Le/m/a/c/h1/f;->m0:Z

    .line 41
    iget-object v0, v14, Le/m/a/c/h1/f;->s:Le/m/a/c/q1/b0;

    invoke-virtual {v0, v2, v3}, Le/m/a/c/q1/b0;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_12

    .line 42
    iput-object v0, v14, Le/m/a/c/h1/f;->x:Lcom/google/android/exoplayer2/Format;

    .line 43
    :cond_12
    iget-boolean v0, v14, Le/m/a/c/h1/f;->U:Z

    if-eqz v0, :cond_14

    iget-boolean v0, v14, Le/m/a/c/h1/f;->s0:Z

    if-eqz v0, :cond_14

    .line 44
    :try_start_1
    iget-object v5, v14, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    iget-object v6, v14, Le/m/a/c/h1/f;->k0:Ljava/nio/ByteBuffer;

    iget v7, v14, Le/m/a/c/h1/f;->j0:I

    iget-object v0, v14, Le/m/a/c/h1/f;->u:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v14, Le/m/a/c/h1/f;->l0:Z

    iget-boolean v12, v14, Le/m/a/c/h1/f;->m0:Z

    iget-object v3, v14, Le/m/a/c/h1/f;->x:Lcom/google/android/exoplayer2/Format;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v16, v3

    move-wide/from16 v3, p3

    move/from16 v17, v13

    move-object/from16 v13, v16

    .line 45
    :try_start_2
    invoke-virtual/range {v0 .. v13}, Le/m/a/c/h1/f;->e0(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZLcom/google/android/exoplayer2/Format;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_1
    move/from16 v17, v13

    .line 46
    :catch_2
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/h1/f;->d0()V

    .line 47
    iget-boolean v0, v14, Le/m/a/c/h1/f;->x0:Z

    if-eqz v0, :cond_13

    .line 48
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/h1/f;->g0()V

    :cond_13
    return v17

    :cond_14
    move/from16 v17, v13

    .line 49
    iget-object v5, v14, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    iget-object v6, v14, Le/m/a/c/h1/f;->k0:Ljava/nio/ByteBuffer;

    iget v7, v14, Le/m/a/c/h1/f;->j0:I

    iget-object v0, v14, Le/m/a/c/h1/f;->u:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v14, Le/m/a/c/h1/f;->l0:Z

    iget-boolean v12, v14, Le/m/a/c/h1/f;->m0:Z

    iget-object v13, v14, Le/m/a/c/h1/f;->x:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 50
    invoke-virtual/range {v0 .. v13}, Le/m/a/c/h1/f;->e0(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZLcom/google/android/exoplayer2/Format;)Z

    move-result v0

    :goto_7
    if-eqz v0, :cond_17

    .line 51
    iget-object v0, v14, Le/m/a/c/h1/f;->u:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v14, v0, v1}, Le/m/a/c/h1/f;->b0(J)V

    .line 52
    iget-object v0, v14, Le/m/a/c/h1/f;->u:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_15

    move v13, v15

    goto :goto_8

    :cond_15
    move/from16 v13, v17

    .line 53
    :goto_8
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/h1/f;->j0()V

    if-nez v13, :cond_16

    return v15

    .line 54
    :cond_16
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/h1/f;->d0()V

    :cond_17
    return v17
.end method

.method public final N()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget v2, p0, Le/m/a/c/h1/f;->p0:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_24

    iget-boolean v2, p0, Le/m/a/c/h1/f;->w0:Z

    if-eqz v2, :cond_0

    goto/16 :goto_b

    .line 2
    :cond_0
    iget v2, p0, Le/m/a/c/h1/f;->i0:I

    if-gez v2, :cond_3

    const-wide/16 v4, 0x0

    .line 3
    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Le/m/a/c/h1/f;->i0:I

    if-gez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v2, p0, Le/m/a/c/h1/f;->q:Le/m/a/c/e1/e;

    .line 5
    sget v4, Le/m/a/c/q1/d0;->a:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    .line 6
    iget-object v4, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    invoke-virtual {v4, v0}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_2
    iget-object v4, p0, Le/m/a/c/h1/f;->Z:[Ljava/nio/ByteBuffer;

    aget-object v0, v4, v0

    .line 8
    :goto_0
    iput-object v0, v2, Le/m/a/c/e1/e;->b:Ljava/nio/ByteBuffer;

    .line 9
    iget-object v0, p0, Le/m/a/c/h1/f;->q:Le/m/a/c/e1/e;

    invoke-virtual {v0}, Le/m/a/c/e1/e;->clear()V

    .line 10
    :cond_3
    iget v0, p0, Le/m/a/c/h1/f;->p0:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 11
    iget-boolean v0, p0, Le/m/a/c/h1/f;->Y:Z

    if-eqz v0, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    iput-boolean v2, p0, Le/m/a/c/h1/f;->s0:Z

    .line 13
    iget-object v4, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    iget v5, p0, Le/m/a/c/h1/f;->i0:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 14
    invoke-virtual {p0}, Le/m/a/c/h1/f;->i0()V

    .line 15
    :goto_1
    iput v3, p0, Le/m/a/c/h1/f;->p0:I

    return v1

    .line 16
    :cond_5
    iget-boolean v0, p0, Le/m/a/c/h1/f;->W:Z

    if-eqz v0, :cond_6

    .line 17
    iput-boolean v1, p0, Le/m/a/c/h1/f;->W:Z

    .line 18
    iget-object v0, p0, Le/m/a/c/h1/f;->q:Le/m/a/c/e1/e;

    iget-object v0, v0, Le/m/a/c/e1/e;->b:Ljava/nio/ByteBuffer;

    sget-object v1, Le/m/a/c/h1/f;->D0:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 19
    iget-object v3, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    iget v4, p0, Le/m/a/c/h1/f;->i0:I

    const/4 v5, 0x0

    array-length v6, v1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 20
    invoke-virtual {p0}, Le/m/a/c/h1/f;->i0()V

    .line 21
    iput-boolean v2, p0, Le/m/a/c/h1/f;->r0:Z

    return v2

    .line 22
    :cond_6
    invoke-virtual {p0}, Le/m/a/c/u;->w()Le/m/a/c/g0;

    move-result-object v0

    .line 23
    iget-boolean v4, p0, Le/m/a/c/h1/f;->y0:Z

    if-eqz v4, :cond_7

    const/4 v4, -0x4

    move v5, v1

    goto :goto_3

    .line 24
    :cond_7
    iget v4, p0, Le/m/a/c/h1/f;->o0:I

    if-ne v4, v2, :cond_9

    move v4, v1

    .line 25
    :goto_2
    iget-object v5, p0, Le/m/a/c/h1/f;->J:Lcom/google/android/exoplayer2/Format;

    iget-object v5, v5, Lcom/google/android/exoplayer2/Format;->k:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 26
    iget-object v5, p0, Le/m/a/c/h1/f;->J:Lcom/google/android/exoplayer2/Format;

    iget-object v5, v5, Lcom/google/android/exoplayer2/Format;->k:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 27
    iget-object v6, p0, Le/m/a/c/h1/f;->q:Le/m/a/c/e1/e;

    iget-object v6, v6, Le/m/a/c/e1/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 28
    :cond_8
    iput v3, p0, Le/m/a/c/h1/f;->o0:I

    .line 29
    :cond_9
    iget-object v4, p0, Le/m/a/c/h1/f;->q:Le/m/a/c/e1/e;

    iget-object v4, v4, Le/m/a/c/e1/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 30
    iget-object v5, p0, Le/m/a/c/h1/f;->q:Le/m/a/c/e1/e;

    invoke-virtual {p0, v0, v5, v1}, Le/m/a/c/u;->E(Le/m/a/c/g0;Le/m/a/c/e1/e;Z)I

    move-result v5

    move v13, v5

    move v5, v4

    move v4, v13

    .line 31
    :goto_3
    invoke-virtual {p0}, Le/m/a/c/u;->e()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 32
    iget-wide v6, p0, Le/m/a/c/h1/f;->u0:J

    iput-wide v6, p0, Le/m/a/c/h1/f;->v0:J

    :cond_a
    const/4 v6, -0x3

    if-ne v4, v6, :cond_b

    return v1

    :cond_b
    const/4 v6, -0x5

    if-ne v4, v6, :cond_d

    .line 33
    iget v1, p0, Le/m/a/c/h1/f;->o0:I

    if-ne v1, v3, :cond_c

    .line 34
    iget-object v1, p0, Le/m/a/c/h1/f;->q:Le/m/a/c/e1/e;

    invoke-virtual {v1}, Le/m/a/c/e1/e;->clear()V

    .line 35
    iput v2, p0, Le/m/a/c/h1/f;->o0:I

    .line 36
    :cond_c
    invoke-virtual {p0, v0}, Le/m/a/c/h1/f;->Z(Le/m/a/c/g0;)V

    return v2

    .line 37
    :cond_d
    iget-object v0, p0, Le/m/a/c/h1/f;->q:Le/m/a/c/e1/e;

    invoke-virtual {v0}, Le/m/a/c/e1/a;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 38
    iget v0, p0, Le/m/a/c/h1/f;->o0:I

    if-ne v0, v3, :cond_e

    .line 39
    iget-object v0, p0, Le/m/a/c/h1/f;->q:Le/m/a/c/e1/e;

    invoke-virtual {v0}, Le/m/a/c/e1/e;->clear()V

    .line 40
    iput v2, p0, Le/m/a/c/h1/f;->o0:I

    .line 41
    :cond_e
    iput-boolean v2, p0, Le/m/a/c/h1/f;->w0:Z

    .line 42
    iget-boolean v0, p0, Le/m/a/c/h1/f;->r0:Z

    if-nez v0, :cond_f

    .line 43
    invoke-virtual {p0}, Le/m/a/c/h1/f;->d0()V

    return v1

    .line 44
    :cond_f
    :try_start_0
    iget-boolean v0, p0, Le/m/a/c/h1/f;->Y:Z

    if-eqz v0, :cond_10

    goto :goto_4

    .line 45
    :cond_10
    iput-boolean v2, p0, Le/m/a/c/h1/f;->s0:Z

    .line 46
    iget-object v3, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    iget v4, p0, Le/m/a/c/h1/f;->i0:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 47
    invoke-virtual {p0}, Le/m/a/c/h1/f;->i0()V
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return v1

    :catch_0
    move-exception v0

    .line 48
    iget-object v1, p0, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Le/m/a/c/u;->v(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Le/m/a/c/b0;

    move-result-object v0

    throw v0

    .line 49
    :cond_11
    iget-boolean v0, p0, Le/m/a/c/h1/f;->z0:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Le/m/a/c/h1/f;->q:Le/m/a/c/e1/e;

    invoke-virtual {v0}, Le/m/a/c/e1/a;->isKeyFrame()Z

    move-result v0

    if-nez v0, :cond_13

    .line 50
    iget-object v0, p0, Le/m/a/c/h1/f;->q:Le/m/a/c/e1/e;

    invoke-virtual {v0}, Le/m/a/c/e1/e;->clear()V

    .line 51
    iget v0, p0, Le/m/a/c/h1/f;->o0:I

    if-ne v0, v3, :cond_12

    .line 52
    iput v2, p0, Le/m/a/c/h1/f;->o0:I

    :cond_12
    return v2

    .line 53
    :cond_13
    iput-boolean v1, p0, Le/m/a/c/h1/f;->z0:Z

    .line 54
    iget-object v0, p0, Le/m/a/c/h1/f;->q:Le/m/a/c/e1/e;

    const/high16 v3, 0x40000000    # 2.0f

    .line 55
    invoke-virtual {v0, v3}, Le/m/a/c/e1/a;->getFlag(I)Z

    move-result v0

    .line 56
    iget-object v3, p0, Le/m/a/c/h1/f;->y:Le/m/a/c/f1/c;

    if-eqz v3, :cond_16

    if-nez v0, :cond_14

    iget-boolean v4, p0, Le/m/a/c/h1/f;->n:Z

    if-nez v4, :cond_16

    .line 57
    invoke-interface {v3}, Le/m/a/c/f1/c;->d()Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_5

    .line 58
    :cond_14
    iget-object v3, p0, Le/m/a/c/h1/f;->y:Le/m/a/c/f1/c;

    invoke-interface {v3}, Le/m/a/c/f1/c;->getState()I

    move-result v3

    if-eq v3, v2, :cond_15

    const/4 v4, 0x4

    if-eq v3, v4, :cond_16

    move v3, v2

    goto :goto_6

    .line 59
    :cond_15
    iget-object v0, p0, Le/m/a/c/h1/f;->y:Le/m/a/c/f1/c;

    invoke-interface {v0}, Le/m/a/c/f1/c;->b()Le/m/a/c/f1/c$a;

    move-result-object v0

    iget-object v1, p0, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Le/m/a/c/u;->v(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Le/m/a/c/b0;

    move-result-object v0

    throw v0

    :cond_16
    :goto_5
    move v3, v1

    .line 60
    :goto_6
    iput-boolean v3, p0, Le/m/a/c/h1/f;->y0:Z

    if-eqz v3, :cond_17

    return v1

    .line 61
    :cond_17
    iget-boolean v3, p0, Le/m/a/c/h1/f;->Q:Z

    if-eqz v3, :cond_1d

    if-nez v0, :cond_1d

    .line 62
    iget-object v3, p0, Le/m/a/c/h1/f;->q:Le/m/a/c/e1/e;

    iget-object v3, v3, Le/m/a/c/e1/e;->b:Ljava/nio/ByteBuffer;

    .line 63
    sget-object v4, Le/m/a/c/q1/r;->a:[B

    .line 64
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    move v6, v1

    move v7, v6

    :goto_7
    add-int/lit8 v8, v6, 0x1

    if-ge v8, v4, :cond_1b

    .line 65
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x3

    if-ne v7, v10, :cond_18

    if-ne v9, v2, :cond_19

    .line 66
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    and-int/lit8 v11, v11, 0x1f

    const/4 v12, 0x7

    if-ne v11, v12, :cond_19

    .line 67
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    sub-int/2addr v6, v10

    .line 68
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 69
    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 70
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 71
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

    .line 72
    :cond_1b
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 73
    :goto_8
    iget-object v3, p0, Le/m/a/c/h1/f;->q:Le/m/a/c/e1/e;

    iget-object v3, v3, Le/m/a/c/e1/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-nez v3, :cond_1c

    return v2

    .line 74
    :cond_1c
    iput-boolean v1, p0, Le/m/a/c/h1/f;->Q:Z

    .line 75
    :cond_1d
    :try_start_1
    iget-object v3, p0, Le/m/a/c/h1/f;->q:Le/m/a/c/e1/e;

    iget-wide v10, v3, Le/m/a/c/e1/e;->d:J

    .line 76
    invoke-virtual {v3}, Le/m/a/c/e1/a;->isDecodeOnly()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 77
    iget-object v3, p0, Le/m/a/c/h1/f;->t:Ljava/util/ArrayList;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_1e
    iget-boolean v3, p0, Le/m/a/c/h1/f;->A0:Z

    if-eqz v3, :cond_1f

    .line 79
    iget-object v3, p0, Le/m/a/c/h1/f;->s:Le/m/a/c/q1/b0;

    iget-object v4, p0, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v3, v10, v11, v4}, Le/m/a/c/q1/b0;->a(JLjava/lang/Object;)V

    .line 80
    iput-boolean v1, p0, Le/m/a/c/h1/f;->A0:Z

    .line 81
    :cond_1f
    iget-wide v3, p0, Le/m/a/c/h1/f;->u0:J

    .line 82
    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Le/m/a/c/h1/f;->u0:J

    .line 83
    iget-object v3, p0, Le/m/a/c/h1/f;->q:Le/m/a/c/e1/e;

    invoke-virtual {v3}, Le/m/a/c/e1/e;->h()V

    .line 84
    iget-object v3, p0, Le/m/a/c/h1/f;->q:Le/m/a/c/e1/e;

    invoke-virtual {v3}, Le/m/a/c/e1/a;->hasSupplementalData()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 85
    iget-object v3, p0, Le/m/a/c/h1/f;->q:Le/m/a/c/e1/e;

    invoke-virtual {p0, v3}, Le/m/a/c/h1/f;->U(Le/m/a/c/e1/e;)V

    .line 86
    :cond_20
    iget-object v3, p0, Le/m/a/c/h1/f;->q:Le/m/a/c/e1/e;

    invoke-virtual {p0, v3}, Le/m/a/c/h1/f;->c0(Le/m/a/c/e1/e;)V

    if-eqz v0, :cond_23

    .line 87
    iget-object v0, p0, Le/m/a/c/h1/f;->q:Le/m/a/c/e1/e;

    .line 88
    iget-object v0, v0, Le/m/a/c/e1/e;->a:Le/m/a/c/e1/b;

    .line 89
    iget-object v9, v0, Le/m/a/c/e1/b;->d:Landroid/media/MediaCodec$CryptoInfo;

    if-nez v5, :cond_21

    goto :goto_9

    .line 90
    :cond_21
    iget-object v0, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_22

    new-array v0, v2, [I

    .line 91
    iput-object v0, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 92
    :cond_22
    iget-object v0, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    aget v3, v0, v1

    add-int/2addr v3, v5

    aput v3, v0, v1

    .line 93
    :goto_9
    iget-object v6, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    iget v7, p0, Le/m/a/c/h1/f;->i0:I

    const/4 v8, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_a

    .line 94
    :cond_23
    iget-object v6, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    iget v7, p0, Le/m/a/c/h1/f;->i0:I

    const/4 v8, 0x0

    iget-object v0, p0, Le/m/a/c/h1/f;->q:Le/m/a/c/e1/e;

    iget-object v0, v0, Le/m/a/c/e1/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 95
    :goto_a
    invoke-virtual {p0}, Le/m/a/c/h1/f;->i0()V

    .line 96
    iput-boolean v2, p0, Le/m/a/c/h1/f;->r0:Z

    .line 97
    iput v1, p0, Le/m/a/c/h1/f;->o0:I

    .line 98
    iget-object v0, p0, Le/m/a/c/h1/f;->C0:Le/m/a/c/e1/d;

    iget v1, v0, Le/m/a/c/e1/d;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Le/m/a/c/e1/d;->c:I
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_1
    move-exception v0

    .line 99
    iget-object v1, p0, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Le/m/a/c/u;->v(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Le/m/a/c/b0;

    move-result-object v0

    throw v0

    :cond_24
    :goto_b
    return v1
.end method

.method public final O()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/a/c/h1/f;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/m/a/c/h1/f;->W()V

    :cond_0
    return v0
.end method

.method public P()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v2, p0, Le/m/a/c/h1/f;->q0:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    iget-boolean v2, p0, Le/m/a/c/h1/f;->R:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Le/m/a/c/h1/f;->S:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Le/m/a/c/h1/f;->t0:Z

    if-eqz v2, :cond_3

    :cond_1
    iget-boolean v2, p0, Le/m/a/c/h1/f;->T:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Le/m/a/c/h1/f;->s0:Z

    if-eqz v2, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 4
    invoke-virtual {p0}, Le/m/a/c/h1/f;->i0()V

    .line 5
    invoke-virtual {p0}, Le/m/a/c/h1/f;->j0()V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide v2, p0, Le/m/a/c/h1/f;->h0:J

    .line 7
    iput-boolean v1, p0, Le/m/a/c/h1/f;->s0:Z

    .line 8
    iput-boolean v1, p0, Le/m/a/c/h1/f;->r0:Z

    .line 9
    iput-boolean v4, p0, Le/m/a/c/h1/f;->z0:Z

    .line 10
    iput-boolean v1, p0, Le/m/a/c/h1/f;->W:Z

    .line 11
    iput-boolean v1, p0, Le/m/a/c/h1/f;->X:Z

    .line 12
    iput-boolean v1, p0, Le/m/a/c/h1/f;->l0:Z

    .line 13
    iput-boolean v1, p0, Le/m/a/c/h1/f;->m0:Z

    .line 14
    iput-boolean v1, p0, Le/m/a/c/h1/f;->y0:Z

    .line 15
    iget-object v0, p0, Le/m/a/c/h1/f;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    iput-wide v2, p0, Le/m/a/c/h1/f;->u0:J

    .line 17
    iput-wide v2, p0, Le/m/a/c/h1/f;->v0:J

    .line 18
    iput v1, p0, Le/m/a/c/h1/f;->p0:I

    .line 19
    iput v1, p0, Le/m/a/c/h1/f;->q0:I

    .line 20
    iget-boolean v0, p0, Le/m/a/c/h1/f;->n0:Z

    iput v0, p0, Le/m/a/c/h1/f;->o0:I

    return v1

    .line 21
    :cond_3
    :goto_0
    invoke-virtual {p0}, Le/m/a/c/h1/f;->g0()V

    return v4
.end method

.method public final Q(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
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
    iget-object v0, p0, Le/m/a/c/h1/f;->l:Le/m/a/c/h1/g;

    iget-object v1, p0, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Le/m/a/c/h1/f;->T(Le/m/a/c/h1/g;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Le/m/a/c/h1/f;->l:Le/m/a/c/h1/g;

    iget-object v0, p0, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Le/m/a/c/h1/f;->T(Le/m/a/c/h1/g;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Drm session requires secure decoder for "

    .line 7
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public R()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract S(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F
.end method

.method public abstract T(Le/m/a/c/h1/g;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;
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
.end method

.method public U(Le/m/a/c/e1/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    return-void
.end method

.method public final V(Le/m/a/c/h1/e;Landroid/media/MediaCrypto;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v8, v0, Le/m/a/c/h1/e;->a:Ljava/lang/String;

    .line 2
    sget v9, Le/m/a/c/q1/d0;->a:I

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v10, 0x17

    if-ge v9, v10, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    iget v2, v7, Le/m/a/c/h1/f;->D:F

    iget-object v3, v7, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    .line 3
    iget-object v4, v7, Le/m/a/c/u;->g:[Lcom/google/android/exoplayer2/Format;

    .line 4
    invoke-virtual {v7, v2, v3, v4}, Le/m/a/c/h1/f;->S(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F

    move-result v2

    .line 5
    :goto_0
    iget v3, v7, Le/m/a/c/h1/f;->p:F

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    move v11, v1

    goto :goto_1

    :cond_1
    move v11, v2

    :goto_1
    const/4 v12, 0x0

    const/16 v13, 0x15

    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCodec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ln3/g0/y;->n(Ljava/lang/String;)V

    .line 8
    invoke-static {v8}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 9
    :try_start_1
    invoke-static {}, Ln3/g0/y;->Q()V

    const-string v1, "configureCodec"

    .line 10
    invoke-static {v1}, Ln3/g0/y;->n(Ljava/lang/String;)V

    .line 11
    iget-object v4, v7, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v6

    move-object/from16 v5, p2

    move-object/from16 p2, v6

    move v6, v11

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Le/m/a/c/h1/f;->J(Le/m/a/c/h1/e;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;F)V

    .line 12
    invoke-static {}, Ln3/g0/y;->Q()V

    const-string v1, "startCodec"

    .line 13
    invoke-static {v1}, Ln3/g0/y;->n(Ljava/lang/String;)V

    .line 14
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaCodec;->start()V

    .line 15
    invoke-static {}, Ln3/g0/y;->Q()V

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-ge v9, v13, :cond_2

    .line 17
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v7, Le/m/a/c/h1/f;->Z:[Ljava/nio/ByteBuffer;

    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v7, Le/m/a/c/h1/f;->g0:[Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v6, p2

    goto/16 :goto_11

    :cond_2
    :goto_2
    move-object/from16 v1, p2

    .line 19
    iput-object v1, v7, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    .line 20
    iput-object v0, v7, Le/m/a/c/h1/f;->N:Le/m/a/c/h1/e;

    .line 21
    iput v11, v7, Le/m/a/c/h1/f;->K:F

    .line 22
    iget-object v1, v7, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    iput-object v1, v7, Le/m/a/c/h1/f;->J:Lcom/google/android/exoplayer2/Format;

    const-string v1, "OMX.Exynos.avc.dec.secure"

    const/4 v2, 0x1

    const/16 v6, 0x19

    if-gt v9, v6, :cond_4

    .line 23
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    sget-object v12, Le/m/a/c/q1/d0;->d:Ljava/lang/String;

    const-string v11, "SM-T585"

    .line 24
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "SM-A510"

    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "SM-A520"

    .line 25
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "SM-J700"

    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_3
    const/4 v11, 0x2

    goto :goto_3

    :cond_4
    const/16 v11, 0x18

    if-ge v9, v11, :cond_7

    const-string v11, "OMX.Nvidia.h264.decode"

    .line 26
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_5
    sget-object v11, Le/m/a/c/q1/d0;->b:Ljava/lang/String;

    const-string v12, "flounder"

    .line 27
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "flounder_lte"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "grouper"

    .line 28
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "tilapia"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    move v11, v2

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    .line 29
    :goto_3
    iput v11, v7, Le/m/a/c/h1/f;->O:I

    .line 30
    sget-object v11, Le/m/a/c/q1/d0;->d:Ljava/lang/String;

    const-string v12, "SM-T230"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v12, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    move v12, v2

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    .line 31
    :goto_4
    iput-boolean v12, v7, Le/m/a/c/h1/f;->P:Z

    .line 32
    iget-object v12, v7, Le/m/a/c/h1/f;->J:Lcom/google/android/exoplayer2/Format;

    if-ge v9, v13, :cond_9

    .line 33
    iget-object v12, v12, Lcom/google/android/exoplayer2/Format;->k:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_9

    const-string v12, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 34
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    move v12, v2

    goto :goto_5

    :cond_9
    const/4 v12, 0x0

    .line 35
    :goto_5
    iput-boolean v12, v7, Le/m/a/c/h1/f;->Q:Z

    const/16 v12, 0x13

    const/16 v5, 0x12

    if-lt v9, v5, :cond_c

    if-ne v9, v5, :cond_a

    const-string v6, "OMX.SEC.avc.dec"

    .line 36
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    :cond_a
    if-ne v9, v12, :cond_b

    const-string v6, "SM-G800"

    .line 37
    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "OMX.Exynos.avc.dec"

    .line 38
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    goto :goto_7

    :cond_c
    :goto_6
    move v1, v2

    .line 39
    :goto_7
    iput-boolean v1, v7, Le/m/a/c/h1/f;->R:Z

    const/16 v1, 0x1d

    if-ne v9, v1, :cond_d

    const-string v1, "c2.android.aac.decoder"

    .line 40
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v2

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    .line 41
    :goto_8
    iput-boolean v1, v7, Le/m/a/c/h1/f;->S:Z

    if-gt v9, v10, :cond_e

    const-string v1, "OMX.google.vorbis.decoder"

    .line 42
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :cond_e
    if-gt v9, v12, :cond_11

    sget-object v1, Le/m/a/c/q1/d0;->b:Ljava/lang/String;

    const-string v6, "hb2000"

    .line 43
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "stvm8"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_f
    const-string v1, "OMX.amlogic.avc.decoder.awesome"

    .line 44
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 45
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    move v1, v2

    goto :goto_9

    :cond_11
    const/4 v1, 0x0

    .line 46
    :goto_9
    iput-boolean v1, v7, Le/m/a/c/h1/f;->T:Z

    if-ne v9, v13, :cond_12

    const-string v1, "OMX.google.aac.decoder"

    .line 47
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v2

    goto :goto_a

    :cond_12
    const/4 v1, 0x0

    .line 48
    :goto_a
    iput-boolean v1, v7, Le/m/a/c/h1/f;->U:Z

    .line 49
    iget-object v1, v7, Le/m/a/c/h1/f;->J:Lcom/google/android/exoplayer2/Format;

    if-gt v9, v5, :cond_13

    .line 50
    iget v1, v1, Lcom/google/android/exoplayer2/Format;->v:I

    if-ne v1, v2, :cond_13

    const-string v1, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 51
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v2

    goto :goto_b

    :cond_13
    const/4 v1, 0x0

    .line 52
    :goto_b
    iput-boolean v1, v7, Le/m/a/c/h1/f;->V:Z

    .line 53
    iget-object v1, v0, Le/m/a/c/h1/e;->a:Ljava/lang/String;

    const/16 v5, 0x19

    if-gt v9, v5, :cond_14

    const-string v5, "OMX.rk.video_decoder.avc"

    .line 54
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    :cond_14
    const/16 v5, 0x11

    if-gt v9, v5, :cond_15

    const-string v5, "OMX.allwinner.video.decoder.avc"

    .line 55
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    :cond_15
    sget-object v1, Le/m/a/c/q1/d0;->c:Ljava/lang/String;

    const-string v5, "Amazon"

    .line 56
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "AFTS"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-boolean v0, v0, Le/m/a/c/h1/e;->f:Z

    if-eqz v0, :cond_17

    :cond_16
    move v0, v2

    goto :goto_c

    :cond_17
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_19

    .line 57
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/h1/f;->R()Z

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
    iput-boolean v0, v7, Le/m/a/c/h1/f;->Y:Z

    .line 58
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/h1/f;->i0()V

    .line 59
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/h1/f;->j0()V

    .line 60
    iget v0, v7, Le/m/a/c/u;->e:I

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v9, 0x3e8

    add-long/2addr v0, v9

    goto :goto_f

    :cond_1a
    move-wide v0, v5

    :goto_f
    iput-wide v0, v7, Le/m/a/c/h1/f;->h0:J

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, v7, Le/m/a/c/h1/f;->n0:Z

    .line 63
    iput v0, v7, Le/m/a/c/h1/f;->o0:I

    .line 64
    iput-boolean v0, v7, Le/m/a/c/h1/f;->s0:Z

    .line 65
    iput-boolean v0, v7, Le/m/a/c/h1/f;->r0:Z

    .line 66
    iput-wide v5, v7, Le/m/a/c/h1/f;->u0:J

    .line 67
    iput-wide v5, v7, Le/m/a/c/h1/f;->v0:J

    .line 68
    iput v0, v7, Le/m/a/c/h1/f;->p0:I

    .line 69
    iput v0, v7, Le/m/a/c/h1/f;->q0:I

    .line 70
    iput-boolean v0, v7, Le/m/a/c/h1/f;->W:Z

    .line 71
    iput-boolean v0, v7, Le/m/a/c/h1/f;->X:Z

    .line 72
    iput-boolean v0, v7, Le/m/a/c/h1/f;->l0:Z

    .line 73
    iput-boolean v0, v7, Le/m/a/c/h1/f;->m0:Z

    .line 74
    iput-boolean v2, v7, Le/m/a/c/h1/f;->z0:Z

    .line 75
    iget-object v0, v7, Le/m/a/c/h1/f;->C0:Le/m/a/c/e1/d;

    iget v1, v0, Le/m/a/c/e1/d;->a:I

    add-int/2addr v1, v2

    iput v1, v0, Le/m/a/c/e1/d;->a:I

    sub-long v5, v3, v14

    move-object/from16 v1, p0

    move-object v2, v8

    .line 76
    invoke-virtual/range {v1 .. v6}, Le/m/a/c/h1/f;->Y(Ljava/lang/String;JJ)V

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

    .line 77
    sget v1, Le/m/a/c/q1/d0;->a:I

    if-ge v1, v13, :cond_1b

    .line 78
    iput-object v12, v7, Le/m/a/c/h1/f;->Z:[Ljava/nio/ByteBuffer;

    .line 79
    iput-object v12, v7, Le/m/a/c/h1/f;->g0:[Ljava/nio/ByteBuffer;

    .line 80
    :cond_1b
    invoke-virtual {v6}, Landroid/media/MediaCodec;->release()V

    .line 81
    :cond_1c
    throw v0
.end method

.method public final W()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    if-nez v0, :cond_7

    iget-object v0, p0, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Le/m/a/c/h1/f;->z:Le/m/a/c/f1/c;

    invoke-virtual {p0, v0}, Le/m/a/c/h1/f;->k0(Le/m/a/c/f1/c;)V

    .line 3
    iget-object v0, p0, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Le/m/a/c/h1/f;->y:Le/m/a/c/f1/c;

    if-eqz v1, :cond_6

    .line 5
    iget-object v2, p0, Le/m/a/c/h1/f;->A:Landroid/media/MediaCrypto;

    const/4 v3, 0x1

    if-nez v2, :cond_4

    .line 6
    invoke-interface {v1}, Le/m/a/c/f1/c;->c()Le/m/a/c/f1/g;

    move-result-object v1

    check-cast v1, Le/m/a/c/f1/h;

    if-nez v1, :cond_2

    .line 7
    iget-object v0, p0, Le/m/a/c/h1/f;->y:Le/m/a/c/f1/c;

    invoke-interface {v0}, Le/m/a/c/f1/c;->b()Le/m/a/c/f1/c$a;

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

    iput-object v1, p0, Le/m/a/c/h1/f;->A:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    invoke-virtual {v1, v0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Le/m/a/c/h1/f;->B:Z

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    iget-object v1, p0, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Le/m/a/c/u;->v(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Le/m/a/c/b0;

    move-result-object v0

    throw v0

    .line 11
    :cond_4
    :goto_1
    sget-boolean v0, Le/m/a/c/f1/h;->a:Z

    if-eqz v0, :cond_6

    .line 12
    iget-object v0, p0, Le/m/a/c/h1/f;->y:Le/m/a/c/f1/c;

    invoke-interface {v0}, Le/m/a/c/f1/c;->getState()I

    move-result v0

    if-eq v0, v3, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    return-void

    .line 13
    :cond_5
    iget-object v0, p0, Le/m/a/c/h1/f;->y:Le/m/a/c/f1/c;

    invoke-interface {v0}, Le/m/a/c/f1/c;->b()Le/m/a/c/f1/c$a;

    move-result-object v0

    iget-object v1, p0, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Le/m/a/c/u;->v(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Le/m/a/c/b0;

    move-result-object v0

    throw v0

    .line 14
    :cond_6
    :try_start_1
    iget-object v0, p0, Le/m/a/c/h1/f;->A:Landroid/media/MediaCrypto;

    iget-boolean v1, p0, Le/m/a/c/h1/f;->B:Z

    invoke-virtual {p0, v0, v1}, Le/m/a/c/h1/f;->X(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch Le/m/a/c/h1/f$a; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 15
    iget-object v1, p0, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Le/m/a/c/u;->v(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Le/m/a/c/b0;

    move-result-object v0

    throw v0

    :cond_7
    :goto_2
    return-void
.end method

.method public final X(Landroid/media/MediaCrypto;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/h1/f$a;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v10, p2

    .line 1
    iget-object v0, v1, Le/m/a/c/h1/f;->L:Ljava/util/ArrayDeque;

    const/4 v11, 0x0

    if-nez v0, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {v1, v10}, Le/m/a/c/h1/f;->Q(Z)Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, v1, Le/m/a/c/h1/f;->L:Ljava/util/ArrayDeque;

    .line 4
    iget-boolean v3, v1, Le/m/a/c/h1/f;->o:Z

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    iget-object v2, v1, Le/m/a/c/h1/f;->L:Ljava/util/ArrayDeque;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    :goto_0
    iput-object v11, v1, Le/m/a/c/h1/f;->M:Le/m/a/c/h1/f$a;
    :try_end_0
    .catch Le/m/a/c/h1/h$c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    new-instance v2, Le/m/a/c/h1/f$a;

    iget-object v3, v1, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    const v4, -0xc34e

    invoke-direct {v2, v3, v0, v10, v4}, Le/m/a/c/h1/f$a;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    throw v2

    .line 10
    :cond_2
    :goto_1
    iget-object v0, v1, Le/m/a/c/h1/f;->L:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 11
    :goto_2
    iget-object v0, v1, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    if-nez v0, :cond_7

    .line 12
    iget-object v0, v1, Le/m/a/c/h1/f;->L:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Le/m/a/c/h1/e;

    .line 13
    invoke-virtual {v1, v7}, Le/m/a/c/h1/f;->m0(Le/m/a/c/h1/e;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    move-object/from16 v12, p1

    .line 14
    :try_start_1
    invoke-virtual {v1, v7, v12}, Le/m/a/c/h1/f;->V(Le/m/a/c/h1/e;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to initialize decoder: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0, v4}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 17
    iget-object v0, v1, Le/m/a/c/h1/f;->L:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 18
    new-instance v0, Le/m/a/c/h1/f$a;

    iget-object v2, v1, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    const-string v3, "Decoder init failed: "

    .line 19
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v7, Le/m/a/c/h1/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v2, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    sget v2, Le/m/a/c/q1/d0;->a:I

    const/16 v6, 0x15

    if-lt v2, v6, :cond_4

    .line 20
    instance-of v2, v4, Landroid/media/MediaCodec$CodecException;

    if-eqz v2, :cond_4

    .line 21
    move-object v2, v4

    check-cast v2, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v2}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_3

    :cond_4
    move-object v8, v11

    :goto_3
    const/4 v9, 0x0

    move-object v2, v0

    move/from16 v6, p2

    .line 22
    invoke-direct/range {v2 .. v9}, Le/m/a/c/h1/f$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLe/m/a/c/h1/e;Ljava/lang/String;Le/m/a/c/h1/f$a;)V

    .line 23
    iget-object v2, v1, Le/m/a/c/h1/f;->M:Le/m/a/c/h1/f$a;

    if-nez v2, :cond_5

    .line 24
    iput-object v0, v1, Le/m/a/c/h1/f;->M:Le/m/a/c/h1/f$a;

    goto :goto_4

    .line 25
    :cond_5
    new-instance v3, Le/m/a/c/h1/f$a;

    .line 26
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 27
    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    iget-object v4, v2, Le/m/a/c/h1/f$a;->a:Ljava/lang/String;

    iget-boolean v5, v2, Le/m/a/c/h1/f$a;->b:Z

    iget-object v6, v2, Le/m/a/c/h1/f$a;->c:Le/m/a/c/h1/e;

    iget-object v2, v2, Le/m/a/c/h1/f$a;->d:Ljava/lang/String;

    move-object v13, v3

    move-object/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v2

    move-object/from16 v20, v0

    invoke-direct/range {v13 .. v20}, Le/m/a/c/h1/f$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLe/m/a/c/h1/e;Ljava/lang/String;Le/m/a/c/h1/f$a;)V

    .line 28
    iput-object v3, v1, Le/m/a/c/h1/f;->M:Le/m/a/c/h1/f$a;

    .line 29
    :goto_4
    iget-object v0, v1, Le/m/a/c/h1/f;->L:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_2

    .line 30
    :cond_6
    iget-object v0, v1, Le/m/a/c/h1/f;->M:Le/m/a/c/h1/f$a;

    throw v0

    .line 31
    :cond_7
    iput-object v11, v1, Le/m/a/c/h1/f;->L:Ljava/util/ArrayDeque;

    return-void

    .line 32
    :cond_8
    new-instance v0, Le/m/a/c/h1/f$a;

    iget-object v2, v1, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    const v3, -0xc34f

    invoke-direct {v0, v2, v11, v10, v3}, Le/m/a/c/h1/f$a;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    throw v0
.end method

.method public abstract Y(Ljava/lang/String;JJ)V
.end method

.method public Z(Le/m/a/c/g0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/m/a/c/h1/f;->A0:Z

    .line 2
    iget-object v1, p1, Le/m/a/c/g0;->c:Lcom/google/android/exoplayer2/Format;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-boolean v2, p1, Le/m/a/c/g0;->a:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 5
    iget-object p1, p1, Le/m/a/c/g0;->b:Le/m/a/c/f1/c;

    invoke-virtual {p0, p1}, Le/m/a/c/h1/f;->l0(Le/m/a/c/f1/c;)V

    goto :goto_3

    .line 6
    :cond_0
    iget-object p1, p0, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    iget-object v2, p0, Le/m/a/c/h1/f;->m:Le/m/a/c/f1/e;

    iget-object v4, p0, Le/m/a/c/h1/f;->z:Le/m/a/c/f1/c;

    .line 7
    iget-object v5, v1, Lcom/google/android/exoplayer2/Format;->l:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-nez p1, :cond_1

    move-object p1, v3

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->l:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 8
    :goto_0
    invoke-static {v5, p1}, Le/m/a/c/q1/d0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-nez p1, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    iget-object p1, v1, Lcom/google/android/exoplayer2/Format;->l:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz p1, :cond_4

    if-eqz v2, :cond_3

    .line 10
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v5, v1, Lcom/google/android/exoplayer2/Format;->l:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 13
    invoke-interface {v2, p1, v5}, Le/m/a/c/f1/e;->d(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Le/m/a/c/f1/c;

    move-result-object p1

    goto :goto_1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Le/m/a/c/u;->v(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Le/m/a/c/b0;

    move-result-object p1

    throw p1

    :cond_4
    move-object p1, v3

    :goto_1
    if-eqz v4, :cond_5

    .line 15
    invoke-interface {v4}, Le/m/a/c/f1/c;->release()V

    :cond_5
    move-object v4, p1

    .line 16
    :goto_2
    iput-object v4, p0, Le/m/a/c/h1/f;->z:Le/m/a/c/f1/c;

    .line 17
    :goto_3
    iput-object v1, p0, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    .line 18
    iget-object p1, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    if-nez p1, :cond_6

    .line 19
    invoke-virtual {p0}, Le/m/a/c/h1/f;->W()V

    return-void

    .line 20
    :cond_6
    iget-object p1, p0, Le/m/a/c/h1/f;->z:Le/m/a/c/f1/c;

    if-nez p1, :cond_7

    iget-object v2, p0, Le/m/a/c/h1/f;->y:Le/m/a/c/f1/c;

    if-nez v2, :cond_b

    :cond_7
    if-eqz p1, :cond_8

    iget-object v2, p0, Le/m/a/c/h1/f;->y:Le/m/a/c/f1/c;

    if-eqz v2, :cond_b

    :cond_8
    iget-object v2, p0, Le/m/a/c/h1/f;->y:Le/m/a/c/f1/c;

    if-eq p1, v2, :cond_a

    iget-object v2, p0, Le/m/a/c/h1/f;->N:Le/m/a/c/h1/e;

    iget-boolean v2, v2, Le/m/a/c/h1/e;->f:Z

    if-nez v2, :cond_a

    .line 21
    invoke-interface {p1}, Le/m/a/c/f1/c;->c()Le/m/a/c/f1/g;

    move-result-object p1

    check-cast p1, Le/m/a/c/f1/h;

    if-nez p1, :cond_9

    :catch_0
    move v2, v0

    goto :goto_4

    .line 22
    :cond_9
    :try_start_0
    new-instance p1, Landroid/media/MediaCrypto;

    invoke-direct {p1, v3, v3}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :try_start_1
    iget-object v2, v1, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    invoke-virtual {p1}, Landroid/media/MediaCrypto;->release()V

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/media/MediaCrypto;->release()V

    .line 25
    throw v0

    :goto_4
    if-nez v2, :cond_b

    .line 26
    :cond_a
    sget p1, Le/m/a/c/q1/d0;->a:I

    const/16 v2, 0x17

    if-ge p1, v2, :cond_c

    iget-object p1, p0, Le/m/a/c/h1/f;->z:Le/m/a/c/f1/c;

    iget-object v2, p0, Le/m/a/c/h1/f;->y:Le/m/a/c/f1/c;

    if-eq p1, v2, :cond_c

    .line 27
    :cond_b
    invoke-virtual {p0}, Le/m/a/c/h1/f;->K()V

    return-void

    .line 28
    :cond_c
    iget-object p1, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    iget-object v2, p0, Le/m/a/c/h1/f;->N:Le/m/a/c/h1/e;

    iget-object v3, p0, Le/m/a/c/h1/f;->J:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, v2, v3, v1}, Le/m/a/c/h1/f;->I(Landroid/media/MediaCodec;Le/m/a/c/h1/e;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    if-eqz p1, :cond_14

    if-eq p1, v0, :cond_12

    const/4 v2, 0x2

    if-eq p1, v2, :cond_e

    const/4 v0, 0x3

    if-ne p1, v0, :cond_d

    .line 29
    iput-object v1, p0, Le/m/a/c/h1/f;->J:Lcom/google/android/exoplayer2/Format;

    .line 30
    invoke-virtual {p0}, Le/m/a/c/h1/f;->o0()V

    .line 31
    iget-object p1, p0, Le/m/a/c/h1/f;->z:Le/m/a/c/f1/c;

    iget-object v0, p0, Le/m/a/c/h1/f;->y:Le/m/a/c/f1/c;

    if-eq p1, v0, :cond_15

    .line 32
    invoke-virtual {p0}, Le/m/a/c/h1/f;->L()V

    goto :goto_6

    .line 33
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 34
    :cond_e
    iget-boolean p1, p0, Le/m/a/c/h1/f;->P:Z

    if-eqz p1, :cond_f

    .line 35
    invoke-virtual {p0}, Le/m/a/c/h1/f;->K()V

    goto :goto_6

    .line 36
    :cond_f
    iput-boolean v0, p0, Le/m/a/c/h1/f;->n0:Z

    .line 37
    iput v0, p0, Le/m/a/c/h1/f;->o0:I

    .line 38
    iget p1, p0, Le/m/a/c/h1/f;->O:I

    if-eq p1, v2, :cond_11

    if-ne p1, v0, :cond_10

    iget p1, v1, Lcom/google/android/exoplayer2/Format;->n:I

    iget-object v2, p0, Le/m/a/c/h1/f;->J:Lcom/google/android/exoplayer2/Format;

    iget v3, v2, Lcom/google/android/exoplayer2/Format;->n:I

    if-ne p1, v3, :cond_10

    iget p1, v1, Lcom/google/android/exoplayer2/Format;->o:I

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->o:I

    if-ne p1, v2, :cond_10

    goto :goto_5

    :cond_10
    const/4 v0, 0x0

    :cond_11
    :goto_5
    iput-boolean v0, p0, Le/m/a/c/h1/f;->W:Z

    .line 39
    iput-object v1, p0, Le/m/a/c/h1/f;->J:Lcom/google/android/exoplayer2/Format;

    .line 40
    invoke-virtual {p0}, Le/m/a/c/h1/f;->o0()V

    .line 41
    iget-object p1, p0, Le/m/a/c/h1/f;->z:Le/m/a/c/f1/c;

    iget-object v0, p0, Le/m/a/c/h1/f;->y:Le/m/a/c/f1/c;

    if-eq p1, v0, :cond_15

    .line 42
    invoke-virtual {p0}, Le/m/a/c/h1/f;->L()V

    goto :goto_6

    .line 43
    :cond_12
    iput-object v1, p0, Le/m/a/c/h1/f;->J:Lcom/google/android/exoplayer2/Format;

    .line 44
    invoke-virtual {p0}, Le/m/a/c/h1/f;->o0()V

    .line 45
    iget-object p1, p0, Le/m/a/c/h1/f;->z:Le/m/a/c/f1/c;

    iget-object v1, p0, Le/m/a/c/h1/f;->y:Le/m/a/c/f1/c;

    if-eq p1, v1, :cond_13

    .line 46
    invoke-virtual {p0}, Le/m/a/c/h1/f;->L()V

    goto :goto_6

    .line 47
    :cond_13
    iget-boolean p1, p0, Le/m/a/c/h1/f;->r0:Z

    if-eqz p1, :cond_15

    .line 48
    iput v0, p0, Le/m/a/c/h1/f;->p0:I

    .line 49
    iput v0, p0, Le/m/a/c/h1/f;->q0:I

    goto :goto_6

    .line 50
    :cond_14
    invoke-virtual {p0}, Le/m/a/c/h1/f;->K()V

    :cond_15
    :goto_6
    return-void
.end method

.method public abstract a0(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation
.end method

.method public b()Z
    .locals 7

    .line 1
    iget-object v0, p0, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Le/m/a/c/h1/f;->y0:Z

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Le/m/a/c/u;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/m/a/c/u;->j:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/m/a/c/u;->f:Le/m/a/c/l1/w;

    invoke-interface {v0}, Le/m/a/c/l1/w;->b()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_3

    .line 3
    iget v0, p0, Le/m/a/c/h1/f;->j0:I

    if-ltz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_3

    .line 4
    iget-wide v3, p0, Le/m/a/c/h1/f;->h0:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Le/m/a/c/h1/f;->h0:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method public abstract b0(J)V
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/m/a/c/h1/f;->x0:Z

    return v0
.end method

.method public abstract c0(Le/m/a/c/e1/e;)V
.end method

.method public final d0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/m/a/c/h1/f;->q0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 2
    iput-boolean v1, p0, Le/m/a/c/h1/f;->x0:Z

    .line 3
    invoke-virtual {p0}, Le/m/a/c/h1/f;->h0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/m/a/c/h1/f;->g0()V

    .line 5
    invoke-virtual {p0}, Le/m/a/c/h1/f;->W()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Le/m/a/c/h1/f;->p0()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Le/m/a/c/h1/f;->O()Z

    :goto_0
    return-void
.end method

.method public abstract e0(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZLcom/google/android/exoplayer2/Format;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation
.end method

.method public final f0(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/a/c/u;->w()Le/m/a/c/g0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/m/a/c/h1/f;->r:Le/m/a/c/e1/e;

    invoke-virtual {v1}, Le/m/a/c/e1/e;->clear()V

    .line 3
    iget-object v1, p0, Le/m/a/c/h1/f;->r:Le/m/a/c/e1/e;

    invoke-virtual {p0, v0, v1, p1}, Le/m/a/c/u;->E(Le/m/a/c/g0;Le/m/a/c/e1/e;Z)I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, -0x5

    if-ne p1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Le/m/a/c/h1/f;->Z(Le/m/a/c/g0;)V

    return v1

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Le/m/a/c/h1/f;->r:Le/m/a/c/e1/e;

    invoke-virtual {p1}, Le/m/a/c/e1/a;->isEndOfStream()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iput-boolean v1, p0, Le/m/a/c/h1/f;->w0:Z

    .line 7
    invoke-virtual {p0}, Le/m/a/c/h1/f;->d0()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final g(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iput p1, p0, Le/m/a/c/h1/f;->D:F

    .line 2
    iget-object p1, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    if-eqz p1, :cond_0

    iget p1, p0, Le/m/a/c/h1/f;->q0:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 3
    iget p1, p0, Le/m/a/c/u;->e:I

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Le/m/a/c/h1/f;->o0()V

    :cond_0
    return-void
.end method

.method public g0()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/m/a/c/h1/f;->L:Ljava/util/ArrayDeque;

    .line 2
    iput-object v0, p0, Le/m/a/c/h1/f;->N:Le/m/a/c/h1/e;

    .line 3
    iput-object v0, p0, Le/m/a/c/h1/f;->J:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Le/m/a/c/h1/f;->t0:Z

    .line 5
    invoke-virtual {p0}, Le/m/a/c/h1/f;->i0()V

    .line 6
    invoke-virtual {p0}, Le/m/a/c/h1/f;->j0()V

    .line 7
    sget v2, Le/m/a/c/q1/d0;->a:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 8
    iput-object v0, p0, Le/m/a/c/h1/f;->Z:[Ljava/nio/ByteBuffer;

    .line 9
    iput-object v0, p0, Le/m/a/c/h1/f;->g0:[Ljava/nio/ByteBuffer;

    .line 10
    :cond_0
    iput-boolean v1, p0, Le/m/a/c/h1/f;->y0:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    iput-wide v2, p0, Le/m/a/c/h1/f;->h0:J

    .line 12
    iget-object v4, p0, Le/m/a/c/h1/f;->t:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 13
    iput-wide v2, p0, Le/m/a/c/h1/f;->u0:J

    .line 14
    iput-wide v2, p0, Le/m/a/c/h1/f;->v0:J

    .line 15
    :try_start_0
    iget-object v2, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    if-eqz v2, :cond_1

    .line 16
    iget-object v3, p0, Le/m/a/c/h1/f;->C0:Le/m/a/c/e1/d;

    iget v4, v3, Le/m/a/c/e1/d;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Le/m/a/c/e1/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 17
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    iget-object v2, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 19
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 20
    :cond_1
    :goto_0
    iput-object v0, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    .line 21
    :try_start_3
    iget-object v2, p0, Le/m/a/c/h1/f;->A:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_2

    .line 22
    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 23
    :cond_2
    iput-object v0, p0, Le/m/a/c/h1/f;->A:Landroid/media/MediaCrypto;

    .line 24
    iput-boolean v1, p0, Le/m/a/c/h1/f;->B:Z

    .line 25
    invoke-virtual {p0, v0}, Le/m/a/c/h1/f;->k0(Le/m/a/c/f1/c;)V

    return-void

    :catchall_1
    move-exception v2

    .line 26
    iput-object v0, p0, Le/m/a/c/h1/f;->A:Landroid/media/MediaCrypto;

    .line 27
    iput-boolean v1, p0, Le/m/a/c/h1/f;->B:Z

    .line 28
    invoke-virtual {p0, v0}, Le/m/a/c/h1/f;->k0(Le/m/a/c/f1/c;)V

    .line 29
    throw v2

    :catchall_2
    move-exception v2

    .line 30
    iput-object v0, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    .line 31
    :try_start_4
    iget-object v3, p0, Le/m/a/c/h1/f;->A:Landroid/media/MediaCrypto;

    if-eqz v3, :cond_3

    .line 32
    invoke-virtual {v3}, Landroid/media/MediaCrypto;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 33
    :cond_3
    iput-object v0, p0, Le/m/a/c/h1/f;->A:Landroid/media/MediaCrypto;

    .line 34
    iput-boolean v1, p0, Le/m/a/c/h1/f;->B:Z

    .line 35
    invoke-virtual {p0, v0}, Le/m/a/c/h1/f;->k0(Le/m/a/c/f1/c;)V

    .line 36
    throw v2

    :catchall_3
    move-exception v2

    .line 37
    iput-object v0, p0, Le/m/a/c/h1/f;->A:Landroid/media/MediaCrypto;

    .line 38
    iput-boolean v1, p0, Le/m/a/c/h1/f;->B:Z

    .line 39
    invoke-virtual {p0, v0}, Le/m/a/c/h1/f;->k0(Le/m/a/c/f1/c;)V

    .line 40
    throw v2
.end method

.method public h0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    return-void
.end method

.method public i(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/m/a/c/h1/f;->B0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Le/m/a/c/h1/f;->B0:Z

    .line 3
    invoke-virtual {p0}, Le/m/a/c/h1/f;->d0()V

    :cond_0
    const/4 v0, 0x1

    .line 4
    :try_start_0
    iget-boolean v2, p0, Le/m/a/c/h1/f;->x0:Z

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0}, Le/m/a/c/h1/f;->h0()V

    return-void

    .line 6
    :cond_1
    iget-object v2, p0, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, Le/m/a/c/h1/f;->f0(Z)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Le/m/a/c/h1/f;->W()V

    .line 8
    iget-object v2, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    if-eqz v2, :cond_7

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "drainAndFeed"

    .line 10
    invoke-static {v4}, Ln3/g0/y;->n(Ljava/lang/String;)V

    .line 11
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Le/m/a/c/h1/f;->M(JJ)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    :goto_1
    invoke-virtual {p0}, Le/m/a/c/h1/f;->N()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    iget-wide p1, p0, Le/m/a/c/h1/f;->C:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, p3

    if-eqz p1, :cond_5

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sub-long/2addr p1, v2

    iget-wide p3, p0, Le/m/a/c/h1/f;->C:J

    cmp-long p1, p1, p3

    if-gez p1, :cond_4

    goto :goto_2

    :cond_4
    move p1, v1

    goto :goto_3

    :cond_5
    :goto_2
    move p1, v0

    :goto_3
    if-eqz p1, :cond_6

    goto :goto_1

    .line 15
    :cond_6
    invoke-static {}, Ln3/g0/y;->Q()V

    goto :goto_4

    .line 16
    :cond_7
    iget-object p3, p0, Le/m/a/c/h1/f;->C0:Le/m/a/c/e1/d;

    iget p4, p3, Le/m/a/c/e1/d;->d:I

    .line 17
    iget-object v2, p0, Le/m/a/c/u;->f:Le/m/a/c/l1/w;

    iget-wide v3, p0, Le/m/a/c/u;->h:J

    sub-long/2addr p1, v3

    invoke-interface {v2, p1, p2}, Le/m/a/c/l1/w;->c(J)I

    move-result p1

    add-int/2addr p4, p1

    .line 18
    iput p4, p3, Le/m/a/c/e1/d;->d:I

    .line 19
    invoke-virtual {p0, v1}, Le/m/a/c/h1/f;->f0(Z)Z

    .line 20
    :goto_4
    iget-object p1, p0, Le/m/a/c/h1/f;->C0:Le/m/a/c/e1/d;

    .line 21
    monitor-enter p1

    .line 22
    monitor-exit p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 23
    sget p2, Le/m/a/c/q1/d0;->a:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_8

    .line 24
    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p2, :cond_8

    goto :goto_5

    .line 25
    :cond_8
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    .line 26
    array-length p3, p2

    if-lez p3, :cond_9

    aget-object p2, p2, v1

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.media.MediaCodec"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    move v1, v0

    :cond_9
    move v0, v1

    :goto_5
    if-eqz v0, :cond_a

    .line 27
    iget-object p2, p0, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, p2}, Le/m/a/c/u;->v(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Le/m/a/c/b0;

    move-result-object p1

    throw p1

    .line 28
    :cond_a
    throw p1
.end method

.method public final i0()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Le/m/a/c/h1/f;->i0:I

    .line 2
    iget-object v0, p0, Le/m/a/c/h1/f;->q:Le/m/a/c/e1/e;

    const/4 v1, 0x0

    iput-object v1, v0, Le/m/a/c/e1/e;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final j0()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Le/m/a/c/h1/f;->j0:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/m/a/c/h1/f;->k0:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final k0(Le/m/a/c/f1/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/f1/c<",
            "Le/m/a/c/f1/h;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/h1/f;->y:Le/m/a/c/f1/c;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Le/m/a/c/f1/c;->a()V

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Le/m/a/c/f1/c;->release()V

    .line 4
    :cond_2
    :goto_0
    iput-object p1, p0, Le/m/a/c/h1/f;->y:Le/m/a/c/f1/c;

    return-void
.end method

.method public final l0(Le/m/a/c/f1/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/f1/c<",
            "Le/m/a/c/f1/h;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/h1/f;->z:Le/m/a/c/f1/c;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Le/m/a/c/f1/c;->a()V

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Le/m/a/c/f1/c;->release()V

    .line 4
    :cond_2
    :goto_0
    iput-object p1, p0, Le/m/a/c/h1/f;->z:Le/m/a/c/f1/c;

    return-void
.end method

.method public m0(Le/m/a/c/h1/e;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract n0(Le/m/a/c/h1/g;Le/m/a/c/f1/e;Lcom/google/android/exoplayer2/Format;)I
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
.end method

.method public final o0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    sget v0, Le/m/a/c/q1/d0;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Le/m/a/c/h1/f;->D:F

    iget-object v1, p0, Le/m/a/c/h1/f;->J:Lcom/google/android/exoplayer2/Format;

    .line 3
    iget-object v2, p0, Le/m/a/c/u;->g:[Lcom/google/android/exoplayer2/Format;

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Le/m/a/c/h1/f;->S(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F

    move-result v0

    .line 5
    iget v1, p0, Le/m/a/c/h1/f;->K:F

    cmpl-float v2, v1, v0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v0, v2

    if-nez v3, :cond_2

    .line 6
    invoke-virtual {p0}, Le/m/a/c/h1/f;->K()V

    goto :goto_0

    :cond_2
    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    .line 7
    iget v1, p0, Le/m/a/c/h1/f;->p:F

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
    iget-object v2, p0, Le/m/a/c/h1/f;->E:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 11
    iput v0, p0, Le/m/a/c/h1/f;->K:F

    :cond_4
    :goto_0
    return-void
.end method

.method public final p0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/h1/f;->z:Le/m/a/c/f1/c;

    invoke-interface {v0}, Le/m/a/c/f1/c;->c()Le/m/a/c/f1/g;

    move-result-object v0

    check-cast v0, Le/m/a/c/f1/h;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/m/a/c/h1/f;->g0()V

    .line 3
    invoke-virtual {p0}, Le/m/a/c/h1/f;->W()V

    return-void

    .line 4
    :cond_0
    sget-object v0, Le/m/a/c/v;->e:Ljava/util/UUID;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Le/m/a/c/h1/f;->g0()V

    .line 6
    invoke-virtual {p0}, Le/m/a/c/h1/f;->W()V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Le/m/a/c/h1/f;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 8
    :cond_2
    :try_start_0
    iget-object v0, p0, Le/m/a/c/h1/f;->A:Landroid/media/MediaCrypto;

    invoke-virtual {v0, v1}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object v0, p0, Le/m/a/c/h1/f;->z:Le/m/a/c/f1/c;

    invoke-virtual {p0, v0}, Le/m/a/c/h1/f;->k0(Le/m/a/c/f1/c;)V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Le/m/a/c/h1/f;->p0:I

    .line 11
    iput v0, p0, Le/m/a/c/h1/f;->q0:I

    return-void

    :catch_0
    move-exception v0

    .line 12
    iget-object v1, p0, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Le/m/a/c/u;->v(Ljava/lang/Exception;Lcom/google/android/exoplayer2/Format;)Le/m/a/c/b0;

    move-result-object v0

    throw v0
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/m/a/c/h1/f;->w:Lcom/google/android/exoplayer2/Format;

    .line 2
    iget-object v0, p0, Le/m/a/c/h1/f;->z:Le/m/a/c/f1/c;

    if-nez v0, :cond_1

    iget-object v0, p0, Le/m/a/c/h1/f;->y:Le/m/a/c/f1/c;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/m/a/c/h1/f;->P()Z

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Le/m/a/c/h1/f;->A()V

    :goto_1
    return-void
.end method

.method public y(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/m/a/c/h1/f;->m:Le/m/a/c/f1/e;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Le/m/a/c/h1/f;->v:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/m/a/c/h1/f;->v:Z

    .line 3
    invoke-interface {p1}, Le/m/a/c/f1/e;->a()V

    .line 4
    :cond_0
    new-instance p1, Le/m/a/c/e1/d;

    invoke-direct {p1}, Le/m/a/c/e1/d;-><init>()V

    iput-object p1, p0, Le/m/a/c/h1/f;->C0:Le/m/a/c/e1/d;

    return-void
.end method
