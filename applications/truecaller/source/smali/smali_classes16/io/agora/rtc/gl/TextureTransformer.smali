.class public Lio/agora/rtc/gl/TextureTransformer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IDENTITY_MATRIX:[F

.field private static final TAG:Ljava/lang/String; = "TextureTransformer"


# instance fields
.field private final drawer:Lio/agora/rtc/gl/GlRectDrawer;

.field private final freeSlots:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final maxBufferSlot:I

.field private final textureFrameBuffer:[Lio/agora/rtc/gl/GlTextureFrameBuffer;

.field private final textureId2SlotMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final threadChecker:Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 1
    sput-object v0, Lio/agora/rtc/gl/TextureTransformer;->IDENTITY_MATRIX:[F

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/gl/TextureTransformer;->threadChecker:Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/agora/rtc/gl/TextureTransformer;->textureId2SlotMap:Ljava/util/Map;

    .line 4
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lio/agora/rtc/gl/TextureTransformer;->freeSlots:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const/4 v0, 0x1

    .line 6
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lio/agora/rtc/gl/TextureTransformer;->maxBufferSlot:I

    .line 7
    new-array v0, p1, [Lio/agora/rtc/gl/GlTextureFrameBuffer;

    iput-object v0, p0, Lio/agora/rtc/gl/TextureTransformer;->textureFrameBuffer:[Lio/agora/rtc/gl/GlTextureFrameBuffer;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 8
    iget-object v1, p0, Lio/agora/rtc/gl/TextureTransformer;->textureFrameBuffer:[Lio/agora/rtc/gl/GlTextureFrameBuffer;

    new-instance v2, Lio/agora/rtc/gl/GlTextureFrameBuffer;

    const/16 v3, 0x1908

    invoke-direct {v2, v3}, Lio/agora/rtc/gl/GlTextureFrameBuffer;-><init>(I)V

    aput-object v2, v1, v0

    .line 9
    iget-object v1, p0, Lio/agora/rtc/gl/TextureTransformer;->textureId2SlotMap:Ljava/util/Map;

    iget-object v2, p0, Lio/agora/rtc/gl/TextureTransformer;->textureFrameBuffer:[Lio/agora/rtc/gl/GlTextureFrameBuffer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lio/agora/rtc/gl/GlTextureFrameBuffer;->getTextureId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lio/agora/rtc/gl/TextureTransformer;->freeSlots:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Lio/agora/rtc/gl/GlRectDrawer;

    invoke-direct {p1}, Lio/agora/rtc/gl/GlRectDrawer;-><init>()V

    iput-object p1, p0, Lio/agora/rtc/gl/TextureTransformer;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    return-void
.end method


# virtual methods
.method public copy(IIII)I
    .locals 14

    move-object v0, p0

    move/from16 v1, p2

    .line 1
    iget-object v2, v0, Lio/agora/rtc/gl/TextureTransformer;->threadChecker:Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;

    invoke-virtual {v2}, Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 2
    iget-object v2, v0, Lio/agora/rtc/gl/TextureTransformer;->freeSlots:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    const/4 v1, -0x1

    return v1

    .line 3
    :cond_0
    iget-object v3, v0, Lio/agora/rtc/gl/TextureTransformer;->textureFrameBuffer:[Lio/agora/rtc/gl/GlTextureFrameBuffer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual {v3, v11, v12}, Lio/agora/rtc/gl/GlTextureFrameBuffer;->setSize(II)V

    .line 4
    iget-object v3, v0, Lio/agora/rtc/gl/TextureTransformer;->textureFrameBuffer:[Lio/agora/rtc/gl/GlTextureFrameBuffer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lio/agora/rtc/gl/GlTextureFrameBuffer;->getFrameBufferId()I

    move-result v3

    const v13, 0x8d40

    invoke-static {v13, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string v3, "TextureHelper.glBindFramebuffer"

    .line 5
    invoke-static {v3}, Lio/agora/rtc/gl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    const/16 v3, 0x4000

    .line 6
    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    const/16 v3, 0xa

    if-eq v1, v3, :cond_2

    const/16 v3, 0xb

    if-ne v1, v3, :cond_1

    .line 7
    iget-object v4, v0, Lio/agora/rtc/gl/TextureTransformer;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    sget-object v6, Lio/agora/rtc/gl/TextureTransformer;->IDENTITY_MATRIX:[F

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v4 .. v12}, Lio/agora/rtc/gl/GlRectDrawer;->drawOes(I[FIIIIII)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown texture type."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_2
    iget-object v4, v0, Lio/agora/rtc/gl/TextureTransformer;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    sget-object v6, Lio/agora/rtc/gl/TextureTransformer;->IDENTITY_MATRIX:[F

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v4 .. v12}, Lio/agora/rtc/gl/GlRectDrawer;->drawRgb(I[FIIIIII)V

    :goto_0
    const-string v1, "TextureHelper.draw"

    .line 10
    invoke-static {v1}, Lio/agora/rtc/gl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 11
    invoke-static {v13, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 12
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 13
    iget-object v1, v0, Lio/agora/rtc/gl/TextureTransformer;->textureFrameBuffer:[Lio/agora/rtc/gl/GlTextureFrameBuffer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lio/agora/rtc/gl/GlTextureFrameBuffer;->getTextureId()I

    move-result v1

    .line 14
    iget-object v2, v0, Lio/agora/rtc/gl/TextureTransformer;->freeSlots:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v3, v0, Lio/agora/rtc/gl/TextureTransformer;->textureId2SlotMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return v1
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/TextureTransformer;->threadChecker:Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lio/agora/rtc/utils/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lio/agora/rtc/gl/TextureTransformer;->maxBufferSlot:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/agora/rtc/gl/TextureTransformer;->textureFrameBuffer:[Lio/agora/rtc/gl/GlTextureFrameBuffer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lio/agora/rtc/gl/GlTextureFrameBuffer;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/gl/TextureTransformer;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    invoke-virtual {v0}, Lio/agora/rtc/gl/GlRectDrawer;->release()V

    return-void
.end method
