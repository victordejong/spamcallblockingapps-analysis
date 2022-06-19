.class public Lio/agora/rtc/video/VideoCaptureCamera$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/VideoCaptureCamera;->setTorchMode(Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/video/VideoCaptureCamera;

.field public final synthetic val$fisTorchOn:Z


# direct methods
.method public constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera$9;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    iput-boolean p2, p0, Lio/agora/rtc/video/VideoCaptureCamera$9;->val$fisTorchOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 2

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera$9;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    iget-boolean v1, p0, Lio/agora/rtc/video/VideoCaptureCamera$9;->val$fisTorchOn:Z

    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera;->access$1100(Lio/agora/rtc/video/VideoCaptureCamera;Z)I

    move-result v0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera$9;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
