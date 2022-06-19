.class public Lio/agora/rtc/audio/AudioDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"


# instance fields
.field private final LAST_READ_TIME:I

.field private final LAST_WRITE_TIME:I

.field private final POSITION_PLAY_APP:I

.field private final POSITION_PLAY_SYS:I

.field private final POSITION_REC_APP:I

.field private final POSITION_REC_SYS:I

.field public final TAG:Ljava/lang/String;

.field private final _MaxRecPlay10msBlocks:I

.field private _audioManager:Landroid/media/AudioManager;

.field private _audioRecord:Landroid/media/AudioRecord;

.field private _audioStatistic:[J

.field private _audioTrack:Landroid/media/AudioTrack;

.field private _bufferedPlaySamples:I

.field private _bufferedRecSamples:I

.field private _context:Landroid/content/Context;

.field private _currentTotalPostion:J

.field private _doPlayInit:Z

.field private _doRecInit:Z

.field private _firstRenderTS:J

.field private _framePostion:J

.field private _isPlaying:Z

.field private _isRecording:Z

.field private _lastRecDelay:J

.field private _playBufSize:I

.field private _playBuffer:Ljava/nio/ByteBuffer;

.field private _playChannel:I

.field private final _playLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _playPosition:I

.field private _playPreviousUnderrun:I

.field private _playbackRestartCount:I

.field private _playbackSampleRate:I

.field private _recBuffer:Ljava/nio/ByteBuffer;

.field private _recDelay:J

.field private final _recLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _recPosition:J

.field private _recStartDelay:I

.field private _recStartTS:J

.field private _recordBufSize:I

.field private _recordChannel:I

.field private _recordRestartCount:I

.field private _recordSampleRate:I

.field private _recordSource:I

.field private _renderStart:Z

.field private _sdkVer:I

.field private _streamType:I

.field private _tempBufPlay:[B

.field private _tempBufRec:[B

.field private aec:Landroid/media/audiofx/AcousticEchoCanceler;

.field private currentPlayoutVolume:I

.field private current_time_ms:J

.field private mNativeHandle:J

.field private mVolumeBroadcastReceiver:Lio/agora/rtc/audio/VolumeBroadcastReceiver;

.field private maxDelay:I

.field private playWriten:I

.field private previous_time_ms:J

.field private totalDelay:I

.field private useBuiltInAEC:Z


# direct methods
.method public constructor <init>(J)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AudioDevice Java"

    .line 2
    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    .line 3
    iput v1, p0, Lio/agora/rtc/audio/AudioDevice;->_MaxRecPlay10msBlocks:I

    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 5
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 6
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v3, 0x1

    .line 8
    iput-boolean v3, p0, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z

    .line 9
    iput-boolean v3, p0, Lio/agora/rtc/audio/AudioDevice;->_doRecInit:Z

    const/4 v4, 0x0

    .line 10
    iput-boolean v4, p0, Lio/agora/rtc/audio/AudioDevice;->_isRecording:Z

    .line 11
    iput-boolean v4, p0, Lio/agora/rtc/audio/AudioDevice;->_isPlaying:Z

    const-wide/16 v5, 0x0

    .line 12
    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->previous_time_ms:J

    .line 13
    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->current_time_ms:J

    .line 14
    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    .line 15
    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_framePostion:J

    .line 16
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedRecSamples:I

    .line 17
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    .line 18
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    .line 19
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackSampleRate:I

    .line 20
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_playBufSize:I

    .line 21
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    .line 22
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSampleRate:I

    .line 23
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_recordChannel:I

    .line 24
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    .line 25
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_recordBufSize:I

    .line 26
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSource:I

    .line 27
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I

    .line 28
    iput-boolean v4, p0, Lio/agora/rtc/audio/AudioDevice;->_renderStart:Z

    .line 29
    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    .line 30
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_playPreviousUnderrun:I

    const-wide/16 v7, 0xa

    .line 31
    iput-wide v7, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    .line 32
    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_lastRecDelay:J

    .line 33
    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartTS:J

    .line 34
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I

    .line 35
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v7, p0, Lio/agora/rtc/audio/AudioDevice;->_sdkVer:I

    .line 36
    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recPosition:J

    const/4 v7, 0x6

    new-array v7, v7, [J

    .line 37
    iput-object v7, p0, Lio/agora/rtc/audio/AudioDevice;->_audioStatistic:[J

    .line 38
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->POSITION_PLAY_APP:I

    .line 39
    iput v3, p0, Lio/agora/rtc/audio/AudioDevice;->POSITION_PLAY_SYS:I

    const/4 v3, 0x2

    .line 40
    iput v3, p0, Lio/agora/rtc/audio/AudioDevice;->LAST_WRITE_TIME:I

    const/4 v3, 0x3

    .line 41
    iput v3, p0, Lio/agora/rtc/audio/AudioDevice;->POSITION_REC_APP:I

    .line 42
    iput v1, p0, Lio/agora/rtc/audio/AudioDevice;->POSITION_REC_SYS:I

    const/4 v1, 0x5

    .line 43
    iput v1, p0, Lio/agora/rtc/audio/AudioDevice;->LAST_READ_TIME:I

    .line 44
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 45
    iput-boolean v4, p0, Lio/agora/rtc/audio/AudioDevice;->useBuiltInAEC:Z

    .line 46
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    .line 47
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->playWriten:I

    .line 48
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->maxDelay:I

    .line 49
    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->totalDelay:I

    .line 50
    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->mNativeHandle:J

    const/4 v1, -0x1

    .line 51
    iput v1, p0, Lio/agora/rtc/audio/AudioDevice;->currentPlayoutVolume:I

    .line 52
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->mVolumeBroadcastReceiver:Lio/agora/rtc/audio/VolumeBroadcastReceiver;

    .line 53
    iput-wide p1, p0, Lio/agora/rtc/audio/AudioDevice;->mNativeHandle:J

    const/16 p1, 0x1e00

    .line 54
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    .line 55
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lio/agora/rtc/audio/AudioDevice;->_recBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v1, "failed to allocate bytebuffer"

    .line 56
    invoke-static {v0, v1, p2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-array p2, p1, [B

    .line 57
    iput-object p2, p0, Lio/agora/rtc/audio/AudioDevice;->_tempBufPlay:[B

    new-array p1, p1, [B

    .line 58
    iput-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_tempBufRec:[B

    return-void
.end method

.method private BuiltInAECIsAvailable()Z
    .locals 3

    const-string v0, "AudioDevice Java"

    .line 1
    :try_start_0
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v1, "Unable to query Audio Effect: Acoustic Echo Cancellation"

    .line 2
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Unable to create AEC object "

    .line 3
    invoke-static {v0, v2, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private BuiltInAECIsEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/audio/AudioDevice;->useBuiltInAEC:Z

    return v0
.end method

.method private CheckAudioStatus(I)I
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_7

    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    const/4 v2, -0x1

    const-string v3, "AudioDevice Java"

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v4, "audio"

    .line 4
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    goto :goto_0

    :cond_0
    const-string p1, "CheckAudioStatus error"

    .line 5
    invoke-static {v3, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    :goto_0
    if-nez p1, :cond_7

    .line 6
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const-string v5, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, v5, v0, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    .line 7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const-string v5, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {p1, v5, v0, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_5

    .line 9
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v2

    .line 11
    :cond_3
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioRecordingConfiguration;

    .line 13
    invoke-virtual {v0}, Landroid/media/AudioRecordingConfiguration;->getClientAudioSessionId()I

    move-result v0

    if-eq v0, v2, :cond_4

    const/16 v1, 0x409

    goto :goto_1

    :cond_5
    const-string p1, "CheckAudioStatus unkonwn error"

    .line 14
    invoke-static {v3, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_6
    :goto_2
    const/4 p1, 0x2

    const-string v0, "CheckAudioStatus Microphone Permission denied"

    .line 15
    invoke-static {v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_7
    return v1
.end method

.method private EnableBuiltInAEC(Z)Z
    .locals 2

    .line 1
    iput-boolean p1, p0, Lio/agora/rtc/audio/AudioDevice;->useBuiltInAEC:Z

    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    move-result p1

    const-string v0, "AudioDevice Java"

    if-eqz p1, :cond_0

    const-string p1, "AcousticEchoCanceler.setEnabled failed"

    .line 4
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p1, "AcousticEchoCanceler.getEnabled: "

    .line 5
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v1}, Landroid/media/audiofx/AcousticEchoCanceler;->getEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private GetAudioMode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "audio"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    const-string v0, "AudioDevice Java"

    const-string v1, "Could not change audio routing - no audio manager"

    .line 4
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    return v0
.end method

.method private GetNativePlayDelay()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    .line 3
    :cond_0
    iget v0, p0, Lio/agora/rtc/audio/AudioDevice;->totalDelay:I

    if-gez v0, :cond_1

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lio/agora/rtc/audio/AudioDevice;->totalDelay:I

    .line 5
    :cond_1
    iget v0, p0, Lio/agora/rtc/audio/AudioDevice;->totalDelay:I

    iget-wide v1, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private GetNativeSampleRate()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "audio"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    const v1, 0xac44

    if-nez v0, :cond_1

    const-string v0, "AudioDevice Java"

    const-string v2, "Could not set audio mode - no audio manager"

    .line 4
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const-string v2, "android.media.property.OUTPUT_SAMPLE_RATE"

    .line 5
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_2
    return v1
.end method

.method private GetPlayoutMaxVolume()I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "audio"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    :cond_0
    const/4 v0, -0x1

    .line 3
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 4
    iget v0, p0, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    :cond_1
    return v0
.end method

.method private GetPlayoutVolume()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "audio"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    :cond_0
    const/4 v0, -0x1

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 4
    iget v2, p0, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "AudioDevice Java"

    const-string v2, "getStreamVolume failed! "

    .line 5
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0
.end method

.method private GetPreferedSampleRate()I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "audio"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    const-string v1, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AudioDevice Java"

    const-string v2, "GetPreferedSampleRate error"

    .line 5
    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/16 v0, 0x3e80

    :cond_1
    return v0
.end method

.method private GetUnderrunCount()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lio/agora/rtc/audio/AudioDevice;->GetUnderrunCountOnNougatOrHigher()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lio/agora/rtc/audio/AudioDevice;->GetUnderrunCountOnLowerThanNougat()I

    move-result v0

    return v0
.end method

.method private GetUnderrunCountOnLowerThanNougat()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method private GetUnderrunCountOnNougatOrHigher()I
    .locals 4

    const-string v0, "AudioDevice Java"

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-lt v1, v3, :cond_1

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "getUnderrun fail "

    .line 3
    invoke-static {v0, v3, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v2

    .line 4
    :goto_0
    iget v3, p0, Lio/agora/rtc/audio/AudioDevice;->_playPreviousUnderrun:I

    sub-int v3, v1, v3

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    .line 5
    :goto_1
    iput v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playPreviousUnderrun:I

    if-lez v2, :cond_1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android AudioTrack underrun count: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v2
.end method

.method private InitPlayback(IIII)I
    .locals 15

    move-object v1, p0

    move/from16 v0, p1

    move/from16 v9, p2

    .line 1
    iget-object v2, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    move/from16 v2, p3

    .line 2
    iput v2, v1, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    mul-int v2, p4, v0

    mul-int/2addr v2, v9

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    .line 3
    div-int/lit16 v2, v2, 0x3e8

    const/16 v4, 0xc

    const/4 v5, 0x4

    if-ne v9, v3, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    .line 4
    :goto_0
    invoke-static {v0, v6, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v6

    const-string v7, "Java minimum playback buffer size is "

    const-string v8, ", profiledMiniOutBufferSize is "

    const-string v10, " stream type "

    .line 5
    invoke-static {v7, v6, v8, v2, v10}, Le/d/c/a/a;->F(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "AudioDevice Java"

    invoke-static {v10, v7}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ge v6, v2, :cond_1

    move v11, v2

    goto :goto_1

    :cond_1
    move v11, v6

    :goto_1
    const/4 v12, 0x0

    .line 6
    iput v12, v1, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    const-wide/16 v6, 0x0

    .line 7
    iput-wide v6, v1, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    const-string v2, "Java playback buffer size is "

    const-string v6, ", duration is "

    .line 8
    invoke-static {v2, v11, v6}, Le/d/c/a/a;->E(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit16 v6, v11, 0x3e8

    mul-int v7, v0, v9

    mul-int/2addr v7, v3

    div-int/2addr v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v2, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    const/4 v2, 0x0

    .line 11
    iput-object v2, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    :cond_2
    const/4 v13, -0x1

    .line 12
    :try_start_0
    new-instance v14, Landroid/media/AudioTrack;

    iget v6, v1, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    if-ne v9, v3, :cond_3

    move v5, v4

    :cond_3
    const/4 v7, 0x2

    const/4 v8, 0x1

    move-object v2, v14

    move v3, v6

    move/from16 v4, p1

    move v6, v7

    move v7, v11

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v14, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    iput v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playbackSampleRate:I

    .line 14
    iput v9, v1, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    .line 15
    iput v11, v1, Lio/agora/rtc/audio/AudioDevice;->_playBufSize:I

    .line 16
    iput v12, v1, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    .line 17
    invoke-virtual {v14}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Java playback not initialized "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v13

    .line 20
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Java play sample rate is set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_5

    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_5

    const-string v2, "audio"

    .line 22
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 23
    :cond_5
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_6

    .line 24
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v12

    .line 25
    :cond_6
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 26
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    iget v2, v1, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "Unable to new AudioTrack: "

    .line 27
    invoke-static {v10, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v13
.end method

.method private InitRecording(III)I
    .locals 12

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/16 v0, 0xc

    const/16 v1, 0x10

    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    .line 2
    :goto_0
    invoke-static {p2, v3, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Java minimum recording buffer size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v10, "AudioDevice Java"

    invoke-static {v10, v4}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v4, p2, 0x5

    .line 4
    div-int/lit16 v4, v4, 0xc8

    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedRecSamples:I

    .line 5
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v4}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 7
    iput-object v5, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 8
    :cond_1
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v4}, Landroid/media/AudioRecord;->release()V

    .line 10
    iput-object v5, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 11
    :cond_2
    :try_start_0
    new-instance v11, Landroid/media/AudioRecord;

    if-ne p3, v2, :cond_3

    move v7, v0

    goto :goto_1

    :cond_3
    move v7, v1

    :goto_1
    const/4 v8, 0x2

    move-object v4, v11

    move v5, p1

    move v6, p2

    move v9, v3

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v11, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    invoke-virtual {v11}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Java recording not initialized "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, -0x2

    return p1

    .line 15
    :cond_4
    iput p2, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSampleRate:I

    .line 16
    iput p3, p0, Lio/agora/rtc/audio/AudioDevice;->_recordChannel:I

    .line 17
    iput p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSource:I

    .line 18
    iput v3, p0, Lio/agora/rtc/audio/AudioDevice;->_recordBufSize:I

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Java recording sample rate set to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AcousticEchoCanceler.isAvailable: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lio/agora/rtc/audio/AudioDevice;->BuiltInAECIsAvailable()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lio/agora/rtc/audio/AudioDevice;->BuiltInAECIsAvailable()Z

    move-result p1

    if-nez p1, :cond_5

    .line 23
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 24
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedRecSamples:I

    return p1

    .line 25
    :cond_5
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result p1

    invoke-static {p1}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-nez p1, :cond_6

    const-string p1, "AcousticEchoCanceler.create failed"

    .line 26
    invoke-static {v10, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 27
    :cond_6
    invoke-virtual {p1}, Landroid/media/audiofx/AcousticEchoCanceler;->getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object p1

    if-nez p1, :cond_7

    const-string p1, "getDescriptor() failed"

    .line 28
    invoke-static {v10, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string p2, "AcousticEchoCanceler name: "

    .line 29
    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p1, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", implementor: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", uuid: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :goto_2
    iget-boolean p1, p0, Lio/agora/rtc/audio/AudioDevice;->useBuiltInAEC:Z

    invoke-direct {p0, p1}, Lio/agora/rtc/audio/AudioDevice;->EnableBuiltInAEC(Z)Z

    .line 31
    :goto_3
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 32
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedRecSamples:I

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Unable to new AudioRecord: "

    .line 33
    invoke-static {v10, p2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, -0x1

    return p1
.end method

.method private PlayAudio(I)I
    .locals 13

    const-string v0, "AudioDevice Java"

    .line 1
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 p1, -0x2

    .line 3
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    .line 4
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lio/agora/rtc/audio/AudioDevice;->_isPlaying:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string p1, "PlayAudio not ready!"

    .line 5
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .line 7
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3e8

    if-ne v1, v3, :cond_2

    const/16 v1, -0x13

    .line 8
    :try_start_3
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    const-string v6, "Set play thread priority failed: "

    .line 9
    invoke-static {v0, v6, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :goto_0
    iput-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z

    .line 11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    div-long/2addr v6, v4

    div-long/2addr v6, v4

    iput-wide v6, p0, Lio/agora/rtc/audio/AudioDevice;->previous_time_ms:J

    .line 12
    :cond_2
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lio/agora/rtc/audio/AudioDevice;->_tempBufPlay:[B

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 13
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    iget-object v6, p0, Lio/agora/rtc/audio/AudioDevice;->_tempBufPlay:[B

    invoke-virtual {v1, v6, v2, p1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    .line 14
    iget-object v6, p0, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 15
    iget v6, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    shr-int/lit8 v7, v1, 0x1

    add-int/2addr v6, v7

    iput v6, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    .line 16
    iget v6, p0, Lio/agora/rtc/audio/AudioDevice;->playWriten:I

    add-int/2addr v6, v1

    iput v6, p0, Lio/agora/rtc/audio/AudioDevice;->playWriten:I

    .line 17
    iget-wide v8, p0, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    iget v6, p0, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    div-int/2addr v7, v6

    int-to-long v6, v7

    add-long/2addr v8, v6

    iput-wide v8, p0, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    .line 18
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_4

    .line 19
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    div-long/2addr v6, v4

    div-long/2addr v6, v4

    iput-wide v6, p0, Lio/agora/rtc/audio/AudioDevice;->current_time_ms:J

    .line 20
    iget-wide v8, p0, Lio/agora/rtc/audio/AudioDevice;->previous_time_ms:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x32

    cmp-long v6, v6, v8

    if-ltz v6, :cond_4

    .line 21
    new-instance v6, Landroid/media/AudioTimestamp;

    invoke-direct {v6}, Landroid/media/AudioTimestamp;-><init>()V

    .line 22
    iget-object v7, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v7, v6}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    .line 23
    iget-wide v7, v6, Landroid/media/AudioTimestamp;->framePosition:J

    iput-wide v7, p0, Lio/agora/rtc/audio/AudioDevice;->_framePostion:J

    .line 24
    iget-wide v9, p0, Lio/agora/rtc/audio/AudioDevice;->current_time_ms:J

    iget-wide v11, p0, Lio/agora/rtc/audio/AudioDevice;->previous_time_ms:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x41

    cmp-long v9, v9, v11

    if-lez v9, :cond_3

    .line 25
    iget-wide v7, p0, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    iget v9, p0, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    iget v10, p0, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    div-int/2addr v9, v10

    int-to-long v9, v9

    sub-long/2addr v7, v9

    long-to-int v7, v7

    iput v7, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    goto :goto_1

    .line 26
    :cond_3
    iget-wide v9, p0, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    sub-long/2addr v9, v7

    long-to-int v7, v9

    iput v7, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    .line 27
    :goto_1
    iget-wide v6, v6, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long/2addr v6, v4

    div-long/2addr v6, v4

    iput-wide v6, p0, Lio/agora/rtc/audio/AudioDevice;->previous_time_ms:J

    .line 28
    :cond_4
    iget-object v6, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v6

    iget v7, p0, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    mul-int/2addr v6, v7

    .line 29
    iget v7, p0, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    if-ge v6, v7, :cond_5

    .line 30
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    .line 31
    :cond_5
    iput v6, p0, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    .line 32
    iget-object v7, p0, Lio/agora/rtc/audio/AudioDevice;->_audioStatistic:[J

    iget-wide v8, p0, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    mul-long/2addr v8, v4

    iget v10, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackSampleRate:I

    int-to-long v11, v10

    div-long/2addr v8, v11

    aput-wide v8, v7, v2

    int-to-long v8, v6

    mul-long/2addr v8, v4

    int-to-long v10, v10

    .line 33
    div-long/2addr v8, v10

    aput-wide v8, v7, v3

    .line 34
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    div-long/2addr v8, v4

    div-long/2addr v8, v4

    const/4 v2, 0x2

    aput-wide v8, v7, v2

    .line 35
    iget-boolean v4, p0, Lio/agora/rtc/audio/AudioDevice;->_isRecording:Z

    if-eq v1, p1, :cond_8

    .line 36
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v4, 0x14

    if-le p1, v4, :cond_6

    .line 37
    :goto_2
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 38
    :cond_6
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing AudioTrack! Restart AudioTrack "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    .line 40
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->stop()V

    .line 41
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 43
    :try_start_6
    new-instance p1, Landroid/media/AudioTrack;

    iget v4, p0, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    iget v5, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackSampleRate:I

    iget v3, p0, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    if-ne v3, v2, :cond_7

    const/16 v2, 0xc

    goto :goto_3

    :cond_7
    const/4 v2, 0x4

    :goto_3
    move v6, v2

    const/4 v7, 0x2

    iget v8, p0, Lio/agora/rtc/audio/AudioDevice;->_playBufSize:I

    const/4 v9, 0x1

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 44
    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_7
    const-string v2, "restart audio fail"

    .line 45
    invoke-static {v0, v2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    :try_start_8
    const-string v1, "PlayAudio got fatal error "

    .line 46
    invoke-static {v0, v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 47
    :cond_8
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 48
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    iget v0, p0, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    mul-int/2addr p1, v0

    return p1

    .line 49
    :goto_4
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 50
    throw p1
.end method

.method private PlayNoBlockAudio(I)I
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "AudioDevice Java"

    .line 1
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    const-string v0, "Play failed, _audioTrack == null "

    .line 3
    invoke-static {v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x2

    .line 4
    iget-object v2, v1, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 5
    iget-object v2, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 6
    :cond_0
    :try_start_1
    iget-boolean v0, v1, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x3e8

    if-ne v0, v5, :cond_1

    const/16 v0, -0x13

    .line 7
    :try_start_2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v8, v0

    :try_start_3
    const-string v0, "Set play thread priority failed: "

    .line 8
    invoke-static {v3, v0, v8}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_0
    iput-boolean v4, v1, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z

    .line 10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    div-long/2addr v8, v6

    div-long/2addr v8, v6

    iput-wide v8, v1, Lio/agora/rtc/audio/AudioDevice;->previous_time_ms:J

    .line 11
    :cond_1
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    iget-object v8, v1, Lio/agora/rtc/audio/AudioDevice;->_tempBufPlay:[B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move v0, v2

    move v8, v4

    .line 12
    :goto_1
    iget-boolean v9, v1, Lio/agora/rtc/audio/AudioDevice;->_isPlaying:Z

    const/4 v10, 0x2

    if-eqz v9, :cond_7

    .line 13
    iget-object v9, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    iget-object v11, v1, Lio/agora/rtc/audio/AudioDevice;->_tempBufPlay:[B

    invoke-virtual {v9, v11, v8, v0, v5}, Landroid/media/AudioTrack;->write([BIII)I

    move-result v9

    if-gez v9, :cond_4

    .line 14
    iget v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v2, 0x14

    if-le v0, v2, :cond_2

    .line 15
    :goto_2
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 16
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v8

    .line 17
    :cond_2
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing AudioTrack! Restart AudioTrack "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    add-int/2addr v0, v5

    iput v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playbackRestartCount:I

    .line 19
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 20
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 22
    :try_start_5
    new-instance v0, Landroid/media/AudioTrack;

    iget v12, v1, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    iget v13, v1, Lio/agora/rtc/audio/AudioDevice;->_playbackSampleRate:I

    iget v2, v1, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    if-ne v2, v10, :cond_3

    const/16 v2, 0xc

    goto :goto_3

    :cond_3
    const/4 v2, 0x4

    :goto_3
    move v14, v2

    const/4 v15, 0x2

    iget v2, v1, Lio/agora/rtc/audio/AudioDevice;->_playBufSize:I

    const/16 v17, 0x1

    move-object v11, v0

    move/from16 v16, v2

    invoke-direct/range {v11 .. v17}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 23
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_6
    const-string v2, "restart audio fail"

    .line 24
    invoke-static {v3, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    add-int/2addr v8, v9

    if-ne v8, v2, :cond_5

    goto :goto_4

    :cond_5
    if-ge v9, v0, :cond_6

    .line 25
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/audio/AudioDevice;->getPlayBufferMs()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    int-to-long v9, v0

    .line 26
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    :cond_6
    sub-int v0, v2, v8

    goto :goto_1

    .line 27
    :cond_7
    :goto_4
    iget v0, v1, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    shr-int/lit8 v2, v8, 0x1

    add-int/2addr v0, v2

    iput v0, v1, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    .line 28
    iget v0, v1, Lio/agora/rtc/audio/AudioDevice;->playWriten:I

    add-int/2addr v0, v8

    iput v0, v1, Lio/agora/rtc/audio/AudioDevice;->playWriten:I

    .line 29
    iget-wide v8, v1, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    iget v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    div-int/2addr v2, v0

    int-to-long v11, v2

    add-long/2addr v8, v11

    iput-wide v8, v1, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_9

    .line 31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    div-long/2addr v8, v6

    div-long/2addr v8, v6

    iput-wide v8, v1, Lio/agora/rtc/audio/AudioDevice;->current_time_ms:J

    .line 32
    iget-wide v11, v1, Lio/agora/rtc/audio/AudioDevice;->previous_time_ms:J

    sub-long/2addr v8, v11

    const-wide/16 v11, 0x32

    cmp-long v0, v8, v11

    if-ltz v0, :cond_9

    .line 33
    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    .line 34
    iget-object v2, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    .line 35
    iget-wide v8, v0, Landroid/media/AudioTimestamp;->framePosition:J

    iput-wide v8, v1, Lio/agora/rtc/audio/AudioDevice;->_framePostion:J

    .line 36
    iget-wide v11, v1, Lio/agora/rtc/audio/AudioDevice;->current_time_ms:J

    iget-wide v13, v1, Lio/agora/rtc/audio/AudioDevice;->previous_time_ms:J

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x41

    cmp-long v2, v11, v13

    if-lez v2, :cond_8

    .line 37
    iget-wide v8, v1, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    iget v2, v1, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    iget v11, v1, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    div-int/2addr v2, v11

    int-to-long v11, v2

    sub-long/2addr v8, v11

    long-to-int v2, v8

    iput v2, v1, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    goto :goto_5

    .line 38
    :cond_8
    iget-wide v11, v1, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    sub-long/2addr v11, v8

    long-to-int v2, v11

    iput v2, v1, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    .line 39
    :goto_5
    iget-wide v8, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long/2addr v8, v6

    div-long/2addr v8, v6

    iput-wide v8, v1, Lio/agora/rtc/audio/AudioDevice;->previous_time_ms:J

    .line 40
    :cond_9
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    iget v2, v1, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    mul-int/2addr v0, v2

    .line 41
    iget v2, v1, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    if-ge v0, v2, :cond_a

    .line 42
    iput v4, v1, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    .line 43
    :cond_a
    iput v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playPosition:I

    .line 44
    iget-object v2, v1, Lio/agora/rtc/audio/AudioDevice;->_audioStatistic:[J

    iget-wide v8, v1, Lio/agora/rtc/audio/AudioDevice;->_currentTotalPostion:J

    mul-long/2addr v8, v6

    iget v11, v1, Lio/agora/rtc/audio/AudioDevice;->_playbackSampleRate:I

    int-to-long v12, v11

    div-long/2addr v8, v12

    aput-wide v8, v2, v4

    int-to-long v8, v0

    mul-long/2addr v8, v6

    int-to-long v11, v11

    .line 45
    div-long/2addr v8, v11

    aput-wide v8, v2, v5

    .line 46
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    div-long/2addr v4, v6

    aput-wide v4, v2, v10

    .line 47
    iget-boolean v0, v1, Lio/agora/rtc/audio/AudioDevice;->_isRecording:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    :try_start_7
    const-string v2, "PlayNBAudio got fatal error "

    .line 48
    invoke-static {v3, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 49
    :goto_6
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 50
    iget-object v0, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 51
    iget v0, v1, Lio/agora/rtc/audio/AudioDevice;->_bufferedPlaySamples:I

    iget v2, v1, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    mul-int/2addr v0, v2

    return v0

    .line 52
    :goto_7
    iget-object v2, v1, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 53
    iget-object v2, v1, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 54
    throw v0
.end method

.method private QuerySpeakerStatus()I
    .locals 13

    const-string v0, "bluetooth"

    const-string v1, "headset"

    const-string v2, "phone"

    const-string v3, "AudioDevice Java"

    .line 1
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v4, :cond_0

    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v4, :cond_0

    const-string v5, "audio"

    .line 2
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/4 v7, -0x1

    .line 3
    :try_start_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-lt v8, v9, :cond_4

    .line 4
    iget-object v8, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    const-string v9, "media_router"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaRouter;

    .line 5
    invoke-virtual {v8, v5}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v8

    .line 6
    invoke-virtual {v8}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 7
    iget-object v9, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 8
    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v10

    .line 9
    iget-object v11, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 10
    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v12}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 11
    iget-object v12, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v9, v11}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 12
    iget-object v12, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    invoke-virtual {v8, v12}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "speaker"

    .line 13
    invoke-static {v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 15
    invoke-static {v3, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto :goto_1

    .line 16
    :cond_2
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 17
    invoke-static {v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v7

    .line 18
    :goto_1
    invoke-virtual {v9, v10}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 19
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9, v11}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v7, :cond_4

    return v0

    :catch_0
    move-exception v0

    const-string v1, "error in Query audio route "

    .line 20
    invoke-static {v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    :cond_4
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_5

    const-string v0, "Could not get audio routing - no audio manager"

    .line 23
    invoke-static {v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 24
    :cond_5
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_6

    return v6

    .line 25
    :cond_6
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    return v0

    .line 26
    :cond_7
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_8

    return v6

    .line 27
    :cond_8
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_9

    return v4

    :cond_9
    return v5
.end method

.method private RecordAudio(I)I
    .locals 14

    const-string v0, "AudioDevice Java"

    .line 1
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->_isRecording:Z

    if-nez v2, :cond_0

    const-string p1, "RecordAudio not ready!"

    .line 3
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 5
    :cond_0
    :try_start_1
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    const/4 p1, -0x4

    .line 6
    :goto_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    .line 7
    :cond_1
    :try_start_2
    iget-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->_doRecInit:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/16 v2, -0x13

    .line 8
    :try_start_3
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_4
    const-string v4, "Set rec thread priority failed: "

    .line 9
    invoke-static {v0, v4, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :goto_1
    iput-boolean v1, p0, Lio/agora/rtc/audio/AudioDevice;->_doRecInit:Z

    .line 11
    :cond_2
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 12
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_tempBufRec:[B

    invoke-virtual {v2, v4, v1, p1}, Landroid/media/AudioRecord;->read([BII)I

    move-result v2

    .line 13
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_recBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lio/agora/rtc/audio/AudioDevice;->_tempBufRec:[B

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 14
    iget-wide v4, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    const-wide/16 v6, 0xa

    cmp-long v4, v4, v6

    const-wide/16 v8, 0x3e8

    if-nez v4, :cond_6

    .line 15
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_3

    .line 16
    new-instance v4, Landroid/media/AudioTimestamp;

    invoke-direct {v4}, Landroid/media/AudioTimestamp;-><init>()V

    .line 17
    iget-object v5, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v5, v4, v1}, Landroid/media/AudioRecord;->getTimestamp(Landroid/media/AudioTimestamp;I)I

    .line 18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    iget-wide v4, v4, Landroid/media/AudioTimestamp;->nanoTime:J

    sub-long/2addr v10, v4

    div-long/2addr v10, v8

    div-long/2addr v10, v8

    iput-wide v10, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    const-wide/16 v4, 0x32

    cmp-long v4, v10, v4

    if-lez v4, :cond_4

    .line 19
    iput-wide v6, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    goto :goto_2

    .line 20
    :cond_3
    iput-wide v6, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    .line 21
    :cond_4
    :goto_2
    iget v4, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I

    if-nez v4, :cond_5

    .line 22
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-wide v6, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartTS:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    div-int/lit16 v4, v4, 0x3e8

    div-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I

    .line 23
    :cond_5
    iget-wide v4, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    iget v6, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    .line 24
    :cond_6
    iget-wide v4, p0, Lio/agora/rtc/audio/AudioDevice;->_lastRecDelay:J

    iget-wide v6, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    .line 25
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->getBufferSizeInFrames()I

    move-result v4

    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "frames  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " recDelay "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " caculated frames delay "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v6}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    div-int/2addr v4, v6

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-wide v4, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    iput-wide v4, p0, Lio/agora/rtc/audio/AudioDevice;->_lastRecDelay:J

    :cond_7
    const/4 v4, 0x2

    if-ltz v2, :cond_8

    .line 28
    iget-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recPosition:J

    iget v7, p0, Lio/agora/rtc/audio/AudioDevice;->_recordChannel:I

    div-int v7, v2, v7

    div-int/2addr v7, v4

    int-to-long v10, v7

    add-long/2addr v5, v10

    iput-wide v5, p0, Lio/agora/rtc/audio/AudioDevice;->_recPosition:J

    .line 29
    :cond_8
    iget-object v5, p0, Lio/agora/rtc/audio/AudioDevice;->_audioStatistic:[J

    const/4 v6, 0x3

    iget-wide v10, p0, Lio/agora/rtc/audio/AudioDevice;->_recPosition:J

    mul-long/2addr v10, v8

    iget v7, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSampleRate:I

    int-to-long v12, v7

    div-long/2addr v10, v12

    aput-wide v10, v5, v6

    const/4 v6, 0x5

    .line 30
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    div-long/2addr v10, v8

    div-long/2addr v10, v8

    aput-wide v10, v5, v6

    if-eq v2, p1, :cond_c

    .line 31
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I

    rem-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_9

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading AudioRecord! AudioRecord.read returns "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_9
    iget p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I

    const/16 v5, 0x64

    if-le p1, v5, :cond_a

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to restart AudioRecord,  readBytes : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput v1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I

    const/16 p1, -0x14

    goto/16 :goto_0

    :cond_a
    add-int/2addr p1, v3

    .line 36
    iput p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I

    .line 37
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->stop()V

    .line 38
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 40
    new-instance p1, Landroid/media/AudioRecord;

    iget v6, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSource:I

    iget v7, p0, Lio/agora/rtc/audio/AudioDevice;->_recordSampleRate:I

    iget v3, p0, Lio/agora/rtc/audio/AudioDevice;->_recordChannel:I

    if-ne v3, v4, :cond_b

    const/16 v3, 0xc

    goto :goto_3

    :cond_b
    const/16 v3, 0x10

    :goto_3
    move v8, v3

    const/4 v9, 0x2

    iget v10, p0, Lio/agora/rtc/audio/AudioDevice;->_recordBufSize:I

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 41
    invoke-virtual {p1}, Landroid/media/AudioRecord;->startRecording()V

    .line 42
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartTS:J

    .line 43
    iput v1, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 44
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .line 45
    :cond_c
    :try_start_5
    iput v1, p0, Lio/agora/rtc/audio/AudioDevice;->_recordRestartCount:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    const/16 v1, -0xa

    :try_start_6
    const-string v2, "RecordAudio try failed: "

    .line 46
    invoke-static {v0, v2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 47
    :goto_4
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :goto_5
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 48
    throw p1
.end method

.method private SetAudioMode(I)I
    .locals 4

    const-string v0, "AudioDevice Java"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v2, :cond_0

    const-string v3, "audio"

    .line 2
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 3
    :cond_0
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_1

    const-string p1, "Could not change audio routing - no audio manager"

    .line 4
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 v3, 0x3

    .line 5
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 6
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 7
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 8
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 9
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    if-ne v2, p1, :cond_2

    return v1

    :cond_2
    if-eqz p1, :cond_6

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    if-eq p1, v3, :cond_3

    .line 10
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    .line 12
    :cond_4
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    .line 13
    :cond_5
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    .line 14
    :cond_6
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "set audio mode failed! "

    .line 15
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method private SetPlayoutSpeaker(Z)I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "audio"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    const-string p1, "AudioDevice Java"

    const-string v0, "Could not change audio routing - no audio manager"

    .line 4
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    const/4 p1, 0x0

    return p1
.end method

.method private SetPlayoutVolume(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "audio"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    :cond_0
    const/4 v0, -0x1

    .line 3
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4
    iget v0, p0, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    const/16 v1, 0xff

    if-lt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    mul-int/2addr p1, v0

    .line 5
    div-int/lit16 v0, p1, 0xff

    .line 6
    :goto_0
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lio/agora/rtc/audio/AudioDevice;->_streamType:I

    invoke-virtual {p1, v1, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    move v0, v2

    :cond_2
    return v0
.end method

.method private StartPlayback()I
    .locals 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/agora/rtc/audio/AudioDevice;->_renderStart:Z

    const/4 v1, -0x1

    .line 4
    :try_start_0
    iput v0, p0, Lio/agora/rtc/audio/AudioDevice;->playWriten:I

    .line 5
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 6
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    .line 7
    iput v0, p0, Lio/agora/rtc/audio/AudioDevice;->maxDelay:I

    .line 8
    iput v0, p0, Lio/agora/rtc/audio/AudioDevice;->totalDelay:I

    const/4 v2, 0x1

    .line 9
    iput-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->_isPlaying:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 11
    invoke-virtual {p0, v2}, Lio/agora/rtc/audio/AudioDevice;->monitorPlayoutVolumeChange(Z)V

    .line 12
    invoke-virtual {p0}, Lio/agora/rtc/audio/AudioDevice;->notifyPlayoutVolumeChange()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "AudioDevice Java"

    const-string v3, "startplayback fail"

    .line 13
    invoke-static {v2, v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :goto_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catch_1
    move-exception v0

    .line 15
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 16
    :goto_1
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 17
    throw v0
.end method

.method private StartRecording()I
    .locals 5

    const-string v0, "AudioDevice Java"

    .line 1
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, -0x2

    .line 2
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 3
    :goto_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recording start time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartTS:J

    const/4 v2, 0x0

    .line 7
    iput v2, p0, Lio/agora/rtc/audio/AudioDevice;->_recStartDelay:I

    const-wide/16 v3, 0xa

    .line 8
    iput-wide v3, p0, Lio/agora/rtc/audio/AudioDevice;->_recDelay:J

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, p0, Lio/agora/rtc/audio/AudioDevice;->_isRecording:Z

    const-wide/16 v3, 0x0

    .line 10
    iput-wide v3, p0, Lio/agora/rtc/audio/AudioDevice;->_recPosition:J
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "failed to startRecording Exception"

    .line 12
    invoke-static {v0, v3, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "failed to startRecording"

    .line 13
    invoke-static {v0, v2, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, -0x1

    .line 14
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :goto_1
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 15
    throw v0
.end method

.method private StopPlayback()I
    .locals 6

    const-string v0, "AudioDevice Java"

    const-wide/16 v1, 0x0

    .line 1
    iput-wide v1, p0, Lio/agora/rtc/audio/AudioDevice;->_firstRenderTS:J

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lio/agora/rtc/audio/AudioDevice;->_isPlaying:Z

    .line 3
    iget-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4
    :try_start_0
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 5
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 6
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->stop()V

    .line 7
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->flush()V

    .line 8
    :cond_0
    iget-object v4, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->release()V

    .line 9
    iput-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "Stop playback fail"

    .line 10
    invoke-static {v0, v5, v4}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 13
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 14
    iput-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 15
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z

    .line 16
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 17
    invoke-virtual {p0, v1}, Lio/agora/rtc/audio/AudioDevice;->monitorPlayoutVolumeChange(Z)V

    return v1

    :catch_1
    move-exception v1

    :try_start_2
    const-string v4, "Unable to stop playback: "

    .line 18
    invoke-static {v0, v4, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, -0x1

    .line 19
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {v1}, Landroid/media/AudioTrack;->flush()V

    .line 21
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 22
    iput-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 23
    :cond_2
    iput-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z

    .line 24
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 25
    :goto_1
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_3

    .line 26
    invoke-virtual {v1}, Landroid/media/AudioTrack;->flush()V

    .line 27
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 28
    iput-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioTrack:Landroid/media/AudioTrack;

    .line 29
    :cond_3
    iput-boolean v2, p0, Lio/agora/rtc/audio/AudioDevice;->_doPlayInit:Z

    .line 30
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 31
    throw v0
.end method

.method private StopRecording()I
    .locals 6

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 3
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V

    .line 4
    :cond_0
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 6
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 7
    :cond_1
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 8
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 9
    iput-boolean v0, p0, Lio/agora/rtc/audio/AudioDevice;->_isRecording:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "AudioDevice Java"

    const-string v5, "error in StopRecording "

    .line 10
    invoke-static {v4, v5, v3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 13
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 14
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lio/agora/rtc/audio/AudioDevice;->_doRecInit:Z

    .line 15
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 16
    :goto_1
    iget-object v3, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v3, :cond_3

    .line 17
    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 18
    iput-object v2, p0, Lio/agora/rtc/audio/AudioDevice;->_audioRecord:Landroid/media/AudioRecord;

    .line 19
    :cond_3
    iput-boolean v1, p0, Lio/agora/rtc/audio/AudioDevice;->_doRecInit:Z

    .line 20
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 21
    throw v0
.end method

.method private enableHardwareEarback(Z)I
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableHardwareEarback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AudioDevice Java"

    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    invoke-static {v0}, Lio/agora/rtc/audio/HardwareEarbackController;->getInstance(Landroid/content/Context;)Lio/agora/rtc/audio/HardwareEarbackController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/agora/rtc/audio/HardwareEarbackController;->enableHardwareEarback(Z)I

    move-result v0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ret "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private getPlayBufferMs()I
    .locals 3

    .line 1
    iget v0, p0, Lio/agora/rtc/audio/AudioDevice;->_playbackSampleRate:I

    if-eqz v0, :cond_1

    iget v1, p0, Lio/agora/rtc/audio/AudioDevice;->_playChannel:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v2, p0, Lio/agora/rtc/audio/AudioDevice;->_playBufSize:I

    mul-int/lit8 v1, v1, 0x2

    div-int/2addr v2, v1

    mul-int/lit16 v2, v2, 0x3e8

    .line 3
    div-int/2addr v2, v0

    return v2

    :cond_1
    :goto_0
    const/16 v0, 0xa

    return v0
.end method

.method private isHardwareEarbackSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lio/agora/rtc/audio/HardwareEarbackController;->getInstance(Landroid/content/Context;)Lio/agora/rtc/audio/HardwareEarbackController;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/rtc/audio/HardwareEarbackController;->isHardwareEarbackSupported()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setHardwareEarbackVolume(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lio/agora/rtc/audio/HardwareEarbackController;->getInstance(Landroid/content/Context;)Lio/agora/rtc/audio/HardwareEarbackController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/agora/rtc/audio/HardwareEarbackController;->setHardwareEarbackVolume(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method


# virtual methods
.method public monitorPlayoutVolumeChange(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->mVolumeBroadcastReceiver:Lio/agora/rtc/audio/VolumeBroadcastReceiver;

    if-nez p1, :cond_2

    .line 2
    :try_start_0
    new-instance p1, Lio/agora/rtc/audio/VolumeBroadcastReceiver;

    invoke-direct {p1, p0}, Lio/agora/rtc/audio/VolumeBroadcastReceiver;-><init>(Lio/agora/rtc/audio/AudioDevice;)V

    iput-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->mVolumeBroadcastReceiver:Lio/agora/rtc/audio/VolumeBroadcastReceiver;

    .line 3
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 4
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lio/agora/rtc/audio/AudioDevice;->mVolumeBroadcastReceiver:Lio/agora/rtc/audio/VolumeBroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AudioDevice Java"

    const-string v1, "Unable to create VolumeBroadcastReceiver, "

    .line 7
    invoke-static {v0, v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_0
    :try_start_1
    iget-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->_context:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 9
    iget-object v0, p0, Lio/agora/rtc/audio/AudioDevice;->mVolumeBroadcastReceiver:Lio/agora/rtc/audio/VolumeBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lio/agora/rtc/audio/AudioDevice;->mVolumeBroadcastReceiver:Lio/agora/rtc/audio/VolumeBroadcastReceiver;

    :cond_2
    :goto_0
    return-void
.end method

.method public native nativeNotifyPlayoutVolumeChange(JI)V
.end method

.method public notifyPlayoutVolumeChange()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtc/audio/AudioDevice;->GetPlayoutVolume()I

    move-result v0

    .line 3
    iget v1, p0, Lio/agora/rtc/audio/AudioDevice;->currentPlayoutVolume:I

    if-eq v1, v0, :cond_0

    .line 4
    iget-wide v1, p0, Lio/agora/rtc/audio/AudioDevice;->mNativeHandle:J

    invoke-virtual {p0, v1, v2, v0}, Lio/agora/rtc/audio/AudioDevice;->nativeNotifyPlayoutVolumeChange(JI)V

    .line 5
    iput v0, p0, Lio/agora/rtc/audio/AudioDevice;->currentPlayoutVolume:I

    const-string v1, "AudioDevice Java"

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " notifyPlayoutVolumeChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
