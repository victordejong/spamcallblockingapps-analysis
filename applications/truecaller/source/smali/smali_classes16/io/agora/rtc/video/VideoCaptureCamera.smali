.class public Lio/agora/rtc/video/VideoCaptureCamera;
.super Lio/agora/rtc/video/VideoCapture;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lio/agora/rtc/gl/SurfaceTextureHelper$OnTextureFrameAvailableListener;


# static fields
.field private static final CAMERA_ALLOCATE_TIMEOUT_MS:I = 0x1770

.field private static final CAMERA_OPEN_REQUEST_INTERVAL:J = 0x7d0L

.field private static final NUM_OF_CAPTURE_BUFFERS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CAMERA1"

.field private static final VERBOSE:Z = false


# instance fields
.field private distanceArray:[I

.field private faceDetectEnabled:Z

.field private isCaptureRunning:Z

.field private isCaptureStarted:Z

.field private isFaceDetectionStarted:Z

.field private isSurfaceReady:Z

.field private volatile mAllocated:I

.field private mAntiBandingMode:Ljava/lang/String;

.field public mCamera:Landroid/hardware/Camera;

.field private mCameraPreviewHandlerThread:Landroid/os/HandlerThread;

.field private mCaptureFormat:I

.field private mCaptureFps:I

.field private mCaptureHeight:I

.field private mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mCaptureWidth:I

.field private mDummySurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mIsAutoFaceFocusEnabled:Z

.field private final mIsCameraFacingFront:Z

.field private mObjectLock:Ljava/lang/Object;

.field public mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mPreviewHandler:Landroid/os/Handler;

.field private rectArray:[Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILio/agora/rtc/gl/EglBase$Context;J)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lio/agora/rtc/video/VideoCapture;-><init>(Landroid/content/Context;IILio/agora/rtc/gl/EglBase$Context;J)V

    .line 2
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureStarted:Z

    .line 5
    iput-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureRunning:Z

    .line 6
    iput-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isSurfaceReady:Z

    .line 7
    iput-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isFaceDetectionStarted:Z

    const/4 p3, -0x1

    .line 8
    iput p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureWidth:I

    .line 9
    iput p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureHeight:I

    .line 10
    iput p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureFps:I

    const/16 p3, 0x11

    .line 11
    iput p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureFormat:I

    const/4 p3, 0x0

    .line 12
    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCameraPreviewHandlerThread:Landroid/os/HandlerThread;

    .line 13
    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    .line 14
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mObjectLock:Ljava/lang/Object;

    .line 15
    iput-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mIsAutoFaceFocusEnabled:Z

    .line 16
    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->rectArray:[Landroid/graphics/RectF;

    .line 17
    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->distanceArray:[I

    .line 18
    iput-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->faceDetectEnabled:Z

    const-string p1, "auto"

    .line 19
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mAntiBandingMode:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mDummySurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 21
    invoke-static {p2}, Lio/agora/rtc/video/VideoCaptureCamera;->isCameraFacingFront(I)Z

    move-result p1

    iput-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mIsCameraFacingFront:Z

    return-void
.end method

.method public static synthetic access$002(Lio/agora/rtc/video/VideoCaptureCamera;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mAllocated:I

    return p1
.end method

.method public static synthetic access$100(Lio/agora/rtc/video/VideoCaptureCamera;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->allocate_l()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1000(Lio/agora/rtc/video/VideoCaptureCamera;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getMaxZoom_l()F

    move-result p0

    return p0
.end method

.method public static synthetic access$1100(Lio/agora/rtc/video/VideoCaptureCamera;Z)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->setTorchMode_l(Z)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1200(Lio/agora/rtc/video/VideoCaptureCamera;FFZ)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/agora/rtc/video/VideoCaptureCamera;->setFocus_l(FFZ)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1300(Lio/agora/rtc/video/VideoCaptureCamera;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mObjectLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1400(Lio/agora/rtc/video/VideoCaptureCamera;FFZ)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/agora/rtc/video/VideoCaptureCamera;->setExposure_l(FFZ)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1500(Lio/agora/rtc/video/VideoCaptureCamera;III)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/agora/rtc/video/VideoCaptureCamera;->startCapture_l(III)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1600(Lio/agora/rtc/video/VideoCaptureCamera;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->stopCapture_l()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1700(Lio/agora/rtc/video/VideoCaptureCamera;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->isTorchSupported_l()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1800(Lio/agora/rtc/video/VideoCaptureCamera;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->isFocusSupported_l()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1900(Lio/agora/rtc/video/VideoCaptureCamera;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->isExposureSupported_l()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lio/agora/rtc/video/VideoCaptureCamera;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static synthetic access$2000(Lio/agora/rtc/video/VideoCaptureCamera;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->isZoomSupported_l()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2100(Lio/agora/rtc/video/VideoCaptureCamera;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->isAutoFaceFocusSupported_l()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2200(Lio/agora/rtc/video/VideoCaptureCamera;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->deallocate_l()V

    return-void
.end method

.method public static synthetic access$2300(Lio/agora/rtc/video/VideoCaptureCamera;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->setAntiBandingMode_l(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$2400(Lio/agora/rtc/video/VideoCaptureCamera;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->setExposureCompensation_l(I)V

    return-void
.end method

.method public static synthetic access$300(Lio/agora/rtc/video/VideoCaptureCamera;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->faceDetectEnabled:Z

    return p0
.end method

.method public static synthetic access$400(Lio/agora/rtc/video/VideoCaptureCamera;[Landroid/hardware/Camera$Face;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->notifyFaceDetection([Landroid/hardware/Camera$Face;)V

    return-void
.end method

.method public static synthetic access$500(Lio/agora/rtc/video/VideoCaptureCamera;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mIsAutoFaceFocusEnabled:Z

    return p0
.end method

.method public static synthetic access$600(Lio/agora/rtc/video/VideoCaptureCamera;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->notifyCameraFocusAreaChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic access$700(Lio/agora/rtc/video/VideoCaptureCamera;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->startFaceDetection_l()V

    return-void
.end method

.method public static synthetic access$800(Lio/agora/rtc/video/VideoCaptureCamera;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->stopFaceDetection_l()V

    return-void
.end method

.method public static synthetic access$900(Lio/agora/rtc/video/VideoCaptureCamera;F)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->setZoom_l(F)I

    move-result p0

    return p0
.end method

.method private allocate_l()I
    .locals 4

    .line 1
    :try_start_0
    iget v0, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget v0, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-static {v0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v0, -0x2

    return v0

    .line 5
    :cond_0
    iget v1, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    iget-object v2, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    invoke-static {}, Lio/agora/rtc/video/VideoCaptureCamera;->getCaptureName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/agora/rtc/video/VideoCapture;->fetchCapability(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->createCapabilities()I

    .line 7
    :cond_1
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v0, p0, Lio/agora/rtc/video/VideoCapture;->mCameraNativeOrientation:I

    .line 8
    iget-wide v0, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {p0, v0, v1}, Lio/agora/rtc/video/VideoCapture;->isAutoFaceFocusEnabled(J)Z

    move-result v0

    iput-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mIsAutoFaceFocusEnabled:Z

    .line 10
    :cond_2
    iget-wide v0, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    invoke-virtual {p0, v0, v1}, Lio/agora/rtc/video/VideoCapture;->isFaceDetectionEnabled(J)Z

    move-result v0

    iput-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->faceDetectEnabled:Z

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "CAMERA1"

    const-string v2, "allocate: Camera.open: "

    .line 11
    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method private static calculateTapArea(FFF)Landroid/graphics/Rect;
    .locals 5

    const/high16 v0, 0x43960000    # 300.0f

    mul-float/2addr p2, v0

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p2

    const/high16 v0, 0x44fa0000    # 2000.0f

    mul-float/2addr p0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    sub-float/2addr p0, v1

    float-to-int p0, p0

    mul-float/2addr p1, v0

    sub-float/2addr p1, v1

    float-to-int p1, p1

    .line 2
    div-int/lit8 p2, p2, 0x2

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    sub-int v1, p0, p2

    const/16 v2, -0x3e8

    const/16 v3, 0x3e8

    invoke-static {v1, v2, v3}, Lio/agora/rtc/video/VideoCaptureCamera;->clamp(III)I

    move-result v1

    int-to-float v1, v1

    sub-int v4, p1, p2

    .line 4
    invoke-static {v4, v2, v3}, Lio/agora/rtc/video/VideoCaptureCamera;->clamp(III)I

    move-result v4

    int-to-float v4, v4

    add-int/2addr p0, p2

    .line 5
    invoke-static {p0, v2, v3}, Lio/agora/rtc/video/VideoCaptureCamera;->clamp(III)I

    move-result p0

    int-to-float p0, p0

    add-int/2addr p1, p2

    .line 6
    invoke-static {p1, v2, v3}, Lio/agora/rtc/video/VideoCaptureCamera;->clamp(III)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {v0, v1, v4, p0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 7
    new-instance p0, Landroid/graphics/Rect;

    iget p1, v0, Landroid/graphics/RectF;->left:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p2, v0, Landroid/graphics/RectF;->top:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private static clamp(III)I
    .locals 0

    .line 1
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private deallocate_l()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->stopCapture()I

    .line 3
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    .line 7
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public static getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;
    .locals 3

    const/4 v0, 0x0

    if-ltz p0, :cond_1

    .line 1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 3
    :try_start_0
    invoke-static {p0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    const-string v1, "CAMERA1"

    const-string v2, "getCameraInfo: Camera.getCameraInfo: "

    .line 4
    invoke-static {v1, v2, p0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getCaptureName()Ljava/lang/String;
    .locals 1

    const-string v0, "camera1"

    return-object v0
.end method

.method private getFrameOrientation()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCapture;->checkOrientation()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mIsCameraFacingFront:Z

    if-nez v1, :cond_0

    rsub-int v0, v0, 0x168

    .line 3
    :cond_0
    iget v1, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-static {v1}, Lio/agora/rtc/video/VideoCaptureCamera;->getSensorOrientation(I)I

    move-result v1

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    return v1
.end method

.method public static getFrontCameraIndex()I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :cond_0
    :goto_0
    return v0
.end method

.method private getMaxZoom_l()F
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0}, Lio/agora/rtc/video/VideoCaptureCamera;->isZoomSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    .line 5
    :cond_0
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "camera "

    const-string v2, ", facing "

    .line 2
    invoke-static {v1, p0, v2}, Le/d/c/a/a;->E(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "front"

    goto :goto_0

    :cond_1
    const-string v0, "back"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNumberOfCameras()I
    .locals 3

    .line 1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera1 listCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAMERA1"

    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getSensorOrientation(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    iget p0, p0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return p0
.end method

.method private getZoomRatios()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lio/agora/rtc/video/VideoCaptureCamera;->isZoomSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private isAutoFaceFocusSupported_l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "auto"

    invoke-static {v1, v0}, Lio/agora/rtc/video/VideoCaptureCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isCameraFacingFront(I)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 2
    iget p0, p0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private isExposureSupported_l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    return v1
.end method

.method private isFaceDetectedSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isFocusSupported_l()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v2, "auto"

    invoke-static {v2, v0}, Lio/agora/rtc/video/VideoCaptureCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private isTorchSupported_l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "torch"

    invoke-static {v1, v0}, Lio/agora/rtc/video/VideoCaptureCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isZoomSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "CAMERA1"

    const-string v1, "camera zoom is not supported "

    .line 5
    invoke-static {p1, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method private isZoomSupported_l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private notifyCameraFocusAreaChanged(Landroid/graphics/Rect;)V
    .locals 7

    .line 1
    iget v0, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2
    :goto_0
    invoke-static {p1, v2, v1}, Lio/agora/rtc/video/CoordinatesTransform;->normalizedFaceRect(Landroid/graphics/Rect;IZ)Landroid/graphics/RectF;

    move-result-object p1

    .line 3
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 4
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 5
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 6
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    const-string v0, "auto face focus left ="

    .line 7
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " top = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " right = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " bottom = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CAMERA1"

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-wide v5, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lio/agora/rtc/video/VideoCapture;->NotifyCameraFocusAreaChanged(FFFFJ)V

    return-void
.end method

.method private notifyFaceDetection([Landroid/hardware/Camera$Face;)V
    .locals 11

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->rectArray:[Landroid/graphics/RectF;

    .line 2
    iget v0, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz p1, :cond_2

    .line 3
    array-length v0, p1

    if-lez v0, :cond_2

    .line 4
    array-length v0, p1

    .line 5
    new-array v3, v0, [Landroid/graphics/RectF;

    iput-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->rectArray:[Landroid/graphics/RectF;

    .line 6
    new-array v3, v0, [I

    iput-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->distanceArray:[I

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_1

    .line 7
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera;->rectArray:[Landroid/graphics/RectF;

    aget-object v5, p1, v3

    iget-object v5, v5, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-static {v5, v2, v1}, Lio/agora/rtc/video/CoordinatesTransform;->normalizedFaceRect(Landroid/graphics/Rect;IZ)Landroid/graphics/RectF;

    move-result-object v5

    aput-object v5, v4, v3

    .line 8
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera;->distanceArray:[I

    const/4 v5, 0x5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v2, v0

    goto :goto_2

    :cond_2
    new-array p1, v2, [Landroid/graphics/RectF;

    .line 9
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->rectArray:[Landroid/graphics/RectF;

    .line 10
    :goto_2
    iget v4, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureWidth:I

    iget v5, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureHeight:I

    iget-object v6, p0, Lio/agora/rtc/video/VideoCaptureCamera;->rectArray:[Landroid/graphics/RectF;

    int-to-long v7, v2

    iget-wide v9, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lio/agora/rtc/video/VideoCapture;->NotifyFaceDetection(II[Landroid/graphics/RectF;JJ)V

    return-void
.end method

.method private setAdvancedCameraParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v1, v0}, Lio/agora/rtc/video/VideoCaptureCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    const-string v2, "CAMERA1"

    if-eqz v0, :cond_0

    const-string v0, "AgoraVideo set flash mode = FLASH_MODE_OFF"

    .line 2
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    const-string v1, "auto"

    invoke-static {v1, v0}, Lio/agora/rtc/video/VideoCaptureCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AgoraVideo set white blance = WHITE_BALANCE_AUTO"

    .line 5
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    :cond_1
    const-string v0, "continuous-video"

    .line 7
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lio/agora/rtc/video/VideoCaptureCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "AgoraVideo set Focus mode = FOCUS_MODE_CONTINUOUS_VIDEO"

    .line 8
    invoke-static {v2, v3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mAntiBandingMode:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lio/agora/rtc/video/VideoCaptureCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "AgoraVideo set anti-banding = "

    .line 12
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mAntiBandingMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 14
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/video/VideoCaptureCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "AgoraVideo set sence mode = auto"

    .line 15
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    if-eq v0, v1, :cond_4

    .line 17
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private setAntiBandingMode_l(I)I
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->toCamera1ABMode(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mAntiBandingMode:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 4
    :cond_1
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mAntiBandingMode:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lio/agora/rtc/video/VideoCaptureCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    const-string v3, "CAMERA1"

    if-eqz v2, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AgoraVideo set anti-banding = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 8
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "anti banding got exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not supported anti-banding = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private setDeviceSpecificParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 8

    .line 1
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->buildDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getCpuName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getCpuABI()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getNumberOfCPUCores()I

    move-result v3

    .line 5
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getCPUMaxFreqKHz()I

    move-result v4

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current Device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CAMERA1"

    invoke-static {v6, v5}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CPU name: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", with "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cores, arch: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", max Freq: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "xiaomi/mi note"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "center-weighted"

    const-string v3, "auto-exposure"

    const-string v4, "skinToneEnhancement"

    if-eqz v1, :cond_0

    const-string v1, "set MiNote config"

    .line 9
    invoke-static {v6, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scene-detect"

    const-string v5, "on"

    .line 10
    invoke-virtual {p1, v1, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "xiaomi-still-beautify-values"

    const-string v5, "i:3"

    .line 11
    invoke-virtual {p1, v1, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "enable"

    .line 12
    invoke-virtual {p1, v4, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "oppo/r7c/r7c"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "set oppo r7c config"

    .line 15
    invoke-static {v6, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v4, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    const/16 v0, 0x64

    const-string v1, "face-beautify"

    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 18
    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setExposureCompensation_l(I)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExposureCompensation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAMERA1"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v2

    .line 5
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v3

    .line 6
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v4

    .line 7
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v5

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "compensation step="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", min="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", max="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", cur index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-le p1, v4, :cond_0

    move p1, v4

    :cond_0
    if-ge p1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, p1

    .line 9
    :goto_0
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 10
    :try_start_0
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exposure compensation got exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :goto_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result p1

    int-to-float v0, p1

    mul-float/2addr v2, v0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cur index="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ev="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private setExposure_l(FFZ)I
    .locals 9

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setExposure called camera api1 x = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " y = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "CAMERA1"

    invoke-static {v0, p3}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, -0x1

    if-nez p3, :cond_0

    return v1

    :cond_0
    const/4 p3, 0x0

    cmpg-float v2, p1, p3

    if-ltz v2, :cond_6

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v2

    if-gtz v3, :cond_6

    cmpg-float p3, p2, p3

    if-ltz p3, :cond_6

    cmpl-float p3, p2, v2

    if-lez p3, :cond_1

    goto :goto_2

    :cond_1
    const/high16 p3, 0x3fc00000    # 1.5f

    .line 3
    invoke-static {p1, p2, p3}, Lio/agora/rtc/video/VideoCaptureCamera;->calculateTapArea(FFF)Landroid/graphics/Rect;

    move-result-object p3

    .line 4
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_4

    .line 5
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    .line 6
    :cond_2
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v3

    if-lez v3, :cond_3

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v4, Landroid/hardware/Camera$Area;

    const/16 v5, 0x320

    invoke-direct {v4, p3, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    const-string p3, "metering areas not supported"

    .line 10
    invoke-static {v0, p3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :goto_0
    :try_start_0
    iget-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 12
    iget-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p3}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setExposure failed, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 14
    :cond_4
    :goto_1
    iget-wide v7, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v0, 0x0

    cmp-long p3, v7, v0

    if-eqz p3, :cond_5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    .line 15
    invoke-virtual/range {v2 .. v8}, Lio/agora/rtc/video/VideoCapture;->NotifyCameraExposureAreaChanged(FFFFJ)V

    :cond_5
    const/4 p1, 0x0

    return p1

    :cond_6
    :goto_2
    const-string p1, "set exposure unreasonable inputs"

    .line 16
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private setFocus_l(FFZ)I
    .locals 10

    const-string p3, "CAMERA1"

    const-string v0, "setFocus called camera api1"

    .line 1
    invoke-static {p3, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v0, -0x1

    if-nez p3, :cond_0

    return v0

    :cond_0
    const/4 p3, 0x0

    cmpg-float v1, p1, p3

    if-ltz v1, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-gtz v2, :cond_7

    cmpg-float p3, p2, p3

    if-ltz p3, :cond_7

    cmpl-float p3, p2, v1

    if-lez p3, :cond_1

    goto/16 :goto_4

    .line 3
    :cond_1
    invoke-static {p1, p2, v1}, Lio/agora/rtc/video/VideoCaptureCamera;->calculateTapArea(FFF)Landroid/graphics/Rect;

    move-result-object p3

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 4
    invoke-static {p1, p2, v1}, Lio/agora/rtc/video/VideoCaptureCamera;->calculateTapArea(FFF)Landroid/graphics/Rect;

    move-result-object v1

    .line 5
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "CAMERA1"

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to cancle AutoFocus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-nez v2, :cond_2

    return v0

    .line 8
    :cond_2
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v3

    const/16 v4, 0x320

    if-lez v3, :cond_3

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v5, Landroid/hardware/Camera$Area;

    invoke-direct {v5, p3, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    const-string p3, "CAMERA1"

    const-string v3, "focus areas not supported"

    .line 12
    invoke-static {p3, v3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :goto_1
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result p3

    if-lez p3, :cond_4

    .line 14
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v3, Landroid/hardware/Camera$Area;

    invoke-direct {v3, v1, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v2, p3}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_2

    :cond_4
    const-string p3, "CAMERA1"

    const-string v1, "metering areas not supported"

    .line 17
    invoke-static {p3, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :goto_2
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object p3

    const-string v1, "macro"

    .line 19
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lio/agora/rtc/video/VideoCaptureCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "macro"

    .line 20
    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mObjectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_1
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 23
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    const-string v1, "focus"

    const-string v2, "FOCUS_MODE_MACRO is not supported"

    .line 24
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_3
    :try_start_2
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    new-instance v2, Lio/agora/rtc/video/VideoCaptureCamera$11;

    invoke-direct {v2, p0, p3}, Lio/agora/rtc/video/VideoCaptureCamera$11;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 26
    iget-wide v8, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v0, 0x0

    cmp-long p3, v8, v0

    if-eqz p3, :cond_6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    .line 27
    invoke-virtual/range {v3 .. v9}, Lio/agora/rtc/video/VideoCapture;->NotifyCameraFocusAreaChanged(FFFFJ)V

    :cond_6
    const/4 p1, 0x0

    return p1

    :catch_1
    move-exception p1

    const-string p2, "CAMERA1"

    .line 28
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCamera.autoFocus Exception: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_7
    :goto_4
    const-string p1, "CAMERA1"

    const-string p2, "set focus unreasonable inputs"

    .line 29
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private setTorchMode_l(Z)I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "torch"

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "off"

    .line 6
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1

    :cond_2
    const/4 p1, -0x2

    return p1
.end method

.method private setZoom_l(F)I
    .locals 5

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt p1, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v2

    .line 4
    :goto_1
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_5

    .line 5
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->isZoomSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    const-string v4, "CAMERA1"

    if-le v3, v0, :cond_4

    const-string p1, "zoom value is larger than maxZoom value"

    .line 8
    invoke-static {v4, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 9
    :cond_4
    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 10
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setParameters failed, zoomLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return v2
.end method

.method private startCapture_l(III)I
    .locals 9

    const-string v0, "startCapture, w="

    const-string v1, ", h="

    const-string v2, ", fps="

    .line 1
    invoke-static {v0, p1, v1, p2, v2}, Le/d/c/a/a;->F(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAMERA1"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v2, -0x1

    if-nez v0, :cond_0

    const-string p1, "startCapture: camera is null!!"

    .line 3
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 4
    :cond_0
    iget v0, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v0, v5, :cond_1

    if-ne v0, v4, :cond_2

    :cond_1
    const-string v0, "Camera1Tex-"

    .line 5
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lio/agora/rtc/video/VideoCapture;->mShareContext:Lio/agora/rtc/gl/EglBase$Context;

    const/16 v8, 0x8

    invoke-static {v0, v7, v8}, Lio/agora/rtc/gl/SurfaceTextureHelper;->create(Ljava/lang/String;Lio/agora/rtc/gl/EglBase$Context;I)Lio/agora/rtc/gl/SurfaceTextureHelper;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    if-nez v0, :cond_3

    const-string v0, "Failed to create SurfaceTextureHelper, force fallback to raw data type"

    .line 6
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iput v3, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    :cond_2
    move-object v0, v6

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 9
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-virtual {v0, p0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->startListening(Lio/agora/rtc/gl/SurfaceTextureHelper$OnTextureFrameAvailableListener;)V

    .line 10
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-virtual {v0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->getEglContext()Lio/agora/rtc/gl/EglBase$Context;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mEglContext:Lio/agora/rtc/gl/EglBase$Context;

    .line 11
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-virtual {v0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 12
    iget v7, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    if-ne v7, v4, :cond_4

    iget-object v4, p0, Lio/agora/rtc/video/VideoCapture;->mTextureAndRawBufferSynchronizer:Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;

    if-nez v4, :cond_4

    .line 13
    new-instance v4, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;

    invoke-direct {v4, p0}, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;-><init>(Lio/agora/rtc/video/VideoCapture;)V

    iput-object v4, p0, Lio/agora/rtc/video/VideoCapture;->mTextureAndRawBufferSynchronizer:Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;

    .line 14
    :cond_4
    :goto_0
    iget v4, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    if-nez v4, :cond_6

    .line 15
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mDummySurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_5

    .line 16
    :try_start_0
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/16 v4, 0x2a

    invoke-direct {v0, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mDummySurfaceTexture:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "failed to create dummy SurfaceTexture!"

    .line 17
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_5
    :goto_1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mDummySurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_6
    if-nez v0, :cond_7

    goto :goto_2

    .line 19
    :cond_7
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 20
    :try_start_1
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_1
    :try_start_2
    const-string v0, "failed to set preview texture, invalid surfaceTexture!"

    .line 22
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iput-object v6, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mDummySurfaceTexture:Landroid/graphics/SurfaceTexture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_2
    move v3, v2

    :goto_3
    if-eqz v3, :cond_8

    return v3

    .line 25
    :cond_8
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 26
    iput-boolean v5, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureStarted:Z

    .line 27
    iput p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureWidth:I

    .line 28
    iput p2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureHeight:I

    .line 29
    iput p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureFps:I

    .line 30
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lio/agora/rtc/video/VideoCaptureCamera;->tryStartCapture(III)I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 31
    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "try start capture failed "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 32
    :goto_4
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_2
    move-exception p1

    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 33
    throw p1

    .line 34
    :goto_5
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 35
    throw p1
.end method

.method private startFaceDetection()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$5;

    invoke-direct {v1, p0}, Lio/agora/rtc/video/VideoCaptureCamera$5;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private startFaceDetection_l()V
    .locals 4

    const-string v0, "CAMERA1"

    .line 1
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "enable face detection"

    .line 2
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startFaceDetection()V

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isFaceDetectionStarted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start face detection failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isFaceDetectionStarted:Z

    :goto_0
    return-void
.end method

.method private stopCapture_l()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureStarted:Z

    const-string v1, "CAMERA1"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "already stop capture"

    .line 2
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-boolean v3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isFaceDetectionStarted:Z

    if-eqz v3, :cond_1

    .line 4
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->stopFaceDetection()V

    .line 5
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Failed to stop face detection"

    .line 6
    invoke-static {v1, v4, v3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_1
    :goto_0
    :try_start_1
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v4, "Failed to cancle AutoFocus"

    .line 8
    invoke-static {v1, v4, v3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_1
    :try_start_2
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 10
    iput-boolean v2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureRunning:Z

    .line 11
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    .line 12
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 13
    invoke-static {}, Lio/agora/rtc/video/AgoraVideoDebugger;->reset()V

    .line 14
    iput v2, p0, Lio/agora/rtc/video/VideoCapture;->mDroppedTextureBufferCount:I

    .line 15
    iget-object v3, p0, Lio/agora/rtc/video/VideoCapture;->mTextureAndRawBufferSynchronizer:Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;

    if-eqz v3, :cond_2

    .line 16
    invoke-virtual {v3}, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->reset()V

    .line 17
    :cond_2
    iget-object v3, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    if-eqz v3, :cond_3

    .line 18
    invoke-virtual {v3}, Lio/agora/rtc/gl/SurfaceTextureHelper;->stopListening()V

    .line 19
    iget-object v3, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-virtual {v3}, Lio/agora/rtc/gl/SurfaceTextureHelper;->dispose()V

    .line 20
    iput-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    .line 21
    :cond_3
    iput-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mEglContext:Lio/agora/rtc/gl/EglBase$Context;

    .line 22
    iget v3, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    if-eqz v3, :cond_4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 23
    :cond_4
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    move v0, v2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v3, "Failed to stop camera"

    .line 24
    invoke-static {v1, v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    .line 25
    :goto_2
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_6

    .line 26
    iput-boolean v2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureStarted:Z

    :cond_6
    return v0
.end method

.method private stopFaceDetection()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$6;

    invoke-direct {v1, p0}, Lio/agora/rtc/video/VideoCaptureCamera$6;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private stopFaceDetection_l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CAMERA1"

    const-string v1, "disable face detection"

    .line 2
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isFaceDetectionStarted:Z

    return-void
.end method

.method private toCamera1ABMode(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, "auto"

    return-object p1

    :cond_0
    const-string p1, "60hz"

    return-object p1

    :cond_1
    const-string p1, "50hz"

    return-object p1

    :cond_2
    const-string p1, "off"

    return-object p1
.end method

.method private tryStartCapture(III)I
    .locals 8

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const-string v1, "CAMERA1"

    if-nez v0, :cond_0

    const-string p1, "Camera not initialized %d"

    .line 2
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    const-string v0, "tryStartCapture: "

    const-string v2, "*"

    const-string v3, ", frameRate: "

    .line 3
    invoke-static {v0, p1, v2, p2, v3}, Le/d/c/a/a;->F(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isCaptureRunning: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureRunning:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSurfaceReady: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isSurfaceReady:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isCaptureStarted: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureStarted:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", outputDataType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureRunning:Z

    const/4 v2, 0x0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureStarted:Z

    if-nez v0, :cond_1

    goto/16 :goto_7

    .line 5
    :cond_1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 7
    iget v3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureFormat:I

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 8
    iget v3, p0, Lio/agora/rtc/video/VideoCapture;->mPQFirst:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_5

    const-string v3, "camera1::fps first"

    .line 9
    invoke-static {v1, v3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v3

    .line 11
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_2

    .line 12
    invoke-virtual {v0, p3}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto :goto_2

    :cond_2
    move v5, v2

    .line 13
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 14
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v6, v6, v2

    mul-int/lit16 v7, p3, 0x3e8

    if-lt v6, v7, :cond_3

    .line 15
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    aget p3, p3, v2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v6, v6, v4

    invoke-virtual {v0, p3, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 16
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p3

    if-ne v5, p3, :cond_6

    sub-int/2addr v5, v4

    .line 17
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    aget p3, p3, v2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aget v3, v3, v4

    invoke-virtual {v0, p3, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_2

    :cond_5
    const-string v3, "camera1::PQ first"

    .line 18
    invoke-static {v1, v3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p3}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 20
    :cond_6
    :goto_2
    invoke-direct {p0, v0}, Lio/agora/rtc/video/VideoCaptureCamera;->setAdvancedCameraParameters(Landroid/hardware/Camera$Parameters;)V

    .line 21
    invoke-direct {p0, v0}, Lio/agora/rtc/video/VideoCaptureCamera;->setDeviceSpecificParameters(Landroid/hardware/Camera$Parameters;)V

    .line 22
    iget-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p3, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 23
    iget p3, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    if-eqz p3, :cond_8

    const/4 v0, 0x2

    if-ne p3, v0, :cond_7

    goto :goto_3

    :cond_7
    move p2, v2

    goto :goto_5

    :cond_8
    :goto_3
    mul-int/2addr p1, p2

    .line 24
    iget p2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureFormat:I

    invoke-static {p2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result p2

    mul-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x8

    add-int/lit16 p2, p2, 0x1000

    move p1, v2

    :goto_4
    const/4 p3, 0x3

    if-ge p1, p3, :cond_9

    .line 25
    new-array p3, p2, [B

    .line 26
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 27
    :cond_9
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 28
    :goto_5
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    new-instance p3, Lio/agora/rtc/video/VideoCaptureCamera$2;

    invoke-direct {p3, p0}, Lio/agora/rtc/video/VideoCaptureCamera$2;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-virtual {p1, p3}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 29
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    .line 30
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->isAutoFaceFocusSupported()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 31
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    new-instance p3, Lio/agora/rtc/video/VideoCaptureCamera$3;

    invoke-direct {p3, p0}, Lio/agora/rtc/video/VideoCaptureCamera$3;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-virtual {p1, p3}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 32
    iget-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mIsAutoFaceFocusEnabled:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->faceDetectEnabled:Z

    if-eqz p1, :cond_c

    .line 33
    :cond_a
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->startFaceDetection()V

    goto :goto_6

    .line 34
    :cond_b
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->isFaceDetectedSupported()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 35
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    new-instance p3, Lio/agora/rtc/video/VideoCaptureCamera$4;

    invoke-direct {p3, p0}, Lio/agora/rtc/video/VideoCaptureCamera$4;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-virtual {p1, p3}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 36
    iget-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->faceDetectEnabled:Z

    if-eqz p1, :cond_c

    .line 37
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->startFaceDetection()V

    .line 38
    :cond_c
    :goto_6
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 39
    iput p2, p0, Lio/agora/rtc/video/VideoCapture;->mExpectedRawBufferSize:I

    .line 40
    iput-boolean v4, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureRunning:Z

    .line 41
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 42
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    const-string p2, "Params: "

    .line 43
    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_d
    :goto_7
    const-string p1, "tryStartCapture return"

    .line 44
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public UnRegisterNativeHandle()I
    .locals 2

    const-string v0, "CAMERA1"

    const-string v1, "UnRegisterNativeHandle called"

    .line 1
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const/4 v0, 0x0

    return v0
.end method

.method public allocate()I
    .locals 4

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCameraPreviewHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "camera-preview-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCameraPreviewHandlerThread:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCameraPreviewHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCameraPreviewHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    :cond_0
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mAllocated:I

    .line 7
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 9
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    new-instance v2, Lio/agora/rtc/video/VideoCaptureCamera$1;

    invoke-direct {v2, p0, v0}, Lio/agora/rtc/video/VideoCaptureCamera$1;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    const-wide/16 v1, 0x1770

    .line 10
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 12
    :cond_1
    :goto_0
    iget v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mAllocated:I

    return v0
.end method

.method public createCapabilities()I
    .locals 13

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const-string v2, "\"id\":"

    .line 2
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    const-string v4, ","

    invoke-static {v2, v3, v4}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    const-string v5, ""

    move v6, v1

    move-object v7, v5

    .line 4
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    .line 5
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    iget v8, v8, Landroid/hardware/Camera$Size;->width:I

    .line 6
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    iget v9, v9, Landroid/hardware/Camera$Size;->height:I

    const/16 v10, 0xf0

    if-lt v8, v10, :cond_2

    if-lt v9, v10, :cond_2

    const/16 v10, 0x140

    if-ge v8, v10, :cond_0

    if-ge v9, v10, :cond_0

    goto :goto_1

    :cond_0
    const-string v10, "{\"w\":"

    const-string v11, ",\"h\":"

    const-string v12, "}"

    .line 7
    invoke-static {v10, v8, v11, v9, v12}, Le/d/c/a/a;->n2(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 8
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 9
    invoke-static {v7, v4, v8}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v8

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v3

    .line 11
    sget-object v6, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    aget-object v6, v6, v1

    const-string v9, "x86"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v8

    goto :goto_2

    :cond_4
    move v6, v1

    .line 12
    :goto_2
    invoke-static {}, Lio/agora/rtc/video/VideoCapture;->isEmulator()Z

    move-result v9

    if-nez v9, :cond_5

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v8, :cond_6

    :cond_5
    const v6, 0x32315659

    .line 13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6
    move v6, v1

    move-object v9, v5

    .line 14
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_8

    .line 15
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lio/agora/rtc/video/VideoCapture;->translateToEngineFormat(I)I

    move-result v10

    .line 16
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v8

    if-eq v6, v11, :cond_7

    .line 17
    invoke-static {v9, v10, v4}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 18
    :cond_7
    invoke-static {v9, v10}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 19
    :cond_8
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    move v3, v1

    .line 20
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_a

    .line 21
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v8

    if-eq v3, v10, :cond_9

    .line 23
    invoke-static {v5, v6, v4}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 24
    :cond_9
    invoke-static {v5, v6}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    const-string v0, "{"

    const-string v3, "\"resolution\":"

    const-string v4, "["

    .line 25
    invoke-static {v0, v2, v3, v4, v7}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "],"

    const-string v3, "\"format\":"

    invoke-static {v0, v2, v3, v4, v9}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "\"fps\":"

    invoke-static {v0, v2, v3, v4, v5}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "]}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    .line 26
    :goto_7
    iget v2, p0, Lio/agora/rtc/video/VideoCapture;->mId:I

    iget-object v3, p0, Lio/agora/rtc/video/VideoCapture;->mContext:Landroid/content/Context;

    invoke-static {}, Lio/agora/rtc/video/VideoCaptureCamera;->getCaptureName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v0, v4}, Lio/agora/rtc/video/VideoCapture;->cacheCapability(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public deallocate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$20;

    invoke-direct {v1, p0}, Lio/agora/rtc/video/VideoCaptureCamera$20;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCameraPreviewHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 7
    iput-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCameraPreviewHandlerThread:Landroid/os/HandlerThread;

    .line 8
    iput-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method public getCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "CAMERA1"

    const-string v2, "getCameraParameters: Camera.getParameters: "

    .line 2
    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 5
    iput-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    :cond_0
    return-object v1
.end method

.method public getMaxZoom()F
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$8;

    invoke-direct {v1, p0}, Lio/agora/rtc/video/VideoCaptureCamera$8;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public isAutoFaceFocusSupported()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$19;

    invoke-direct {v1, p0}, Lio/agora/rtc/video/VideoCaptureCamera$19;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isExposureSupported()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$17;

    invoke-direct {v1, p0}, Lio/agora/rtc/video/VideoCaptureCamera$17;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFocusSupported()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$16;

    invoke-direct {v1, p0}, Lio/agora/rtc/video/VideoCaptureCamera$16;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTorchSupported()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$15;

    invoke-direct {v1, p0}, Lio/agora/rtc/video/VideoCaptureCamera$15;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomSupported()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$18;

    invoke-direct {v1, p0}, Lio/agora/rtc/video/VideoCaptureCamera$18;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-eqz p1, :cond_4

    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureRunning:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    array-length v0, p1

    iget v3, p0, Lio/agora/rtc/video/VideoCapture;->mExpectedRawBufferSize:I

    const-wide/16 v1, 0x0

    if-ne v0, v3, :cond_1

    iget-wide v4, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_1

    .line 4
    iget v4, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureWidth:I

    iget v5, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureHeight:I

    iget v6, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureFormat:I

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lio/agora/rtc/video/VideoCapture;->onRawBufferAvailable([BIIII)V

    goto :goto_0

    .line 5
    :cond_1
    iget-wide v3, p0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    const-string v0, "CAMERA1"

    const-string v1, "warning mNativeVideoCaptureDeviceAndroid = 0, error"

    .line 6
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 7
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureRunning:Z

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 9
    :cond_3
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    .line 10
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureRunning:Z

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 12
    :cond_5
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    if-eqz p2, :cond_6

    .line 13
    iget-boolean v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isCaptureRunning:Z

    if-eqz v1, :cond_6

    .line 14
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 15
    :cond_6
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 16
    throw v0
.end method

.method public onTextureFrameAvailable(I[FJ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->getFrameOrientation()I

    move-result p1

    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mIsCameraFacingFront:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lio/agora/rtc/gl/RendererCommon;->horizontalFlipMatrix()[F

    move-result-object v0

    .line 4
    invoke-static {p2, v0}, Lio/agora/rtc/gl/RendererCommon;->multiplyMatrices([F[F)[F

    move-result-object p2

    .line 5
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/rtc/gl/SurfaceTextureHelper;

    iget v1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureWidth:I

    iget v2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureHeight:I

    .line 6
    invoke-static {p2}, Lio/agora/rtc/gl/RendererCommon;->convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;

    move-result-object p2

    .line 7
    invoke-virtual {v0, v1, v2, p2}, Lio/agora/rtc/gl/SurfaceTextureHelper;->createTextureBuffer(IILandroid/graphics/Matrix;)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    move-result-object p2

    .line 8
    invoke-virtual {p0, p2, p1, p3, p4}, Lio/agora/rtc/video/VideoCapture;->onTextureBufferAvailable(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJ)V

    .line 9
    invoke-interface {p2}, Lio/agora/rtc/gl/VideoFrame$Buffer;->release()V

    return-void
.end method

.method public setAntiBandingMode(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$21;

    invoke-direct {v1, p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera$21;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;I)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public setAutoFaceFocus(Z)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoFaceFocus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAMERA1"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mIsAutoFaceFocusEnabled:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    iput-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mIsAutoFaceFocusEnabled:Z

    .line 4
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->isAutoFaceFocusSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 5
    iget-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mIsAutoFaceFocusEnabled:Z

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isFaceDetectionStarted:Z

    if-nez v0, :cond_1

    .line 6
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->startFaceDetection()V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 7
    iget-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isFaceDetectionStarted:Z

    if-eqz p1, :cond_2

    .line 8
    iget-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->faceDetectEnabled:Z

    if-nez p1, :cond_2

    .line 9
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->stopFaceDetection()V

    :cond_2
    :goto_1
    return v1
.end method

.method public setCaptureFormat(IIZ)I
    .locals 3

    const-string v0, "setCaptureFormat: "

    const-string v1, " type: "

    const-string v2, " force texture oes: "

    .line 1
    invoke-static {v0, p1, v1, p2, v2}, Le/d/c/a/a;->F(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAMERA1"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sput-boolean p3, Lio/agora/rtc/video/VideoCapture;->FORCE_TEXTURE_OES:Z

    .line 3
    invoke-static {p2}, Lio/agora/rtc/video/VideoCapture;->translateToCaptureOutputDataType(I)I

    move-result p2

    iput p2, p0, Lio/agora/rtc/video/VideoCapture;->mCaptureOutputDataType:I

    .line 4
    invoke-static {p1}, Lio/agora/rtc/video/VideoCapture;->translateToAndroidFormat(I)I

    move-result p2

    iput p2, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mCaptureFormat:I

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setCaptureFormat failed, unkonwn format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setEdgeEnhanceMode(I)I
    .locals 1

    const-string p1, "CAMERA1"

    const-string v0, "EdgeEnhancement not supported in camera1 "

    .line 1
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public setExposure(FFZ)I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/agora/rtc/video/VideoCaptureCamera$12;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;FFZ)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public setExposureCompensation(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$22;

    invoke-direct {v1, p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera$22;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;I)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public setFaceDetection(Z)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFaceDetection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAMERA1"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->faceDetectEnabled:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    iput-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->faceDetectEnabled:Z

    .line 4
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->isFaceDetectedSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 5
    iget-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->faceDetectEnabled:Z

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isFaceDetectionStarted:Z

    if-nez v0, :cond_1

    .line 6
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->startFaceDetection()V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 7
    iget-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->isFaceDetectionStarted:Z

    if-eqz p1, :cond_2

    .line 8
    iget-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mIsAutoFaceFocusEnabled:Z

    if-nez p1, :cond_2

    .line 9
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera;->stopFaceDetection()V

    :cond_2
    :goto_1
    return v1
.end method

.method public setFocus(FFZ)I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/agora/rtc/video/VideoCaptureCamera$10;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;FFZ)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public setNoiseReductionMode(I)I
    .locals 1

    const-string p1, "CAMERA1"

    const-string v0, "NoiseReduction not supported in camera1 "

    .line 1
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public setTorchMode(Z)I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$9;

    invoke-direct {v1, p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera$9;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;Z)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public setVideoStabilityMode(I)I
    .locals 1

    const-string p1, "CAMERA1"

    const-string v0, "VideoStability not supported in camera1 "

    .line 1
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public setZoom(F)I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$7;

    invoke-direct {v1, p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera$7;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;F)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public startCapture(III)I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/agora/rtc/video/VideoCaptureCamera$13;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;III)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public stopCapture()I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera;->mPreviewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lio/agora/rtc/video/VideoCaptureCamera$14;

    invoke-direct {v1, p0}, Lio/agora/rtc/video/VideoCaptureCamera$14;-><init>(Lio/agora/rtc/video/VideoCaptureCamera;)V

    invoke-static {v0, v1}, Lio/agora/rtc/utils/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
