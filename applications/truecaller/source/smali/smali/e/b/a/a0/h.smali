.class public Le/b/a/a0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/view/animation/Interpolator;

.field public static b:Ln3/g/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/i<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Le/b/a/a0/h;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/util/JsonReader;Le/b/a/e;FLe/b/a/a0/m;Z)Le/b/a/c0/a;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "Le/b/a/e;",
            "F",
            "Le/b/a/a0/m<",
            "TT;>;Z)",
            "Le/b/a/c0/a<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz p4, :cond_14

    .line 1
    const-class v3, Le/b/a/a0/h;

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v15, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const/16 v16, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v7, "to"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const/16 v16, 0x7

    goto :goto_1

    :sswitch_1
    const-string v7, "ti"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/16 v16, 0x6

    goto :goto_1

    :sswitch_2
    const-string v7, "t"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/16 v16, 0x5

    goto :goto_1

    :sswitch_3
    const-string v7, "s"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const/16 v16, 0x4

    goto :goto_1

    :sswitch_4
    const-string v7, "o"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    const/16 v16, 0x3

    goto :goto_1

    :sswitch_5
    const-string v7, "i"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    const/16 v16, 0x2

    goto :goto_1

    :sswitch_6
    const-string v7, "h"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    move/from16 v16, v5

    goto :goto_1

    :sswitch_7
    const-string v7, "e"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    const/16 v16, 0x0

    :goto_1
    packed-switch v16, :pswitch_data_0

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 6
    :pswitch_0
    invoke-static {v0, v1}, Ln3/g0/y;->Z0(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v14

    goto/16 :goto_0

    .line 7
    :pswitch_1
    invoke-static {v0, v1}, Ln3/g0/y;->Z0(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v13

    goto/16 :goto_0

    .line 8
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v15, v6

    goto/16 :goto_0

    .line 9
    :pswitch_3
    invoke-interface {v2, v0, v1}, Le/b/a/a0/m;->a(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object v12

    goto/16 :goto_0

    .line 10
    :pswitch_4
    invoke-static {v0, v1}, Ln3/g0/y;->Z0(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v9

    goto/16 :goto_0

    .line 11
    :pswitch_5
    invoke-static {v0, v1}, Ln3/g0/y;->Z0(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v10

    goto/16 :goto_0

    .line 12
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    if-ne v6, v5, :cond_8

    move v8, v5

    goto/16 :goto_0

    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 13
    :pswitch_7
    invoke-interface {v2, v0, v1}, Le/b/a/a0/m;->a(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object v11

    goto/16 :goto_0

    .line 14
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    if-eqz v8, :cond_a

    .line 15
    sget-object v0, Le/b/a/a0/h;->a:Landroid/view/animation/Interpolator;

    move-object v7, v0

    move-object v0, v12

    goto/16 :goto_5

    :cond_a
    if-eqz v9, :cond_12

    if-eqz v10, :cond_12

    .line 16
    iget v0, v9, Landroid/graphics/PointF;->x:F

    neg-float v2, v1

    invoke-static {v0, v2, v1}, Le/b/a/b0/d;->b(FFF)F

    move-result v0

    iput v0, v9, Landroid/graphics/PointF;->x:F

    .line 17
    iget v0, v9, Landroid/graphics/PointF;->y:F

    const/high16 v5, -0x3d380000    # -100.0f

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v0, v5, v6}, Le/b/a/b0/d;->b(FFF)F

    move-result v0

    iput v0, v9, Landroid/graphics/PointF;->y:F

    .line 18
    iget v0, v10, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v2, v1}, Le/b/a/b0/d;->b(FFF)F

    move-result v0

    iput v0, v10, Landroid/graphics/PointF;->x:F

    .line 19
    iget v0, v10, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v5, v6}, Le/b/a/b0/d;->b(FFF)F

    move-result v0

    iput v0, v10, Landroid/graphics/PointF;->y:F

    .line 20
    iget v2, v9, Landroid/graphics/PointF;->x:F

    iget v5, v9, Landroid/graphics/PointF;->y:F

    iget v6, v10, Landroid/graphics/PointF;->x:F

    .line 21
    sget-object v7, Le/b/a/b0/e;->a:Landroid/graphics/PathMeasure;

    cmpl-float v7, v2, v4

    if-eqz v7, :cond_b

    const/16 v7, 0x20f

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-int v2, v7

    goto :goto_2

    :cond_b
    const/16 v2, 0x11

    :goto_2
    cmpl-float v7, v5, v4

    if-eqz v7, :cond_c

    mul-int/lit8 v2, v2, 0x1f

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    :cond_c
    cmpl-float v5, v6, v4

    if-eqz v5, :cond_d

    mul-int/lit8 v2, v2, 0x1f

    int-to-float v2, v2

    mul-float/2addr v2, v6

    float-to-int v2, v2

    :cond_d
    cmpl-float v4, v0, v4

    if-eqz v4, :cond_e

    mul-int/lit8 v2, v2, 0x1f

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 22
    :cond_e
    monitor-enter v3

    .line 23
    :try_start_0
    sget-object v0, Le/b/a/a0/h;->b:Ln3/g/i;

    if-nez v0, :cond_f

    .line 24
    new-instance v0, Ln3/g/i;

    invoke-direct {v0}, Ln3/g/i;-><init>()V

    sput-object v0, Le/b/a/a0/h;->b:Ln3/g/i;

    .line 25
    :cond_f
    sget-object v0, Le/b/a/a0/h;->b:Ln3/g/i;

    const/4 v4, 0x0

    .line 26
    invoke-virtual {v0, v2, v4}, Ln3/g/i;->g(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/ref/WeakReference;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_10

    .line 28
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/view/animation/Interpolator;

    goto :goto_3

    :cond_10
    move-object v7, v4

    :goto_3
    if-eqz v0, :cond_11

    if-nez v7, :cond_13

    .line 29
    :cond_11
    iget v0, v9, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v1

    iget v4, v9, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v1

    iget v5, v10, Landroid/graphics/PointF;->x:F

    div-float/2addr v5, v1

    iget v6, v10, Landroid/graphics/PointF;->y:F

    div-float/2addr v6, v1

    .line 30
    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v0, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 31
    :try_start_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 32
    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    :try_start_2
    sget-object v1, Le/b/a/a0/h;->b:Ln3/g/i;

    invoke-virtual {v1, v2, v0}, Ln3/g/i;->i(ILjava/lang/Object;)V

    .line 34
    monitor-exit v3

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    :catchall_1
    move-exception v0

    .line 35
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 36
    :cond_12
    sget-object v7, Le/b/a/a0/h;->a:Landroid/view/animation/Interpolator;

    :catch_0
    :cond_13
    :goto_4
    move-object v0, v11

    .line 37
    :goto_5
    new-instance v1, Le/b/a/c0/a;

    const/16 v16, 0x0

    move-object v10, v1

    move-object/from16 v11, p1

    move-object v2, v13

    move-object v13, v0

    move-object v3, v14

    move-object v14, v7

    invoke-direct/range {v10 .. v16}, Le/b/a/c0/a;-><init>(Le/b/a/e;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 38
    iput-object v3, v1, Le/b/a/c0/a;->m:Landroid/graphics/PointF;

    .line 39
    iput-object v2, v1, Le/b/a/c0/a;->n:Landroid/graphics/PointF;

    return-object v1

    .line 40
    :cond_14
    invoke-interface {v2, v0, v1}, Le/b/a/a0/m;->a(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object v0

    .line 41
    new-instance v1, Le/b/a/c0/a;

    invoke-direct {v1, v0}, Le/b/a/c0/a;-><init>(Ljava/lang/Object;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_7
        0x68 -> :sswitch_6
        0x69 -> :sswitch_5
        0x6f -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0xe75 -> :sswitch_1
        0xe7b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
