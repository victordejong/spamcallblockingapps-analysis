.class public Le/m/a/c/o1/h/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Le/m/a/c/o1/h/i$a;
.implements Le/m/a/c/o1/h/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/o1/h/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Le/m/a/c/o1/h/f;

.field public final b:[F

.field public final c:[F

.field public final d:[F

.field public final e:[F

.field public final f:[F

.field public g:F

.field public h:F

.field public final i:[F

.field public final j:[F

.field public final synthetic k:Le/m/a/c/o1/h/h;


# direct methods
.method public constructor <init>(Le/m/a/c/o1/h/h;Le/m/a/c/o1/h/f;)V
    .locals 4

    .line 1
    iput-object p1, p0, Le/m/a/c/o1/h/h$a;->k:Le/m/a/c/o1/h/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array v0, p1, [F

    .line 2
    iput-object v0, p0, Le/m/a/c/o1/h/h$a;->b:[F

    new-array v0, p1, [F

    .line 3
    iput-object v0, p0, Le/m/a/c/o1/h/h$a;->c:[F

    new-array v0, p1, [F

    .line 4
    iput-object v0, p0, Le/m/a/c/o1/h/h$a;->d:[F

    new-array v1, p1, [F

    .line 5
    iput-object v1, p0, Le/m/a/c/o1/h/h$a;->e:[F

    new-array v2, p1, [F

    .line 6
    iput-object v2, p0, Le/m/a/c/o1/h/h$a;->f:[F

    new-array v3, p1, [F

    .line 7
    iput-object v3, p0, Le/m/a/c/o1/h/h$a;->i:[F

    new-array p1, p1, [F

    .line 8
    iput-object p1, p0, Le/m/a/c/o1/h/h$a;->j:[F

    .line 9
    iput-object p2, p0, Le/m/a/c/o1/h/h$a;->a:Le/m/a/c/o1/h/f;

    const/4 p1, 0x0

    .line 10
    invoke-static {v0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 11
    invoke-static {v1, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 12
    invoke-static {v2, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const p1, 0x40490fdb    # (float)Math.PI

    .line 13
    iput p1, p0, Le/m/a/c/o1/h/h$a;->h:F

    return-void
.end method


# virtual methods
.method public declared-synchronized a([FF)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/m/a/c/o1/h/h$a;->d:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    neg-float p1, p2

    .line 2
    iput p1, p0, Le/m/a/c/o1/h/h$a;->h:F

    .line 3
    invoke-virtual {p0}, Le/m/a/c/o1/h/h$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/m/a/c/o1/h/h$a;->e:[F

    iget v1, p0, Le/m/a/c/o1/h/h$a;->g:F

    neg-float v2, v1

    iget v1, p0, Le/m/a/c/o1/h/h$a;->h:F

    float-to-double v3, v1

    .line 2
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v1, p0, Le/m/a/c/o1/h/h$a;->h:F

    float-to-double v4, v1

    .line 3
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 4
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 22

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v2, v1, Le/m/a/c/o1/h/h$a;->j:[F

    const/4 v3, 0x0

    iget-object v4, v1, Le/m/a/c/o1/h/h$a;->d:[F

    const/4 v5, 0x0

    iget-object v6, v1, Le/m/a/c/o1/h/h$a;->f:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 3
    iget-object v8, v1, Le/m/a/c/o1/h/h$a;->i:[F

    const/4 v9, 0x0

    iget-object v10, v1, Le/m/a/c/o1/h/h$a;->e:[F

    const/4 v11, 0x0

    iget-object v12, v1, Le/m/a/c/o1/h/h$a;->j:[F

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    iget-object v2, v1, Le/m/a/c/o1/h/h$a;->c:[F

    const/4 v3, 0x0

    iget-object v4, v1, Le/m/a/c/o1/h/h$a;->b:[F

    const/4 v5, 0x0

    iget-object v6, v1, Le/m/a/c/o1/h/h$a;->i:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 6
    iget-object v0, v1, Le/m/a/c/o1/h/h$a;->a:Le/m/a/c/o1/h/f;

    iget-object v4, v1, Le/m/a/c/o1/h/h$a;->c:[F

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4000

    .line 8
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 9
    invoke-static {}, Ln3/g0/y;->v()V

    .line 10
    iget-object v2, v0, Le/m/a/c/o1/h/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    const/4 v10, 0x2

    if-eqz v2, :cond_7

    .line 11
    iget-object v2, v0, Le/m/a/c/o1/h/f;->j:Landroid/graphics/SurfaceTexture;

    .line 12
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 14
    invoke-static {}, Ln3/g0/y;->v()V

    .line 15
    iget-object v2, v0, Le/m/a/c/o1/h/f;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    iget-object v2, v0, Le/m/a/c/o1/h/f;->g:[F

    invoke-static {v2, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 17
    :cond_0
    iget-object v2, v0, Le/m/a/c/o1/h/f;->j:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    .line 18
    iget-object v5, v0, Le/m/a/c/o1/h/f;->e:Le/m/a/c/q1/b0;

    .line 19
    monitor-enter v5

    .line 20
    :try_start_1
    invoke-virtual {v5, v2, v3, v9}, Le/m/a/c/q1/b0;->d(JZ)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 21
    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_4

    .line 22
    iget-object v5, v0, Le/m/a/c/o1/h/f;->d:Le/m/a/c/r1/t/c;

    iget-object v11, v0, Le/m/a/c/o1/h/f;->g:[F

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 23
    iget-object v12, v5, Le/m/a/c/r1/t/c;->c:Le/m/a/c/q1/b0;

    invoke-virtual {v12, v6, v7}, Le/m/a/c/q1/b0;->e(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    if-nez v6, :cond_1

    goto :goto_1

    .line 24
    :cond_1
    iget-object v12, v5, Le/m/a/c/r1/t/c;->b:[F

    .line 25
    aget v7, v6, v9

    .line 26
    aget v13, v6, v8

    neg-float v13, v13

    .line 27
    aget v6, v6, v10

    neg-float v6, v6

    .line 28
    invoke-static {v7, v13, v6}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v15, v14, v15

    if-eqz v15, :cond_2

    move-object/from16 v18, v11

    float-to-double v10, v14

    .line 29
    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v10, v10

    const/4 v11, 0x0

    div-float v15, v7, v14

    div-float v16, v13, v14

    div-float v17, v6, v14

    move v13, v11

    move v14, v10

    .line 30
    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    goto :goto_0

    :cond_2
    move-object/from16 v18, v11

    .line 31
    invoke-static {v12, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 32
    :goto_0
    iget-boolean v6, v5, Le/m/a/c/r1/t/c;->d:Z

    if-nez v6, :cond_3

    .line 33
    iget-object v6, v5, Le/m/a/c/r1/t/c;->a:[F

    iget-object v7, v5, Le/m/a/c/r1/t/c;->b:[F

    invoke-static {v6, v7}, Le/m/a/c/r1/t/c;->a([F[F)V

    .line 34
    iput-boolean v8, v5, Le/m/a/c/r1/t/c;->d:Z

    :cond_3
    const/4 v12, 0x0

    .line 35
    iget-object v13, v5, Le/m/a/c/r1/t/c;->a:[F

    const/4 v14, 0x0

    iget-object v15, v5, Le/m/a/c/r1/t/c;->b:[F

    const/16 v16, 0x0

    move-object/from16 v11, v18

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 36
    :cond_4
    :goto_1
    iget-object v5, v0, Le/m/a/c/o1/h/f;->f:Le/m/a/c/q1/b0;

    invoke-virtual {v5, v2, v3}, Le/m/a/c/q1/b0;->e(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/c/r1/t/d;

    if-eqz v2, :cond_7

    .line 37
    iget-object v3, v0, Le/m/a/c/o1/h/f;->c:Le/m/a/c/o1/h/e;

    .line 38
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {v2}, Le/m/a/c/o1/h/e;->a(Le/m/a/c/r1/t/d;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_3

    .line 40
    :cond_5
    iget v5, v2, Le/m/a/c/r1/t/d;->c:I

    iput v5, v3, Le/m/a/c/o1/h/e;->a:I

    .line 41
    new-instance v5, Le/m/a/c/o1/h/e$a;

    iget-object v6, v2, Le/m/a/c/r1/t/d;->a:Le/m/a/c/r1/t/d$a;

    .line 42
    iget-object v6, v6, Le/m/a/c/r1/t/d$a;->a:[Le/m/a/c/r1/t/d$b;

    aget-object v6, v6, v9

    .line 43
    invoke-direct {v5, v6}, Le/m/a/c/o1/h/e$a;-><init>(Le/m/a/c/r1/t/d$b;)V

    iput-object v5, v3, Le/m/a/c/o1/h/e;->b:Le/m/a/c/o1/h/e$a;

    .line 44
    iget-boolean v6, v2, Le/m/a/c/r1/t/d;->d:Z

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    new-instance v5, Le/m/a/c/o1/h/e$a;

    iget-object v2, v2, Le/m/a/c/r1/t/d;->b:Le/m/a/c/r1/t/d$a;

    .line 45
    iget-object v2, v2, Le/m/a/c/r1/t/d$a;->a:[Le/m/a/c/r1/t/d$b;

    aget-object v2, v2, v9

    .line 46
    invoke-direct {v5, v2}, Le/m/a/c/o1/h/e$a;-><init>(Le/m/a/c/r1/t/d$b;)V

    :goto_2
    iput-object v5, v3, Le/m/a/c/o1/h/e;->c:Le/m/a/c/o1/h/e$a;

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 47
    monitor-exit v5

    throw v2

    .line 48
    :cond_7
    :goto_3
    iget-object v2, v0, Le/m/a/c/o1/h/f;->h:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, v0, Le/m/a/c/o1/h/f;->g:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 49
    iget-object v2, v0, Le/m/a/c/o1/h/f;->c:Le/m/a/c/o1/h/e;

    iget v3, v0, Le/m/a/c/o1/h/f;->i:I

    iget-object v0, v0, Le/m/a/c/o1/h/f;->h:[F

    .line 50
    iget-object v4, v2, Le/m/a/c/o1/h/e;->b:Le/m/a/c/o1/h/e$a;

    if-nez v4, :cond_8

    goto/16 :goto_5

    .line 51
    :cond_8
    iget v5, v2, Le/m/a/c/o1/h/e;->d:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 52
    invoke-static {}, Ln3/g0/y;->v()V

    .line 53
    iget v5, v2, Le/m/a/c/o1/h/e;->g:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 54
    iget v5, v2, Le/m/a/c/o1/h/e;->h:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 55
    invoke-static {}, Ln3/g0/y;->v()V

    .line 56
    iget v5, v2, Le/m/a/c/o1/h/e;->a:I

    if-ne v5, v8, :cond_9

    .line 57
    sget-object v5, Le/m/a/c/o1/h/e;->m:[F

    goto :goto_4

    :cond_9
    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    .line 58
    sget-object v5, Le/m/a/c/o1/h/e;->o:[F

    goto :goto_4

    .line 59
    :cond_a
    sget-object v5, Le/m/a/c/o1/h/e;->l:[F

    .line 60
    :goto_4
    iget v6, v2, Le/m/a/c/o1/h/e;->f:I

    invoke-static {v6, v8, v9, v5, v9}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 61
    iget v5, v2, Le/m/a/c/o1/h/e;->e:I

    invoke-static {v5, v8, v9, v0, v9}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v0, 0x84c0

    .line 62
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v0, 0x8d65

    .line 63
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 64
    iget v0, v2, Le/m/a/c/o1/h/e;->i:I

    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 65
    invoke-static {}, Ln3/g0/y;->v()V

    .line 66
    iget v10, v2, Le/m/a/c/o1/h/e;->g:I

    const/4 v11, 0x3

    const/16 v12, 0x1406

    const/4 v13, 0x0

    const/16 v14, 0xc

    .line 67
    iget-object v15, v4, Le/m/a/c/o1/h/e$a;->b:Ljava/nio/FloatBuffer;

    .line 68
    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 69
    invoke-static {}, Ln3/g0/y;->v()V

    .line 70
    iget v0, v2, Le/m/a/c/o1/h/e;->h:I

    const/16 v17, 0x2

    const/16 v18, 0x1406

    const/16 v19, 0x0

    const/16 v20, 0x8

    .line 71
    iget-object v3, v4, Le/m/a/c/o1/h/e$a;->c:Ljava/nio/FloatBuffer;

    move/from16 v16, v0

    move-object/from16 v21, v3

    .line 72
    invoke-static/range {v16 .. v21}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 73
    invoke-static {}, Ln3/g0/y;->v()V

    .line 74
    iget v0, v4, Le/m/a/c/o1/h/e$a;->d:I

    .line 75
    iget v3, v4, Le/m/a/c/o1/h/e$a;->a:I

    .line 76
    invoke-static {v0, v9, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 77
    invoke-static {}, Ln3/g0/y;->v()V

    .line 78
    iget v0, v2, Le/m/a/c/o1/h/e;->g:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 79
    iget v0, v2, Le/m/a/c/o1/h/e;->h:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :goto_5
    return-void

    :catchall_1
    move-exception v0

    .line 80
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    const/4 p1, 0x0

    .line 1
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    int-to-float p2, p2

    int-to-float p3, p3

    div-float v3, p2, p3

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, v3, p2

    if-lez p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-eqz p1, :cond_1

    const-wide p1, 0x4046800000000000L    # 45.0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    float-to-double v0, v3

    div-double/2addr p1, v0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr p1, v0

    double-to-float p1, p1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x42b40000    # 90.0f

    :goto_0
    move v2, p1

    .line 4
    iget-object v0, p0, Le/m/a/c/o1/h/h$a;->b:[F

    const/4 v1, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    return-void
.end method

.method public declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Le/m/a/c/o1/h/h$a;->k:Le/m/a/c/o1/h/h;

    iget-object p2, p0, Le/m/a/c/o1/h/h$a;->a:Le/m/a/c/o1/h/f;

    invoke-virtual {p2}, Le/m/a/c/o1/h/f;->d()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    .line 2
    iget-object v0, p1, Le/m/a/c/o1/h/h;->d:Landroid/os/Handler;

    new-instance v1, Le/m/a/c/o1/h/c;

    invoke-direct {v1, p1, p2}, Le/m/a/c/o1/h/c;-><init>(Le/m/a/c/o1/h/h;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
