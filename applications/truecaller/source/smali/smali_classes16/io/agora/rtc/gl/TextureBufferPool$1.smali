.class public final Lio/agora/rtc/gl/TextureBufferPool$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/TextureBufferPool;->create(Ljava/lang/String;Lio/agora/rtc/gl/EglBase$Context;I)Lio/agora/rtc/gl/TextureBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/agora/rtc/gl/TextureBufferPool;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$handler:Landroid/os/Handler;

.field public final synthetic val$maxBufferCnt:I

.field public final synthetic val$sharedContext:Lio/agora/rtc/gl/EglBase$Context;

.field public final synthetic val$threadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/EglBase$Context;Ljava/lang/String;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/gl/TextureBufferPool$1;->val$sharedContext:Lio/agora/rtc/gl/EglBase$Context;

    iput-object p2, p0, Lio/agora/rtc/gl/TextureBufferPool$1;->val$threadName:Ljava/lang/String;

    iput-object p3, p0, Lio/agora/rtc/gl/TextureBufferPool$1;->val$handler:Landroid/os/Handler;

    iput p4, p0, Lio/agora/rtc/gl/TextureBufferPool$1;->val$maxBufferCnt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/agora/rtc/gl/TextureBufferPool;
    .locals 11

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool$1;->val$sharedContext:Lio/agora/rtc/gl/EglBase$Context;

    sget-object v1, Lio/agora/rtc/gl/EglBase;->CONFIG_PIXEL_BUFFER:[I

    invoke-static {v0, v1}, Lio/agora/rtc/gl/EglBase;->create(Lio/agora/rtc/gl/EglBase$Context;[I)Lio/agora/rtc/gl/EglBase;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    invoke-virtual {v8}, Lio/agora/rtc/gl/EglBase;->createDummyPbufferSurface()V

    .line 4
    invoke-virtual {v8}, Lio/agora/rtc/gl/EglBase;->makeCurrent()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    :try_start_2
    new-instance v0, Lio/agora/rtc/gl/TextureBufferPool;

    iget-object v3, p0, Lio/agora/rtc/gl/TextureBufferPool$1;->val$threadName:Ljava/lang/String;

    iget v4, p0, Lio/agora/rtc/gl/TextureBufferPool$1;->val$maxBufferCnt:I

    const/16 v5, 0x1908

    iget-object v6, p0, Lio/agora/rtc/gl/TextureBufferPool$1;->val$handler:Landroid/os/Handler;

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lio/agora/rtc/gl/TextureBufferPool;-><init>(Ljava/lang/String;IILandroid/os/Handler;ZLio/agora/rtc/gl/EglBase;Lio/agora/rtc/gl/YuvConverter;Lio/agora/rtc/gl/TextureBufferPool$1;)V

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    invoke-static {}, Lio/agora/rtc/gl/TextureBufferPool;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/agora/rtc/gl/TextureBufferPool$1;->val$threadName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed to create pbufferSurface!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v8}, Lio/agora/rtc/gl/EglBase;->release()V

    .line 8
    iget-object v1, p0, Lio/agora/rtc/gl/TextureBufferPool$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 9
    throw v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    .line 10
    invoke-static {}, Lio/agora/rtc/gl/TextureBufferPool;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/agora/rtc/gl/TextureBufferPool$1;->val$threadName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " create failure"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

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
    invoke-virtual {p0}, Lio/agora/rtc/gl/TextureBufferPool$1;->call()Lio/agora/rtc/gl/TextureBufferPool;

    move-result-object v0

    return-object v0
.end method
