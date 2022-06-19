.class public Lio/agora/rtc/video/VideoCaptureCamera$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/VideoCaptureCamera;->setFocus_l(FFZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/video/VideoCaptureCamera;

.field public final synthetic val$currentFocusMode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera$11;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    iput-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera$11;->val$currentFocusMode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera$11;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    iget-object p1, p1, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera$11;->val$currentFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera$11;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    invoke-static {v0}, Lio/agora/rtc/video/VideoCaptureCamera;->access$1300(Lio/agora/rtc/video/VideoCaptureCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
