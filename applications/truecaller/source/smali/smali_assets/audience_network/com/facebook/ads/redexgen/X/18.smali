.class public final Lcom/facebook/ads/redexgen/X/18;
.super Lcom/facebook/ads/redexgen/X/1f;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/MZ;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/MZ;

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/Aa;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "T7MK6mm4Fzbg8PTMnM4kcHpb21LLpIaw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "PTQtUxKdjysMmbj8hCZsGKEwd1IRWqqZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Zw8mt4VncD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "79VYCrnrWW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2MnAMBnkkiKtyd2cP7mHhabJycDYuMiE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jaMauIT7sdi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "OgIH7ZaBRtH9hoDgrnw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xZmsCngT77DU5lblEiekqTVKPqNdsast"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/18;->A08:[Ljava/lang/String;

    .line 2871
    invoke-static {}, Lcom/facebook/ads/redexgen/X/18;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 3

    .line 2872
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1f;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 2873
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/18;->A03:I

    .line 2874
    iput v0, p0, Lcom/facebook/ads/redexgen/X/18;->A02:I

    .line 2875
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/18;->A01:I

    .line 2876
    iput v0, p0, Lcom/facebook/ads/redexgen/X/18;->A00:I

    .line 2877
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/18;->A05:Z

    .line 2878
    new-instance v2, Lcom/facebook/ads/redexgen/X/P8;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/P8;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/P7;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/P7;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Aa;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/Aa;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/P8;Lcom/facebook/ads/redexgen/X/P7;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/18;->A06:Lcom/facebook/ads/redexgen/X/Aa;

    .line 2879
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/18;->A02()V

    .line 2880
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2881
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1f;-><init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;)V

    .line 2882
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/18;->A03:I

    .line 2883
    iput v0, p0, Lcom/facebook/ads/redexgen/X/18;->A02:I

    .line 2884
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/18;->A01:I

    .line 2885
    iput v0, p0, Lcom/facebook/ads/redexgen/X/18;->A00:I

    .line 2886
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/18;->A05:Z

    .line 2887
    new-instance v2, Lcom/facebook/ads/redexgen/X/P8;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/P8;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/P7;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/P7;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Aa;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/Aa;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/P8;Lcom/facebook/ads/redexgen/X/P7;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/18;->A06:Lcom/facebook/ads/redexgen/X/Aa;

    .line 2888
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/18;->A02()V

    .line 2889
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 2890
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/1f;-><init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;I)V

    .line 2891
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/18;->A03:I

    .line 2892
    iput v0, p0, Lcom/facebook/ads/redexgen/X/18;->A02:I

    .line 2893
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/18;->A01:I

    .line 2894
    iput v0, p0, Lcom/facebook/ads/redexgen/X/18;->A00:I

    .line 2895
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/18;->A05:Z

    .line 2896
    new-instance v2, Lcom/facebook/ads/redexgen/X/P8;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/P8;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/P7;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/P7;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Aa;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/Aa;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/P8;Lcom/facebook/ads/redexgen/X/P7;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/18;->A06:Lcom/facebook/ads/redexgen/X/Aa;

    .line 2897
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/18;->A02()V

    .line 2898
    return-void
.end method

