.class public final Lcom/facebook/ads/redexgen/X/M5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/M4;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static final A01:I

.field public static final A02:I

.field public static final A03:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final A04:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 43887
    invoke-static {}, Lcom/facebook/ads/redexgen/X/M5;->A0E()V

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2N;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/M5;->A02:I

    .line 43888
    const/high16 v1, -0x1000000

    const/16 v0, 0x73

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2N;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/M5;->A01:I

    .line 43889
    const/4 v1, 0x1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/M5;->A04:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43890
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/M5;->A03:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()I
    .locals 3

    .line 43892
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/M5;->A04:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 43893
    .local v0, "result":I
    add-int/lit8 v1, v2, 0x1

    .line 43894
    .local v2, "newValue":I
    const v0, 0xffffff

    if-le v1, v0, :cond_1

    .line 43895
    const/4 v1, 0x1

    .line 43896
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/M5;->A04:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43897
    return v2
.end method

.method public static A01(I)I
    .locals 2

    .line 43898
    int-to-float p0, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/LY;->A01:Landroid/util/DisplayMetrics;

    .line 43899
    const/4 v0, 0x2

    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 43900
    return v0
.end method

.method public static A02(I)I
    .locals 2

    .line 43901
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/M5;->A0a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43902
    const/4 v1, -0x1

    const v0, 0x3ecccccd    # 0.4f

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/2N;->A02(IIF)I

    move-result v0

    return v0

    .line 43903
    :cond_0
    const/high16 v1, -0x1000000

    const v0, 0x3e4ccccd    # 0.2f

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/2N;->A02(IIF)I

    move-result v0

    return v0
.end method

.method public static A03(Landroid/widget/TextView;)I
    .locals 4

    .line 43904
    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 43905
    .end local v2
    .end local v0
    :cond_0
    return v2

    .line 43906
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 43907
    .local v2, "layout":Landroid/text/Layout;
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .line 43908
    .local v0, "lines":I
    if-lez v0, :cond_2

    .line 43909
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    int-to-double v2, v0

    .line 43910
    .local v1, "ellipsisCount":D
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    int-to-double v0, v0

    sub-double/2addr v0, v2

    .line 43911
    .local v0, "charsInFirstLine":D
    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    return v0

    .line 43912
    .end local v1    # "ellipsisCount":D
    .end local v0    # "charsInFirstLine":D
    :cond_2
    return v2
.end method

.method public static A04(Landroid/widget/TextView;I)I
    .locals 3

    .line 43913
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/M5;->A03(Landroid/widget/TextView;)I

    move-result v2

    .line 43914
    .local p0, "extraLinesRequired":I
    const/4 v1, 0x0

    .line 43915
    .local p1, "lines":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    .line 43916
    .local v2, "lineHeightTitle":I
    :goto_0
    if-le p1, v0, :cond_0

    if-ge v1, v2, :cond_0

    .line 43917
    add-int/lit8 v1, v1, 0x1

    .line 43918
    sub-int/2addr p1, v0

    goto :goto_0

    .line 43919
    :cond_0
    return v1
.end method

