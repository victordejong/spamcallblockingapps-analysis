.class public Ls3/b/a/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/b/a/f/k;


# instance fields
.field public final a:Landroid/media/MediaExtractor;

.field public final b:Ls3/b/a/f/i;

.field public c:J

.field public final d:I

.field public final e:Landroid/media/MediaFormat;

.field public final f:Landroid/media/MediaFormat;

.field public final g:Landroid/media/MediaCodec$BufferInfo;

.field public h:Landroid/media/MediaCodec;

.field public i:Landroid/media/MediaCodec;

.field public j:Landroid/media/MediaFormat;

.field public k:Ls3/b/a/e/a;

.field public l:Ls3/b/a/e/a;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Ls3/b/a/f/a;


# direct methods
.method public constructor <init>(Landroid/media/MediaExtractor;ILandroid/media/MediaFormat;Ls3/b/a/f/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Ls3/b/a/f/c;->g:Landroid/media/MediaCodec$BufferInfo;

    .line 3
    iput-object p1, p0, Ls3/b/a/f/c;->a:Landroid/media/MediaExtractor;

    .line 4
    iput p2, p0, Ls3/b/a/f/c;->d:I

    .line 5
    iput-object p3, p0, Ls3/b/a/f/c;->f:Landroid/media/MediaFormat;

    .line 6
    iput-object p4, p0, Ls3/b/a/f/c;->b:Ls3/b/a/f/i;

    .line 7
    invoke-virtual {p1, p2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Ls3/b/a/f/c;->e:Landroid/media/MediaFormat;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    .line 1
    :goto_0
    sget-object v4, Ls3/b/a/f/i$d;->b:Ls3/b/a/f/i$d;

    iget-boolean v5, v0, Ls3/b/a/f/c;->o:Z

    const/4 v6, -0x2

    const/4 v7, -0x3

    const/4 v8, -0x1

    const/4 v9, 0x2

    const-wide/16 v10, 0x0

    if-eqz v5, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v5, v0, Ls3/b/a/f/c;->i:Landroid/media/MediaCodec;

    iget-object v12, v0, Ls3/b/a/f/c;->g:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v5, v12, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    if-eq v5, v7, :cond_7

    if-eq v5, v6, :cond_5

    if-eq v5, v8, :cond_4

    .line 3
    iget-object v12, v0, Ls3/b/a/f/c;->j:Landroid/media/MediaFormat;

    if-eqz v12, :cond_3

    .line 4
    iget-object v13, v0, Ls3/b/a/f/c;->g:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v14, v12, 0x4

    if-eqz v14, :cond_1

    .line 5
    iput-boolean v2, v0, Ls3/b/a/f/c;->o:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move/from16 v18, v12

    .line 6
    invoke-virtual/range {v13 .. v18}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 7
    :cond_1
    iget-object v12, v0, Ls3/b/a/f/c;->g:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v12, v9

    if-eqz v12, :cond_2

    .line 8
    iget-object v4, v0, Ls3/b/a/f/c;->i:Landroid/media/MediaCodec;

    invoke-virtual {v4, v5, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_2

    .line 9
    :cond_2
    iget-object v12, v0, Ls3/b/a/f/c;->b:Ls3/b/a/f/i;

    iget-object v13, v0, Ls3/b/a/f/c;->l:Ls3/b/a/e/a;

    .line 10
    iget-object v13, v13, Ls3/b/a/e/a;->a:Landroid/media/MediaCodec;

    invoke-virtual {v13, v5}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 11
    iget-object v14, v0, Ls3/b/a/f/c;->g:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v12, v4, v13, v14}, Ls3/b/a/f/i;->c(Ls3/b/a/f/i$d;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 12
    iget-object v4, v0, Ls3/b/a/f/c;->g:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v12, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v12, v0, Ls3/b/a/f/c;->c:J

    .line 13
    iget-object v4, v0, Ls3/b/a/f/c;->i:Landroid/media/MediaCodec;

    invoke-virtual {v4, v5, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move v4, v9

    goto :goto_3

    .line 14
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not determine actual output format."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    move v4, v1

    goto :goto_3

    .line 15
    :cond_5
    iget-object v5, v0, Ls3/b/a/f/c;->j:Landroid/media/MediaFormat;

    if-nez v5, :cond_6

    .line 16
    iget-object v5, v0, Ls3/b/a/f/c;->i:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    iput-object v5, v0, Ls3/b/a/f/c;->j:Landroid/media/MediaFormat;

    .line 17
    iget-object v12, v0, Ls3/b/a/f/c;->b:Ls3/b/a/f/i;

    invoke-virtual {v12, v4, v5}, Ls3/b/a/f/i;->b(Ls3/b/a/f/i$d;Landroid/media/MediaFormat;)V

    goto :goto_2

    .line 18
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Audio output format changed twice."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_7
    new-instance v4, Ls3/b/a/e/a;

    iget-object v5, v0, Ls3/b/a/f/c;->i:Landroid/media/MediaCodec;

    invoke-direct {v4, v5}, Ls3/b/a/e/a;-><init>(Landroid/media/MediaCodec;)V

    iput-object v4, v0, Ls3/b/a/f/c;->l:Ls3/b/a/e/a;

    :goto_2
    move v4, v2

    :goto_3
    if-eqz v4, :cond_8

    move v3, v2

    goto/16 :goto_0

    .line 20
    :cond_8
    iget-boolean v4, v0, Ls3/b/a/f/c;->n:Z

    if-eqz v4, :cond_9

    goto :goto_5

    .line 21
    :cond_9
    iget-object v4, v0, Ls3/b/a/f/c;->h:Landroid/media/MediaCodec;

    iget-object v5, v0, Ls3/b/a/f/c;->g:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v4, v5, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    if-eq v4, v7, :cond_15

    if-eq v4, v6, :cond_d

    if-eq v4, v8, :cond_c

    .line 22
    iget-object v5, v0, Ls3/b/a/f/c;->g:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_a

    .line 23
    iput-boolean v2, v0, Ls3/b/a/f/c;->n:Z

    .line 24
    iget-object v4, v0, Ls3/b/a/f/c;->r:Ls3/b/a/f/a;

    invoke-virtual {v4, v8, v10, v11}, Ls3/b/a/f/a;->a(IJ)V

    goto :goto_4

    .line 25
    :cond_a
    iget v12, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v12, :cond_b

    .line 26
    iget-object v12, v0, Ls3/b/a/f/c;->r:Ls3/b/a/f/a;

    iget-wide v13, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v12, v4, v13, v14}, Ls3/b/a/f/a;->a(IJ)V

    :cond_b
    :goto_4
    move v4, v9

    goto/16 :goto_a

    :cond_c
    :goto_5
    move v4, v1

    goto/16 :goto_a

    .line 27
    :cond_d
    iget-object v4, v0, Ls3/b/a/f/c;->r:Ls3/b/a/f/a;

    iget-object v5, v0, Ls3/b/a/f/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    .line 28
    iput-object v5, v4, Ls3/b/a/f/a;->m:Landroid/media/MediaFormat;

    const-string v12, "sample-rate"

    .line 29
    invoke-virtual {v5, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Ls3/b/a/f/a;->f:I

    .line 30
    iget-object v13, v4, Ls3/b/a/f/a;->e:Landroid/media/MediaFormat;

    invoke-virtual {v13, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12

    if-ne v5, v12, :cond_14

    .line 31
    iget-object v5, v4, Ls3/b/a/f/a;->m:Landroid/media/MediaFormat;

    const-string v12, "channel-count"

    invoke-virtual {v5, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Ls3/b/a/f/a;->g:I

    .line 32
    iget-object v5, v4, Ls3/b/a/f/a;->e:Landroid/media/MediaFormat;

    invoke-virtual {v5, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Ls3/b/a/f/a;->h:I

    .line 33
    iget v12, v4, Ls3/b/a/f/a;->g:I

    const-string v13, ") not supported."

    if-eq v12, v2, :cond_f

    if-ne v12, v9, :cond_e

    goto :goto_6

    .line 34
    :cond_e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Input channel count ("

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v4, Ls3/b/a/f/a;->g:I

    invoke-static {v2, v3, v13}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    :goto_6
    if-eq v5, v2, :cond_11

    if-ne v5, v9, :cond_10

    goto :goto_7

    .line 35
    :cond_10
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Output channel count ("

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v4, Ls3/b/a/f/a;->h:I

    invoke-static {v2, v3, v13}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    :goto_7
    if-le v12, v5, :cond_12

    .line 36
    sget-object v5, Ls3/b/a/f/b;->a:Ls3/b/a/f/b;

    iput-object v5, v4, Ls3/b/a/f/a;->i:Ls3/b/a/f/b;

    goto :goto_8

    :cond_12
    if-ge v12, v5, :cond_13

    .line 37
    sget-object v5, Ls3/b/a/f/b;->b:Ls3/b/a/f/b;

    iput-object v5, v4, Ls3/b/a/f/a;->i:Ls3/b/a/f/b;

    goto :goto_8

    .line 38
    :cond_13
    sget-object v5, Ls3/b/a/f/b;->c:Ls3/b/a/f/b;

    iput-object v5, v4, Ls3/b/a/f/a;->i:Ls3/b/a/f/b;

    .line 39
    :goto_8
    iget-object v4, v4, Ls3/b/a/f/a;->l:Ls3/b/a/f/a$b;

    iput-wide v10, v4, Ls3/b/a/f/a$b;->b:J

    goto :goto_9

    .line 40
    :cond_14
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Audio sample rate conversion not supported yet."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    :goto_9
    move v4, v2

    :goto_a
    if-eqz v4, :cond_16

    move v3, v2

    :cond_16
    if-eq v4, v2, :cond_8

    .line 41
    :goto_b
    iget-object v4, v0, Ls3/b/a/f/c;->r:Ls3/b/a/f/a;

    .line 42
    iget-object v5, v4, Ls3/b/a/f/a;->l:Ls3/b/a/f/a$b;

    iget-object v5, v5, Ls3/b/a/f/a$b;->c:Ljava/nio/ShortBuffer;

    if-eqz v5, :cond_17

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_c

    :cond_17
    move v2, v1

    .line 43
    :goto_c
    iget-object v5, v4, Ls3/b/a/f/a;->b:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_18

    if-nez v2, :cond_18

    goto :goto_d

    .line 44
    :cond_18
    iget-object v5, v4, Ls3/b/a/f/a;->d:Landroid/media/MediaCodec;

    invoke-virtual {v5, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v13

    if-gez v13, :cond_19

    :goto_d
    move/from16 v19, v3

    goto/16 :goto_11

    .line 45
    :cond_19
    iget-object v1, v4, Ls3/b/a/f/a;->k:Ls3/b/a/e/a;

    .line 46
    iget-object v1, v1, Ls3/b/a/e/a;->a:Landroid/media/MediaCodec;

    invoke-virtual {v1, v13}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    const-wide/32 v5, 0xf4240

    if-eqz v2, :cond_1b

    .line 48
    iget-object v2, v4, Ls3/b/a/f/a;->l:Ls3/b/a/f/a$b;

    iget-object v2, v2, Ls3/b/a/f/a$b;->c:Ljava/nio/ShortBuffer;

    .line 49
    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->limit()I

    move-result v7

    .line 50
    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v8

    .line 51
    iget-object v9, v4, Ls3/b/a/f/a;->l:Ls3/b/a/f/a$b;

    iget-wide v9, v9, Ls3/b/a/f/a$b;->b:J

    .line 52
    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->position()I

    move-result v11

    iget v12, v4, Ls3/b/a/f/a;->f:I

    iget v14, v4, Ls3/b/a/f/a;->h:I

    move/from16 v19, v3

    move-object/from16 v20, v4

    int-to-long v3, v11

    int-to-long v11, v12

    mul-long/2addr v11, v5

    .line 53
    div-long/2addr v3, v11

    int-to-long v5, v14

    div-long/2addr v3, v5

    add-long v16, v3, v9

    .line 54
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 55
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 56
    invoke-virtual {v1, v2}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    .line 57
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v3

    if-lt v8, v3, :cond_1a

    .line 58
    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_e

    .line 59
    :cond_1a
    invoke-virtual {v2, v7}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_e
    move-object/from16 v2, v20

    .line 60
    iget-object v12, v2, Ls3/b/a/f/a;->d:Landroid/media/MediaCodec;

    const/4 v14, 0x0

    .line 61
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->position()I

    move-result v1

    mul-int/lit8 v15, v1, 0x2

    const/16 v18, 0x0

    .line 62
    invoke-virtual/range {v12 .. v18}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v1, 0x1

    goto :goto_f

    :cond_1b
    move/from16 v19, v3

    move-object v2, v4

    .line 63
    iget-object v3, v2, Ls3/b/a/f/a;->b:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls3/b/a/f/a$b;

    .line 64
    iget v4, v3, Ls3/b/a/f/a$b;->a:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_1c

    .line 65
    iget-object v12, v2, Ls3/b/a/f/a;->d:Landroid/media/MediaCodec;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x4

    invoke-virtual/range {v12 .. v18}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v1, 0x0

    :goto_f
    const/4 v2, 0x2

    move v9, v2

    goto :goto_11

    .line 66
    :cond_1c
    iget-object v4, v3, Ls3/b/a/f/a$b;->c:Ljava/nio/ShortBuffer;

    .line 67
    iget-object v7, v2, Ls3/b/a/f/a;->l:Ls3/b/a/f/a$b;

    iget-object v7, v7, Ls3/b/a/f/a$b;->c:Ljava/nio/ShortBuffer;

    .line 68
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 69
    invoke-virtual {v4}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 70
    invoke-virtual {v4}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v8

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v9

    if-le v8, v9, :cond_1d

    .line 71
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 72
    iget-object v8, v2, Ls3/b/a/f/a;->i:Ls3/b/a/f/b;

    invoke-interface {v8, v4, v1}, Ls3/b/a/f/b;->a(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;)V

    .line 73
    invoke-virtual {v4}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 74
    invoke-virtual {v4}, Ljava/nio/ShortBuffer;->position()I

    move-result v8

    iget v9, v2, Ls3/b/a/f/a;->f:I

    iget v10, v2, Ls3/b/a/f/a;->g:I

    int-to-long v11, v8

    int-to-long v8, v9

    mul-long/2addr v8, v5

    .line 75
    div-long/2addr v11, v8

    int-to-long v5, v10

    div-long/2addr v11, v5

    .line 76
    iget-object v5, v2, Ls3/b/a/f/a;->i:Ls3/b/a/f/b;

    invoke-interface {v5, v4, v7}, Ls3/b/a/f/b;->a(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;)V

    .line 77
    invoke-virtual {v7}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 78
    iget-object v4, v2, Ls3/b/a/f/a;->l:Ls3/b/a/f/a$b;

    iget-wide v5, v3, Ls3/b/a/f/a$b;->b:J

    add-long/2addr v5, v11

    iput-wide v5, v4, Ls3/b/a/f/a$b;->b:J

    goto :goto_10

    .line 79
    :cond_1d
    iget-object v5, v2, Ls3/b/a/f/a;->i:Ls3/b/a/f/b;

    invoke-interface {v5, v4, v1}, Ls3/b/a/f/b;->a(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;)V

    .line 80
    :goto_10
    iget-wide v4, v3, Ls3/b/a/f/a$b;->b:J

    .line 81
    iget-object v12, v2, Ls3/b/a/f/a;->d:Landroid/media/MediaCodec;

    const/4 v14, 0x0

    .line 82
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->position()I

    move-result v1

    const/4 v6, 0x2

    mul-int/lit8 v15, v1, 0x2

    const/16 v18, 0x0

    move-wide/from16 v16, v4

    .line 83
    invoke-virtual/range {v12 .. v18}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 84
    iget-object v1, v2, Ls3/b/a/f/a;->c:Landroid/media/MediaCodec;

    iget v4, v3, Ls3/b/a/f/a$b;->a:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 85
    iget-object v1, v2, Ls3/b/a/f/a;->a:Ljava/util/Queue;

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    move v9, v6

    :goto_11
    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v10, 0x0

    goto/16 :goto_b

    :cond_1e
    move/from16 v3, v19

    .line 86
    :goto_12
    iget-boolean v1, v0, Ls3/b/a/f/c;->m:Z

    if-eqz v1, :cond_1f

    goto :goto_13

    .line 87
    :cond_1f
    iget-object v1, v0, Ls3/b/a/f/c;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v1

    if-ltz v1, :cond_20

    .line 88
    iget v2, v0, Ls3/b/a/f/c;->d:I

    if-eq v1, v2, :cond_20

    :goto_13
    const/4 v1, 0x1

    goto :goto_14

    .line 89
    :cond_20
    iget-object v2, v0, Ls3/b/a/f/c;->h:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v11

    if-gez v11, :cond_21

    goto :goto_13

    :cond_21
    if-gez v1, :cond_22

    const/4 v1, 0x1

    .line 90
    iput-boolean v1, v0, Ls3/b/a/f/c;->m:Z

    .line 91
    iget-object v10, v0, Ls3/b/a/f/c;->h:Landroid/media/MediaCodec;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x4

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_13

    :goto_14
    const/4 v2, 0x0

    goto :goto_16

    .line 92
    :cond_22
    iget-object v1, v0, Ls3/b/a/f/c;->a:Landroid/media/MediaExtractor;

    iget-object v2, v0, Ls3/b/a/f/c;->k:Ls3/b/a/e/a;

    .line 93
    iget-object v2, v2, Ls3/b/a/e/a;->a:Landroid/media/MediaCodec;

    invoke-virtual {v2, v11}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v4, 0x0

    .line 94
    invoke-virtual {v1, v2, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v13

    .line 95
    iget-object v1, v0, Ls3/b/a/f/c;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_23

    move/from16 v16, v2

    goto :goto_15

    :cond_23
    move/from16 v16, v4

    .line 96
    :goto_15
    iget-object v10, v0, Ls3/b/a/f/c;->h:Landroid/media/MediaCodec;

    const/4 v12, 0x0

    iget-object v1, v0, Ls3/b/a/f/c;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v14

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 97
    iget-object v1, v0, Ls3/b/a/f/c;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    move v1, v2

    move v2, v9

    :goto_16
    if-eqz v2, :cond_24

    move v3, v1

    goto :goto_12

    :cond_24
    return v3
.end method

.method public b()V
    .locals 5

    const-string v0, "mime"

    .line 1
    iget-object v1, p0, Ls3/b/a/f/c;->a:Landroid/media/MediaExtractor;

    iget v2, p0, Ls3/b/a/f/c;->d:I

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 2
    :try_start_0
    iget-object v1, p0, Ls3/b/a/f/c;->f:Landroid/media/MediaFormat;

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Ls3/b/a/f/c;->i:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    iget-object v2, p0, Ls3/b/a/f/c;->f:Landroid/media/MediaFormat;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 4
    iget-object v1, p0, Ls3/b/a/f/c;->i:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 5
    iput-boolean v4, p0, Ls3/b/a/f/c;->q:Z

    .line 6
    new-instance v1, Ls3/b/a/e/a;

    iget-object v2, p0, Ls3/b/a/f/c;->i:Landroid/media/MediaCodec;

    invoke-direct {v1, v2}, Ls3/b/a/e/a;-><init>(Landroid/media/MediaCodec;)V

    iput-object v1, p0, Ls3/b/a/f/c;->l:Ls3/b/a/e/a;

    .line 7
    iget-object v1, p0, Ls3/b/a/f/c;->a:Landroid/media/MediaExtractor;

    iget v2, p0, Ls3/b/a/f/c;->d:I

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    .line 8
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Ls3/b/a/f/c;->h:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 10
    iget-object v0, p0, Ls3/b/a/f/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 11
    iput-boolean v4, p0, Ls3/b/a/f/c;->p:Z

    .line 12
    new-instance v0, Ls3/b/a/e/a;

    iget-object v1, p0, Ls3/b/a/f/c;->h:Landroid/media/MediaCodec;

    invoke-direct {v0, v1}, Ls3/b/a/e/a;-><init>(Landroid/media/MediaCodec;)V

    iput-object v0, p0, Ls3/b/a/f/c;->k:Ls3/b/a/e/a;

    .line 13
    new-instance v0, Ls3/b/a/f/a;

    iget-object v2, p0, Ls3/b/a/f/c;->i:Landroid/media/MediaCodec;

    iget-object v3, p0, Ls3/b/a/f/c;->f:Landroid/media/MediaFormat;

    invoke-direct {v0, v1, v2, v3}, Ls3/b/a/f/a;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    iput-object v0, p0, Ls3/b/a/f/c;->r:Ls3/b/a/f/a;

    return-void

    :catch_0
    move-exception v0

    .line 14
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 15
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ls3/b/a/f/c;->c:J

    return-wide v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls3/b/a/f/c;->o:Z

    return v0
.end method

.method public e()Landroid/media/MediaFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Ls3/b/a/f/c;->e:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls3/b/a/f/c;->h:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v2, p0, Ls3/b/a/f/c;->p:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 3
    :cond_0
    iget-object v0, p0, Ls3/b/a/f/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 4
    iput-object v1, p0, Ls3/b/a/f/c;->h:Landroid/media/MediaCodec;

    .line 5
    :cond_1
    iget-object v0, p0, Ls3/b/a/f/c;->i:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    .line 6
    iget-boolean v2, p0, Ls3/b/a/f/c;->q:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 7
    :cond_2
    iget-object v0, p0, Ls3/b/a/f/c;->i:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 8
    iput-object v1, p0, Ls3/b/a/f/c;->i:Landroid/media/MediaCodec;

    :cond_3
    return-void
.end method
