.class public Ls3/b/a/f/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/b/a/f/k;


# instance fields
.field public final a:Landroid/media/MediaExtractor;

.field public final b:I

.field public final c:Landroid/media/MediaFormat;

.field public final d:Ls3/b/a/f/i;

.field public final e:Landroid/media/MediaCodec$BufferInfo;

.field public f:Landroid/media/MediaCodec;

.field public g:Landroid/media/MediaCodec;

.field public h:[Ljava/nio/ByteBuffer;

.field public i:[Ljava/nio/ByteBuffer;

.field public j:Landroid/media/MediaFormat;

.field public k:Ls3/b/a/f/g;

.field public l:Ls3/b/a/f/d;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:J


# direct methods
.method public constructor <init>(Landroid/media/MediaExtractor;ILandroid/media/MediaFormat;Ls3/b/a/f/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Ls3/b/a/f/l;->e:Landroid/media/MediaCodec$BufferInfo;

    .line 3
    iput-object p1, p0, Ls3/b/a/f/l;->a:Landroid/media/MediaExtractor;

    .line 4
    iput p2, p0, Ls3/b/a/f/l;->b:I

    .line 5
    iput-object p3, p0, Ls3/b/a/f/l;->c:Landroid/media/MediaFormat;

    .line 6
    iput-object p4, p0, Ls3/b/a/f/l;->d:Ls3/b/a/f/i;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 20

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x1

    move v3, v0

    .line 1
    :goto_0
    sget-object v4, Ls3/b/a/f/i$d;->a:Ls3/b/a/f/i$d;

    iget-boolean v5, v1, Ls3/b/a/f/l;->o:Z

    const/4 v6, -0x1

    const/4 v7, -0x2

    const/4 v8, -0x3

    const/4 v9, 0x2

    const-wide/16 v10, 0x0

    if-eqz v5, :cond_1

    :cond_0
    move v4, v0

    goto/16 :goto_2

    .line 2
    :cond_1
    iget-object v5, v1, Ls3/b/a/f/l;->g:Landroid/media/MediaCodec;

    iget-object v12, v1, Ls3/b/a/f/l;->e:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v5, v12, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    if-eq v5, v8, :cond_7

    if-eq v5, v7, :cond_5

    if-eq v5, v6, :cond_0

    .line 3
    iget-object v12, v1, Ls3/b/a/f/l;->j:Landroid/media/MediaFormat;

    if-eqz v12, :cond_4

    .line 4
    iget-object v13, v1, Ls3/b/a/f/l;->e:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v14, v12, 0x4

    if-eqz v14, :cond_2

    .line 5
    iput-boolean v2, v1, Ls3/b/a/f/l;->o:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move/from16 v18, v12

    .line 6
    invoke-virtual/range {v13 .. v18}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 7
    :cond_2
    iget-object v12, v1, Ls3/b/a/f/l;->e:Landroid/media/MediaCodec$BufferInfo;

    iget v13, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v13, v9

    if-eqz v13, :cond_3

    .line 8
    iget-object v4, v1, Ls3/b/a/f/l;->g:Landroid/media/MediaCodec;

    invoke-virtual {v4, v5, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object v13, v1, Ls3/b/a/f/l;->d:Ls3/b/a/f/i;

    iget-object v14, v1, Ls3/b/a/f/l;->i:[Ljava/nio/ByteBuffer;

    aget-object v14, v14, v5

    invoke-virtual {v13, v4, v14, v12}, Ls3/b/a/f/i;->c(Ls3/b/a/f/i$d;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 10
    iget-object v4, v1, Ls3/b/a/f/l;->e:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v12, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v12, v1, Ls3/b/a/f/l;->r:J

    .line 11
    iget-object v4, v1, Ls3/b/a/f/l;->g:Landroid/media/MediaCodec;

    invoke-virtual {v4, v5, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move v4, v9

    goto :goto_2

    .line 12
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Could not determine actual output format."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_5
    iget-object v5, v1, Ls3/b/a/f/l;->j:Landroid/media/MediaFormat;

    if-nez v5, :cond_6

    .line 14
    iget-object v5, v1, Ls3/b/a/f/l;->g:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    iput-object v5, v1, Ls3/b/a/f/l;->j:Landroid/media/MediaFormat;

    .line 15
    iget-object v12, v1, Ls3/b/a/f/l;->d:Ls3/b/a/f/i;

    invoke-virtual {v12, v4, v5}, Ls3/b/a/f/i;->b(Ls3/b/a/f/i$d;Landroid/media/MediaFormat;)V

    goto :goto_1

    .line 16
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Video output format changed twice."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_7
    iget-object v4, v1, Ls3/b/a/f/l;->g:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v1, Ls3/b/a/f/l;->i:[Ljava/nio/ByteBuffer;

    :goto_1
    move v4, v2

    :goto_2
    if-eqz v4, :cond_8

    move v3, v2

    goto/16 :goto_0

    .line 18
    :cond_8
    iget-boolean v4, v1, Ls3/b/a/f/l;->n:Z

    if-eqz v4, :cond_a

    :cond_9
    move v4, v0

    goto/16 :goto_6

    .line 19
    :cond_a
    iget-object v4, v1, Ls3/b/a/f/l;->f:Landroid/media/MediaCodec;

    iget-object v5, v1, Ls3/b/a/f/l;->e:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v4, v5, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    if-eq v4, v8, :cond_10

    if-eq v4, v7, :cond_10

    if-eq v4, v6, :cond_9

    .line 20
    iget-object v5, v1, Ls3/b/a/f/l;->e:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v12, 0x4

    and-int/2addr v5, v12

    if-eqz v5, :cond_b

    .line 21
    iget-object v5, v1, Ls3/b/a/f/l;->g:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 22
    iput-boolean v2, v1, Ls3/b/a/f/l;->n:Z

    .line 23
    iget-object v5, v1, Ls3/b/a/f/l;->e:Landroid/media/MediaCodec$BufferInfo;

    iput v0, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 24
    :cond_b
    iget-object v5, v1, Ls3/b/a/f/l;->e:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v5, :cond_c

    move v5, v2

    goto :goto_3

    :cond_c
    move v5, v0

    .line 25
    :goto_3
    iget-object v13, v1, Ls3/b/a/f/l;->f:Landroid/media/MediaCodec;

    invoke-virtual {v13, v4, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-eqz v5, :cond_f

    .line 26
    iget-object v4, v1, Ls3/b/a/f/l;->k:Ls3/b/a/f/g;

    .line 27
    iget-object v5, v4, Ls3/b/a/f/g;->f:Ljava/lang/Object;

    monitor-enter v5

    .line 28
    :goto_4
    :try_start_0
    iget-boolean v13, v4, Ls3/b/a/f/g;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v13, :cond_e

    .line 29
    :try_start_1
    iget-object v13, v4, Ls3/b/a/f/g;->f:Ljava/lang/Object;

    const-wide/16 v14, 0x2710

    invoke-virtual {v13, v14, v15}, Ljava/lang/Object;->wait(J)V

    .line 30
    iget-boolean v13, v4, Ls3/b/a/f/g;->g:Z

    if-eqz v13, :cond_d

    goto :goto_4

    .line 31
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Surface frame wait timed out"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    .line 32
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 33
    :cond_e
    iput-boolean v0, v4, Ls3/b/a/f/g;->g:Z

    .line 34
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    iget-object v5, v4, Ls3/b/a/f/g;->h:Ls3/b/a/f/j;

    const-string v13, "before updateTexImage"

    invoke-virtual {v5, v13}, Ls3/b/a/f/j;->a(Ljava/lang/String;)V

    .line 36
    iget-object v4, v4, Ls3/b/a/f/g;->d:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 37
    iget-object v4, v1, Ls3/b/a/f/l;->k:Ls3/b/a/f/g;

    .line 38
    iget-object v5, v4, Ls3/b/a/f/g;->h:Ls3/b/a/f/j;

    iget-object v4, v4, Ls3/b/a/f/g;->d:Landroid/graphics/SurfaceTexture;

    const-string v13, "onDrawFrame start"

    .line 39
    invoke-virtual {v5, v13}, Ls3/b/a/f/j;->a(Ljava/lang/String;)V

    .line 40
    iget-object v13, v5, Ls3/b/a/f/j;->d:[F

    invoke-virtual {v4, v13}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/4 v4, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    .line 41
    invoke-static {v4, v13, v4, v13}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v4, 0x4100

    .line 42
    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 43
    iget v4, v5, Ls3/b/a/f/j;->e:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v4, "glUseProgram"

    .line 44
    invoke-virtual {v5, v4}, Ls3/b/a/f/j;->a(Ljava/lang/String;)V

    const v4, 0x84c0

    .line 45
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 46
    iget v4, v5, Ls3/b/a/f/j;->f:I

    const v13, 0x8d65

    invoke-static {v13, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 47
    iget-object v4, v5, Ls3/b/a/f/j;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 48
    iget v13, v5, Ls3/b/a/f/j;->i:I

    iget-object v4, v5, Ls3/b/a/f/j;->b:Ljava/nio/FloatBuffer;

    const/4 v14, 0x3

    const/16 v15, 0x1406

    const/16 v16, 0x0

    const/16 v17, 0x14

    move-object/from16 v18, v4

    invoke-static/range {v13 .. v18}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v4, "glVertexAttribPointer maPosition"

    .line 49
    invoke-virtual {v5, v4}, Ls3/b/a/f/j;->a(Ljava/lang/String;)V

    .line 50
    iget v4, v5, Ls3/b/a/f/j;->i:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v4, "glEnableVertexAttribArray maPositionHandle"

    .line 51
    invoke-virtual {v5, v4}, Ls3/b/a/f/j;->a(Ljava/lang/String;)V

    .line 52
    iget-object v4, v5, Ls3/b/a/f/j;->b:Ljava/nio/FloatBuffer;

    const/4 v13, 0x3

    invoke-virtual {v4, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    iget v14, v5, Ls3/b/a/f/j;->j:I

    iget-object v4, v5, Ls3/b/a/f/j;->b:Ljava/nio/FloatBuffer;

    const/4 v15, 0x2

    const/16 v16, 0x1406

    const/16 v17, 0x0

    const/16 v18, 0x14

    move-object/from16 v19, v4

    invoke-static/range {v14 .. v19}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v4, "glVertexAttribPointer maTextureHandle"

    .line 54
    invoke-virtual {v5, v4}, Ls3/b/a/f/j;->a(Ljava/lang/String;)V

    .line 55
    iget v4, v5, Ls3/b/a/f/j;->j:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v4, "glEnableVertexAttribArray maTextureHandle"

    .line 56
    invoke-virtual {v5, v4}, Ls3/b/a/f/j;->a(Ljava/lang/String;)V

    .line 57
    iget-object v4, v5, Ls3/b/a/f/j;->c:[F

    invoke-static {v4, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 58
    iget v4, v5, Ls3/b/a/f/j;->g:I

    iget-object v13, v5, Ls3/b/a/f/j;->c:[F

    invoke-static {v4, v2, v0, v13, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 59
    iget v4, v5, Ls3/b/a/f/j;->h:I

    iget-object v13, v5, Ls3/b/a/f/j;->d:[F

    invoke-static {v4, v2, v0, v13, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v4, 0x5

    .line 60
    invoke-static {v4, v0, v12}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v4, "glDrawArrays"

    .line 61
    invoke-virtual {v5, v4}, Ls3/b/a/f/j;->a(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 63
    iget-object v4, v1, Ls3/b/a/f/l;->l:Ls3/b/a/f/d;

    iget-object v5, v1, Ls3/b/a/f/l;->e:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v12, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    .line 64
    iget-object v5, v4, Ls3/b/a/f/d;->a:Landroid/opengl/EGLDisplay;

    iget-object v4, v4, Ls3/b/a/f/d;->c:Landroid/opengl/EGLSurface;

    invoke-static {v5, v4, v12, v13}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 65
    iget-object v4, v1, Ls3/b/a/f/l;->l:Ls3/b/a/f/d;

    .line 66
    iget-object v5, v4, Ls3/b/a/f/d;->a:Landroid/opengl/EGLDisplay;

    iget-object v4, v4, Ls3/b/a/f/d;->c:Landroid/opengl/EGLSurface;

    invoke-static {v5, v4}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 67
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_f
    :goto_5
    move v4, v9

    goto :goto_6

    :cond_10
    move v4, v2

    :goto_6
    if-eqz v4, :cond_11

    move v3, v2

    :cond_11
    if-eq v4, v2, :cond_8

    .line 68
    :goto_7
    iget-boolean v4, v1, Ls3/b/a/f/l;->m:Z

    if-eqz v4, :cond_12

    :goto_8
    move v4, v0

    goto :goto_a

    .line 69
    :cond_12
    iget-object v4, v1, Ls3/b/a/f/l;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v4

    if-ltz v4, :cond_13

    .line 70
    iget v5, v1, Ls3/b/a/f/l;->b:I

    if-eq v4, v5, :cond_13

    goto :goto_8

    .line 71
    :cond_13
    iget-object v5, v1, Ls3/b/a/f/l;->f:Landroid/media/MediaCodec;

    invoke-virtual {v5, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v13

    if-gez v13, :cond_14

    goto :goto_8

    :cond_14
    if-gez v4, :cond_15

    .line 72
    iput-boolean v2, v1, Ls3/b/a/f/l;->m:Z

    .line 73
    iget-object v12, v1, Ls3/b/a/f/l;->f:Landroid/media/MediaCodec;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x4

    invoke-virtual/range {v12 .. v18}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_8

    .line 74
    :cond_15
    iget-object v4, v1, Ls3/b/a/f/l;->a:Landroid/media/MediaExtractor;

    iget-object v5, v1, Ls3/b/a/f/l;->h:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v13

    invoke-virtual {v4, v5, v0}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v15

    .line 75
    iget-object v4, v1, Ls3/b/a/f/l;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v4

    and-int/2addr v4, v2

    if-eqz v4, :cond_16

    move/from16 v18, v2

    goto :goto_9

    :cond_16
    move/from16 v18, v0

    .line 76
    :goto_9
    iget-object v12, v1, Ls3/b/a/f/l;->f:Landroid/media/MediaCodec;

    const/4 v14, 0x0

    iget-object v4, v1, Ls3/b/a/f/l;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v16

    invoke-virtual/range {v12 .. v18}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 77
    iget-object v4, v1, Ls3/b/a/f/l;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    move v4, v9

    :goto_a
    if-eqz v4, :cond_17

    move v3, v2

    goto :goto_7

    :cond_17
    return v3
.end method

.method public b()V
    .locals 7

    const-string v0, "mime"

    .line 1
    iget-object v1, p0, Ls3/b/a/f/l;->a:Landroid/media/MediaExtractor;

    iget v2, p0, Ls3/b/a/f/l;->b:I

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 2
    :try_start_0
    iget-object v1, p0, Ls3/b/a/f/l;->c:Landroid/media/MediaFormat;

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Ls3/b/a/f/l;->g:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    iget-object v2, p0, Ls3/b/a/f/l;->c:Landroid/media/MediaFormat;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 4
    new-instance v1, Ls3/b/a/f/d;

    iget-object v2, p0, Ls3/b/a/f/l;->g:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v1, v2}, Ls3/b/a/f/d;-><init>(Landroid/view/Surface;)V

    iput-object v1, p0, Ls3/b/a/f/l;->l:Ls3/b/a/f/d;

    .line 5
    iget-object v2, v1, Ls3/b/a/f/d;->a:Landroid/opengl/EGLDisplay;

    iget-object v5, v1, Ls3/b/a/f/d;->c:Landroid/opengl/EGLSurface;

    iget-object v1, v1, Ls3/b/a/f/d;->b:Landroid/opengl/EGLContext;

    invoke-static {v2, v5, v5, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Ls3/b/a/f/l;->g:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 7
    iput-boolean v4, p0, Ls3/b/a/f/l;->q:Z

    .line 8
    iget-object v1, p0, Ls3/b/a/f/l;->g:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Ls3/b/a/f/l;->i:[Ljava/nio/ByteBuffer;

    .line 9
    iget-object v1, p0, Ls3/b/a/f/l;->a:Landroid/media/MediaExtractor;

    iget v2, p0, Ls3/b/a/f/l;->b:I

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "rotation-degrees"

    .line 10
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 11
    invoke-virtual {v1, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 12
    :cond_0
    new-instance v2, Ls3/b/a/f/g;

    invoke-direct {v2}, Ls3/b/a/f/g;-><init>()V

    iput-object v2, p0, Ls3/b/a/f/l;->k:Ls3/b/a/f/g;

    .line 13
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Ls3/b/a/f/l;->f:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    iget-object v2, p0, Ls3/b/a/f/l;->k:Ls3/b/a/f/g;

    .line 15
    iget-object v2, v2, Ls3/b/a/f/g;->e:Landroid/view/Surface;

    .line 16
    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 17
    iget-object v0, p0, Ls3/b/a/f/l;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 18
    iput-boolean v4, p0, Ls3/b/a/f/l;->p:Z

    .line 19
    iget-object v0, p0, Ls3/b/a/f/l;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ls3/b/a/f/l;->h:[Ljava/nio/ByteBuffer;

    return-void

    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    .line 22
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ls3/b/a/f/l;->r:J

    return-wide v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls3/b/a/f/l;->o:Z

    return v0
.end method

.method public e()Landroid/media/MediaFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Ls3/b/a/f/l;->j:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public release()V
    .locals 4

    .line 1
    iget-object v0, p0, Ls3/b/a/f/l;->k:Ls3/b/a/f/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v2, v0, Ls3/b/a/f/g;->a:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v2, v3, :cond_0

    .line 3
    iget-object v3, v0, Ls3/b/a/f/g;->c:Landroid/opengl/EGLSurface;

    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 4
    iget-object v2, v0, Ls3/b/a/f/g;->a:Landroid/opengl/EGLDisplay;

    iget-object v3, v0, Ls3/b/a/f/g;->b:Landroid/opengl/EGLContext;

    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 5
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 6
    iget-object v2, v0, Ls3/b/a/f/g;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v2}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 7
    :cond_0
    iget-object v2, v0, Ls3/b/a/f/g;->e:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 8
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v2, v0, Ls3/b/a/f/g;->a:Landroid/opengl/EGLDisplay;

    .line 9
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v2, v0, Ls3/b/a/f/g;->b:Landroid/opengl/EGLContext;

    .line 10
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v2, v0, Ls3/b/a/f/g;->c:Landroid/opengl/EGLSurface;

    .line 11
    iput-object v1, v0, Ls3/b/a/f/g;->h:Ls3/b/a/f/j;

    .line 12
    iput-object v1, v0, Ls3/b/a/f/g;->e:Landroid/view/Surface;

    .line 13
    iput-object v1, v0, Ls3/b/a/f/g;->d:Landroid/graphics/SurfaceTexture;

    .line 14
    iput-object v1, p0, Ls3/b/a/f/l;->k:Ls3/b/a/f/g;

    .line 15
    :cond_1
    iget-object v0, p0, Ls3/b/a/f/l;->l:Ls3/b/a/f/d;

    if-eqz v0, :cond_3

    .line 16
    iget-object v2, v0, Ls3/b/a/f/d;->a:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v2, v3, :cond_2

    .line 17
    iget-object v3, v0, Ls3/b/a/f/d;->c:Landroid/opengl/EGLSurface;

    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 18
    iget-object v2, v0, Ls3/b/a/f/d;->a:Landroid/opengl/EGLDisplay;

    iget-object v3, v0, Ls3/b/a/f/d;->b:Landroid/opengl/EGLContext;

    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 19
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 20
    iget-object v2, v0, Ls3/b/a/f/d;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v2}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 21
    :cond_2
    iget-object v2, v0, Ls3/b/a/f/d;->d:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 22
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v2, v0, Ls3/b/a/f/d;->a:Landroid/opengl/EGLDisplay;

    .line 23
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v2, v0, Ls3/b/a/f/d;->b:Landroid/opengl/EGLContext;

    .line 24
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v2, v0, Ls3/b/a/f/d;->c:Landroid/opengl/EGLSurface;

    .line 25
    iput-object v1, v0, Ls3/b/a/f/d;->d:Landroid/view/Surface;

    .line 26
    iput-object v1, p0, Ls3/b/a/f/l;->l:Ls3/b/a/f/d;

    .line 27
    :cond_3
    iget-object v0, p0, Ls3/b/a/f/l;->f:Landroid/media/MediaCodec;

    if-eqz v0, :cond_5

    .line 28
    iget-boolean v2, p0, Ls3/b/a/f/l;->p:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 29
    :cond_4
    iget-object v0, p0, Ls3/b/a/f/l;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 30
    iput-object v1, p0, Ls3/b/a/f/l;->f:Landroid/media/MediaCodec;

    .line 31
    :cond_5
    iget-object v0, p0, Ls3/b/a/f/l;->g:Landroid/media/MediaCodec;

    if-eqz v0, :cond_7

    .line 32
    iget-boolean v2, p0, Ls3/b/a/f/l;->q:Z

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 33
    :cond_6
    iget-object v0, p0, Ls3/b/a/f/l;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 34
    iput-object v1, p0, Ls3/b/a/f/l;->g:Landroid/media/MediaCodec;

    :cond_7
    return-void
.end method
