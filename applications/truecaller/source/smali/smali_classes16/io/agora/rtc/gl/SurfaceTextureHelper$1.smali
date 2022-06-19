.class public final Lio/agora/rtc/gl/SurfaceTextureHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/SurfaceTextureHelper;->create(Ljava/lang/String;Lio/agora/rtc/gl/EglBase$Context;I)Lio/agora/rtc/gl/SurfaceTextureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/agora/rtc/gl/SurfaceTextureHelper;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$handler:Landroid/os/Handler;

.field public final synthetic val$maxBufCount:I

.field public final synthetic val$sharedContext:Lio/agora/rtc/gl/EglBase$Context;

.field public final synthetic val$threadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$1;->val$threadName:Ljava/lang/String;

    iput-object p2, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$1;->val$sharedContext:Lio/agora/rtc/gl/EglBase$Context;

    iput-object p3, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$1;->val$handler:Landroid/os/Handler;

    iput p4, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$1;->val$maxBufCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/agora/rtc/gl/SurfaceTextureHelper;
    .locals 7

    .line 2
    :try_start_0
    new-instance v6, Lio/agora/rtc/gl/SurfaceTextureHelper;

    iget-object v1, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$1;->val$threadName:Ljava/lang/String;

    iget-object v2, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$1;->val$sharedContext:Lio/agora/rtc/gl/EglBase$Context;

    iget-object v3, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$1;->val$handler:Landroid/os/Handler;

    iget v4, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$1;->val$maxBufCount:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/agora/rtc/gl/SurfaceTextureHelper;-><init>(Ljava/lang/String;Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;ILio/agora/rtc/gl/SurfaceTextureHelper$1;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/agora/rtc/gl/SurfaceTextureHelper$1;->val$threadName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " create failure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SurfaceTextureHelper"

    invoke-static {v2, v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

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
    invoke-virtual {p0}, Lio/agora/rtc/gl/SurfaceTextureHelper$1;->call()Lio/agora/rtc/gl/SurfaceTextureHelper;

    move-result-object v0

    return-object v0
.end method
