.class public final Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/mediaio/SurfaceTextureHelper;->create(Ljava/lang/String;Lio/agora/rtc/gl/EglBase$Context;ZII)Lio/agora/rtc/mediaio/SurfaceTextureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/agora/rtc/mediaio/SurfaceTextureHelper;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$copyTo2DTexture:Z

.field public final synthetic val$handler:Landroid/os/Handler;

.field public final synthetic val$height:I

.field public final synthetic val$sharedContext:Lio/agora/rtc/gl/EglBase$Context;

.field public final synthetic val$threadName:Ljava/lang/String;

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;ZIILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->val$sharedContext:Lio/agora/rtc/gl/EglBase$Context;

    iput-object p2, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->val$handler:Landroid/os/Handler;

    iput-boolean p3, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->val$copyTo2DTexture:Z

    iput p4, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->val$width:I

    iput p5, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->val$height:I

    iput-object p6, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->val$threadName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/agora/rtc/mediaio/SurfaceTextureHelper;
    .locals 8

    .line 2
    :try_start_0
    new-instance v7, Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    iget-object v1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->val$sharedContext:Lio/agora/rtc/gl/EglBase$Context;

    iget-object v2, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->val$handler:Landroid/os/Handler;

    iget-boolean v3, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->val$copyTo2DTexture:Z

    iget v4, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->val$width:I

    iget v5, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->val$height:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;-><init>(Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;ZIILio/agora/rtc/mediaio/SurfaceTextureHelper$1;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    const/4 v0, 0x0

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
    invoke-virtual {p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->call()Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    move-result-object v0

    return-object v0
.end method
