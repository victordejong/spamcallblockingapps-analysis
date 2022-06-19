.class public final Lcom/facebook/ads/redexgen/X/SV;
.super Lcom/facebook/ads/redexgen/X/Nx;
.source ""


# static fields
.field public static A0H:[B

.field public static A0I:[Ljava/lang/String;

.field public static final A0J:I

.field public static final A0K:I

.field public static final A0L:I

.field public static final A0M:I

.field public static final A0N:I

.field public static final A0O:I

.field public static final A0P:I

.field public static final A0Q:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/widget/LinearLayout;

.field public A03:Landroid/widget/TextView;

.field public A04:Landroid/widget/TextView;

.field public A05:Landroid/widget/TextView;

.field public A06:Lcom/facebook/ads/redexgen/X/1G;

.field public A07:Lcom/facebook/ads/redexgen/X/1I;

.field public A08:Lcom/facebook/ads/redexgen/X/1J;

.field public A09:Lcom/facebook/ads/redexgen/X/OC;

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Landroid/widget/LinearLayout;

.field public final A0D:Landroid/widget/RelativeLayout;

.field public final A0E:Landroid/widget/RelativeLayout;

.field public final A0F:Landroid/widget/TextView;

.field public final A0G:Lcom/facebook/ads/redexgen/X/XT;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZYFZvgakVe"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Z9juamcNffZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "L6NhnuluGVbfOuIZp07EBLc1k7rVfOba"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "poGipFcmqzgO1AN9d1VwktKUuwbeuE2x"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1MA0bi3k"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "zUZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "l0mlyabDLiJh1QvHe0VixDkOpEP8aZzg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KStQaqdBmF0CfboN9Wjc4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/SV;->A0I:[Ljava/lang/String;

    .line 51973
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SV;->A07()V

    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2N;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/SV;->A0P:I

    .line 51974
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SV;->A0M:I

    .line 51975
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SV;->A0N:I

    .line 51976
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41d00000    # 26.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SV;->A0J:I

    .line 51977
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x43100000    # 144.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SV;->A0L:I

    .line 51978
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SV;->A0K:I

    .line 51979
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SV;->A0O:I

    .line 51980
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41600000    # 14.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/SV;->A0Q:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;IZLcom/facebook/ads/redexgen/X/1I;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;)V
    .locals 13

    .line 51981
    move-object v2, p0

    move-object v3, p0

    move/from16 v7, p5

    move-object/from16 v6, p4

    move-object v4, p1

    move v5, p2

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v10, p8

    move-object/from16 v9, p7

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/Nx;-><init>(Lcom/facebook/ads/redexgen/X/XT;ILcom/facebook/ads/redexgen/X/1I;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;)V

    .line 51982
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/SV;->A0B:Z

    .line 51983
    iput v0, v2, Lcom/facebook/ads/redexgen/X/SV;->A00:I

    .line 51984
    iput v0, v2, Lcom/facebook/ads/redexgen/X/SV;->A01:I

    .line 51985
    iput-object v4, v2, Lcom/facebook/ads/redexgen/X/SV;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    .line 51986
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Nx;->A04:Lcom/facebook/ads/redexgen/X/OA;

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/OA;->setFullCircleCorners(Z)V

    .line 51987
    sget v1, Lcom/facebook/ads/redexgen/X/SV;->A0M:I

    sget v0, Lcom/facebook/ads/redexgen/X/SV;->A0J:I

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/SV;->setPadding(IIII)V

    .line 51988
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SV;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/SV;->A0D:Landroid/widget/RelativeLayout;

    .line 51989
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SV;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/SV;->A05:Landroid/widget/TextView;

    .line 51990
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SV;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/SV;->A02:Landroid/widget/LinearLayout;

    .line 51991
    new-instance v7, Lcom/facebook/ads/redexgen/X/OC;

    iget-object v8, v2, Lcom/facebook/ads/redexgen/X/SV;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    sget v9, Lcom/facebook/ads/redexgen/X/SV;->A0Q:I

    sget v11, Lcom/facebook/ads/redexgen/X/SV;->A0P:I

    const/4 v10, 0x5

    const/4 v12, -0x1

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/OC;-><init>(Lcom/facebook/ads/redexgen/X/XT;IIII)V

    iput-object v7, v2, Lcom/facebook/ads/redexgen/X/SV;->A09:Lcom/facebook/ads/redexgen/X/OC;

    .line 51992
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SV;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/SV;->A0E:Landroid/widget/RelativeLayout;

    .line 51993
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SV;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/SV;->A0C:Landroid/widget/LinearLayout;

    .line 51994
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SV;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/SV;->A04:Landroid/widget/TextView;

    .line 51995
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SV;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/SV;->A03:Landroid/widget/TextView;

    .line 51996
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Nx;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/SV;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 51997
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Nx;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/SV;->A0C:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 51998
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SV;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/SV;->A0F:Landroid/widget/TextView;

    .line 51999
    iput-object v6, v2, Lcom/facebook/ads/redexgen/X/SV;->A07:Lcom/facebook/ads/redexgen/X/1I;

    .line 52000
    invoke-static {p0, v4}, Lcom/facebook/ads/redexgen/X/M5;->A0R(Landroid/view/View;Landroid/content/Context;)V

    .line 52001
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/SV;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    .line 52002
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1c(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/SV;->A0A:Z

    .line 52003
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SV;->A05()V

    .line 52004
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/SV;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x63

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 3

    .line 52005
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nx;->A03:Lcom/facebook/ads/redexgen/X/SZ;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/SZ;->setPadding(IIII)V

    .line 52006
    sget v2, Lcom/facebook/ads/redexgen/X/SV;->A0K:I

    const/4 v0, -0x1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52007
    .local p0, "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A03:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/SZ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52008
    return-void
.end method

.method private A02()V
    .locals 7

    .line 52009
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0C:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52010
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A0C:Landroid/widget/LinearLayout;

    sget v0, Lcom/facebook/ads/redexgen/X/SV;->A0M:I

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v5, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 52011
    const/4 v4, -0x2

    const/4 v3, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52012
    .local p0, "expandableParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0C:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 52015
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A03:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 52016
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A03:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 52017
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A03:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 52018
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A03:Landroid/widget/TextView;

    .line 52019
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A07:Lcom/facebook/ads/redexgen/X/1I;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/1I;->A05(Z)I

    move-result v0

    .line 52020
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A03:Landroid/widget/TextView;

    invoke-static {v0, v5, v2}, Lcom/facebook/ads/redexgen/X/M5;->A0X(Landroid/widget/TextView;ZI)V

    .line 52022
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52023
    .local v0, "descriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A0C:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A03:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52024
    return-void

    .line 52025
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private A03()V
    .locals 8

    .line 52026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 52027
    const/4 v4, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52028
    .local p0, "iconAndMetaDataContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/SV;->A0M:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 52029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52030
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0D:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 52031
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Nx;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A00:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52032
    .local v4, "iconParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52033
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52034
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A0D:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A04:Lcom/facebook/ads/redexgen/X/OA;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52035
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52036
    .local v0, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/SV;->A0N:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 52037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A04:Lcom/facebook/ads/redexgen/X/OA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OA;->getId()I

    move-result v0

    const/4 v7, 0x1

    invoke-virtual {v2, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52038
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52039
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A0D:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52040
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 52041
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A05:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 52042
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A05:Landroid/widget/TextView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Nx;->A05:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52043
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A05:Landroid/widget/TextView;

    .line 52044
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0A:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A07:Lcom/facebook/ads/redexgen/X/1I;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/1I;->A06(Z)I

    move-result v0

    .line 52045
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52046
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A05:Landroid/widget/TextView;

    const/16 v0, 0x12

    invoke-static {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0X(Landroid/widget/TextView;ZI)V

    .line 52047
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A0E:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A05:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 52048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A02:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A02:Landroid/widget/LinearLayout;

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 52050
    sget v0, Lcom/facebook/ads/redexgen/X/SV;->A0O:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52051
    .local v1, "ratingInfoContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/SV;->A0N:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 52052
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A05:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52053
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A0E:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 52055
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A09:Lcom/facebook/ads/redexgen/X/OC;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/OC;->setGravity(I)V

    .line 52056
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52057
    .local v2, "starRatingContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A02:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A09:Lcom/facebook/ads/redexgen/X/OC;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52058
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A04:Landroid/widget/TextView;

    .line 52059
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A07:Lcom/facebook/ads/redexgen/X/1I;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/1I;->A06(Z)I

    move-result v0

    .line 52060
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 52062
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 52063
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A04:Landroid/widget/TextView;

    const/16 v0, 0xe

    invoke-static {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0X(Landroid/widget/TextView;ZI)V

    .line 52064
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52065
    .local v0, "ratingCountParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/SV;->A0N:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 52066
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A02:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A04:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52067
    return-void

    .line 52068
    :cond_0
    const/4 v0, -0x1

    goto :goto_1

    .line 52069
    :cond_1
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method private A04()V
    .locals 4

    .line 52070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0F:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 52071
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A0F:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 52072
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A0F:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 52073
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A0F:Landroid/widget/TextView;

    .line 52074
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0A:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A07:Lcom/facebook/ads/redexgen/X/1I;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/1I;->A06(Z)I

    move-result v0

    .line 52075
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0F:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 52077
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SV;->A0F:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0X(Landroid/widget/TextView;ZI)V

    .line 52078
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52079
    .local p0, "socialContextParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/SV;->A0M:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 52080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0F:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52081
    return-void

    .line 52082
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private A05()V
    .locals 2

    .line 52083
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SV;->removeAllViews()V

    .line 52084
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nx;->A01:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Nx;->A05:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52085
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SV;->A03()V

    .line 52086
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SV;->A02()V

    .line 52087
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SV;->A01()V

    .line 52088
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SV;->A04()V

    .line 52089
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SV;->A06()V

    .line 52090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A01:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 52091
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A03:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 52092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0F:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 52093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SV;->addView(Landroid/view/View;)V

    .line 52094
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A03:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SV;->addView(Landroid/view/View;)V

    .line 52095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0F:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SV;->addView(Landroid/view/View;)V

    .line 52096
    return-void
.end method

.method private A06()V
    .locals 5

    .line 52097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A06:Lcom/facebook/ads/redexgen/X/1G;

    if-nez v0, :cond_0

    .line 52098
    return-void

    .line 52099
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A05:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52100
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A06:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52101
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A0F:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A06:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A08:Lcom/facebook/ads/redexgen/X/1J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A03:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0H(Landroid/view/View;)V

    .line 52104
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A06:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0F:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0H(Landroid/view/View;)V

    .line 52106
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A06:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 52107
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A02:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 52108
    :cond_3
    :goto_0
    return-void

    .line 52109
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A02:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 52110
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SV;->A09:Lcom/facebook/ads/redexgen/X/OC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A06:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A03()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/SV;->A0I:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/SV;->A0I:[Ljava/lang/String;

    const-string v1, "VSVKlO90K15ihGB4A0qZPRqEppX5OU7U"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "xs76xd0mQfWREabMq0mbrfEp6FCRmbTD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/OC;->setRating(F)V

    .line 52111
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A06:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A02()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 52112
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SV;->A04:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52113
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A06:Lcom/facebook/ads/redexgen/X/1G;

    .line 52114
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52115
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SV;->A0H:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x6ft
        -0x14t
    .end array-data
.end method


# virtual methods
.method public final A08()V
    .locals 2

    .line 52116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A04:Lcom/facebook/ads/redexgen/X/OA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0H(Landroid/view/View;)V

    .line 52117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0E:Landroid/widget/RelativeLayout;

    .line 52118
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 52119
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_0

    .line 52120
    const/4 v0, 0x0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 52121
    :cond_0
    return-void
.end method

.method public final A09()V
    .locals 1

    .line 52122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0F:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0H(Landroid/view/View;)V

    .line 52123
    return-void
.end method

.method public final A0A(I)V
    .locals 4

    .line 52124
    const/4 v1, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    .line 52125
    .local v1, "isPortrait":Z
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/SV;->setOrientation(I)V

    .line 52126
    if-nez v0, :cond_0

    .line 52127
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SV;->setWeightSum(F)V

    .line 52128
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52129
    .local p0, "auxContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 52130
    sget v1, Lcom/facebook/ads/redexgen/X/SV;->A0J:I

    sget v0, Lcom/facebook/ads/redexgen/X/SV;->A0M:I

    sub-int/2addr v1, v0

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 52131
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52132
    sget v0, Lcom/facebook/ads/redexgen/X/SV;->A0K:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52133
    .local v3, "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/SV;->A0J:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 52134
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 52135
    const/16 v0, 0x50

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 52136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A03:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/SZ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52137
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nx;->A03:Lcom/facebook/ads/redexgen/X/SZ;

    sget v0, Lcom/facebook/ads/redexgen/X/SV;->A0L:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->setMinWidth(I)V

    .line 52138
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0F:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 52139
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52140
    .local v0, "socialContextParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 52141
    sget v0, Lcom/facebook/ads/redexgen/X/SV;->A0N:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 52142
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A0C:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0F:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 52144
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A0F:Landroid/widget/TextView;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 52145
    .end local p0    # "auxContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v0    # "socialContextParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SV;->bringToFront()V

    .line 52146
    return-void

    .line 52147
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SV;->A05()V

    goto :goto_2

    .line 52148
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 52149
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getExpandableLayout()Landroid/view/View;
    .locals 1

    .line 52150
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0C:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 52151
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Nx;->onLayout(ZIIII)V

    .line 52152
    iget v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A00:I

    if-nez v0, :cond_0

    .line 52153
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A03:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A00:I

    .line 52154
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A0F:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A01:I

    .line 52155
    :cond_0
    return-void
.end method

.method public setInfo(Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/O0;)V
    .locals 0
    .param p5    # Lcom/facebook/ads/redexgen/X/O0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52156
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Nx;->setInfo(Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/O0;)V

    .line 52157
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SV;->A06:Lcom/facebook/ads/redexgen/X/1G;

    .line 52158
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SV;->A08:Lcom/facebook/ads/redexgen/X/1J;

    .line 52159
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SV;->A06()V

    .line 52160
    return-void
.end method

.method public setTitleMaxLines(I)V
    .locals 2

    .line 52161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SV;->A05:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 52162
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SV;->A05:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 52163
    return-void
.end method
