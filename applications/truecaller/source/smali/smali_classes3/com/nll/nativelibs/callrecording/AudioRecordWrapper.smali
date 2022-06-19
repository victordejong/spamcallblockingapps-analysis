.class public Lcom/nll/nativelibs/callrecording/AudioRecordWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nll/nativelibs/callrecording/AudioRecordInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nll/nativelibs/callrecording/AudioRecordWrapper$ErrorListener;
    }
.end annotation


# instance fields
.field private final mAudioRecord:Landroid/media/AudioRecord;

.field private final useApi3:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIILcom/nll/nativelibs/callrecording/AudioRecordWrapper$ErrorListener;)V
    .locals 11

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/nll/nativelibs/callrecording/AudioRecordWrapper;->useApi3:Z

    .line 3
    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->useNativeAudioRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->getNativeCPUCommand()I

    move-result v7

    const-wide/16 v8, 0x0

    const-string v10, ""

    move-object v2, p1

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 5
    invoke-static/range {v2 .. v10}, Lcom/nll/nativelibs/callrecording/Native;->init(Landroid/content/Context;IIIIIJLjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioRecord;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->getNativeCPUCommand()I

    if-eqz v1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance v1, Landroid/media/AudioRecord;

    move-object v2, v1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    :goto_1
    iput-object v1, v0, Lcom/nll/nativelibs/callrecording/AudioRecordWrapper;->mAudioRecord:Landroid/media/AudioRecord;

    const-wide/16 v2, 0x0

    const-string v4, ""

    .line 8
    invoke-static {v2, v3, v4}, Lcom/nll/nativelibs/callrecording/Native;->getExpiry(JLjava/lang/String;)J

    .line 9
    invoke-static {p1}, Lcom/nll/nativelibs/callrecording/Native;->checkPackageAndCert(Landroid/content/Context;)I

    .line 10
    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->isAndroid71FixRequired()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11
    invoke-static {}, Lcom/nll/nativelibs/callrecording/DeviceHelper;->sleepForAndroid71()V

    .line 12
    sget v5, Lcom/nll/nativelibs/callrecording/Native;->FIX_ANDROID_7_1_ON:I

    invoke-static {v5}, Lcom/nll/nativelibs/callrecording/Native;->fixAndroid71(I)I

    :cond_2
    move-object v5, p1

    .line 13
    invoke-static {p1, v1, v2, v3, v4}, Lcom/nll/nativelibs/callrecording/Native;->start7(Landroid/content/Context;Landroid/media/AudioRecord;JLjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    new-instance v2, Lcom/truecaller/log/UnmutedException$f;

    const-string v3, "Error in call recorder: "

    invoke-static {v3, v1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/truecaller/log/UnmutedException$f;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p7

    invoke-interface {v1, v2}, Lcom/nll/nativelibs/callrecording/AudioRecordWrapper$ErrorListener;->onError(Ljava/lang/Exception;)V

    :cond_3
    return-void
.end method

.method private synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/nll/nativelibs/callrecording/Native;->stop7()I

    return-void
.end method


# virtual methods
.method public getRecordingState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nll/nativelibs/callrecording/AudioRecordWrapper;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nll/nativelibs/callrecording/AudioRecordWrapper;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/nll/nativelibs/callrecording/AudioRecordWrapper;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nll/nativelibs/callrecording/AudioRecordWrapper;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioRecord;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([SII)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/nll/nativelibs/callrecording/AudioRecordWrapper;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioRecord;->read([SII)I

    move-result p1

    return p1
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nll/nativelibs/callrecording/AudioRecordWrapper;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    return-void
.end method

.method public declared-synchronized startRecording()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/nll/nativelibs/callrecording/AudioRecordWrapper;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Le/o/a/a/a;

    invoke-direct {v1, p0}, Le/o/a/a/a;-><init>(Lcom/nll/nativelibs/callrecording/AudioRecordWrapper;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nll/nativelibs/callrecording/AudioRecordWrapper;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    return-void
.end method
