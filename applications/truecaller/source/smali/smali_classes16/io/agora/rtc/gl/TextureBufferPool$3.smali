.class public Lio/agora/rtc/gl/TextureBufferPool$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/TextureBufferPool;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/gl/TextureBufferPool;


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/TextureBufferPool;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/gl/TextureBufferPool$3;->this$0:Lio/agora/rtc/gl/TextureBufferPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool$3;->this$0:Lio/agora/rtc/gl/TextureBufferPool;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/agora/rtc/gl/TextureBufferPool;->access$302(Lio/agora/rtc/gl/TextureBufferPool;Z)Z

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool$3;->this$0:Lio/agora/rtc/gl/TextureBufferPool;

    invoke-virtual {v0}, Lio/agora/rtc/gl/TextureBufferPool;->anyTextureInUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/agora/rtc/gl/TextureBufferPool;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/agora/rtc/gl/TextureBufferPool$3;->this$0:Lio/agora/rtc/gl/TextureBufferPool;

    invoke-static {v2}, Lio/agora/rtc/gl/TextureBufferPool;->access$400(Lio/agora/rtc/gl/TextureBufferPool;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ready to release since no more buffer in flight"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferPool$3;->this$0:Lio/agora/rtc/gl/TextureBufferPool;

    invoke-static {v0}, Lio/agora/rtc/gl/TextureBufferPool;->access$500(Lio/agora/rtc/gl/TextureBufferPool;)V

    :cond_0
    return-void
.end method
