.class public Le/a/k0/l/a$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/k0/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/nll/nativelibs/callrecording/AudioRecordInterface;

.field public final b:Landroid/media/MediaCodec;

.field public final c:I

.field public volatile d:Z

.field public e:J

.field public f:Z

.field public final synthetic g:Le/a/k0/l/a;


# direct methods
.method public constructor <init>(Le/a/k0/l/a;Lcom/nll/nativelibs/callrecording/AudioRecordInterface;Landroid/media/MediaCodec;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/k0/l/a$a;->g:Le/a/k0/l/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/a/k0/l/a$a;->d:Z

    .line 3
    iput-object p2, p0, Le/a/k0/l/a$a;->a:Lcom/nll/nativelibs/callrecording/AudioRecordInterface;

    .line 4
    iput-object p3, p0, Le/a/k0/l/a$a;->b:Landroid/media/MediaCodec;

    .line 5
    iput p4, p0, Le/a/k0/l/a$a;->c:I

    .line 6
    invoke-virtual {p3}, Landroid/media/MediaCodec;->start()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget v0, v1, Le/a/k0/l/a$a;->c:I

    new-array v10, v0, [B

    .line 2
    iget-object v3, v1, Le/a/k0/l/a$a;->a:Lcom/nll/nativelibs/callrecording/AudioRecordInterface;

    invoke-interface {v3}, Lcom/nll/nativelibs/callrecording/AudioRecordInterface;->startRecording()V

    .line 3
    new-instance v11, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v11}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v3, 0x0

    .line 4
    iget-object v4, v1, Le/a/k0/l/a$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    move v13, v2

    :goto_0
    move-object v12, v4

    .line 5
    :cond_0
    :goto_1
    iget-boolean v4, v1, Le/a/k0/l/a$a;->d:Z

    if-eqz v4, :cond_c

    .line 6
    iget-object v4, v1, Le/a/k0/l/a$a;->a:Lcom/nll/nativelibs/callrecording/AudioRecordInterface;

    invoke-interface {v4, v10, v2, v0}, Lcom/nll/nativelibs/callrecording/AudioRecordInterface;->read([BII)I

    move-result v4

    const/4 v14, -0x2

    if-eq v4, v14, :cond_c

    const/4 v15, -0x3

    if-ne v4, v15, :cond_1

    goto/16 :goto_2

    .line 7
    :cond_1
    iget-object v4, v1, Le/a/k0/l/a$a;->g:Le/a/k0/l/a;

    iget-boolean v4, v4, Le/a/k0/l/a;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_4

    if-nez v3, :cond_2

    .line 8
    :try_start_1
    iget-object v3, v1, Le/a/k0/l/a$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    :cond_2
    move-object/from16 v16, v3

    .line 9
    iget-object v3, v1, Le/a/k0/l/a$a;->b:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-ltz v4, :cond_3

    .line 10
    aget-object v3, v16, v4

    .line 11
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 12
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 13
    iget-wide v5, v1, Le/a/k0/l/a$a;->e:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    const-wide/16 v17, 0x3e8

    div-long v7, v7, v17

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v1, Le/a/k0/l/a$a;->e:J

    .line 14
    iget-object v3, v1, Le/a/k0/l/a$a;->b:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move v6, v0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move-object/from16 v3, v16

    .line 15
    :cond_4
    :try_start_2
    iget-object v4, v1, Le/a/k0/l/a$a;->b:Landroid/media/MediaCodec;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v11, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    goto :goto_1

    :cond_5
    if-ne v4, v15, :cond_6

    .line 16
    iget-object v4, v1, Le/a/k0/l/a$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    goto :goto_0

    :cond_6
    if-ne v4, v14, :cond_7

    .line 17
    iget-object v4, v1, Le/a/k0/l/a$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 18
    iget-object v5, v1, Le/a/k0/l/a$a;->g:Le/a/k0/l/a;

    iget-object v5, v5, Le/a/k0/l/a;->h:Landroid/media/MediaMuxer;

    invoke-virtual {v5, v4}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v13

    .line 19
    iget-object v4, v1, Le/a/k0/l/a$a;->g:Le/a/k0/l/a;

    iget-object v4, v4, Le/a/k0/l/a;->h:Landroid/media/MediaMuxer;

    invoke-virtual {v4}, Landroid/media/MediaMuxer;->start()V

    const/4 v4, 0x1

    .line 20
    iput-boolean v4, v1, Le/a/k0/l/a$a;->f:Z

    goto/16 :goto_1

    :cond_7
    if-gez v4, :cond_8

    goto/16 :goto_1

    .line 21
    :cond_8
    aget-object v5, v12, v4

    if-eqz v5, :cond_b

    .line 22
    iget v6, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_9

    .line 23
    iput v2, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 24
    :cond_9
    iget v6, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_a

    .line 25
    iget v6, v11, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 26
    iget v6, v11, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v7, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 27
    iget-object v6, v1, Le/a/k0/l/a$a;->g:Le/a/k0/l/a;

    iget-boolean v6, v6, Le/a/k0/l/a;->g:Z

    if-eqz v6, :cond_a

    .line 28
    iget-object v6, v1, Le/a/k0/l/a$a;->g:Le/a/k0/l/a;

    iget-object v6, v6, Le/a/k0/l/a;->h:Landroid/media/MediaMuxer;

    invoke-virtual {v6, v13, v5, v11}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 29
    :cond_a
    iget-object v5, v1, Le/a/k0/l/a$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v5, v4, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 30
    iget v4, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 31
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encoderOutputBuffer "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " was null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    :catchall_0
    :cond_c
    :goto_2
    :try_start_3
    iget-object v0, v1, Le/a/k0/l/a$a;->a:Lcom/nll/nativelibs/callrecording/AudioRecordInterface;

    invoke-interface {v0}, Lcom/nll/nativelibs/callrecording/AudioRecordInterface;->stop()V

    .line 33
    iget-object v0, v1, Le/a/k0/l/a$a;->a:Lcom/nll/nativelibs/callrecording/AudioRecordInterface;

    invoke-interface {v0}, Lcom/nll/nativelibs/callrecording/AudioRecordInterface;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 34
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 35
    :goto_3
    :try_start_4
    iget-object v0, v1, Le/a/k0/l/a$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 36
    iget-object v0, v1, Le/a/k0/l/a$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 37
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 38
    :goto_4
    :try_start_5
    iget-object v0, v1, Le/a/k0/l/a$a;->g:Le/a/k0/l/a;

    iget-object v0, v0, Le/a/k0/l/a;->h:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_f

    .line 39
    iget-boolean v3, v1, Le/a/k0/l/a$a;->f:Z

    if-eqz v3, :cond_d

    .line 40
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 41
    iput-boolean v2, v1, Le/a/k0/l/a$a;->f:Z

    .line 42
    :cond_d
    iget-object v0, v1, Le/a/k0/l/a$a;->g:Le/a/k0/l/a;

    iget-object v0, v0, Le/a/k0/l/a;->h:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_8

    :catch_2
    move-exception v0

    .line 43
    :try_start_6
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 44
    iget-object v3, v1, Le/a/k0/l/a$a;->g:Le/a/k0/l/a;

    .line 45
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v4, Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;->ERROR:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    iput-object v4, v3, Le/a/k0/l/b;->a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    .line 47
    iget-object v3, v3, Le/a/k0/l/a;->d:Lcom/truecaller/callrecording/recorder/CallRecorder$a;

    invoke-interface {v3, v0}, Lcom/truecaller/callrecording/recorder/CallRecorder$a;->onError(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 48
    :try_start_7
    iget-object v0, v1, Le/a/k0/l/a$a;->a:Lcom/nll/nativelibs/callrecording/AudioRecordInterface;

    invoke-interface {v0}, Lcom/nll/nativelibs/callrecording/AudioRecordInterface;->stop()V

    .line 49
    iget-object v0, v1, Le/a/k0/l/a$a;->a:Lcom/nll/nativelibs/callrecording/AudioRecordInterface;

    invoke-interface {v0}, Lcom/nll/nativelibs/callrecording/AudioRecordInterface;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 50
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 51
    :goto_5
    :try_start_8
    iget-object v0, v1, Le/a/k0/l/a$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 52
    iget-object v0, v1, Le/a/k0/l/a$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 53
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 54
    :goto_6
    :try_start_9
    iget-object v0, v1, Le/a/k0/l/a$a;->g:Le/a/k0/l/a;

    iget-object v0, v0, Le/a/k0/l/a;->h:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_f

    .line 55
    iget-boolean v3, v1, Le/a/k0/l/a$a;->f:Z

    if-eqz v3, :cond_e

    .line 56
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 57
    iput-boolean v2, v1, Le/a/k0/l/a$a;->f:Z

    .line 58
    :cond_e
    iget-object v0, v1, Le/a/k0/l/a$a;->g:Le/a/k0/l/a;

    iget-object v0, v0, Le/a/k0/l/a;->h:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    .line 59
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_f
    :goto_7
    return-void

    .line 60
    :goto_8
    :try_start_a
    iget-object v0, v1, Le/a/k0/l/a$a;->a:Lcom/nll/nativelibs/callrecording/AudioRecordInterface;

    invoke-interface {v0}, Lcom/nll/nativelibs/callrecording/AudioRecordInterface;->stop()V

    .line 61
    iget-object v0, v1, Le/a/k0/l/a$a;->a:Lcom/nll/nativelibs/callrecording/AudioRecordInterface;

    invoke-interface {v0}, Lcom/nll/nativelibs/callrecording/AudioRecordInterface;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_9

    :catch_6
    move-exception v0

    .line 62
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 63
    :goto_9
    :try_start_b
    iget-object v0, v1, Le/a/k0/l/a$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 64
    iget-object v0, v1, Le/a/k0/l/a$a;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_a

    :catch_7
    move-exception v0

    .line 65
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 66
    :goto_a
    :try_start_c
    iget-object v0, v1, Le/a/k0/l/a$a;->g:Le/a/k0/l/a;

    iget-object v0, v0, Le/a/k0/l/a;->h:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_11

    .line 67
    iget-boolean v4, v1, Le/a/k0/l/a$a;->f:Z

    if-eqz v4, :cond_10

    .line 68
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 69
    iput-boolean v2, v1, Le/a/k0/l/a$a;->f:Z

    .line 70
    :cond_10
    iget-object v0, v1, Le/a/k0/l/a$a;->g:Le/a/k0/l/a;

    iget-object v0, v0, Le/a/k0/l/a;->h:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_b

    :catch_8
    move-exception v0

    .line 71
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 72
    :cond_11
    :goto_b
    throw v3
.end method
