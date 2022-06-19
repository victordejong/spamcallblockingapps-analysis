.class public Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/mediaio/IVideoFrameConsumer;


# instance fields
.field private mCaptureHandle:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->mCaptureHandle:J

    return-void
.end method


# virtual methods
.method public consumeByteArrayFrame([BIIIIJ)V
    .locals 11

    move v4, p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq v4, v2, :cond_3

    const/4 v2, 0x3

    if-eq v4, v2, :cond_3

    if-ne v4, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    if-eq v4, v1, :cond_2

    if-eq v4, v0, :cond_2

    const/4 v0, 0x7

    if-ne v4, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_2

    :cond_2
    :goto_0
    mul-int v0, p3, p4

    mul-int/2addr v0, v1

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v2, p3, 0x1

    shr-int/2addr v2, v1

    add-int/lit8 v3, p4, 0x1

    shr-int/lit8 v1, v3, 0x1

    mul-int v3, p3, p4

    mul-int/2addr v2, v1

    mul-int/2addr v2, v0

    add-int v0, v2, v3

    .line 1
    :goto_2
    rem-int/lit8 v1, p5, 0x5a

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    move v7, v1

    goto :goto_3

    :cond_4
    move/from16 v7, p5

    :goto_3
    if-eqz v0, :cond_6

    move-object v3, p1

    if-lez v0, :cond_5

    .line 2
    array-length v1, v3

    if-ge v1, v0, :cond_5

    goto :goto_4

    :cond_5
    move-object v10, p0

    .line 3
    iget-wide v1, v10, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->mCaptureHandle:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->provideByteArrayFrame(J[BIIIIJ)V

    goto :goto_5

    :cond_6
    :goto_4
    move-object v10, p0

    :goto_5
    return-void
.end method

.method public consumeByteBufferFrame(Ljava/nio/ByteBuffer;IIIIJ)V
    .locals 11

    .line 1
    rem-int/lit8 v0, p5, 0x5a

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v8, v0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move/from16 v8, p5

    .line 2
    :goto_0
    iget-wide v2, v0, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->mCaptureHandle:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v1 .. v10}, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->provideByteBufferFrame(JLjava/nio/ByteBuffer;IIIIJ)V

    return-void
.end method

.method public consumeTextureFrame(IIIIIJ[F)V
    .locals 13

    .line 1
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v3

    .line 2
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_1

    .line 3
    rem-int/lit8 v0, p5, 0x5a

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v12, p0

    move v8, v0

    goto :goto_0

    :cond_0
    move-object v12, p0

    move/from16 v8, p5

    .line 4
    :goto_0
    iget-wide v1, v12, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->mCaptureHandle:J

    move-object v0, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v9, p6

    move-object/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->provideTextureFrame(JLjava/lang/Object;IIIIIJ[F)V

    return-void

    :cond_1
    move-object v12, p0

    const-string v1, "eglError: "

    .line 5
    invoke-static {v1, v0}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Landroid/opengl/GLException;

    invoke-direct {v2, v0, v1}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public native provideByteArrayFrame(J[BIIIIJ)V
.end method

.method public native provideByteBufferFrame(JLjava/nio/ByteBuffer;IIIIJ)V
.end method

.method public native provideTextureFrame(JLjava/lang/Object;IIIIIJ[F)V
.end method
