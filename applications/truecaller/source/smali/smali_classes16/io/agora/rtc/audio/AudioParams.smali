.class public Lio/agora/rtc/audio/AudioParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public channel:I

.field public mode:I

.field public sampleRate:I

.field public samplesPerCall:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e80

    .line 2
    iput v0, p0, Lio/agora/rtc/audio/AudioParams;->sampleRate:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lio/agora/rtc/audio/AudioParams;->channel:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/agora/rtc/audio/AudioParams;->mode:I

    const/16 v0, 0x400

    .line 5
    iput v0, p0, Lio/agora/rtc/audio/AudioParams;->samplesPerCall:I

    .line 6
    iput p1, p0, Lio/agora/rtc/audio/AudioParams;->sampleRate:I

    .line 7
    iput p2, p0, Lio/agora/rtc/audio/AudioParams;->channel:I

    .line 8
    iput p3, p0, Lio/agora/rtc/audio/AudioParams;->mode:I

    .line 9
    iput p4, p0, Lio/agora/rtc/audio/AudioParams;->samplesPerCall:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "AudioParams{sampleRate="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/agora/rtc/audio/AudioParams;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/audio/AudioParams;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/audio/AudioParams;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", samplesPerCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/audio/AudioParams;->samplesPerCall:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->I2(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
