.class public final Lnl/dionsegijn/konfetti/KonfettiView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/dionsegijn/konfetti/KonfettiView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u000fB\u001d\u0008\u0016\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0013\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u001c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R$\u0010\u0019\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006 "
    }
    d2 = {
        "Lnl/dionsegijn/konfetti/KonfettiView;",
        "Landroid/view/View;",
        "",
        "Lt3/a/a/b;",
        "getActiveSystems",
        "()Ljava/util/List;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Ls1/s;",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "Lnl/dionsegijn/konfetti/KonfettiView$a;",
        "b",
        "Lnl/dionsegijn/konfetti/KonfettiView$a;",
        "timer",
        "a",
        "Ljava/util/List;",
        "systems",
        "Lt3/a/a/d/a;",
        "c",
        "Lt3/a/a/d/a;",
        "getOnParticleSystemUpdateListener",
        "()Lt3/a/a/d/a;",
        "setOnParticleSystemUpdateListener",
        "(Lt3/a/a/d/a;)V",
        "onParticleSystemUpdateListener",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "konfetti_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt3/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lnl/dionsegijn/konfetti/KonfettiView$a;

.field public c:Lt3/a/a/d/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    .line 3
    new-instance p1, Lnl/dionsegijn/konfetti/KonfettiView$a;

    invoke-direct {p1}, Lnl/dionsegijn/konfetti/KonfettiView$a;-><init>()V

    iput-object p1, p0, Lnl/dionsegijn/konfetti/KonfettiView;->b:Lnl/dionsegijn/konfetti/KonfettiView$a;

    return-void
.end method


# virtual methods
.method public final getActiveSystems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lt3/a/a/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    return-object v0
.end method

.method public final getOnParticleSystemUpdateListener()Lt3/a/a/d/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lnl/dionsegijn/konfetti/KonfettiView;->c:Lt3/a/a/d/a;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "canvas"

    invoke-static {v1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v3, v0, Lnl/dionsegijn/konfetti/KonfettiView;->b:Lnl/dionsegijn/konfetti/KonfettiView$a;

    .line 3
    iget-wide v4, v3, Lnl/dionsegijn/konfetti/KonfettiView$a;->a:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v3, Lnl/dionsegijn/konfetti/KonfettiView$a;->a:J

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 5
    iget-wide v8, v3, Lnl/dionsegijn/konfetti/KonfettiView$a;->a:J

    sub-long v8, v4, v8

    const v10, 0xf4240

    int-to-long v10, v10

    div-long/2addr v8, v10

    .line 6
    iput-wide v4, v3, Lnl/dionsegijn/konfetti/KonfettiView$a;->a:J

    long-to-float v3, v8

    const/16 v4, 0x3e8

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 7
    iget-object v5, v0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    :goto_0
    if-ltz v5, :cond_13

    .line 8
    iget-object v9, v0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lt3/a/a/b;

    .line 9
    iget-object v10, v9, Lt3/a/a/b;->h:Lt3/a/a/c/c;

    const-string v12, "renderSystem"

    if-eqz v10, :cond_12

    .line 10
    invoke-static {v1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v13, v10, Lt3/a/a/c/c;->j:Lt3/a/a/c/b;

    invoke-virtual {v13, v3}, Lt3/a/a/c/b;->a(F)V

    .line 12
    iget-object v13, v10, Lt3/a/a/c/c;->c:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v8

    :goto_1
    const/4 v14, 0x0

    if-ltz v13, :cond_e

    .line 13
    iget-object v15, v10, Lt3/a/a/c/c;->c:Ljava/util/List;

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lt3/a/a/a;

    .line 14
    iget-object v6, v10, Lt3/a/a/c/c;->b:Lt3/a/a/e/d;

    .line 15
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "force"

    invoke-static {v6, v7}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget v7, v6, Lt3/a/a/e/d;->a:F

    iget v6, v6, Lt3/a/a/e/d;->b:F

    .line 17
    new-instance v11, Lt3/a/a/e/d;

    invoke-direct {v11, v7, v6}, Lt3/a/a/e/d;-><init>(FF)V

    .line 18
    iget v6, v15, Lt3/a/a/a;->a:F

    .line 19
    iget v7, v11, Lt3/a/a/e/d;->a:F

    div-float/2addr v7, v6

    iput v7, v11, Lt3/a/a/e/d;->a:F

    .line 20
    iget v7, v11, Lt3/a/a/e/d;->b:F

    div-float/2addr v7, v6

    iput v7, v11, Lt3/a/a/e/d;->b:F

    .line 21
    iget-object v6, v15, Lt3/a/a/a;->p:Lt3/a/a/e/d;

    invoke-virtual {v6, v11}, Lt3/a/a/e/d;->a(Lt3/a/a/e/d;)V

    .line 22
    invoke-static {v1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v6, v15, Lt3/a/a/a;->q:Lt3/a/a/e/d;

    iget-object v7, v15, Lt3/a/a/a;->p:Lt3/a/a/e/d;

    invoke-virtual {v6, v7}, Lt3/a/a/e/d;->a(Lt3/a/a/e/d;)V

    .line 24
    iget-object v6, v15, Lt3/a/a/a;->q:Lt3/a/a/e/d;

    .line 25
    iget v7, v6, Lt3/a/a/e/d;->a:F

    iget v6, v6, Lt3/a/a/e/d;->b:F

    .line 26
    new-instance v11, Lt3/a/a/e/d;

    invoke-direct {v11, v7, v6}, Lt3/a/a/e/d;-><init>(FF)V

    .line 27
    iget v6, v15, Lt3/a/a/a;->h:F

    mul-float/2addr v6, v3

    .line 28
    iget v7, v11, Lt3/a/a/e/d;->a:F

    mul-float/2addr v7, v6

    iput v7, v11, Lt3/a/a/e/d;->a:F

    .line 29
    iget v7, v11, Lt3/a/a/e/d;->b:F

    mul-float/2addr v7, v6

    iput v7, v11, Lt3/a/a/e/d;->b:F

    .line 30
    iget-object v6, v15, Lt3/a/a/a;->j:Lt3/a/a/e/d;

    invoke-virtual {v6, v11}, Lt3/a/a/e/d;->a(Lt3/a/a/e/d;)V

    .line 31
    iget-wide v6, v15, Lt3/a/a/a;->n:J

    move-object/from16 v16, v9

    const-wide/16 v8, 0x0

    cmp-long v17, v6, v8

    if-gtz v17, :cond_3

    .line 32
    iget-boolean v6, v15, Lt3/a/a/a;->o:Z

    if-eqz v6, :cond_2

    const/4 v6, 0x5

    int-to-float v6, v6

    mul-float/2addr v6, v3

    .line 33
    iget v7, v15, Lt3/a/a/a;->h:F

    mul-float/2addr v6, v7

    .line 34
    iget v7, v15, Lt3/a/a/a;->i:I

    int-to-float v11, v7

    sub-float/2addr v11, v6

    int-to-float v8, v14

    cmpg-float v8, v11, v8

    if-gez v8, :cond_1

    iput v14, v15, Lt3/a/a/a;->i:I

    goto :goto_2

    :cond_1
    float-to-int v6, v6

    sub-int/2addr v7, v6

    .line 35
    iput v7, v15, Lt3/a/a/a;->i:I

    goto :goto_2

    .line 36
    :cond_2
    iput v14, v15, Lt3/a/a/a;->i:I

    goto :goto_2

    :cond_3
    mul-float v8, v4, v3

    float-to-long v8, v8

    sub-long/2addr v6, v8

    .line 37
    iput-wide v6, v15, Lt3/a/a/a;->n:J

    .line 38
    :goto_2
    iget v6, v15, Lt3/a/a/a;->d:F

    mul-float/2addr v6, v3

    iget v7, v15, Lt3/a/a/a;->h:F

    mul-float/2addr v6, v7

    .line 39
    iget v7, v15, Lt3/a/a/a;->e:F

    add-float/2addr v7, v6

    iput v7, v15, Lt3/a/a/a;->e:F

    const/16 v8, 0x168

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    const/4 v8, 0x0

    if-ltz v7, :cond_4

    .line 40
    iput v8, v15, Lt3/a/a/a;->e:F

    .line 41
    :cond_4
    iget v7, v15, Lt3/a/a/a;->f:F

    sub-float/2addr v7, v6

    iput v7, v15, Lt3/a/a/a;->f:F

    int-to-float v6, v14

    cmpg-float v7, v7, v6

    if-gez v7, :cond_5

    .line 42
    iget v7, v15, Lt3/a/a/a;->b:F

    iput v7, v15, Lt3/a/a/a;->f:F

    .line 43
    :cond_5
    iget-object v7, v15, Lt3/a/a/a;->j:Lt3/a/a/e/d;

    .line 44
    iget v7, v7, Lt3/a/a/e/d;->b:F

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_6

    const-wide/16 v8, 0x0

    .line 46
    iput-wide v8, v15, Lt3/a/a/a;->n:J

    goto/16 :goto_4

    .line 47
    :cond_6
    iget-object v8, v15, Lt3/a/a/a;->j:Lt3/a/a/e/d;

    .line 48
    iget v8, v8, Lt3/a/a/e/d;->a:F

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_b

    iget-object v8, v15, Lt3/a/a/a;->j:Lt3/a/a/e/d;

    .line 50
    iget v9, v8, Lt3/a/a/e/d;->a:F

    .line 51
    iget v11, v15, Lt3/a/a/a;->b:F

    add-float v18, v9, v11

    cmpg-float v18, v18, v6

    if-ltz v18, :cond_b

    .line 52
    iget v8, v8, Lt3/a/a/e/d;->b:F

    add-float/2addr v8, v11

    cmpg-float v6, v8, v6

    if-gez v6, :cond_7

    goto :goto_4

    .line 53
    :cond_7
    iget v6, v15, Lt3/a/a/a;->f:F

    sub-float/2addr v11, v6

    add-float/2addr v11, v9

    add-float/2addr v9, v6

    cmpl-float v6, v11, v9

    if-lez v6, :cond_8

    add-float/2addr v11, v9

    sub-float v9, v11, v9

    sub-float/2addr v11, v9

    .line 54
    :cond_8
    iget-object v6, v15, Lt3/a/a/a;->c:Landroid/graphics/Paint;

    iget v8, v15, Lt3/a/a/a;->i:I

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 55
    iget-object v6, v15, Lt3/a/a/a;->g:Landroid/graphics/RectF;

    iget-object v8, v15, Lt3/a/a/a;->j:Lt3/a/a/e/d;

    .line 56
    iget v8, v8, Lt3/a/a/e/d;->b:F

    .line 57
    iget v7, v15, Lt3/a/a/a;->b:F

    add-float/2addr v7, v8

    .line 58
    invoke-virtual {v6, v11, v8, v9, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 60
    iget v6, v15, Lt3/a/a/a;->e:F

    iget-object v7, v15, Lt3/a/a/a;->g:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget-object v8, v15, Lt3/a/a/a;->g:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 61
    iget-object v6, v15, Lt3/a/a/a;->m:Lt3/a/a/e/b;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_a

    const/4 v7, 0x1

    if-eq v6, v7, :cond_9

    goto :goto_3

    .line 62
    :cond_9
    iget-object v6, v15, Lt3/a/a/a;->g:Landroid/graphics/RectF;

    iget-object v8, v15, Lt3/a/a/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v8}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_a
    const/4 v7, 0x1

    .line 63
    iget-object v6, v15, Lt3/a/a/a;->g:Landroid/graphics/RectF;

    iget-object v8, v15, Lt3/a/a/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 64
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v7, 0x1

    .line 65
    :goto_5
    iget v6, v15, Lt3/a/a/a;->i:I

    int-to-float v6, v6

    const/4 v8, 0x0

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_c

    move v14, v7

    :cond_c
    if-eqz v14, :cond_d

    .line 66
    iget-object v6, v10, Lt3/a/a/c/c;->c:Ljava/util/List;

    invoke-interface {v6, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v13, v13, -0x1

    move v8, v7

    move-object/from16 v9, v16

    const-wide/16 v6, -0x1

    goto/16 :goto_1

    :cond_e
    move v7, v8

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    .line 67
    iget-object v6, v9, Lt3/a/a/b;->h:Lt3/a/a/c/c;

    if-eqz v6, :cond_11

    .line 68
    iget-object v8, v6, Lt3/a/a/c/c;->j:Lt3/a/a/c/b;

    invoke-virtual {v8}, Lt3/a/a/c/b;->b()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v6, v6, Lt3/a/a/c/c;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_f

    move v14, v7

    :cond_f
    if-eqz v14, :cond_10

    .line 69
    iget-object v6, v0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 70
    iget-object v6, v0, Lnl/dionsegijn/konfetti/KonfettiView;->c:Lt3/a/a/d/a;

    if-eqz v6, :cond_10

    iget-object v8, v0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v6, v0, v9, v8}, Lt3/a/a/d/a;->a(Lnl/dionsegijn/konfetti/KonfettiView;Lt3/a/a/b;I)V

    :cond_10
    add-int/lit8 v5, v5, -0x1

    move v8, v7

    const-wide/16 v6, -0x1

    goto/16 :goto_0

    .line 71
    :cond_11
    invoke-static {v12}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_12
    const/4 v1, 0x0

    .line 72
    invoke-static {v12}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_13
    iget-object v1, v0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_14

    .line 74
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_6

    .line 75
    :cond_14
    iget-object v1, v0, Lnl/dionsegijn/konfetti/KonfettiView;->b:Lnl/dionsegijn/konfetti/KonfettiView$a;

    const-wide/16 v2, -0x1

    .line 76
    iput-wide v2, v1, Lnl/dionsegijn/konfetti/KonfettiView$a;->a:J

    :goto_6
    return-void
.end method

.method public final setOnParticleSystemUpdateListener(Lt3/a/a/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnl/dionsegijn/konfetti/KonfettiView;->c:Lt3/a/a/d/a;

    return-void
.end method
