.class public Lio/agora/rtc/video/VideoCaptureFactory$AndroidCameraInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/VideoCaptureFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidCameraInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lio/agora/rtc/video/VideoCaptureFactory$AndroidCameraInfo;->getNumberOfCameras(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private static getNumberOfCameras(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {}, Lio/agora/rtc/video/VideoCaptureFactory;->isLReleaseOrLater()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->getNumberOfCameras(Landroid/content/Context;)I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lio/agora/rtc/video/VideoCaptureCamera;->getNumberOfCameras()I

    move-result v0

    :cond_1
    return v0
.end method
