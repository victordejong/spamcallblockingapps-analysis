.class public Lio/agora/rtc/audio/AgoraRhythmPlayerConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public beatsPerMeasure:I

.field public beatsPerMinute:I

.field public publish:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lio/agora/rtc/audio/AgoraRhythmPlayerConfig;->beatsPerMeasure:I

    const/16 v0, 0x3c

    .line 3
    iput v0, p0, Lio/agora/rtc/audio/AgoraRhythmPlayerConfig;->beatsPerMinute:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/agora/rtc/audio/AgoraRhythmPlayerConfig;->publish:Z

    return-void
.end method