.method private A00(I)I
    .locals 7

    .line 2899
    iget v0, p0, Lcom/facebook/ads/redexgen/X/18;->A00:I

    mul-int/lit8 v6, v0, 0x2

    .line 2900
    .local p0, "spacing":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/18;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/18;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v5, v0

    sub-int/2addr v5, v6

    .line 2901
    .local p1, "availableWidth":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Eq;->getAdapter()Lcom/facebook/ads/redexgen/X/4A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4A;->A0D()I

    move-result v4

    .line 2902
    .local v0, "numItems":I
    const/4 v3, 0x0

    .line 2903
    .local v6, "numFullItems":I
    const v0, 0x7fffffff

    .line 2904
    .local v5, "itemSize":I
    :goto_0
    if-le v0, p1, :cond_1

    .line 2905
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v4, :cond_0

    .line 2906
    return p1

    .line 2907
    :cond_0
    mul-int v0, v3, v6

    sub-int v0, v5, v0

    int-to-float v2, v0

    int-to-float v1, v3

    const v0, 0x3eaa7efa    # 0.333f

    add-float/2addr v1, v0

    div-float/2addr v2, v1

    float-to-int v0, v2

    goto :goto_0

    .line 2908
    :cond_1
    return v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/18;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 2

    .line 2909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/18;->A06:Lcom/facebook/ads/redexgen/X/Aa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/be;->A2E(I)V

    .line 2910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/18;->A06:Lcom/facebook/ads/redexgen/X/Aa;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/1f;->setLayoutManager(Lcom/facebook/ads/redexgen/X/4M;)V

    .line 2911
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/18;->setSaveEnabled(Z)V

    .line 2912
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/1f;->setSnapDelegate(Lcom/facebook/ads/redexgen/X/PB;)V

    .line 2913
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 2914
    return-void
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/18;->A07:[B

    return-void

    :array_0
    .array-data 1
        -0x6t
        -0x7t
        -0x25t
        -0x14t
        -0xet
        -0x10t
        -0x32t
        -0xdt
        -0x14t
        -0x7t
        -0xet
        -0x10t
        -0x11t
    .end array-data
.end method

.method private A04(II)V
    .locals 3

    .line 2915
    iget v0, p0, Lcom/facebook/ads/redexgen/X/18;->A03:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/18;->A02:I

    if-ne p2, v0, :cond_0

    .line 2916
    return-void

    .line 2917
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/18;->A03:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/18;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_2

    .line 2918
    sget-object v2, Lcom/facebook/ads/redexgen/X/18;->A08:[Ljava/lang/String;

    const-string v1, "hNBaptvkpj"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput p2, p0, Lcom/facebook/ads/redexgen/X/18;->A02:I

    .line 2919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/18;->A04:Lcom/facebook/ads/redexgen/X/MZ;

    if-eqz v0, :cond_1

    .line 2920
    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/18;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2921
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A22(IZ)V
    .locals 1

    .line 2922
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1f;->A22(IZ)V

    .line 2923
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/18;->A04(II)V

    .line 2924
    return-void
.end method

.method public final A7A(I)I
    .locals 3

    .line 2925
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 2926
    .local p0, "scrollXAbs":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A06:I

    if-gt v2, v0, :cond_0

    .line 2927
    const/4 v0, 0x0

    return v0

    .line 2928
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/18;->A01:I

    const/4 v0, 0x1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    div-int/2addr v2, v1

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method public getChildSpacing()I
    .locals 1

    .line 2929
    iget v0, p0, Lcom/facebook/ads/redexgen/X/18;->A00:I

    return v0
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 2930
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Eq;->onMeasure(II)V

    .line 2931
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/18;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/18;->getPaddingBottom()I

    move-result v0

    add-int/2addr v3, v0

    .line 2932
    .local p0, "verticalPadding":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/18;->A05:Z

    if-eqz v0, :cond_4

    .line 2933
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    float-to-int v2, v0

    .line 2934
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/18;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A0C(Landroid/content/Context;)I

    move-result v0

    mul-int/2addr v2, v0

    add-int/2addr v2, v3

    .line 2935
    .local p1, "height":I
    .restart local p1    # "height":I
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v0, -0x80000000

    if-eq v1, v0, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v1, v0, :cond_2

    .line 2936
    :goto_1
    sub-int/2addr v2, v3

    .line 2937
    .local p2, "itemSize":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/18;->A05:Z

    if-eqz v0, :cond_1

    .line 2938
    sget v0, Lcom/facebook/ads/redexgen/X/MW;->A09:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2939
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/18;->getMeasuredWidth()I

    move-result v1

    add-int v0, v2, v3

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/18;->setMeasuredDimension(II)V

    .line 2940
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/18;->A05:Z

    if-nez v0, :cond_0

    .line 2941
    iget v0, p0, Lcom/facebook/ads/redexgen/X/18;->A00:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/18;->setChildWidth(I)V

    .line 2942
    :cond_0
    return-void

    .line 2943
    :cond_1
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/18;->A00(I)I

    move-result v2

    goto :goto_2

    .line 2944
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 2945
    goto :goto_1

    .line 2946
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 2947
    .end local p1    # "height":I
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/18;->getMeasuredWidth()I

    move-result v0

    int-to-float v1, v0

    const v0, 0x3ff47ae1    # 1.91f

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_0
.end method

.method public setAdapter(Lcom/facebook/ads/redexgen/X/4A;)V
    .locals 2
    .param p1    # Lcom/facebook/ads/redexgen/X/4A;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2948
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/18;->A06:Lcom/facebook/ads/redexgen/X/Aa;

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Aa;->A2L(I)V

    .line 2949
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Eq;->setAdapter(Lcom/facebook/ads/redexgen/X/4A;)V

    .line 2950
    return-void

    .line 2951
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setChildSpacing(I)V
    .locals 0

    .line 2952
    iput p1, p0, Lcom/facebook/ads/redexgen/X/18;->A00:I

    .line 2953
    return-void
.end method

.method public setChildWidth(I)V
    .locals 6

    .line 2954
    iput p1, p0, Lcom/facebook/ads/redexgen/X/18;->A01:I

    .line 2955
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/18;->getMeasuredWidth()I

    move-result v5

    .line 2956
    .local p0, "pageWidth":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/18;->getPaddingLeft()I

    move-result v0

    sub-int v2, v5, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/18;->getPaddingRight()I

    move-result v0

    sub-int/2addr v2, v0

    .line 2957
    .local p1, "innerWidth":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/18;->A06:Lcom/facebook/ads/redexgen/X/Aa;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/18;->A01:I

    sub-int/2addr v2, v0

    div-int/lit8 v0, v2, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Aa;->A2M(I)V

    .line 2958
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/18;->A06:Lcom/facebook/ads/redexgen/X/Aa;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/18;->A01:I

    int-to-double v2, v0

    int-to-double v0, v5

    div-double/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/Aa;->A2K(D)V

    .line 2959
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 1

    .line 2960
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/18;->A22(IZ)V

    .line 2961
    return-void
.end method

.method public setOnPageChangedListener(Lcom/facebook/ads/redexgen/X/MZ;)V
    .locals 0

    .line 2962
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/18;->A04:Lcom/facebook/ads/redexgen/X/MZ;

    .line 2963
    return-void
.end method

.method public setShowTextInCarousel(Z)V
    .locals 0

    .line 2964
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/18;->A05:Z

    .line 2965
    return-void
.end method
