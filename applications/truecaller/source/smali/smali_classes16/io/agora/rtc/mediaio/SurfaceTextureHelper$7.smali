.class public Lio/agora/rtc/mediaio/SurfaceTextureHelper$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/mediaio/SurfaceTextureHelper;->returnTextureFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;


# direct methods
.method public constructor <init>(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$7;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$7;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$702(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Z)Z

    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$7;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$800(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$7;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$900(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$7;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$600(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    :goto_0
    return-void
.end method
