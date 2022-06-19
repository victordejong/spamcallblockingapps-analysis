.class public Lio/agora/rtc/video/VideoCaptureCamera$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/VideoCaptureCamera;->deallocate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/video/VideoCaptureCamera;


# direct methods
.method public constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera$20;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera$20;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    invoke-static {v0}, Lio/agora/rtc/video/VideoCaptureCamera;->access$2200(Lio/agora/rtc/video/VideoCaptureCamera;)V

    return-void
.end method