.method public static A05(II)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 43920
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/M5;->A02(I)I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/M5;->A08(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static A06(II)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 43921
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 43922
    .local p0, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 43923
    int-to-float v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 43924
    return-object v1
.end method

.method public static A07(II)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 43925
    const/16 v0, 0x8

    new-array v2, v0, [F

    .line 43926
    .local p0, "outerRadii":[F
    int-to-float v0, p1

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 43927
    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v0, v2, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 43928
    .local p1, "r":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 43929
    .local v0, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 43930
    return-object v1
.end method

.method public static A08(III)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 43931
    invoke-static {p0, p1, p0, p2}, Lcom/facebook/ads/redexgen/X/M5;->A09(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static A09(IIII)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 43932
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 43933
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 43934
    invoke-static {p0, p3}, Lcom/facebook/ads/redexgen/X/M5;->A06(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 43935
    invoke-static {p2, p3}, Lcom/facebook/ads/redexgen/X/M5;->A07(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v0, p1, p0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 43936
    return-object v0

    .line 43937
    :cond_0
    invoke-static {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/M5;->A0A(III)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static A0A(III)Landroid/graphics/drawable/StateListDrawable;
    .locals 6

    .line 43938
    const/4 v5, 0x2

    new-array v4, v5, [[I

    const/4 v3, 0x1

    new-array v2, v3, [I

    const/4 v1, 0x0

    const v0, 0x10100a7

    aput v0, v2, v1

    aput-object v2, v4, v1

    new-array v0, v1, [I

    aput-object v0, v4, v3

    .line 43939
    .local p1, "states":[[I
    new-array v0, v5, [I

    aput p1, v0, v1

    aput p0, v0, v3

    .line 43940
    .local p0, "colors":[I
    invoke-static {v4, v0, p2}, Lcom/facebook/ads/redexgen/X/M5;->A0B([[I[II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static A0B([[I[II)Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .line 43941
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 43942
    .local p0, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    array-length v0, p0

    if-ge v2, v0, :cond_0

    .line 43943
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 43944
    .local p2, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    aget v0, p1, v2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 43945
    int-to-float v0, p2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 43946
    aget-object v0, p0, v2

    invoke-virtual {v3, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 43947
    .end local p2    # "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43948
    .end local p1    # "i":I
    :cond_0
    return-object v3
.end method

.method public static A0C(Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 43949
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 43950
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 43951
    .local v2, "v":Landroid/view/View;
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 43952
    check-cast v1, Landroid/widget/TextView;

    return-object v1

    .line 43953
    :cond_0
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 43954
    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/M5;->A0C(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    .line 43955
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43956
    .end local p0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A0D(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/M5;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x57

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0E()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/M5;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x8t
        -0x1at
        -0xdt
        -0x8t
        -0x4et
        -0x8t
        -0x16t
        -0x9t
        -0x12t
        -0x15t
        -0x4et
        -0xet
        -0x16t
        -0x17t
        -0x12t
        -0x6t
        -0xet
    .end array-data
.end method

.method public static A0F(ILandroid/view/View;)V
    .locals 13

    .line 43957
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f4ccccd    # 0.8f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 43958
    .local p0, "scaleDownAnimation":Landroid/view/animation/Animation;
    div-int/lit8 v0, p0, 0x3

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 43959
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 43960
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f4ccccd    # 0.8f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 43961
    .local p1, "bounceAnimation":Landroid/view/animation/ScaleAnimation;
    div-int/lit8 v0, p0, 0x3

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 43962
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v4, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 43963
    new-instance v0, Lcom/facebook/ads/redexgen/X/TJ;

    invoke-direct {v0, p1, v4}, Lcom/facebook/ads/redexgen/X/TJ;-><init>(Landroid/view/View;Landroid/view/animation/ScaleAnimation;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 43964
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 43965
    return-void
.end method

.method public static A0G(ILandroid/view/View;)V
    .locals 2

    .line 43966
    sget-object v1, Lcom/facebook/ads/redexgen/X/M5;->A03:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 43967
    .local p0, "viewId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 43968
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 43969
    return-void

    .line 43970
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 43971
    return-void
.end method

.method public static A0H(Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43972
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0N(Landroid/view/View;I)V

    .line 43973
    return-void
.end method

.method public static A0I(Landroid/view/View;)V
    .locals 1

    .line 43974
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 43975
    .local p0, "parent":Landroid/view/ViewParent;
    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 43976
    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/M5;->A0T(Landroid/view/ViewGroup;)V

    .line 43977
    :cond_0
    return-void
.end method

.method public static A0J(Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43978
    if-nez p0, :cond_0

    .line 43979
    return-void

    .line 43980
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 43981
    .local p0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 43982
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 43983
    :cond_1
    return-void
.end method

.method public static A0K(Landroid/view/View;)V
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43984
    if-nez p0, :cond_0

    .line 43985
    return-void

    .line 43986
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt v1, v0, :cond_1

    .line 43987
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    .line 43988
    :goto_0
    return-void

    .line 43989
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/M5;->A00()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    goto :goto_0
.end method

.method public static A0L(Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43990
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0N(Landroid/view/View;I)V

    .line 43991
    return-void
.end method

.method public static A0M(Landroid/view/View;I)V
    .locals 2

    .line 43992
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_0

    .line 43993
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 43994
    :goto_0
    return-void

    .line 43995
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static A0N(Landroid/view/View;I)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43996
    if-eqz p0, :cond_0

    .line 43997
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 43998
    :cond_0
    return-void
.end method

.method public static A0O(Landroid/view/View;II)V
    .locals 1

    .line 43999
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/M5;->A02(I)I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/facebook/ads/redexgen/X/M5;->A08(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 44000
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 44001
    return-void
.end method

.method public static A0P(Landroid/view/View;III)V
    .locals 4

    .line 44002
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v0, 0x2

    new-array v2, v0, [I

    sget v1, Lcom/facebook/ads/redexgen/X/M5;->A02:I

    const/4 v0, 0x0

    aput v1, v2, v0

    sget v1, Lcom/facebook/ads/redexgen/X/M5;->A01:I

    const/4 v0, 0x1

    aput v1, v2, v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v3, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 44003
    .local p0, "gd":Landroid/graphics/drawable/GradientDrawable;
    int-to-float v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 44004
    invoke-virtual {v1, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 44005
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/M5;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 44006
    return-void
.end method

.method public static A0Q(Landroid/view/View;III)V
    .locals 1

    .line 44007
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/M5;->A02(I)I

    move-result v0

    .line 44008
    invoke-static {p1, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/M5;->A09(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 44009
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 44010
    return-void
.end method

.method public static A0R(Landroid/view/View;Landroid/content/Context;)V
    .locals 4

    .line 44011
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v0, 0x2

    new-array v2, v0, [I

    sget v1, Lcom/facebook/ads/redexgen/X/M5;->A02:I

    const/4 v0, 0x0

    aput v1, v2, v0

    sget v1, Lcom/facebook/ads/redexgen/X/M5;->A01:I

    const/4 v0, 0x1

    aput v1, v2, v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v3, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 44012
    .local p0, "gd":Landroid/graphics/drawable/GradientDrawable;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 44013
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/M5;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 44014
    return-void
.end method

.method public static A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 44015
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_0

    .line 44016
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 44017
    :goto_0
    return-void

    .line 44018
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static A0T(Landroid/view/ViewGroup;)V
    .locals 2

    .line 44019
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-le v1, v0, :cond_0

    .line 44020
    const/16 v0, 0xc8

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0U(Landroid/view/ViewGroup;I)V

    .line 44021
    :cond_0
    return-void
.end method

.method public static A0U(Landroid/view/ViewGroup;I)V
    .locals 2

    .line 44022
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-le v1, v0, :cond_0

    .line 44023
    new-instance v0, Landroid/transition/AutoTransition;

    invoke-direct {v0}, Landroid/transition/AutoTransition;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/M5;->A0W(Landroid/view/ViewGroup;Landroid/transition/Transition;I)V

    .line 44024
    :cond_0
    return-void
.end method

.method public static A0V(Landroid/view/ViewGroup;Landroid/transition/Transition;)V
    .locals 2

    .line 44025
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-le v1, v0, :cond_0

    .line 44026
    const/16 v0, 0xc8

    invoke-static {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0W(Landroid/view/ViewGroup;Landroid/transition/Transition;I)V

    .line 44027
    :cond_0
    return-void
.end method

.method public static A0W(Landroid/view/ViewGroup;Landroid/transition/Transition;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 44028
    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 44029
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 44030
    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 44031
    return-void
.end method

.method public static A0X(Landroid/widget/TextView;ZI)V
    .locals 4

    .line 44032
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 44033
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 44034
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 44035
    .local p0, "typeface":Landroid/graphics/Typeface;
    .restart local p0    # "typeface":Landroid/graphics/Typeface;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44036
    const/4 v1, 0x2

    int-to-float v0, p2

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 44037
    return-void

    .line 44038
    .end local p0    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .restart local p0    # "typeface":Landroid/graphics/Typeface;
    goto :goto_0

    .line 44039
    .end local p0    # "typeface":Landroid/graphics/Typeface;
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method

.method public static A0Y(Landroid/widget/Toast;Ljava/lang/String;III)V
    .locals 1
    .param p0    # Landroid/widget/Toast;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 44040
    if-nez p0, :cond_0

    .line 44041
    return-void

    .line 44042
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/Toast;->setGravity(III)V

    .line 44043
    invoke-virtual {p0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0C(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object p0

    .line 44044
    .local p0, "toastTextView":Landroid/widget/TextView;
    if-eqz p0, :cond_1

    .line 44045
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44046
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 44047
    :cond_1
    return-void
.end method

.method public static varargs A0Z([Landroid/view/View;)V
    .locals 3

    .line 44048
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p0, v1

    .line 44049
    .local v1, "v":Landroid/view/View;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 44050
    .end local v1    # "v":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44051
    :cond_0
    return-void
.end method

.method public static A0a(I)Z
    .locals 4

    .line 44052
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2N;->A00(I)D

    move-result-wide v3

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v3, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
