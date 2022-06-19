.class public Lio/agora/rtc/AudioFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bytesPerSample:I

.field public channels:I

.field public numOfSamples:I

.field public samples:Ljava/nio/ByteBuffer;

.field public samplesPerSec:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/agora/rtc/AudioFrame;->samples:Ljava/nio/ByteBuffer;

    .line 3
    iput p2, p0, Lio/agora/rtc/AudioFrame;->numOfSamples:I

    .line 4
    iput p3, p0, Lio/agora/rtc/AudioFrame;->bytesPerSample:I

    .line 5
    iput p4, p0, Lio/agora/rtc/AudioFrame;->channels:I

    .line 6
    iput p5, p0, Lio/agora/rtc/AudioFrame;->samplesPerSec:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "AgoraAudioFrame{samples="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/agora/rtc/AudioFrame;->samples:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", numOfSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/AudioFrame;->numOfSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bytesPerSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/AudioFrame;->bytesPerSample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/AudioFrame;->channels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", samplesPerSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/AudioFrame;->samplesPerSec:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->I2(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
