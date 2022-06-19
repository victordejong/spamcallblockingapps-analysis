.class public Lio/agora/rtc/mediaio/SurfaceTextureHelper$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/mediaio/SurfaceTextureHelper;-><init>(Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;ZII)V
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
    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$5;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$5;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$402(Lio/agora/rtc/mediaio/SurfaceTextureHelper;Z)Z

    .line 2
    iget-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$5;->this$0:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-static {p1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->access$600(Lio/agora/rtc/mediaio/SurfaceTextureHelper;)V

    return-void
.end method
