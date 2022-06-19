.class public Lio/agora/rtc/gl/TextureBufferPool$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/TextureBufferPool$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/agora/rtc/gl/TextureBufferPool$4;


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/TextureBufferPool$4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/gl/TextureBufferPool$4$1;->this$1:Lio/agora/rtc/gl/TextureBufferPool$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool$4$1;->this$1:Lio/agora/rtc/gl/TextureBufferPool$4;

    iget-object v1, v0, Lio/agora/rtc/gl/TextureBufferPool$4;->this$0:Lio/agora/rtc/gl/TextureBufferPool;

    iget-object v0, v0, Lio/agora/rtc/gl/TextureBufferPool$4;->val$texInfo:Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;

    invoke-static {v1, v0}, Lio/agora/rtc/gl/TextureBufferPool;->access$600(Lio/agora/rtc/gl/TextureBufferPool;Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool$4$1;->this$1:Lio/agora/rtc/gl/TextureBufferPool$4;

    iget-object v0, v0, Lio/agora/rtc/gl/TextureBufferPool$4;->this$0:Lio/agora/rtc/gl/TextureBufferPool;

    invoke-static {v0}, Lio/agora/rtc/gl/TextureBufferPool;->access$300(Lio/agora/rtc/gl/TextureBufferPool;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool$4$1;->this$1:Lio/agora/rtc/gl/TextureBufferPool$4;

    iget-object v0, v0, Lio/agora/rtc/gl/TextureBufferPool$4;->this$0:Lio/agora/rtc/gl/TextureBufferPool;

    invoke-virtual {v0}, Lio/agora/rtc/gl/TextureBufferPool;->anyTextureInUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/agora/rtc/gl/TextureBufferPool;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/agora/rtc/gl/TextureBufferPool$4$1;->this$1:Lio/agora/rtc/gl/TextureBufferPool$4;

    iget-object v2, v2, Lio/agora/rtc/gl/TextureBufferPool$4;->this$0:Lio/agora/rtc/gl/TextureBufferPool;

    invoke-static {v2}, Lio/agora/rtc/gl/TextureBufferPool;->access$400(Lio/agora/rtc/gl/TextureBufferPool;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ready to release since no buffer in flight"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool$4$1;->this$1:Lio/agora/rtc/gl/TextureBufferPool$4;

    iget-object v0, v0, Lio/agora/rtc/gl/TextureBufferPool$4;->this$0:Lio/agora/rtc/gl/TextureBufferPool;

    invoke-static {v0}, Lio/agora/rtc/gl/TextureBufferPool;->access$500(Lio/agora/rtc/gl/TextureBufferPool;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool$4$1;->this$1:Lio/agora/rtc/gl/TextureBufferPool$4;

    iget-object v0, v0, Lio/agora/rtc/gl/TextureBufferPool$4;->val$bufferReleaseCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
