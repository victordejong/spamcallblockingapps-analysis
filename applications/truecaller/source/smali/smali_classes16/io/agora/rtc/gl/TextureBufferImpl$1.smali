.class public Lio/agora/rtc/gl/TextureBufferImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/TextureBufferImpl;->toAGraphicBufferEx()Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
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
.field public final synthetic this$0:Lio/agora/rtc/gl/TextureBufferImpl;


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/TextureBufferImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/gl/TextureBufferImpl$1;->this$0:Lio/agora/rtc/gl/TextureBufferImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/agora/rtc/gl/VideoFrame$TextureBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl$1;->this$0:Lio/agora/rtc/gl/TextureBufferImpl;

    invoke-static {v0}, Lio/agora/rtc/gl/TextureBufferImpl;->access$000(Lio/agora/rtc/gl/TextureBufferImpl;)Lio/agora/rtc/video/AGraphicBufferEx;

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
    invoke-virtual {p0}, Lio/agora/rtc/gl/TextureBufferImpl$1;->call()Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    move-result-object v0

    return-object v0
.end method
