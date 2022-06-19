.class public Le/m/a/c/r1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Le/m/a/c/r1/m;


# static fields
.field public static final j:[F

.field public static final k:[F

.field public static final l:[F

.field public static final m:[Ljava/lang/String;

.field public static final n:Ljava/nio/FloatBuffer;


# instance fields
.field public final a:[I

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public c:[Ljava/nio/FloatBuffer;

.field public d:I

.field public e:[I

.field public f:I

.field public g:[I

.field public h:[I

.field public i:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Le/m/a/c/r1/n;->j:[F

    new-array v1, v0, [F

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Le/m/a/c/r1/n;->k:[F

    new-array v0, v0, [F

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Le/m/a/c/r1/n;->l:[F

    const-string v0, "y_tex"

    const-string v1, "u_tex"

    const-string v2, "v_tex"

    .line 4
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/m/a/c/r1/n;->m:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 5
    fill-array-data v0, :array_3

    .line 6
    invoke-static {v0}, Ln3/g0/y;->H([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Le/m/a/c/r1/n;->n:Ljava/nio/FloatBuffer;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x0
        -0x41374bc7    # -0.392f
        0x40011687    # 2.017f
        0x3fcc49ba    # 1.596f
        -0x40afdf3b    # -0.813f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x0
        -0x41a5e354    # -0.213f
        0x40072b02    # 2.112f
        0x3fe58106    # 1.793f
        -0x40f78d50    # -0.533f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f958106    # 1.168f
        0x3f958106    # 1.168f
        0x3f958106    # 1.168f
        0x0
        -0x41bf7cee    # -0.188f
        0x400978d5    # 2.148f
        0x3fd76c8b    # 1.683f
        -0x40d91687    # -0.652f
        0x0
    .end array-data

    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/opengl/GLSurfaceView;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    new-array v0, p1, [I

    .line 2
    iput-object v0, p0, Le/m/a/c/r1/n;->a:[I

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Le/m/a/c/r1/n;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-array v0, p1, [Ljava/nio/FloatBuffer;

    .line 4
    iput-object v0, p0, Le/m/a/c/r1/n;->c:[Ljava/nio/FloatBuffer;

    new-array v0, p1, [I

    .line 5
    iput-object v0, p0, Le/m/a/c/r1/n;->e:[I

    new-array v0, p1, [I

    .line 6
    iput-object v0, p0, Le/m/a/c/r1/n;->g:[I

    new-array v0, p1, [I

    .line 7
    iput-object v0, p0, Le/m/a/c/r1/n;->h:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 8
    iget-object v1, p0, Le/m/a/c/r1/n;->g:[I

    iget-object v2, p0, Le/m/a/c/r1/n;->h:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14

    .line 1
    iget-object p1, p0, Le/m/a/c/r1/n;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    if-nez p1, :cond_0

    .line 2
    iget-object v0, p0, Le/m/a/c/r1/n;->i:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Le/m/a/c/r1/n;->i:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->release()V

    .line 5
    :cond_1
    iput-object p1, p0, Le/m/a/c/r1/n;->i:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    .line 6
    :cond_2
    iget-object p1, p0, Le/m/a/c/r1/n;->i:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    .line 7
    sget-object v0, Le/m/a/c/r1/n;->k:[F

    .line 8
    iget v1, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->colorspace:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    sget-object v0, Le/m/a/c/r1/n;->l:[F

    goto :goto_0

    .line 10
    :cond_4
    sget-object v0, Le/m/a/c/r1/n;->j:[F

    .line 11
    :goto_0
    iget v1, p0, Le/m/a/c/r1/n;->f:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v0, v4}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    move v0, v4

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v2, :cond_6

    if-nez v0, :cond_5

    .line 12
    iget v1, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->height:I

    goto :goto_2

    :cond_5
    iget v5, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->height:I

    add-int/2addr v5, v3

    div-int/lit8 v1, v5, 0x2

    :goto_2
    move v9, v1

    const v1, 0x84c0

    add-int/2addr v1, v0

    .line 13
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v1, 0xde1

    .line 14
    iget-object v5, p0, Le/m/a/c/r1/n;->a:[I

    aget v5, v5, v0

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0xcf5

    .line 15
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/16 v7, 0x1909

    .line 16
    iget-object v1, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->yuvStrides:[I

    aget v8, v1, v0

    const/4 v10, 0x0

    const/16 v11, 0x1909

    const/16 v12, 0x1401

    iget-object v1, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    aget-object v13, v1, v0

    invoke-static/range {v5 .. v13}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    new-array v0, v2, [I

    .line 17
    iget v5, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->width:I

    aput v5, v0, v4

    .line 18
    aget v5, v0, v4

    add-int/2addr v5, v3

    div-int/2addr v5, v1

    aput v5, v0, v1

    aput v5, v0, v3

    move v5, v4

    :goto_3
    const/4 v6, 0x4

    const/4 v7, 0x5

    if-ge v5, v2, :cond_a

    .line 19
    iget-object v8, p0, Le/m/a/c/r1/n;->g:[I

    aget v8, v8, v5

    aget v9, v0, v5

    if-ne v8, v9, :cond_7

    iget-object v8, p0, Le/m/a/c/r1/n;->h:[I

    aget v8, v8, v5

    iget-object v9, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->yuvStrides:[I

    aget v9, v9, v5

    if-eq v8, v9, :cond_9

    .line 20
    :cond_7
    iget-object v8, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->yuvStrides:[I

    aget v8, v8, v5

    if-eqz v8, :cond_8

    move v8, v3

    goto :goto_4

    :cond_8
    move v8, v4

    :goto_4
    invoke-static {v8}, Ln3/g0/y;->x(Z)V

    .line 21
    aget v8, v0, v5

    int-to-float v8, v8

    iget-object v9, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->yuvStrides:[I

    aget v9, v9, v5

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 22
    iget-object v9, p0, Le/m/a/c/r1/n;->c:[Ljava/nio/FloatBuffer;

    const/16 v10, 0x8

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v11, v10, v4

    aput v11, v10, v3

    aput v11, v10, v1

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v2

    aput v8, v10, v6

    aput v11, v10, v7

    const/4 v6, 0x6

    aput v8, v10, v6

    const/4 v6, 0x7

    aput v12, v10, v6

    .line 23
    invoke-static {v10}, Ln3/g0/y;->H([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    aput-object v6, v9, v5

    .line 24
    iget-object v6, p0, Le/m/a/c/r1/n;->e:[I

    aget v7, v6, v5

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v6, p0, Le/m/a/c/r1/n;->c:[Ljava/nio/FloatBuffer;

    aget-object v12, v6, v5

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 25
    iget-object v6, p0, Le/m/a/c/r1/n;->g:[I

    aget v7, v0, v5

    aput v7, v6, v5

    .line 26
    iget-object v6, p0, Le/m/a/c/r1/n;->h:[I

    iget-object v7, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->yuvStrides:[I

    aget v7, v7, v5

    aput v7, v6, v5

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    const/16 p1, 0x4000

    .line 27
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 28
    invoke-static {v7, v4, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 29
    invoke-static {}, Ln3/g0/y;->v()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    const-string p1, "varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n"

    const-string p2, "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n"

    .line 1
    invoke-static {p1, p2}, Ln3/g0/y;->B(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/m/a/c/r1/n;->d:I

    .line 2
    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 3
    iget p1, p0, Le/m/a/c/r1/n;->d:I

    const-string p2, "in_pos"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 4
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 5
    sget-object v5, Le/m/a/c/r1/n;->n:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 6
    iget-object p1, p0, Le/m/a/c/r1/n;->e:[I

    iget p2, p0, Le/m/a/c/r1/n;->d:I

    const-string v0, "in_tc_y"

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    aput p2, p1, v0

    .line 7
    iget-object p1, p0, Le/m/a/c/r1/n;->e:[I

    aget p1, p1, v0

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 8
    iget-object p1, p0, Le/m/a/c/r1/n;->e:[I

    iget p2, p0, Le/m/a/c/r1/n;->d:I

    const-string v1, "in_tc_u"

    invoke-static {p2, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p2

    const/4 v1, 0x1

    aput p2, p1, v1

    .line 9
    iget-object p1, p0, Le/m/a/c/r1/n;->e:[I

    aget p1, p1, v1

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 10
    iget-object p1, p0, Le/m/a/c/r1/n;->e:[I

    iget p2, p0, Le/m/a/c/r1/n;->d:I

    const-string v1, "in_tc_v"

    invoke-static {p2, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p2

    const/4 v1, 0x2

    aput p2, p1, v1

    .line 11
    iget-object p1, p0, Le/m/a/c/r1/n;->e:[I

    aget p1, p1, v1

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 12
    invoke-static {}, Ln3/g0/y;->v()V

    .line 13
    iget p1, p0, Le/m/a/c/r1/n;->d:I

    const-string p2, "mColorConversion"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Le/m/a/c/r1/n;->f:I

    .line 14
    invoke-static {}, Ln3/g0/y;->v()V

    .line 15
    iget-object p1, p0, Le/m/a/c/r1/n;->a:[I

    const/4 p2, 0x3

    invoke-static {p2, p1, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :goto_0
    if-ge v0, p2, :cond_0

    .line 16
    iget p1, p0, Le/m/a/c/r1/n;->d:I

    sget-object v1, Le/m/a/c/r1/n;->m:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const p1, 0x84c0

    add-int/2addr p1, v0

    .line 17
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 18
    iget-object p1, p0, Le/m/a/c/r1/n;->a:[I

    aget p1, p1, v0

    const/16 v1, 0xde1

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2801

    const v2, 0x46180400    # 9729.0f

    .line 19
    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2800

    .line 20
    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2802

    const v2, 0x47012f00    # 33071.0f

    .line 21
    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2803

    .line 22
    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Ln3/g0/y;->v()V

    .line 24
    invoke-static {}, Ln3/g0/y;->v()V

    return-void
.end method
