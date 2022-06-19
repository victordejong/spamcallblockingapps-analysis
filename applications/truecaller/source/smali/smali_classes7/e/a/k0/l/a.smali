.class public Le/a/k0/l/a;
.super Le/a/k0/l/b;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/callrecording/recorder/CallRecorder;
.implements Lcom/nll/nativelibs/callrecording/AudioRecordWrapper$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/k0/l/a$a;
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Lcom/truecaller/callrecording/recorder/CallRecorder$a;

.field public final e:Landroid/content/Context;

.field public f:Le/a/k0/l/a$a;

.field public volatile g:Z

.field public h:Landroid/media/MediaMuxer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/callrecording/recorder/CallRecorder$a;Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/k0/l/b;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/k0/l/a;->c:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Le/a/k0/l/a;->d:Lcom/truecaller/callrecording/recorder/CallRecorder$a;

    .line 4
    iput-object p3, p0, Le/a/k0/l/a;->e:Landroid/content/Context;

    .line 5
    iput p4, p0, Le/a/k0/l/a;->b:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    const/16 v0, 0x10

    const/16 v1, 0x1f40

    const/4 v2, 0x2

    .line 1
    :try_start_0
    invoke-static {v1, v0, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    const/16 v3, 0x6000

    const/16 v4, 0x400

    const/4 v5, 0x1

    if-ge v3, v0, :cond_0

    .line 2
    div-int/2addr v0, v4

    add-int/2addr v0, v5

    mul-int/2addr v0, v4

    mul-int/lit8 v3, v0, 0x2

    :cond_0
    move v12, v3

    .line 3
    new-instance v0, Lcom/nll/nativelibs/callrecording/AudioRecordWrapper;

    iget-object v7, p0, Le/a/k0/l/a;->e:Landroid/content/Context;

    iget v8, p0, Le/a/k0/l/a;->b:I

    const/16 v9, 0x1f40

    const/16 v10, 0x10

    const/4 v11, 0x2

    move-object v6, v0

    move-object v13, p0

    invoke-direct/range {v6 .. v13}, Lcom/nll/nativelibs/callrecording/AudioRecordWrapper;-><init>(Landroid/content/Context;IIIIILcom/nll/nativelibs/callrecording/AudioRecordWrapper$ErrorListener;)V

    .line 4
    invoke-interface {v0}, Lcom/nll/nativelibs/callrecording/AudioRecordInterface;->getState()I

    move-result v3

    if-ne v3, v5, :cond_1

    const-string v3, "audio/mp4a-latm"

    .line 5
    invoke-static {v3, v1, v5}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v3, "aac-profile"

    .line 6
    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "max-input-size"

    const/16 v3, 0x2000

    .line 7
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "bitrate"

    const v3, 0x8000

    .line 8
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "audio/mp4a-latm"

    .line 9
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v2, v1, v3, v3, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 11
    new-instance v1, Le/a/k0/l/a$a;

    invoke-direct {v1, p0, v0, v2, v4}, Le/a/k0/l/a$a;-><init>(Le/a/k0/l/a;Lcom/nll/nativelibs/callrecording/AudioRecordInterface;Landroid/media/MediaCodec;I)V

    iput-object v1, p0, Le/a/k0/l/a;->f:Le/a/k0/l/a$a;

    .line 12
    sget-object v0, Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;->READY:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    iput-object v0, p0, Le/a/k0/l/b;->a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    .line 14
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioRecordWrapper initialization failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    :try_start_2
    sget-object v1, Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;->ERROR:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    iput-object v1, p0, Le/a/k0/l/b;->a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    .line 16
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;->ERROR:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    iput-object v0, p0, Le/a/k0/l/b;->a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    .line 2
    iget-object v0, p0, Le/a/k0/l/a;->d:Lcom/truecaller/callrecording/recorder/CallRecorder$a;

    invoke-interface {v0, p1}, Lcom/truecaller/callrecording/recorder/CallRecorder$a;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public declared-synchronized start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start:: mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/k0/l/b;->a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/k0/l/b;->a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    sget-object v1, Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;->READY:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Le/a/k0/l/a;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Le/a/k0/l/a;->h:Landroid/media/MediaMuxer;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Le/a/k0/l/a;->g:Z

    .line 5
    sget-object v0, Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;->RECORDING:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    iput-object v0, p0, Le/a/k0/l/b;->a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    .line 6
    iget-object v0, p0, Le/a/k0/l/a;->f:Le/a/k0/l/a$a;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_0
    :try_start_1
    sget-object v0, Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;->ERROR:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    iput-object v0, p0, Le/a/k0/l/b;->a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recorder cannot be started/restarted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop: mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/k0/l/b;->a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/k0/l/a;->f:Le/a/k0/l/a$a;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Le/a/k0/l/a$a;->d:Z

    .line 4
    iget-object v0, p0, Le/a/k0/l/b;->a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    sget-object v1, Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;->RECORDING:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    if-ne v0, v1, :cond_0

    .line 5
    sget-object v0, Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;->STOPPED:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    iput-object v0, p0, Le/a/k0/l/b;->a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    sget-object v0, Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;->ERROR:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    iput-object v0, p0, Le/a/k0/l/b;->a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recorder not recording"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
