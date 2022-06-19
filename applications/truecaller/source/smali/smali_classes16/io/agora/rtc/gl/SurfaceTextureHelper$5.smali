.class public Lio/agora/rtc/gl/SurfaceTextureHelper$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/SurfaceTextureHelper;->returnTextureFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/SurfaceTextureHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$5;->this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$5;->this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/agora/rtc/gl/SurfaceTextureHelper;->access$602(Lio/agora/rtc/gl/SurfaceTextureHelper;Z)Z

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$5;->this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->access$700(Lio/agora/rtc/gl/SurfaceTextureHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$5;->this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->access$800(Lio/agora/rtc/gl/SurfaceTextureHelper;)Lio/agora/rtc/gl/TextureBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/rtc/gl/TextureBufferPool;->anyTextureInUse()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$5;->this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->access$900(Lio/agora/rtc/gl/SurfaceTextureHelper;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$5;->this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->access$500(Lio/agora/rtc/gl/SurfaceTextureHelper;)V

    :cond_1
    :goto_0
    return-void
.end method
