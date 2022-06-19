.class public Ln3/i/a/b/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final v:[[F

.field public static final w:[[F


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:Z

.field public l:[F

.field public m:F

.field public n:F

.field public final o:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public p:F

.field public q:F

.field public r:Z

.field public s:F

.field public t:I

.field public u:F


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x7

    new-array v0, v0, [[F

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 1
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [F

    fill-array-data v2, :array_5

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [F

    fill-array-data v2, :array_6

    const/4 v8, 0x6

    aput-object v2, v0, v8

    sput-object v0, Ln3/i/a/b/v;->v:[[F

    new-array v0, v8, [[F

    new-array v2, v1, [F

    .line 2
    fill-array-data v2, :array_7

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v6

    new-array v1, v1, [F

    fill-array-data v1, :array_c

    aput-object v1, v0, v7

    sput-object v0, Ln3/i/a/b/v;->w:[[F

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_7
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_b
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln3/i/a/b/v;->a:I

    .line 3
    iput v0, p0, Ln3/i/a/b/v;->b:I

    .line 4
    iput v0, p0, Ln3/i/a/b/v;->c:I

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Ln3/i/a/b/v;->d:I

    .line 6
    iput v1, p0, Ln3/i/a/b/v;->e:I

    .line 7
    iput v1, p0, Ln3/i/a/b/v;->f:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 8
    iput v1, p0, Ln3/i/a/b/v;->g:F

    .line 9
    iput v1, p0, Ln3/i/a/b/v;->h:F

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Ln3/i/a/b/v;->i:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    iput v1, p0, Ln3/i/a/b/v;->j:F

    .line 12
    iput-boolean v0, p0, Ln3/i/a/b/v;->k:Z

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 13
    iput-object v2, p0, Ln3/i/a/b/v;->l:[F

    const/high16 v2, 0x40800000    # 4.0f

    .line 14
    iput v2, p0, Ln3/i/a/b/v;->p:F

    const v2, 0x3f99999a    # 1.2f

    .line 15
    iput v2, p0, Ln3/i/a/b/v;->q:F

    const/4 v2, 0x1

    .line 16
    iput-boolean v2, p0, Ln3/i/a/b/v;->r:Z

    .line 17
    iput v1, p0, Ln3/i/a/b/v;->s:F

    .line 18
    iput v0, p0, Ln3/i/a/b/v;->t:I

    const/high16 v1, 0x41200000    # 10.0f

    .line 19
    iput v1, p0, Ln3/i/a/b/v;->u:F

    .line 20
    iput-object p2, p0, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 21
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 22
    sget-object p3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move p3, v0

    :goto_0
    if-ge p3, p2, :cond_c

    .line 24
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 25
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchAnchorId:I

    if-ne v1, v3, :cond_0

    .line 26
    iget v3, p0, Ln3/i/a/b/v;->d:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ln3/i/a/b/v;->d:I

    goto/16 :goto_1

    .line 27
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchAnchorSide:I

    if-ne v1, v3, :cond_1

    .line 28
    iget v3, p0, Ln3/i/a/b/v;->a:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Ln3/i/a/b/v;->a:I

    .line 29
    sget-object v3, Ln3/i/a/b/v;->v:[[F

    aget-object v4, v3, v1

    aget v4, v4, v0

    iput v4, p0, Ln3/i/a/b/v;->h:F

    .line 30
    aget-object v1, v3, v1

    aget v1, v1, v2

    iput v1, p0, Ln3/i/a/b/v;->g:F

    goto/16 :goto_1

    .line 31
    :cond_1
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragDirection:I

    if-ne v1, v3, :cond_2

    .line 32
    iget v3, p0, Ln3/i/a/b/v;->b:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Ln3/i/a/b/v;->b:I

    .line 33
    sget-object v3, Ln3/i/a/b/v;->w:[[F

    aget-object v4, v3, v1

    aget v4, v4, v0

    iput v4, p0, Ln3/i/a/b/v;->i:F

    .line 34
    aget-object v1, v3, v1

    aget v1, v1, v2

    iput v1, p0, Ln3/i/a/b/v;->j:F

    goto/16 :goto_1

    .line 35
    :cond_2
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_maxVelocity:I

    if-ne v1, v3, :cond_3

    .line 36
    iget v3, p0, Ln3/i/a/b/v;->p:F

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Ln3/i/a/b/v;->p:F

    goto :goto_1

    .line 37
    :cond_3
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_maxAcceleration:I

    if-ne v1, v3, :cond_4

    .line 38
    iget v3, p0, Ln3/i/a/b/v;->q:F

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Ln3/i/a/b/v;->q:F

    goto :goto_1

    .line 39
    :cond_4
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_moveWhenScrollAtTop:I

    if-ne v1, v3, :cond_5

    .line 40
    iget-boolean v3, p0, Ln3/i/a/b/v;->r:Z

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Ln3/i/a/b/v;->r:Z

    goto :goto_1

    .line 41
    :cond_5
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragScale:I

    if-ne v1, v3, :cond_6

    .line 42
    iget v3, p0, Ln3/i/a/b/v;->s:F

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Ln3/i/a/b/v;->s:F

    goto :goto_1

    .line 43
    :cond_6
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragThreshold:I

    if-ne v1, v3, :cond_7

    .line 44
    iget v3, p0, Ln3/i/a/b/v;->u:F

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Ln3/i/a/b/v;->u:F

    goto :goto_1

    .line 45
    :cond_7
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchRegionId:I

    if-ne v1, v3, :cond_8

    .line 46
    iget v3, p0, Ln3/i/a/b/v;->e:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ln3/i/a/b/v;->e:I

    goto :goto_1

    .line 47
    :cond_8
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_onTouchUp:I

    if-ne v1, v3, :cond_9

    .line 48
    iget v3, p0, Ln3/i/a/b/v;->c:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Ln3/i/a/b/v;->c:I

    goto :goto_1

    .line 49
    :cond_9
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_nestedScrollFlags:I

    if-ne v1, v3, :cond_a

    .line 50
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Ln3/i/a/b/v;->t:I

    goto :goto_1

    .line 51
    :cond_a
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_limitBoundsTo:I

    if-ne v1, v3, :cond_b

    .line 52
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ln3/i/a/b/v;->f:I

    :cond_b
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    .line 53
    :cond_c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    .line 1
    iget v0, p0, Ln3/i/a/b/v;->e:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p2
.end method

.method public b(Z)V
    .locals 8

    .line 1
    sget-object v0, Ln3/i/a/b/v;->v:[[F

    sget-object v1, Ln3/i/a/b/v;->w:[[F

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/4 v7, 0x2

    if-eqz p1, :cond_0

    .line 2
    aget-object p1, v1, v3

    aput-object p1, v1, v4

    .line 3
    aget-object p1, v1, v7

    aput-object p1, v1, v6

    .line 4
    aget-object p1, v0, v7

    aput-object p1, v0, v6

    .line 5
    aget-object p1, v0, v5

    aput-object p1, v0, v2

    goto :goto_0

    .line 6
    :cond_0
    aget-object p1, v1, v7

    aput-object p1, v1, v4

    .line 7
    aget-object p1, v1, v3

    aput-object p1, v1, v6

    .line 8
    aget-object p1, v0, v5

    aput-object p1, v0, v6

    .line 9
    aget-object p1, v0, v7

    aput-object p1, v0, v2

    .line 10
    :goto_0
    iget p1, p0, Ln3/i/a/b/v;->a:I

    aget-object v2, v0, p1

    const/4 v3, 0x0

    aget v2, v2, v3

    iput v2, p0, Ln3/i/a/b/v;->h:F

    .line 11
    aget-object p1, v0, p1

    aget p1, p1, v5

    iput p1, p0, Ln3/i/a/b/v;->g:F

    .line 12
    iget p1, p0, Ln3/i/a/b/v;->b:I

    aget-object v0, v1, p1

    aget v0, v0, v3

    iput v0, p0, Ln3/i/a/b/v;->i:F

    .line 13
    aget-object p1, v1, p1

    aget p1, p1, v5

    iput p1, p0, Ln3/i/a/b/v;->j:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ln3/i/a/b/v;->i:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ln3/i/a/b/v;->j:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
