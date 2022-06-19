.class public Lio/agora/rtc/live/LiveInjectStreamConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;
    }
.end annotation


# instance fields
.field public audioBitrate:I

.field public audioChannels:I

.field public audioSampleRate:Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

.field public height:I

.field public videoBitrate:I

.field public videoFramerate:I

.field public videoGop:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->width:I

    .line 3
    iput v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->height:I

    const/16 v0, 0x1e

    .line 4
    iput v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->videoGop:I

    const/16 v0, 0xf

    .line 5
    iput v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->videoFramerate:I

    const/16 v0, 0x190

    .line 6
    iput v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->videoBitrate:I

    .line 7
    sget-object v0, Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;->TYPE_44100:Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

    iput-object v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->audioSampleRate:Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

    const/16 v0, 0x30

    .line 8
    iput v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->audioBitrate:I

    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->audioChannels:I

    return-void
.end method
