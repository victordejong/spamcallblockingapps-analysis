.class public Le/a/e/d2/l;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Landroid/graphics/drawable/Drawable;

.field public final d:[Landroid/graphics/drawable/Drawable;

.field public final e:[Landroid/graphics/drawable/Drawable;

.field public final f:[Landroid/graphics/drawable/Drawable;

.field public g:[Landroid/graphics/drawable/Drawable;

.field public h:Landroid/animation/Animator;

.field public final i:Landroid/graphics/Rect;

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Le/a/e/d2/l;->i:Landroid/graphics/Rect;

    const v2, 0x438e8000    # 285.0f

    .line 3
    invoke-static {v1, v2}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Le/a/e/d2/l;->a:I

    const/high16 v3, 0x43510000    # 209.0f

    .line 4
    invoke-static {v1, v3}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Le/a/e/d2/l;->b:I

    const/high16 v3, 0x42180000    # 38.0f

    .line 5
    invoke-static {v1, v3}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x42780000    # 62.0f

    .line 6
    invoke-static {v1, v4}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x42d20000    # 105.0f

    .line 7
    invoke-static {v1, v5}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x43150000    # 149.0f

    .line 8
    invoke-static {v1, v6}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result v6

    .line 9
    sget-object v7, Ln3/k/b/a;->a:Ljava/lang/Object;

    const v7, 0x7f081701

    .line 10
    invoke-static {v1, v7}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 11
    iput-object v7, v0, Le/a/e/d2/l;->c:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const v7, 0x7f080592

    .line 13
    invoke-static {v1, v7}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    add-int v8, v3, v4

    add-int v9, v3, v2

    .line 14
    invoke-virtual {v7, v4, v2, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const v9, 0x7f080596

    .line 15
    invoke-static {v1, v9}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    add-int v11, v3, v5

    add-int v12, v3, v2

    .line 16
    invoke-virtual {v9, v5, v2, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const v12, 0x7f080594

    .line 17
    invoke-static {v1, v12}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    add-int v13, v3, v6

    add-int v14, v3, v2

    .line 18
    invoke-virtual {v12, v6, v2, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const v14, 0x7f080593

    .line 19
    invoke-static {v1, v14}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    add-int v15, v3, v2

    .line 20
    invoke-virtual {v14, v4, v2, v8, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const v4, 0x7f080597

    .line 21
    invoke-static {v1, v4}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    add-int v8, v3, v2

    .line 22
    invoke-virtual {v4, v5, v2, v11, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const v5, 0x7f080595

    .line 23
    invoke-static {v1, v5}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    add-int/2addr v3, v2

    .line 24
    invoke-virtual {v1, v6, v2, v13, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v2, 0x3

    new-array v3, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v7, v3, v10

    const/4 v5, 0x1

    aput-object v9, v3, v5

    const/4 v6, 0x2

    aput-object v12, v3, v6

    .line 25
    iput-object v3, v0, Le/a/e/d2/l;->d:[Landroid/graphics/drawable/Drawable;

    new-array v8, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v8, v10

    aput-object v4, v8, v5

    aput-object v14, v8, v6

    .line 26
    iput-object v8, v0, Le/a/e/d2/l;->e:[Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x6

    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    aput-object v7, v8, v10

    aput-object v9, v8, v5

    aput-object v12, v8, v6

    aput-object v14, v8, v2

    const/4 v7, 0x4

    aput-object v4, v8, v7

    const/4 v4, 0x5

    aput-object v1, v8, v4

    .line 27
    iput-object v8, v0, Le/a/e/d2/l;->f:[Landroid/graphics/drawable/Drawable;

    .line 28
    iput-object v3, v0, Le/a/e/d2/l;->g:[Landroid/graphics/drawable/Drawable;

    .line 29
    array-length v1, v8

    move v3, v10

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v8, v3

    const/16 v7, 0xff

    .line 30
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, v0, Le/a/e/d2/l;->d:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    new-array v1, v1, [Landroid/animation/Animator;

    move v3, v10

    .line 32
    :goto_1
    iget-object v4, v0, Le/a/e/d2/l;->d:[Landroid/graphics/drawable/Drawable;

    array-length v7, v4

    const-wide/16 v11, 0x1f4

    const-wide/16 v13, 0x7d0

    if-ge v3, v7, :cond_1

    .line 33
    aget-object v4, v4, v3

    int-to-long v8, v3

    mul-long/2addr v8, v11

    add-long/2addr v8, v13

    new-array v7, v6, [I

    .line 34
    iget v11, v0, Le/a/e/d2/l;->a:I

    aput v11, v7, v10

    iget v11, v0, Le/a/e/d2/l;->b:I

    aput v11, v7, v5

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    const-wide/16 v11, 0x320

    .line 35
    invoke-virtual {v7, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 36
    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 37
    new-instance v8, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    new-instance v8, Le/a/e/d2/c;

    invoke-direct {v8, v0, v4}, Le/a/e/d2/c;-><init>(Le/a/e/d2/l;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 39
    aput-object v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 40
    :cond_1
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 41
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 42
    iget-object v1, v0, Le/a/e/d2/l;->e:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    new-array v1, v1, [Landroid/animation/Animator;

    move v4, v10

    .line 43
    :goto_2
    iget-object v7, v0, Le/a/e/d2/l;->e:[Landroid/graphics/drawable/Drawable;

    array-length v8, v7

    if-ge v4, v8, :cond_2

    .line 44
    aget-object v7, v7, v4

    const-wide/16 v8, 0x3e8

    move-object/from16 v16, v3

    int-to-long v2, v4

    mul-long/2addr v2, v11

    add-long/2addr v2, v8

    new-array v8, v6, [I

    .line 45
    iget v9, v0, Le/a/e/d2/l;->b:I

    aput v9, v8, v10

    iget v9, v0, Le/a/e/d2/l;->a:I

    aput v9, v8, v5

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v8

    const-wide/16 v13, 0x320

    .line 46
    invoke-virtual {v8, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 47
    invoke-virtual {v8, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 48
    new-instance v2, Le/a/e/d2/b;

    invoke-direct {v2, v0, v7}, Le/a/e/d2/b;-><init>(Le/a/e/d2/l;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 49
    aput-object v8, v1, v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, v16

    const/4 v2, 0x3

    const-wide/16 v13, 0x7d0

    goto :goto_2

    :cond_2
    move-object/from16 v16, v3

    .line 50
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 51
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 52
    new-instance v1, Le/a/e/d2/i;

    invoke-direct {v1, v0}, Le/a/e/d2/i;-><init>(Le/a/e/d2/l;)V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 53
    iget-object v1, v0, Le/a/e/d2/l;->e:[Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Le/a/e/d2/l;->d:[Landroid/graphics/drawable/Drawable;

    .line 54
    array-length v4, v1

    array-length v7, v3

    if-ne v4, v7, :cond_3

    new-array v4, v6, [F

    .line 55
    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 56
    invoke-virtual {v4, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 57
    new-instance v7, Le/a/e/d2/a;

    invoke-direct {v7, v0, v1, v3}, Le/a/e/d2/a;-><init>(Le/a/e/d2/l;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v7, 0x7d0

    .line 58
    invoke-virtual {v4, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 59
    new-instance v1, Le/a/e/d2/j;

    invoke-direct {v1, v0}, Le/a/e/d2/j;-><init>(Le/a/e/d2/l;)V

    invoke-virtual {v4, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 60
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v16, v3, v10

    aput-object v2, v3, v5

    aput-object v4, v3, v6

    .line 61
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 62
    new-instance v2, Le/a/e/d2/k;

    invoke-direct {v2, v0}, Le/a/e/d2/k;-><init>(Le/a/e/d2/l;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 63
    iput-object v1, v0, Le/a/e/d2/l;->h:Landroid/animation/Animator;

    return-void

    .line 64
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Arrays must have equal length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/d2/l;->i:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Le/a/e/d2/l;->i:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3
    iget-object p2, p0, Le/a/e/d2/l;->i:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/e/d2/l;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Le/a/e/d2/l;->g:[Landroid/graphics/drawable/Drawable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/d2/l;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/d2/l;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/e/d2/l;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2
    iget-object v0, p0, Le/a/e/d2/l;->f:[Landroid/graphics/drawable/Drawable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/e/d2/l;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2
    iget-object v0, p0, Le/a/e/d2/l;->f:[Landroid/graphics/drawable/Drawable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
