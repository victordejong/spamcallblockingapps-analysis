.class public Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextureAndRawBufferSynchronizer"
.end annotation


# instance fields
.field public pendingRemoveRawBufferCount:I

.field public rawBufferQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/agora/rtc/video/VideoCapture$RawBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public texBufferQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/agora/rtc/video/VideoCapture$TexBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lio/agora/rtc/video/VideoCapture;


# direct methods
.method public constructor <init>(Lio/agora/rtc/video/VideoCapture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->this$0:Lio/agora/rtc/video/VideoCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->rawBufferQueue:Ljava/util/Queue;

    .line 3
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->texBufferQueue:Ljava/util/Queue;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->pendingRemoveRawBufferCount:I

    return-void
.end method

.method private checkAndResetIfNeeded()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->texBufferQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->rawBufferQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->texBufferQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    const-string v0, "raw"

    goto :goto_0

    :cond_1
    const-string v0, "texture"

    .line 3
    :goto_0
    invoke-static {}, Lio/agora/rtc/video/VideoCapture;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " buffer stall, something is broken!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->reset()V

    :cond_2
    return-void
.end method


# virtual methods
.method public onDropTextureBuffer(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->rawBufferQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtc/video/VideoCapture$RawBuffer;

    if-nez p1, :cond_0

    .line 2
    iget p1, p0, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->pendingRemoveRawBufferCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->pendingRemoveRawBufferCount:I

    :cond_0
    return-void
.end method

.method public onRawBufferAvailable([BI)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->checkAndResetIfNeeded()V

    .line 2
    iget v0, p0, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->pendingRemoveRawBufferCount:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 3
    iput v0, p0, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->pendingRemoveRawBufferCount:I

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->texBufferQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc/video/VideoCapture$TexBuffer;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->this$0:Lio/agora/rtc/video/VideoCapture;

    iget-object v2, v0, Lio/agora/rtc/video/VideoCapture$TexBuffer;->textureBuffer:Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    iget v3, v0, Lio/agora/rtc/video/VideoCapture$TexBuffer;->rotation:I

    iget-wide v4, v0, Lio/agora/rtc/video/VideoCapture$TexBuffer;->timestampNs:J

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Lio/agora/rtc/video/VideoCapture;->onTextureAndRawBufferAvailable(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJ[BI)V

    .line 6
    iget-object p1, v0, Lio/agora/rtc/video/VideoCapture$TexBuffer;->textureBuffer:Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->release()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->rawBufferQueue:Ljava/util/Queue;

    new-instance v1, Lio/agora/rtc/video/VideoCapture$RawBuffer;

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lio/agora/rtc/video/VideoCapture$RawBuffer;-><init>([BI)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public onTextureBufferAvailable(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJ)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->checkAndResetIfNeeded()V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->rawBufferQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc/video/VideoCapture$RawBuffer;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->this$0:Lio/agora/rtc/video/VideoCapture;

    iget-object v6, v0, Lio/agora/rtc/video/VideoCapture$RawBuffer;->data:[B

    iget v7, v0, Lio/agora/rtc/video/VideoCapture$RawBuffer;->length:I

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v7}, Lio/agora/rtc/video/VideoCapture;->onTextureAndRawBufferAvailable(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJ[BI)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->retain()V

    .line 5
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->texBufferQueue:Ljava/util/Queue;

    new-instance v1, Lio/agora/rtc/video/VideoCapture$TexBuffer;

    invoke-direct {v1, p1, p2, p3, p4}, Lio/agora/rtc/video/VideoCapture$TexBuffer;-><init>(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJ)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    invoke-static {}, Lio/agora/rtc/video/VideoCapture;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextureAndRawBufferSynchronizer reset"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->rawBufferQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->texBufferQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/agora/rtc/video/VideoCapture$TexBuffer;

    .line 4
    iget-object v1, v1, Lio/agora/rtc/video/VideoCapture$TexBuffer;->textureBuffer:Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    invoke-interface {v1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->release()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->texBufferQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lio/agora/rtc/video/VideoCapture$TextureAndRawBufferSynchronizer;->pendingRemoveRawBufferCount:I

    return-void
.end method
