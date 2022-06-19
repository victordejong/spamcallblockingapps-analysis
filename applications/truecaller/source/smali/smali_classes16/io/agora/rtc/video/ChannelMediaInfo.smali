.class public Lio/agora/rtc/video/ChannelMediaInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public channelName:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/agora/rtc/video/ChannelMediaInfo;->channelName:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lio/agora/rtc/video/ChannelMediaInfo;->token:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/agora/rtc/video/ChannelMediaInfo;->uid:I

    .line 5
    iput-object p1, p0, Lio/agora/rtc/video/ChannelMediaInfo;->channelName:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lio/agora/rtc/video/ChannelMediaInfo;->token:Ljava/lang/String;

    .line 7
    iput p3, p0, Lio/agora/rtc/video/ChannelMediaInfo;->uid:I

    return-void
.end method
