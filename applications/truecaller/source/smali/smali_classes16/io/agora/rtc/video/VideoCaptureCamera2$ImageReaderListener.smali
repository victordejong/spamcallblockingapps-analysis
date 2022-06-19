.class public Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageReaderListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/video/VideoCaptureCamera2;


# direct methods
.method private constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;-><init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2100(Lio/agora/rtc/video/VideoCaptureCamera2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$000(Lio/agora/rtc/video/VideoCaptureCamera2;)Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    move-result-object v2

    sget-object v3, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STARTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-ne v2, v3, :cond_b

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2200(Lio/agora/rtc/video/VideoCaptureCamera2;)[B

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2200(Lio/agora/rtc/video/VideoCaptureCamera2;)[B

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2300(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/media/ImageReader;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2400(Lio/agora/rtc/video/VideoCaptureCamera2;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v3}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2300(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/media/ImageReader;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 6
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v1

    if-nez v1, :cond_3

    .line 7
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 8
    :try_start_2
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    .line 9
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Landroid/media/Image;->getFormat()I

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_7

    .line 10
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    goto/16 :goto_0

    .line 11
    :cond_4
    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 12
    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 13
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2200(Lio/agora/rtc/video/VideoCaptureCamera2;)[B

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2500(Landroid/media/Image;[B)V

    .line 14
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget-wide v4, v3, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-eqz p1, :cond_5

    .line 15
    invoke-static {v3}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2200(Lio/agora/rtc/video/VideoCaptureCamera2;)[B

    move-result-object v4

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget v5, p1, Lio/agora/rtc/video/VideoCapture;->mExpectedRawBufferSize:I

    .line 16
    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$200(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v6

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v7

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2600(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v8

    .line 17
    invoke-virtual/range {v3 .. v8}, Lio/agora/rtc/video/VideoCapture;->onRawBufferAvailable([BIIII)V

    goto :goto_1

    :cond_5
    const-string p1, "CAMERA2"

    const-string v3, "warning mNativeVideoCaptureDeviceAndroid = 0, error"

    .line 18
    invoke-static {p1, v3}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImageReader size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " did not match Image size: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    :goto_0
    const-string p1, "CAMERA2"

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected image format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/Image;->getFormat()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "or #planes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-static {p1, v3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    :try_start_4
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    .line 28
    :cond_8
    :goto_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_9

    .line 29
    :try_start_6
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 30
    :cond_9
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    :catchall_0
    move-exception p1

    .line 31
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p1
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 32
    :cond_a
    :goto_2
    :try_start_9
    monitor-exit v0

    return-void

    :cond_b
    :goto_3
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    return-void

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_a
    const-string v2, "CAMERA2"

    const-string v3, "acquireLastest Image():"

    .line 33
    invoke-static {v2, v3, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v1, :cond_c

    .line 34
    :try_start_b
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    :cond_c
    monitor-exit v0

    return-void

    :goto_4
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 35
    :cond_d
    throw p1

    :catchall_2
    move-exception p1

    .line 36
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw p1
.end method
