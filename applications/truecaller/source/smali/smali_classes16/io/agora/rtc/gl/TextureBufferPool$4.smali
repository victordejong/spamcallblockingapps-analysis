.class public Lio/agora/rtc/gl/TextureBufferPool$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/TextureBufferPool;->doTextureCopy(ILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;IILandroid/graphics/Matrix;Ljava/lang/Runnable;)Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/gl/TextureBufferPool;

.field public final synthetic val$bufferReleaseCallback:Ljava/lang/Runnable;

.field public final synthetic val$ret:[Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

.field public final synthetic val$texInfo:Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/TextureBufferPool;[Lio/agora/rtc/gl/VideoFrame$TextureBuffer;Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/gl/TextureBufferPool$4;->this$0:Lio/agora/rtc/gl/TextureBufferPool;

    iput-object p2, p0, Lio/agora/rtc/gl/TextureBufferPool$4;->val$ret:[Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    iput-object p3, p0, Lio/agora/rtc/gl/TextureBufferPool$4;->val$texInfo:Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;

    iput-object p4, p0, Lio/agora/rtc/gl/TextureBufferPool$4;->val$bufferReleaseCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool$4;->this$0:Lio/agora/rtc/gl/TextureBufferPool;

    invoke-static {v0}, Lio/agora/rtc/gl/TextureBufferPool;->access$700(Lio/agora/rtc/gl/TextureBufferPool;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/agora/rtc/gl/TextureBufferPool$4$1;

    invoke-direct {v1, p0}, Lio/agora/rtc/gl/TextureBufferPool$4$1;-><init>(Lio/agora/rtc/gl/TextureBufferPool$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
