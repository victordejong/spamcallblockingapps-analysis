.class public Le/l/a/d;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/l/a/d$l;
    }
.end annotation


# static fields
.field public static final synthetic A0:I


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:Landroid/text/StaticLayout;

.field public C:Z

.field public D:Z

.field public E:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Landroid/text/SpannableStringBuilder;

.field public N:Landroid/text/DynamicLayout;

.field public O:Landroid/text/TextPaint;

.field public P:Landroid/graphics/Paint;

.field public Q:Landroid/graphics/Rect;

.field public R:Landroid/graphics/Rect;

.field public S:Landroid/graphics/Path;

.field public T:F

.field public U:I

.field public V:[I

.field public W:I

.field public a:Z

.field public b:Z

.field public c:Z

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public g0:F

.field public final h:I

.field public h0:I

.field public final i:I

.field public i0:F

.field public final j:I

.field public j0:I

.field public final k:I

.field public k0:I

.field public final l:I

.field public l0:I

.field public final m:I

.field public m0:F

.field public final n:I

.field public n0:F

.field public final o:Landroid/view/ViewGroup;

.field public o0:I

.field public final p:Landroid/view/ViewManager;

.field public p0:I

.field public final q:Le/l/a/c;

.field public q0:Landroid/graphics/Bitmap;

.field public final r:Landroid/graphics/Rect;

.field public r0:Le/l/a/d$l;

.field public final s:Landroid/text/TextPaint;

.field public s0:Landroid/view/ViewOutlineProvider;

.field public final t:Landroid/text/TextPaint;

.field public final t0:Le/l/a/b$c;

.field public final u:Landroid/graphics/Paint;

.field public final u0:Landroid/animation/ValueAnimator;

.field public final v:Landroid/graphics/Paint;

.field public final v0:Landroid/animation/ValueAnimator;

.field public final w:Landroid/graphics/Paint;

.field public final w0:Landroid/animation/ValueAnimator;

.field public final x:Landroid/graphics/Paint;

.field public final x0:Landroid/animation/ValueAnimator;

.field public y:Ljava/lang/CharSequence;

.field public y0:[Landroid/animation/ValueAnimator;

.field public z:Landroid/text/StaticLayout;

.field public final z0:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Le/l/a/c;Le/l/a/d$l;)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v4, p1

    move-object/from16 v2, p4

    .line 1
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, v8, Le/l/a/d;->a:Z

    .line 3
    iput-boolean v0, v8, Le/l/a/d;->b:Z

    const/4 v9, 0x1

    .line 4
    iput-boolean v9, v8, Le/l/a/d;->c:Z

    .line 5
    new-instance v1, Le/l/a/d$c;

    invoke-direct {v1, v8}, Le/l/a/d$c;-><init>(Le/l/a/d;)V

    iput-object v1, v8, Le/l/a/d;->t0:Le/l/a/b$c;

    .line 6
    new-instance v1, Le/l/a/b;

    .line 7
    invoke-direct {v1, v0}, Le/l/a/b;-><init>(Z)V

    .line 8
    iget-object v3, v1, Le/l/a/b;->a:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    iget-object v3, v1, Le/l/a/b;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 10
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 11
    iget-object v7, v1, Le/l/a/b;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    new-instance v3, Le/l/a/d$e;

    invoke-direct {v3, v8}, Le/l/a/d$e;-><init>(Le/l/a/d;)V

    .line 13
    iget-object v7, v1, Le/l/a/b;->a:Landroid/animation/ValueAnimator;

    new-instance v10, Le/l/a/a;

    invoke-direct {v10, v1, v3}, Le/l/a/a;-><init>(Le/l/a/b;Le/l/a/b$c;)V

    invoke-virtual {v7, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 14
    new-instance v3, Le/l/a/d$d;

    invoke-direct {v3, v8}, Le/l/a/d$d;-><init>(Le/l/a/d;)V

    .line 15
    iput-object v3, v1, Le/l/a/b;->b:Le/l/a/b$b;

    .line 16
    invoke-virtual {v1}, Le/l/a/b;->a()Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v8, Le/l/a/d;->u0:Landroid/animation/ValueAnimator;

    .line 17
    new-instance v3, Le/l/a/b;

    .line 18
    invoke-direct {v3, v0}, Le/l/a/b;-><init>(Z)V

    .line 19
    iget-object v7, v3, Le/l/a/b;->a:Landroid/animation/ValueAnimator;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 20
    iget-object v7, v3, Le/l/a/b;->a:Landroid/animation/ValueAnimator;

    const/4 v10, -0x1

    invoke-virtual {v7, v10}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 21
    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 22
    iget-object v11, v3, Le/l/a/b;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v11, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 23
    new-instance v7, Le/l/a/d$f;

    invoke-direct {v7, v8}, Le/l/a/d$f;-><init>(Le/l/a/d;)V

    .line 24
    iget-object v11, v3, Le/l/a/b;->a:Landroid/animation/ValueAnimator;

    new-instance v12, Le/l/a/a;

    invoke-direct {v12, v3, v7}, Le/l/a/a;-><init>(Le/l/a/b;Le/l/a/b$c;)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 25
    invoke-virtual {v3}, Le/l/a/b;->a()Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v8, Le/l/a/d;->v0:Landroid/animation/ValueAnimator;

    .line 26
    new-instance v7, Le/l/a/b;

    invoke-direct {v7, v9}, Le/l/a/b;-><init>(Z)V

    .line 27
    iget-object v11, v7, Le/l/a/b;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v11, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 28
    new-instance v11, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 29
    iget-object v12, v7, Le/l/a/b;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v12, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 30
    new-instance v11, Le/l/a/d$h;

    invoke-direct {v11, v8}, Le/l/a/d$h;-><init>(Le/l/a/d;)V

    .line 31
    iget-object v12, v7, Le/l/a/b;->a:Landroid/animation/ValueAnimator;

    new-instance v13, Le/l/a/a;

    invoke-direct {v13, v7, v11}, Le/l/a/a;-><init>(Le/l/a/b;Le/l/a/b$c;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 32
    new-instance v11, Le/l/a/d$g;

    invoke-direct {v11, v8}, Le/l/a/d$g;-><init>(Le/l/a/d;)V

    .line 33
    iput-object v11, v7, Le/l/a/b;->b:Le/l/a/b$b;

    .line 34
    invoke-virtual {v7}, Le/l/a/b;->a()Landroid/animation/ValueAnimator;

    move-result-object v7

    iput-object v7, v8, Le/l/a/d;->w0:Landroid/animation/ValueAnimator;

    .line 35
    new-instance v11, Le/l/a/b;

    .line 36
    invoke-direct {v11, v0}, Le/l/a/b;-><init>(Z)V

    .line 37
    iget-object v12, v11, Le/l/a/b;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v12, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 38
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 39
    iget-object v6, v11, Le/l/a/b;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v6, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 40
    new-instance v5, Le/l/a/d$j;

    invoke-direct {v5, v8}, Le/l/a/d$j;-><init>(Le/l/a/d;)V

    .line 41
    iget-object v6, v11, Le/l/a/b;->a:Landroid/animation/ValueAnimator;

    new-instance v12, Le/l/a/a;

    invoke-direct {v12, v11, v5}, Le/l/a/a;-><init>(Le/l/a/b;Le/l/a/b$c;)V

    invoke-virtual {v6, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 42
    new-instance v5, Le/l/a/d$i;

    invoke-direct {v5, v8}, Le/l/a/d$i;-><init>(Le/l/a/d;)V

    .line 43
    iput-object v5, v11, Le/l/a/b;->b:Le/l/a/b$b;

    .line 44
    invoke-virtual {v11}, Le/l/a/b;->a()Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, v8, Le/l/a/d;->x0:Landroid/animation/ValueAnimator;

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/ValueAnimator;

    aput-object v1, v6, v0

    aput-object v3, v6, v9

    const/4 v1, 0x2

    aput-object v5, v6, v1

    const/4 v3, 0x3

    aput-object v7, v6, v3

    .line 45
    iput-object v6, v8, Le/l/a/d;->y0:[Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_12

    .line 46
    iput-object v2, v8, Le/l/a/d;->q:Le/l/a/c;

    move-object/from16 v3, p2

    .line 47
    iput-object v3, v8, Le/l/a/d;->p:Landroid/view/ViewManager;

    move-object/from16 v3, p3

    .line 48
    iput-object v3, v8, Le/l/a/d;->o:Landroid/view/ViewGroup;

    if-eqz p5, :cond_0

    move-object/from16 v5, p5

    goto :goto_0

    .line 49
    :cond_0
    new-instance v5, Le/l/a/d$l;

    invoke-direct {v5}, Le/l/a/d$l;-><init>()V

    :goto_0
    iput-object v5, v8, Le/l/a/d;->r0:Le/l/a/d$l;

    .line 50
    iget-object v5, v2, Le/l/a/c;->a:Ljava/lang/CharSequence;

    iput-object v5, v8, Le/l/a/d;->y:Ljava/lang/CharSequence;

    .line 51
    iget-object v5, v2, Le/l/a/c;->b:Ljava/lang/CharSequence;

    iput-object v5, v8, Le/l/a/d;->A:Ljava/lang/CharSequence;

    const/16 v5, 0x14

    .line 52
    invoke-static {v4, v5}, Ln3/g0/y;->O(Landroid/content/Context;I)I

    move-result v6

    iput v6, v8, Le/l/a/d;->d:I

    const/16 v6, 0x28

    .line 53
    invoke-static {v4, v6}, Ln3/g0/y;->O(Landroid/content/Context;I)I

    move-result v7

    iput v7, v8, Le/l/a/d;->k:I

    .line 54
    iget v7, v2, Le/l/a/c;->d:I

    invoke-static {v4, v7}, Ln3/g0/y;->O(Landroid/content/Context;I)I

    move-result v7

    iput v7, v8, Le/l/a/d;->e:I

    .line 55
    invoke-static {v4, v6}, Ln3/g0/y;->O(Landroid/content/Context;I)I

    move-result v6

    iput v6, v8, Le/l/a/d;->g:I

    const/16 v6, 0x8

    .line 56
    invoke-static {v4, v6}, Ln3/g0/y;->O(Landroid/content/Context;I)I

    move-result v11

    iput v11, v8, Le/l/a/d;->h:I

    const/16 v11, 0x168

    .line 57
    invoke-static {v4, v11}, Ln3/g0/y;->O(Landroid/content/Context;I)I

    move-result v11

    iput v11, v8, Le/l/a/d;->i:I

    .line 58
    invoke-static {v4, v5}, Ln3/g0/y;->O(Landroid/content/Context;I)I

    move-result v5

    iput v5, v8, Le/l/a/d;->j:I

    const/16 v5, 0x58

    .line 59
    invoke-static {v4, v5}, Ln3/g0/y;->O(Landroid/content/Context;I)I

    move-result v5

    iput v5, v8, Le/l/a/d;->l:I

    .line 60
    invoke-static {v4, v6}, Ln3/g0/y;->O(Landroid/content/Context;I)I

    move-result v5

    iput v5, v8, Le/l/a/d;->m:I

    .line 61
    invoke-static {v4, v9}, Ln3/g0/y;->O(Landroid/content/Context;I)I

    move-result v6

    iput v6, v8, Le/l/a/d;->n:I

    const v11, 0x3dcccccd    # 0.1f

    int-to-float v7, v7

    mul-float/2addr v7, v11

    float-to-int v7, v7

    .line 62
    iput v7, v8, Le/l/a/d;->f:I

    .line 63
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, v8, Le/l/a/d;->S:Landroid/graphics/Path;

    .line 64
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v8, Le/l/a/d;->r:Landroid/graphics/Rect;

    .line 65
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v8, Le/l/a/d;->Q:Landroid/graphics/Rect;

    .line 66
    new-instance v7, Landroid/text/TextPaint;

    invoke-direct {v7}, Landroid/text/TextPaint;-><init>()V

    iput-object v7, v8, Le/l/a/d;->s:Landroid/text/TextPaint;

    .line 67
    iget v11, v2, Le/l/a/c;->n:I

    invoke-virtual {v2, v4, v11, v10}, Le/l/a/c;->b(Landroid/content/Context;II)I

    move-result v11

    int-to-float v11, v11

    .line 68
    invoke-virtual {v7, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    const-string v11, "sans-serif-medium"

    .line 69
    invoke-static {v11, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 70
    invoke-virtual {v7, v9}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 71
    new-instance v11, Landroid/text/TextPaint;

    invoke-direct {v11}, Landroid/text/TextPaint;-><init>()V

    iput-object v11, v8, Le/l/a/d;->t:Landroid/text/TextPaint;

    .line 72
    iget v12, v2, Le/l/a/c;->o:I

    invoke-virtual {v2, v4, v12, v10}, Le/l/a/c;->b(Landroid/content/Context;II)I

    move-result v12

    int-to-float v12, v12

    .line 73
    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 74
    sget-object v12, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v12, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 75
    invoke-virtual {v11, v9}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    const/16 v12, 0x89

    .line 76
    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 77
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    iput-object v12, v8, Le/l/a/d;->u:Landroid/graphics/Paint;

    .line 78
    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    iget v13, v2, Le/l/a/c;->c:F

    const/high16 v14, 0x437f0000    # 255.0f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 80
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    iput-object v13, v8, Le/l/a/d;->v:Landroid/graphics/Paint;

    .line 81
    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v14, 0x32

    .line 82
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 83
    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v6, v6

    .line 84
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v6, -0x1000000

    .line 85
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    iput-object v13, v8, Le/l/a/d;->w:Landroid/graphics/Paint;

    .line 87
    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    iput-object v14, v8, Le/l/a/d;->x:Landroid/graphics/Paint;

    .line 89
    invoke-virtual {v14, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-boolean v15, v2, Le/l/a/c;->s:Z

    if-nez v15, :cond_1

    iget-boolean v0, v2, Le/l/a/c;->r:Z

    if-eqz v0, :cond_1

    move v0, v9

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v8, Le/l/a/d;->E:Z

    .line 91
    iget-boolean v0, v2, Le/l/a/c;->p:Z

    iput-boolean v0, v8, Le/l/a/d;->J:Z

    .line 92
    iget-boolean v6, v2, Le/l/a/c;->q:Z

    iput-boolean v6, v8, Le/l/a/d;->K:Z

    if-eqz v0, :cond_2

    if-nez v15, :cond_2

    .line 93
    new-instance v0, Le/l/a/e;

    invoke-direct {v0, v8}, Le/l/a/e;-><init>(Le/l/a/d;)V

    iput-object v0, v8, Le/l/a/d;->s0:Landroid/view/ViewOutlineProvider;

    .line 94
    invoke-virtual {v8, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    int-to-float v0, v5

    .line 95
    invoke-virtual {v8, v0}, Landroid/view/View;->setElevation(F)V

    :cond_2
    const/4 v0, 0x0

    .line 96
    invoke-virtual {v8, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const-string v5, "isLightTheme"

    .line 98
    invoke-static {v4, v5}, Ln3/g0/y;->Y1(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    move v5, v9

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, v8, Le/l/a/d;->C:Z

    .line 99
    iget v5, v2, Le/l/a/c;->i:I

    invoke-virtual {v2, v4, v0, v5}, Le/l/a/c;->a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 100
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    const-string v1, "colorPrimary"

    .line 101
    invoke-static {v4, v1}, Ln3/g0/y;->Y1(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 102
    :cond_5
    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    :goto_3
    iget v1, v2, Le/l/a/c;->j:I

    invoke-virtual {v2, v4, v0, v1}, Le/l/a/c;->a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 104
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 105
    :cond_6
    iget-boolean v1, v8, Le/l/a/d;->C:Z

    if-eqz v1, :cond_7

    const/high16 v1, -0x1000000

    goto :goto_4

    :cond_7
    move v1, v10

    :goto_4
    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    :goto_5
    iget-boolean v1, v2, Le/l/a/c;->s:Z

    if-eqz v1, :cond_8

    .line 107
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 108
    :cond_8
    invoke-virtual {v13}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget v1, v2, Le/l/a/c;->k:I

    invoke-virtual {v2, v4, v0, v1}, Le/l/a/c;->a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 110
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v5, 0x3e99999a    # 0.3f

    ushr-int/lit8 v6, v1, 0x18

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v5, v6

    shl-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v1, v6

    or-int/2addr v1, v5

    iput v1, v8, Le/l/a/d;->l0:I

    goto :goto_6

    .line 111
    :cond_9
    iput v10, v8, Le/l/a/d;->l0:I

    .line 112
    :goto_6
    iget v1, v2, Le/l/a/c;->l:I

    invoke-virtual {v2, v4, v0, v1}, Le/l/a/c;->a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 113
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_7

    .line 114
    :cond_a
    iget-boolean v1, v8, Le/l/a/d;->C:Z

    if-eqz v1, :cond_b

    const/high16 v10, -0x1000000

    :cond_b
    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setColor(I)V

    .line 115
    :goto_7
    iget v1, v2, Le/l/a/c;->m:I

    invoke-virtual {v2, v4, v0, v1}, Le/l/a/c;->a(Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 116
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_8

    .line 117
    :cond_c
    invoke-virtual {v7}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 118
    :goto_8
    iget-object v0, v2, Le/l/a/c;->g:Landroid/graphics/Typeface;

    if-eqz v0, :cond_d

    .line 119
    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 120
    :cond_d
    iget-object v0, v2, Le/l/a/c;->h:Landroid/graphics/Typeface;

    if-eqz v0, :cond_e

    .line 121
    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 122
    :cond_e
    move-object v0, v4

    check-cast v0, Landroid/app/Activity;

    .line 123
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move v5, v9

    goto :goto_9

    :cond_f
    const/4 v5, 0x0

    :goto_9
    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move v6, v9

    goto :goto_a

    :cond_10
    const/4 v6, 0x0

    :goto_a
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_11

    move v7, v9

    goto :goto_b

    :cond_11
    const/4 v7, 0x0

    .line 124
    :goto_b
    new-instance v10, Le/l/a/d$k;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v7}, Le/l/a/d$k;-><init>(Le/l/a/d;Le/l/a/c;Landroid/view/ViewGroup;Landroid/content/Context;ZZZ)V

    iput-object v10, v8, Le/l/a/d;->z0:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 126
    invoke-virtual {v8, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 127
    invoke-virtual {v8, v9}, Landroid/view/View;->setClickable(Z)V

    .line 128
    new-instance v0, Le/l/a/d$a;

    invoke-direct {v0, v8}, Le/l/a/d$a;-><init>(Le/l/a/d;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    new-instance v0, Le/l/a/d$b;

    invoke-direct {v0, v8}, Le/l/a/d$b;-><init>(Le/l/a/d;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    .line 130
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/l/a/d;->V:[I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Le/l/a/d;->Q:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v0, v0, v2

    int-to-float v0, v0

    iget v3, p0, Le/l/a/d;->T:F

    sub-float/2addr v0, v3

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3
    iget-object v0, p0, Le/l/a/d;->Q:Landroid/graphics/Rect;

    iget-object v1, p0, Le/l/a/d;->V:[I

    const/4 v4, 0x1

    aget v1, v1, v4

    int-to-float v1, v1

    iget v5, p0, Le/l/a/d;->T:F

    sub-float/2addr v1, v5

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 4
    iget-object v0, p0, Le/l/a/d;->Q:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Le/l/a/d;->V:[I

    aget v2, v3, v2

    int-to-float v2, v2

    iget v3, p0, Le/l/a/d;->T:F

    add-float/2addr v2, v3

    iget v3, p0, Le/l/a/d;->k:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 5
    iget-object v0, p0, Le/l/a/d;->Q:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Le/l/a/d;->V:[I

    aget v2, v2, v4

    int-to-float v2, v2

    iget v3, p0, Le/l/a/d;->T:F

    add-float/2addr v2, v3

    iget v3, p0, Le/l/a/d;->k:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public b(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/l/a/d;->b:Z

    .line 2
    iget-object v0, p0, Le/l/a/d;->v0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    iget-object v0, p0, Le/l/a/d;->u0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    iget-boolean v0, p0, Le/l/a/d;->L:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/l/a/d;->V:[I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Le/l/a/d;->x0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Le/l/a/d;->w0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Le/l/a/d;->g(Z)V

    .line 8
    iget-object p1, p0, Le/l/a/d;->p:Landroid/view/ViewManager;

    if-eqz p1, :cond_3

    .line 9
    :try_start_0
    invoke-interface {p1, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public c(IIII)D
    .locals 4

    sub-int/2addr p3, p1

    int-to-double v0, p3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-int/2addr p4, p2

    int-to-double p1, p4

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public d(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 2
    iget-object p1, p0, Le/l/a/d;->s0:Landroid/view/ViewOutlineProvider;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/l/a/d;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Le/l/a/d;->L:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(IILandroid/graphics/Rect;)I
    .locals 7

    .line 1
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1, p2, v0, v1}, Le/l/a/d;->c(IIII)D

    move-result-wide v0

    .line 2
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1, p2, v2, v3}, Le/l/a/d;->c(IIII)D

    move-result-wide v2

    .line 3
    iget v4, p3, Landroid/graphics/Rect;->left:I

    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, p2, v4, v5}, Le/l/a/d;->c(IIII)D

    move-result-wide v4

    .line 4
    iget v6, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, p2, v6, p3}, Le/l/a/d;->c(IIII)D

    move-result-wide p1

    .line 5
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

.method public g(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Le/l/a/d;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/l/a/d;->b:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Le/l/a/d;->a:Z

    .line 4
    iget-object v1, p0, Le/l/a/d;->y0:[Landroid/animation/ValueAnimator;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 5
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Le/l/a/d;->z0:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 9
    iput-boolean v0, p0, Le/l/a/d;->L:Z

    .line 10
    iget-object v0, p0, Le/l/a/d;->r0:Le/l/a/d$l;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0, p0, p1}, Le/l/a/d$l;->a(Le/l/a/d;Z)V

    :cond_2
    return-void
.end method

.method public getOuterCircleCenterPoint()[I
    .locals 9

    .line 1
    iget-object v0, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    .line 2
    iget v1, p0, Le/l/a/d;->p0:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_2

    .line 3
    iget v4, p0, Le/l/a/d;->l:I

    if-lt v0, v4, :cond_1

    sub-int/2addr v1, v4

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    goto :goto_1

    .line 4
    :cond_2
    iget v1, p0, Le/l/a/d;->l:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v4, p0, Le/l/a/d;->l:I

    sub-int/2addr v1, v4

    if-le v0, v1, :cond_0

    goto :goto_0

    :goto_1
    const/4 v1, 0x2

    if-eqz v0, :cond_3

    new-array v0, v1, [I

    .line 5
    iget-object v1, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    aput v1, v0, v3

    iget-object v1, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    aput v1, v0, v2

    return-object v0

    .line 6
    :cond_3
    iget-object v0, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v4, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/2addr v0, v1

    iget v4, p0, Le/l/a/d;->d:I

    add-int/2addr v0, v4

    .line 7
    invoke-virtual {p0}, Le/l/a/d;->getTotalTextHeight()I

    move-result v4

    .line 8
    iget-object v5, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget v6, p0, Le/l/a/d;->e:I

    sub-int/2addr v5, v6

    iget v6, p0, Le/l/a/d;->d:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    if-lez v5, :cond_4

    move v5, v2

    goto :goto_2

    :cond_4
    move v5, v3

    .line 9
    :goto_2
    iget-object v6, p0, Le/l/a/d;->R:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 10
    iget-object v7, p0, Le/l/a/d;->R:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 11
    iget-object v7, p0, Le/l/a/d;->z:Landroid/text/StaticLayout;

    if-nez v7, :cond_5

    move v7, v3

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    :goto_3
    if-eqz v5, :cond_6

    .line 12
    iget-object v5, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    .line 13
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget v8, p0, Le/l/a/d;->e:I

    sub-int/2addr v5, v8

    iget v8, p0, Le/l/a/d;->d:I

    sub-int/2addr v5, v8

    sub-int/2addr v5, v4

    add-int/2addr v5, v7

    goto :goto_4

    :cond_6
    iget-object v4, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    .line 14
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iget v5, p0, Le/l/a/d;->e:I

    add-int/2addr v4, v5

    iget v5, p0, Le/l/a/d;->d:I

    add-int/2addr v4, v5

    add-int v5, v4, v7

    :goto_4
    new-array v4, v1, [I

    add-int/2addr v6, v0

    .line 15
    div-int/2addr v6, v1

    aput v6, v4, v3

    aput v5, v4, v2

    return-object v4
.end method

.method public getTextBounds()Landroid/graphics/Rect;
    .locals 6

    .line 1
    invoke-virtual {p0}, Le/l/a/d;->getTotalTextHeight()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Le/l/a/d;->getTotalTextWidth()I

    move-result v1

    .line 3
    iget-object v2, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, p0, Le/l/a/d;->e:I

    sub-int/2addr v2, v3

    iget v3, p0, Le/l/a/d;->d:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 4
    iget v3, p0, Le/l/a/d;->o0:I

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, p0, Le/l/a/d;->e:I

    add-int/2addr v2, v3

    iget v3, p0, Le/l/a/d;->d:I

    add-int/2addr v2, v3

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int/2addr v3, v4

    if-gez v3, :cond_1

    .line 7
    iget v3, p0, Le/l/a/d;->j:I

    neg-int v3, v3

    goto :goto_1

    :cond_1
    iget v3, p0, Le/l/a/d;->j:I

    .line 8
    :goto_1
    iget v4, p0, Le/l/a/d;->g:I

    iget-object v5, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Le/l/a/d;->g:I

    sub-int/2addr v4, v5

    add-int/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 10
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v2

    invoke-direct {v4, v3, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public getTotalTextHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/l/a/d;->z:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Le/l/a/d;->B:Landroid/text/StaticLayout;

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    iget v1, p0, Le/l/a/d;->h:I

    add-int/2addr v0, v1

    return v0

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Le/l/a/d;->B:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Le/l/a/d;->h:I

    add-int/2addr v1, v0

    return v1
.end method

.method public getTotalTextWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/l/a/d;->z:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Le/l/a/d;->B:Landroid/text/StaticLayout;

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    return v0

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Le/l/a/d;->B:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Le/l/a/d;->g(Z)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Le/l/a/d;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Le/l/a/d;->V:[I

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget v0, p0, Le/l/a/d;->o0:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget v2, p0, Le/l/a/d;->p0:I

    if-lez v2, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Le/l/a/d;->p0:I

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4
    :cond_1
    iget v0, p0, Le/l/a/d;->l0:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 6
    :cond_2
    iget-object v0, p0, Le/l/a/d;->u:Landroid/graphics/Paint;

    iget v2, p0, Le/l/a/d;->W:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7
    iget-boolean v0, p0, Le/l/a/d;->J:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/l/a/d;->s0:Landroid/view/ViewOutlineProvider;

    if-nez v0, :cond_4

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 9
    iget-object v3, p0, Le/l/a/d;->S:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 10
    iget v3, p0, Le/l/a/d;->W:I

    int-to-float v3, v3

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    .line 11
    iget-object v4, p0, Le/l/a/d;->v:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iget-object v4, p0, Le/l/a/d;->v:Landroid/graphics/Paint;

    float-to-int v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 13
    iget-object v4, p0, Le/l/a/d;->V:[I

    aget v5, v4, v1

    int-to-float v5, v5

    aget v4, v4, v2

    iget v6, p0, Le/l/a/d;->m:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    iget v6, p0, Le/l/a/d;->T:F

    iget-object v7, p0, Le/l/a/d;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 14
    iget-object v4, p0, Le/l/a/d;->v:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v4, 0x6

    :goto_0
    if-lez v4, :cond_3

    .line 15
    iget-object v5, p0, Le/l/a/d;->v:Landroid/graphics/Paint;

    int-to-float v6, v4

    const/high16 v7, 0x40e00000    # 7.0f

    div-float/2addr v6, v7

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 16
    iget-object v5, p0, Le/l/a/d;->V:[I

    aget v6, v5, v1

    int-to-float v6, v6

    aget v5, v5, v2

    iget v7, p0, Le/l/a/d;->m:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    iget v7, p0, Le/l/a/d;->T:F

    rsub-int/lit8 v8, v4, 0x7

    iget v9, p0, Le/l/a/d;->n:I

    mul-int/2addr v8, v9

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget-object v8, p0, Le/l/a/d;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v5, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 18
    :cond_4
    iget-object v0, p0, Le/l/a/d;->V:[I

    aget v3, v0, v1

    int-to-float v3, v3

    aget v0, v0, v2

    int-to-float v0, v0

    iget v4, p0, Le/l/a/d;->T:F

    iget-object v5, p0, Le/l/a/d;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 19
    iget-object v0, p0, Le/l/a/d;->w:Landroid/graphics/Paint;

    iget v3, p0, Le/l/a/d;->j0:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 20
    iget v0, p0, Le/l/a/d;->h0:I

    if-lez v0, :cond_5

    .line 21
    iget-object v3, p0, Le/l/a/d;->x:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 22
    iget-object v0, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Le/l/a/d;->g0:F

    iget-object v5, p0, Le/l/a/d;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 23
    :cond_5
    iget-object v0, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Le/l/a/d;->i0:F

    iget-object v5, p0, Le/l/a/d;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 25
    iget-object v3, p0, Le/l/a/d;->R:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 26
    iget-object v3, p0, Le/l/a/d;->s:Landroid/text/TextPaint;

    iget v4, p0, Le/l/a/d;->k0:I

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 27
    iget-object v3, p0, Le/l/a/d;->z:Landroid/text/StaticLayout;

    if-eqz v3, :cond_6

    .line 28
    invoke-virtual {v3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 29
    :cond_6
    iget-object v3, p0, Le/l/a/d;->B:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    iget-object v3, p0, Le/l/a/d;->z:Landroid/text/StaticLayout;

    if-eqz v3, :cond_7

    .line 30
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    iget v5, p0, Le/l/a/d;->h:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 31
    iget-object v3, p0, Le/l/a/d;->t:Landroid/text/TextPaint;

    iget-object v5, p0, Le/l/a/d;->q:Le/l/a/c;

    iget v5, v5, Le/l/a/c;->t:F

    iget v6, p0, Le/l/a/d;->k0:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 32
    iget-object v3, p0, Le/l/a/d;->B:Landroid/text/StaticLayout;

    invoke-virtual {v3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 33
    :cond_7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 35
    iget-object v3, p0, Le/l/a/d;->q0:Landroid/graphics/Bitmap;

    const/4 v5, 0x2

    if-eqz v3, :cond_8

    .line 36
    iget-object v3, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v6, p0, Le/l/a/d;->q0:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/2addr v6, v5

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget-object v6, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    .line 37
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget-object v7, p0, Le/l/a/d;->q0:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/2addr v7, v5

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 38
    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 39
    iget-object v3, p0, Le/l/a/d;->q0:Landroid/graphics/Bitmap;

    iget-object v6, p0, Le/l/a/d;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 40
    :cond_8
    iget-object v3, p0, Le/l/a/d;->q:Le/l/a/c;

    iget-object v3, v3, Le/l/a/c;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_9

    .line 41
    iget-object v3, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v6, p0, Le/l/a/d;->q:Le/l/a/c;

    iget-object v6, v6, Le/l/a/c;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/2addr v6, v5

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget-object v6, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    .line 42
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget-object v7, p0, Le/l/a/d;->q:Le/l/a/c;

    iget-object v7, v7, Le/l/a/c;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/2addr v7, v5

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 43
    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 44
    iget-object v3, p0, Le/l/a/d;->q:Le/l/a/c;

    iget-object v3, v3, Le/l/a/c;->f:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Le/l/a/d;->w:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 45
    iget-object v3, p0, Le/l/a/d;->q:Le/l/a/c;

    iget-object v3, v3, Le/l/a/c;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 46
    :cond_9
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 47
    iget-boolean v0, p0, Le/l/a/d;->D:Z

    if-eqz v0, :cond_e

    .line 48
    iget-object v0, p0, Le/l/a/d;->P:Landroid/graphics/Paint;

    const/16 v3, 0xff

    if-nez v0, :cond_a

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Le/l/a/d;->P:Landroid/graphics/Paint;

    .line 50
    invoke-virtual {v0, v3, v3, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 51
    iget-object v0, p0, Le/l/a/d;->P:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Le/l/a/d;->P:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Ln3/g0/y;->O(Landroid/content/Context;I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    :cond_a
    iget-object v0, p0, Le/l/a/d;->O:Landroid/text/TextPaint;

    if-nez v0, :cond_b

    .line 54
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Le/l/a/d;->O:Landroid/text/TextPaint;

    const/high16 v6, -0x10000

    .line 55
    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 56
    iget-object v0, p0, Le/l/a/d;->O:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0x10

    int-to-float v7, v7

    .line 57
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 58
    invoke-static {v5, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    .line 59
    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 60
    :cond_b
    iget-object v0, p0, Le/l/a/d;->P:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object v0, p0, Le/l/a/d;->R:Landroid/graphics/Rect;

    iget-object v5, p0, Le/l/a/d;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 62
    iget-object v0, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    iget-object v5, p0, Le/l/a/d;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 63
    iget-object v0, p0, Le/l/a/d;->V:[I

    aget v5, v0, v1

    int-to-float v5, v5

    aget v0, v0, v2

    int-to-float v0, v0

    const/high16 v6, 0x41200000    # 10.0f

    iget-object v7, p0, Le/l/a/d;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 64
    iget-object v0, p0, Le/l/a/d;->V:[I

    aget v5, v0, v1

    int-to-float v5, v5

    aget v0, v0, v2

    int-to-float v0, v0

    iget v6, p0, Le/l/a/d;->U:I

    iget v7, p0, Le/l/a/d;->k:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Le/l/a/d;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 65
    iget-object v0, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v5, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Le/l/a/d;->e:I

    iget v7, p0, Le/l/a/d;->d:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Le/l/a/d;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 66
    iget-object v0, p0, Le/l/a/d;->P:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Text bounds: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Le/l/a/d;->R:Landroid/graphics/Rect;

    .line 68
    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nTarget bounds: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    .line 69
    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\nCenter: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Le/l/a/d;->V:[I

    aget v6, v6, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Le/l/a/d;->V:[I

    aget v2, v7, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nView size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/l/a/d;->r:Landroid/graphics/Rect;

    .line 71
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 72
    iget-object v0, p0, Le/l/a/d;->M:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_c

    .line 73
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Le/l/a/d;->M:Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 74
    :cond_c
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 75
    iget-object v0, p0, Le/l/a/d;->M:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 76
    :goto_2
    iget-object v0, p0, Le/l/a/d;->N:Landroid/text/DynamicLayout;

    if-nez v0, :cond_d

    .line 77
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v7, p0, Le/l/a/d;->O:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Le/l/a/d;->N:Landroid/text/DynamicLayout;

    .line 78
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 79
    iget-object v2, p0, Le/l/a/d;->P:Landroid/graphics/Paint;

    const/16 v5, 0xdc

    invoke-virtual {v2, v5, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 80
    iget v2, p0, Le/l/a/d;->o0:I

    int-to-float v2, v2

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 81
    iget-object v2, p0, Le/l/a/d;->N:Landroid/text/DynamicLayout;

    invoke-virtual {v2}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v2

    int-to-float v8, v2

    iget-object v2, p0, Le/l/a/d;->N:Landroid/text/DynamicLayout;

    invoke-virtual {v2}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v2

    int-to-float v9, v2

    iget-object v10, p0, Le/l/a/d;->P:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 82
    iget-object v2, p0, Le/l/a/d;->P:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v3, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 83
    iget-object v1, p0, Le/l/a/d;->N:Landroid/text/DynamicLayout;

    invoke-virtual {v1, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 84
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_e
    :goto_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/l/a/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/l/a/d;->K:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/l/a/d;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Le/l/a/d;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Le/l/a/d;->K:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iput-boolean v1, p0, Le/l/a/d;->c:Z

    .line 4
    iget-object p1, p0, Le/l/a/d;->r0:Le/l/a/d$l;

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, v1}, Le/l/a/d;->b(Z)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, v1}, Le/l/a/d;->b(Z)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Le/l/a/d;->m0:F

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Le/l/a/d;->n0:F

    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDrawDebug(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/l/a/d;->D:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Le/l/a/d;->D:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method
