.class public Lio/agora/rtc/PublisherParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public audiobitrate:I

.field public audiochannels:I

.field public audiosamplerate:I

.field public bitrate:I

.field public defaultLayout:I

.field public extraInfo:Ljava/lang/String;

.field public framerate:I

.field public height:I

.field public injectStreamHeight:I

.field public injectStreamUrl:Ljava/lang/String;

.field public injectStreamWidth:I

.field public lifecycle:I

.field public owner:Z

.field public publishUrl:Ljava/lang/String;

.field public rawStreamUrl:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x168

    .line 2
    iput v0, p0, Lio/agora/rtc/PublisherParameters;->width:I

    const/16 v0, 0x280

    .line 3
    iput v0, p0, Lio/agora/rtc/PublisherParameters;->height:I

    const/16 v0, 0xf

    .line 4
    iput v0, p0, Lio/agora/rtc/PublisherParameters;->framerate:I

    const/16 v0, 0x1f4

    .line 5
    iput v0, p0, Lio/agora/rtc/PublisherParameters;->bitrate:I

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lio/agora/rtc/PublisherParameters;->defaultLayout:I

    const/16 v1, 0x7d00

    .line 7
    iput v1, p0, Lio/agora/rtc/PublisherParameters;->audiosamplerate:I

    const v1, 0xcb20

    .line 8
    iput v1, p0, Lio/agora/rtc/PublisherParameters;->audiobitrate:I

    .line 9
    iput v0, p0, Lio/agora/rtc/PublisherParameters;->audiochannels:I

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lio/agora/rtc/PublisherParameters;->owner:Z

    .line 11
    iput v0, p0, Lio/agora/rtc/PublisherParameters;->lifecycle:I

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lio/agora/rtc/PublisherParameters;->publishUrl:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lio/agora/rtc/PublisherParameters;->rawStreamUrl:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lio/agora/rtc/PublisherParameters;->extraInfo:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lio/agora/rtc/PublisherParameters;->injectStreamUrl:Ljava/lang/String;

    .line 16
    iput v1, p0, Lio/agora/rtc/PublisherParameters;->injectStreamWidth:I

    .line 17
    iput v1, p0, Lio/agora/rtc/PublisherParameters;->injectStreamHeight:I

    return-void
.end method
