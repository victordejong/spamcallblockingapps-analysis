.class public Lio/agora/rtc/gl/SurfaceTextureHelper$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/SurfaceTextureHelper;->textureCopy(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/agora/rtc/gl/VideoFrame$TextureBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

.field public final synthetic val$textureBuffer:Lio/agora/rtc/gl/VideoFrame$TextureBuffer;


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/SurfaceTextureHelper;Lio/agora/rtc/gl/VideoFrame$TextureBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$8;->this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

    iput-object p2, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$8;->val$textureBuffer:Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
    .locals 3

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$8;->this$0:Lio/agora/rtc/gl/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/rtc/gl/SurfaceTextureHelper;->access$800(Lio/agora/rtc/gl/SurfaceTextureHelper;)Lio/agora/rtc/gl/TextureBufferPool;

    move-result-object v0

    iget-object v1, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$8;->val$textureBuffer:Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    new-instance v2, Lio/agora/rtc/gl/SurfaceTextureHelper$8$1;

    invoke-direct {v2, p0}, Lio/agora/rtc/gl/SurfaceTextureHelper$8$1;-><init>(Lio/agora/rtc/gl/SurfaceTextureHelper$8;)V

    invoke-virtual {v0, v1, v2}, Lio/agora/rtc/gl/TextureBufferPool;->textureCopy(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;Ljava/lang/Runnable;)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

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
    invoke-virtual {p0}, Lio/agora/rtc/gl/SurfaceTextureHelper$8;->call()Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    move-result-object v0

    return-object v0
.end method
