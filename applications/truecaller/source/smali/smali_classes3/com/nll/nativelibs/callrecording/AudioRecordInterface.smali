.class public interface abstract Lcom/nll/nativelibs/callrecording/AudioRecordInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getRecordingState()I
.end method

.method public abstract getState()I
.end method

.method public abstract read(Ljava/nio/ByteBuffer;I)I
.end method

.method public abstract read([BII)I
.end method

.method public abstract read([SII)I
.end method

.method public abstract release()V
.end method

.method public abstract startRecording()V
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
