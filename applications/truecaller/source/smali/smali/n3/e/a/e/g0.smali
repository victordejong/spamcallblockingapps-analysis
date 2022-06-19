.class public final synthetic Ln3/e/a/e/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/a/e/x1;

.field public final synthetic b:Ln3/h/a/b;

.field public final synthetic c:Ln3/e/b/r0;

.field public final synthetic d:Landroid/util/Rational;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/x1;Ln3/h/a/b;Ln3/e/b/r0;Landroid/util/Rational;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/g0;->a:Ln3/e/a/e/x1;

    iput-object p2, p0, Ln3/e/a/e/g0;->b:Ln3/h/a/b;

    iput-object p3, p0, Ln3/e/a/e/g0;->c:Ln3/e/b/r0;

    iput-object p4, p0, Ln3/e/a/e/g0;->d:Landroid/util/Rational;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v6, p0, Ln3/e/a/e/g0;->a:Ln3/e/a/e/x1;

    iget-object v0, p0, Ln3/e/a/e/g0;->b:Ln3/h/a/b;

    iget-object v7, p0, Ln3/e/a/e/g0;->c:Ln3/e/b/r0;

    iget-object v1, p0, Ln3/e/a/e/g0;->d:Landroid/util/Rational;

    .line 1
    iget-boolean v2, v6, Ln3/e/a/e/x1;->d:Z

    if-nez v2, :cond_0

    const-string v1, "Camera is not active."

    .line 2
    invoke-static {v1, v0}, Le/d/c/a/a;->F0(Ljava/lang/String;Ln3/h/a/b;)V

    goto/16 :goto_8

    .line 3
    :cond_0
    iget-object v2, v7, Ln3/e/b/r0;->a:Ljava/util/List;

    .line 4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, v7, Ln3/e/b/r0;->b:Ljava/util/List;

    .line 6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, v7, Ln3/e/b/r0;->c:Ljava/util/List;

    .line 8
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No AF/AE/AWB MeteringPoints are added."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ln3/h/a/b;->c(Ljava/lang/Throwable;)Z

    goto/16 :goto_8

    .line 10
    :cond_1
    iget-object v2, v7, Ln3/e/b/r0;->a:Ljava/util/List;

    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v6, Ln3/e/a/e/x1;->a:Ln3/e/a/e/z0;

    .line 12
    iget-object v3, v3, Ln3/e/a/e/z0;->d:Ln3/e/a/e/k2/e;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v8, 0x0

    if-nez v3, :cond_2

    move v3, v8

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 14
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 15
    iget-object v3, v7, Ln3/e/b/r0;->b:Ljava/util/List;

    .line 16
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v6, Ln3/e/a/e/x1;->a:Ln3/e/a/e/z0;

    .line 17
    iget-object v4, v4, Ln3/e/a/e/z0;->d:Ln3/e/a/e/k2/e;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_3

    move v4, v8

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 19
    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 20
    iget-object v4, v7, Ln3/e/b/r0;->c:Ljava/util/List;

    .line 21
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v6, Ln3/e/a/e/x1;->a:Ln3/e/a/e/z0;

    .line 22
    iget-object v5, v5, Ln3/e/a/e/z0;->d:Ln3/e/a/e/k2/e;

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v9}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_4

    move v5, v8

    goto :goto_2

    .line 23
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 24
    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v5, v2, v3

    add-int/2addr v5, v4

    if-gtz v5, :cond_5

    .line 25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "None of the specified AF/AE/AWB MeteringPoints is supported on this camera."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ln3/h/a/b;->c(Ljava/lang/Throwable;)Z

    goto/16 :goto_8

    .line 26
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 27
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 28
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-lez v2, :cond_6

    .line 29
    iget-object v11, v7, Ln3/e/b/r0;->a:Ljava/util/List;

    .line 30
    invoke-interface {v11, v8, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    if-lez v3, :cond_7

    .line 31
    iget-object v2, v7, Ln3/e/b/r0;->b:Ljava/util/List;

    .line 32
    invoke-interface {v2, v8, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    if-lez v4, :cond_8

    .line 33
    iget-object v2, v7, Ln3/e/b/r0;->c:Ljava/util/List;

    .line 34
    invoke-interface {v2, v8, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    :cond_8
    iget-object v2, v6, Ln3/e/a/e/x1;->a:Ln3/e/a/e/z0;

    .line 36
    iget-object v2, v2, Ln3/e/a/e/z0;->i:Ln3/e/a/e/i2;

    .line 37
    iget-object v2, v2, Ln3/e/a/e/i2;->e:Ln3/e/a/e/i2$b;

    invoke-interface {v2}, Ln3/e/a/e/i2$b;->g()Landroid/graphics/Rect;

    move-result-object v2

    .line 38
    new-instance v3, Landroid/util/Rational;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 39
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-direct {v3, v4, v11}, Landroid/util/Rational;-><init>(II)V

    if-nez v1, :cond_9

    move-object v1, v3

    .line 40
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 41
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ln3/e/b/a1;

    .line 44
    invoke-static {v13}, Ln3/e/a/e/x1;->i(Ln3/e/b/a1;)Z

    move-result v14

    if-nez v14, :cond_b

    goto :goto_3

    .line 45
    :cond_b
    invoke-static {v13, v3, v1}, Ln3/e/a/e/x1;->e(Ln3/e/b/a1;Landroid/util/Rational;Landroid/util/Rational;)Landroid/graphics/PointF;

    move-result-object v14

    .line 46
    invoke-static {v13, v14, v2}, Ln3/e/a/e/x1;->f(Ln3/e/b/a1;Landroid/graphics/PointF;Landroid/graphics/Rect;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v13

    .line 47
    invoke-virtual {v13}, Landroid/hardware/camera2/params/MeteringRectangle;->getWidth()I

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v13}, Landroid/hardware/camera2/params/MeteringRectangle;->getHeight()I

    move-result v14

    if-nez v14, :cond_c

    goto :goto_3

    .line 48
    :cond_c
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 49
    :cond_d
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ln3/e/b/a1;

    .line 50
    invoke-static {v9}, Ln3/e/a/e/x1;->i(Ln3/e/b/a1;)Z

    move-result v13

    if-nez v13, :cond_f

    goto :goto_4

    .line 51
    :cond_f
    invoke-static {v9, v3, v1}, Ln3/e/a/e/x1;->e(Ln3/e/b/a1;Landroid/util/Rational;Landroid/util/Rational;)Landroid/graphics/PointF;

    move-result-object v13

    .line 52
    invoke-static {v9, v13, v2}, Ln3/e/a/e/x1;->f(Ln3/e/b/a1;Landroid/graphics/PointF;Landroid/graphics/Rect;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v9

    .line 53
    invoke-virtual {v9}, Landroid/hardware/camera2/params/MeteringRectangle;->getWidth()I

    move-result v13

    if-eqz v13, :cond_e

    invoke-virtual {v9}, Landroid/hardware/camera2/params/MeteringRectangle;->getHeight()I

    move-result v13

    if-nez v13, :cond_10

    goto :goto_4

    .line 54
    :cond_10
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 55
    :cond_11
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_12
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ln3/e/b/a1;

    .line 56
    invoke-static {v9}, Ln3/e/a/e/x1;->i(Ln3/e/b/a1;)Z

    move-result v10

    if-nez v10, :cond_13

    goto :goto_5

    .line 57
    :cond_13
    invoke-static {v9, v3, v1}, Ln3/e/a/e/x1;->e(Ln3/e/b/a1;Landroid/util/Rational;Landroid/util/Rational;)Landroid/graphics/PointF;

    move-result-object v10

    .line 58
    invoke-static {v9, v10, v2}, Ln3/e/a/e/x1;->f(Ln3/e/b/a1;Landroid/graphics/PointF;Landroid/graphics/Rect;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v9

    .line 59
    invoke-virtual {v9}, Landroid/hardware/camera2/params/MeteringRectangle;->getWidth()I

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {v9}, Landroid/hardware/camera2/params/MeteringRectangle;->getHeight()I

    move-result v10

    if-nez v10, :cond_14

    goto :goto_5

    .line 60
    :cond_14
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 61
    :cond_15
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 62
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 63
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 64
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "None of the specified AF/AE/AWB MeteringPoints are valid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ln3/h/a/b;->c(Ljava/lang/Throwable;)Z

    goto/16 :goto_8

    :cond_16
    const-string v1, "Cancelled by another startFocusAndMetering()"

    .line 65
    invoke-virtual {v6, v1}, Ln3/e/a/e/x1;->c(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v6, v1}, Ln3/e/a/e/x1;->d(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v6}, Ln3/e/a/e/x1;->b()V

    .line 68
    iput-object v0, v6, Ln3/e/a/e/x1;->s:Ln3/h/a/b;

    new-array v0, v8, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 69
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-array v0, v8, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 70
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-array v0, v8, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 71
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 72
    iget-object v0, v6, Ln3/e/a/e/x1;->a:Ln3/e/a/e/z0;

    iget-object v1, v6, Ln3/e/a/e/x1;->k:Ln3/e/a/e/z0$c;

    invoke-virtual {v0, v1}, Ln3/e/a/e/z0;->o(Ln3/e/a/e/z0$c;)V

    .line 73
    invoke-virtual {v6}, Ln3/e/a/e/x1;->b()V

    .line 74
    iput-object v3, v6, Ln3/e/a/e/x1;->m:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 75
    iput-object v4, v6, Ln3/e/a/e/x1;->n:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 76
    iput-object v5, v6, Ln3/e/a/e/x1;->o:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 77
    invoke-virtual {v6}, Ln3/e/a/e/x1;->k()Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_18

    .line 78
    iput-boolean v9, v6, Ln3/e/a/e/x1;->e:Z

    .line 79
    iput-boolean v8, v6, Ln3/e/a/e/x1;->i:Z

    .line 80
    iput-boolean v8, v6, Ln3/e/a/e/x1;->j:Z

    .line 81
    iget-object v0, v6, Ln3/e/a/e/x1;->a:Ln3/e/a/e/z0;

    invoke-virtual {v0}, Ln3/e/a/e/z0;->r()V

    const/4 v0, 0x0

    .line 82
    iget-boolean v1, v6, Ln3/e/a/e/x1;->d:Z

    if-nez v1, :cond_17

    goto :goto_6

    .line 83
    :cond_17
    new-instance v1, Ln3/e/b/j1/g0$a;

    invoke-direct {v1}, Ln3/e/b/j1/g0$a;-><init>()V

    .line 84
    iput v9, v1, Ln3/e/b/j1/g0$a;->c:I

    .line 85
    iput-boolean v9, v1, Ln3/e/b/j1/g0$a;->e:Z

    .line 86
    invoke-static {}, Ln3/e/b/j1/a1;->x()Ln3/e/b/j1/a1;

    move-result-object v2

    .line 87
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 88
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 89
    sget-object v12, Ln3/e/a/d/a;->r:Ln3/e/b/j1/j0$a;

    const-string v12, "camera2.captureRequest.option."

    .line 90
    invoke-static {v12}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-class v13, Ljava/lang/Object;

    .line 91
    new-instance v14, Ln3/e/b/j1/n;

    invoke-direct {v14, v12, v13, v10}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 92
    sget-object v10, Ln3/e/b/j1/j0$c;->c:Ln3/e/b/j1/j0$c;

    invoke-virtual {v2, v14, v10, v11}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    .line 93
    new-instance v10, Ln3/e/a/d/a;

    invoke-static {v2}, Ln3/e/b/j1/d1;->w(Ln3/e/b/j1/j0;)Ln3/e/b/j1/d1;

    move-result-object v2

    invoke-direct {v10, v2}, Ln3/e/a/d/a;-><init>(Ln3/e/b/j1/j0;)V

    .line 94
    invoke-virtual {v1, v10}, Ln3/e/b/j1/g0$a;->c(Ln3/e/b/j1/j0;)V

    .line 95
    new-instance v2, Ln3/e/a/e/w1;

    invoke-direct {v2, v6, v0}, Ln3/e/a/e/w1;-><init>(Ln3/e/a/e/x1;Ln3/h/a/b;)V

    invoke-virtual {v1, v2}, Ln3/e/b/j1/g0$a;->b(Ln3/e/b/j1/q;)V

    .line 96
    iget-object v0, v6, Ln3/e/a/e/x1;->a:Ln3/e/a/e/z0;

    invoke-virtual {v1}, Ln3/e/b/j1/g0$a;->d()Ln3/e/b/j1/g0;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln3/e/a/e/z0;->q(Ljava/util/List;)V

    goto :goto_6

    .line 97
    :cond_18
    iput-boolean v8, v6, Ln3/e/a/e/x1;->e:Z

    .line 98
    iput-boolean v9, v6, Ln3/e/a/e/x1;->i:Z

    .line 99
    iput-boolean v8, v6, Ln3/e/a/e/x1;->j:Z

    .line 100
    iget-object v0, v6, Ln3/e/a/e/x1;->a:Ln3/e/a/e/z0;

    invoke-virtual {v0}, Ln3/e/a/e/z0;->r()V

    .line 101
    :goto_6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Ln3/e/a/e/x1;->f:Ljava/lang/Integer;

    .line 102
    iget-object v0, v6, Ln3/e/a/e/x1;->a:Ln3/e/a/e/z0;

    invoke-virtual {v0, v9}, Ln3/e/a/e/z0;->l(I)I

    move-result v0

    if-ne v0, v9, :cond_19

    move v2, v9

    goto :goto_7

    :cond_19
    move v2, v8

    .line 103
    :goto_7
    new-instance v10, Ln3/e/a/e/d0;

    move-object v0, v10

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Ln3/e/a/e/d0;-><init>(Ln3/e/a/e/x1;Z[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)V

    iput-object v10, v6, Ln3/e/a/e/x1;->k:Ln3/e/a/e/z0$c;

    .line 104
    iget-object v0, v6, Ln3/e/a/e/x1;->a:Ln3/e/a/e/z0;

    invoke-virtual {v0, v10}, Ln3/e/a/e/z0;->h(Ln3/e/a/e/z0$c;)V

    .line 105
    iget-wide v0, v7, Ln3/e/b/r0;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1a

    move v8, v9

    :cond_1a
    if-eqz v8, :cond_1b

    .line 106
    iget-wide v2, v6, Ln3/e/a/e/x1;->h:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v6, Ln3/e/a/e/x1;->h:J

    .line 107
    new-instance v4, Ln3/e/a/e/c0;

    invoke-direct {v4, v6, v2, v3}, Ln3/e/a/e/c0;-><init>(Ln3/e/a/e/x1;J)V

    .line 108
    iget-object v2, v6, Ln3/e/a/e/x1;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 109
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 110
    invoke-interface {v2, v4, v0, v1, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v6, Ln3/e/a/e/x1;->g:Ljava/util/concurrent/ScheduledFuture;

    :cond_1b
    :goto_8
    return-void
.end method
