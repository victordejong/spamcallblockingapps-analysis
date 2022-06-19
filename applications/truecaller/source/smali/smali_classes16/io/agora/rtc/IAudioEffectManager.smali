.class public interface abstract Lio/agora/rtc/IAudioEffectManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract configRhythmPlayer(Lio/agora/rtc/audio/AgoraRhythmPlayerConfig;)I
.end method

.method public abstract getEffectCurrentPosition(I)I
.end method

.method public abstract getEffectDuration(Ljava/lang/String;)I
.end method

.method public abstract getEffectsVolume()D
.end method

.method public abstract pauseAllEffects()I
.end method

.method public abstract pauseEffect(I)I
.end method

.method public abstract playEffect(ILjava/lang/String;IDDD)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract playEffect(ILjava/lang/String;IDDDZ)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract playEffect(ILjava/lang/String;IDDDZI)I
.end method

.method public abstract preloadEffect(ILjava/lang/String;)I
.end method

.method public abstract resumeAllEffects()I
.end method

.method public abstract resumeEffect(I)I
.end method

.method public abstract setEffectPosition(II)I
.end method

.method public abstract setEffectsVolume(D)I
.end method

.method public abstract setVolumeOfEffect(ID)I
.end method

.method public abstract startRhythmPlayer(Ljava/lang/String;Ljava/lang/String;Lio/agora/rtc/audio/AgoraRhythmPlayerConfig;)I
.end method

.method public abstract stopAllEffects()I
.end method

.method public abstract stopEffect(I)I
.end method

.method public abstract stopRhythmPlayer()I
.end method

.method public abstract unloadEffect(I)I
.end method
