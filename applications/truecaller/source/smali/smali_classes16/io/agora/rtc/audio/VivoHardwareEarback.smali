.class public Lio/agora/rtc/audio/VivoHardwareEarback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/audio/IHardwareEarback;


# static fields
.field private static final KEY_KTV_MODE:Ljava/lang/String; = "vivo_ktv_mode"

.field private static final KEY_MIC_TYPE:Ljava/lang/String; = "vivo_ktv_mic_type"

.field private static final KEY_PLAY_SRC:Ljava/lang/String; = "vivo_ktv_play_source"

.field private static final KEY_VOL_MIC:Ljava/lang/String; = "vivo_ktv_volume_mic"

.field private static final TAG:Ljava/lang/String; = "VivoHardwareEarback Java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/agora/rtc/audio/VivoHardwareEarback;->mAudioManager:Landroid/media/AudioManager;

    .line 3
    iput-object v0, p0, Lio/agora/rtc/audio/VivoHardwareEarback;->mContext:Landroid/content/Context;

    .line 4
    iput-object p1, p0, Lio/agora/rtc/audio/VivoHardwareEarback;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Lio/agora/rtc/audio/VivoHardwareEarback;->initialize()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/agora/rtc/audio/VivoHardwareEarback;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    iput-object v0, p0, Lio/agora/rtc/audio/VivoHardwareEarback;->mContext:Landroid/content/Context;

    return-void
.end method

.method public declared-synchronized enableEarbackFeature(Z)I
    .locals 0

    monitor-enter p0

    .line 1
    monitor-exit p0

    const/4 p1, -0x1

    return p1
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/audio/VivoHardwareEarback;->destroy()V

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/VivoHardwareEarback;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "VivoHardwareEarback Java"

    const-string v1, "mContext should not be null!"

    .line 2
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "audio"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/VivoHardwareEarback;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public isHardwareEarbackSupported()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lio/agora/rtc/audio/VivoHardwareEarback;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "vivo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lio/agora/rtc/audio/VivoHardwareEarback;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "vivo_ktv_mic_type"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "="

    invoke-direct {v3, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    const/4 v4, 0x2

    if-eq v4, v0, :cond_1

    return v1

    .line 7
    :cond_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v2, v0, :cond_2

    if-nez v0, :cond_3

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public declared-synchronized setHardwareEarbackVolume(I)I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, v0

    :cond_0
    const/16 v1, 0xf

    if-ge v1, p1, :cond_1

    move p1, v1

    .line 1
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/audio/VivoHardwareEarback;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_2

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vivo_ktv_volume_mic"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    iget-object p1, p0, Lio/agora/rtc/audio/VivoHardwareEarback;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return v0

    :cond_2
    const/4 p1, -0x1

    .line 6
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
