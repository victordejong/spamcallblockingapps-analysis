.class public interface abstract Lio/agora/rtc/IAudioFrameObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final POSITION_BEFORE_MIXING:I = 0x8

.field public static final POSITION_MIXED:I = 0x4

.field public static final POSITION_PLAYBACK:I = 0x1

.field public static final POSITION_RECORD:I = 0x2


# virtual methods
.method public abstract getMixedAudioParams()Lio/agora/rtc/audio/AudioParams;
.end method

.method public abstract getObservedAudioFramePosition()I
.end method

.method public abstract getPlaybackAudioParams()Lio/agora/rtc/audio/AudioParams;
.end method

.method public abstract getRecordAudioParams()Lio/agora/rtc/audio/AudioParams;
.end method

.method public abstract isMultipleChannelFrameWanted()Z
.end method

.method public abstract onMixedFrame(Lio/agora/rtc/AudioFrame;)Z
.end method

.method public abstract onPlaybackFrame(Lio/agora/rtc/AudioFrame;)Z
.end method

.method public abstract onPlaybackFrameBeforeMixing(Lio/agora/rtc/AudioFrame;I)Z
.end method

.method public abstract onPlaybackFrameBeforeMixingEx(Lio/agora/rtc/AudioFrame;ILjava/lang/String;)Z
.end method

.method public abstract onRecordFrame(Lio/agora/rtc/AudioFrame;)Z
.end method
