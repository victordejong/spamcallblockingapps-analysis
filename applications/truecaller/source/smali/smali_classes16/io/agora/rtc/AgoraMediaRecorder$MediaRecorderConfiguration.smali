.class public Lio/agora/rtc/AgoraMediaRecorder$MediaRecorderConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/AgoraMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaRecorderConfiguration"
.end annotation


# instance fields
.field public containerFormat:I

.field public maxDurationMs:I

.field public recorderInfoUpdateInterval:I

.field public storagePath:Ljava/lang/String;

.field public streamType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lio/agora/rtc/AgoraMediaRecorder$MediaRecorderConfiguration;->containerFormat:I

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lio/agora/rtc/AgoraMediaRecorder$MediaRecorderConfiguration;->streamType:I

    const v0, 0x1d4c0

    .line 4
    iput v0, p0, Lio/agora/rtc/AgoraMediaRecorder$MediaRecorderConfiguration;->maxDurationMs:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lio/agora/rtc/AgoraMediaRecorder$MediaRecorderConfiguration;->recorderInfoUpdateInterval:I

    .line 6
    iput-object p1, p0, Lio/agora/rtc/AgoraMediaRecorder$MediaRecorderConfiguration;->storagePath:Ljava/lang/String;

    .line 7
    iput p2, p0, Lio/agora/rtc/AgoraMediaRecorder$MediaRecorderConfiguration;->containerFormat:I

    .line 8
    iput p3, p0, Lio/agora/rtc/AgoraMediaRecorder$MediaRecorderConfiguration;->streamType:I

    .line 9
    iput p4, p0, Lio/agora/rtc/AgoraMediaRecorder$MediaRecorderConfiguration;->maxDurationMs:I

    .line 10
    iput p5, p0, Lio/agora/rtc/AgoraMediaRecorder$MediaRecorderConfiguration;->recorderInfoUpdateInterval:I

    return-void
.end method
