.class public Le/a/k0/l/n;
.super Le/a/k0/l/b;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/callrecording/recorder/CallRecorder;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/ContentResolver;

.field public final d:Z

.field public final e:I

.field public final f:Landroid/media/MediaRecorder;

.field public g:Landroid/os/ParcelFileDescriptor;

.field public h:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentResolver;ZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/k0/l/b;-><init>()V

    .line 2
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Le/a/k0/l/n;->f:Landroid/media/MediaRecorder;

    .line 3
    iput-object p1, p0, Le/a/k0/l/n;->b:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Le/a/k0/l/n;->c:Landroid/content/ContentResolver;

    .line 5
    iput-boolean p3, p0, Le/a/k0/l/n;->d:Z

    .line 6
    iput p4, p0, Le/a/k0/l/n;->e:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/k0/l/n;->f:Landroid/media/MediaRecorder;

    iget v1, p0, Le/a/k0/l/n;->e:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 2
    iget-boolean v0, p0, Le/a/k0/l/n;->d:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/k0/l/n;->f:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 4
    iget-object v0, p0, Le/a/k0/l/n;->f:Landroid/media/MediaRecorder;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 5
    iget-object v0, p0, Le/a/k0/l/n;->f:Landroid/media/MediaRecorder;

    const v1, 0x17700

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 6
    iget-object v0, p0, Le/a/k0/l/n;->f:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Le/a/k0/l/n;->f:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 8
    iget-object v0, p0, Le/a/k0/l/n;->f:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 9
    :goto_0
    sget-object v0, Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;->READY:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    iput-object v0, p0, Le/a/k0/l/b;->a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    :try_start_1
    sget-object v1, Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;->ERROR:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    iput-object v1, p0, Le/a/k0/l/b;->a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    .line 12
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/k0/l/b;->a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    sget-object v1, Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;->READY:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_2

    .line 2
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Le/a/k0/l/n;->h:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/k0/l/n;->h:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 5
    :cond_0
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Le/a/k0/l/n;->h:Landroid/os/CancellationSignal;

    .line 6
    iget-object v0, p0, Le/a/k0/l/n;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Le/a/k0/l/n;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "w"

    iget-object v3, p0, Le/a/k0/l/n;->h:Landroid/os/CancellationSignal;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Le/a/k0/l/n;->g:Landroid/os/ParcelFileDescriptor;

    .line 7
    iget-object v1, p0, Le/a/k0/l/n;->f:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/k0/l/n;->f:Landroid/media/MediaRecorder;

    iget-object v1, p0, Le/a/k0/l/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 9
    :goto_0
    iget-object v0, p0, Le/a/k0/l/n;->f:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 10
    iget-object v0, p0, Le/a/k0/l/n;->f:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 11
    sget-object v0, Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;->RECORDING:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    iput-object v0, p0, Le/a/k0/l/b;->a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 13
    :try_start_2
    sget-object v1, Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;->ERROR:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    iput-object v1, p0, Le/a/k0/l/b;->a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    .line 14
    throw v0

    .line 15
    :cond_2
    sget-object v0, Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;->ERROR:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    iput-object v0, p0, Le/a/k0/l/b;->a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    .line 16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recorder cannot be started/restarted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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
    iget-object v0, p0, Le/a/k0/l/b;->a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    sget-object v1, Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;->RECORDING:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Le/a/k0/l/n;->f:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 3
    iget-object v0, p0, Le/a/k0/l/n;->f:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 4
    sget-object v0, Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;->STOPPED:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    iput-object v0, p0, Le/a/k0/l/b;->a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    .line 5
    iget-object v0, p0, Le/a/k0/l/n;->g:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 7
    :cond_0
    iget-object v0, p0, Le/a/k0/l/n;->h:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_1
    monitor-exit p0

    return-void

    .line 10
    :cond_2
    :try_start_1
    sget-object v0, Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;->ERROR:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    iput-object v0, p0, Le/a/k0/l/b;->a:Lcom/truecaller/callrecording/recorder/CallRecorder$RecordingState;

    .line 11
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
