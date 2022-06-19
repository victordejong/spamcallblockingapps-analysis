.class public final Lcom/facebook/ads/redexgen/X/85;
.super Lcom/facebook/ads/redexgen/X/T4;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PJ;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field public static A0N:[B

.field public static A0O:[Ljava/lang/String;

.field public static final A0P:I

.field public static final A0Q:I

.field public static final A0R:I

.field public static final A0S:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/cj;

.field public A05:Lcom/facebook/ads/redexgen/X/7J;

.field public A06:Lcom/facebook/ads/redexgen/X/2F;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Lcom/facebook/ads/redexgen/X/Nx;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A08:Lcom/facebook/ads/redexgen/X/O9;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A09:Lcom/facebook/ads/redexgen/X/Rh;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0A:Lcom/facebook/ads/redexgen/X/QY;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A0B:Lcom/facebook/ads/redexgen/X/QZ;

.field public A0C:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/PE;",
            ">;"
        }
    .end annotation
.end field

.field public final A0E:I

.field public final A0F:Lcom/facebook/ads/redexgen/X/1I;

.field public final A0G:Lcom/facebook/ads/redexgen/X/XT;

.field public final A0H:Lcom/facebook/ads/redexgen/X/Lz;

.field public final A0I:Lcom/facebook/ads/redexgen/X/MU;

.field public final A0J:Lcom/facebook/ads/redexgen/X/ON;

.field public final A0K:Lcom/facebook/ads/redexgen/X/PK;

.field public final A0L:Lcom/facebook/ads/redexgen/X/PK;

.field public final A0M:Lcom/facebook/ads/redexgen/X/IS;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jpfQHsJU1lQWxp7CXlwdVdxcmzkEjD3g"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zEjz0M8mBGIlVid6uM60nN2wm9TWrUGD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "N1PpSZkKdQQSk7AxXPBdtL04F7CB9SRH"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NsCDsqdLjA318x1fHEY8u0Kcg9miAoAi"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WmIcjMDFfLwNDk"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Zb94j8IQkKLdVAKFmXIR3eGQpuAhW41l"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pxOHyfKHQ8aixQeNEjeruqZzDXsiYM9P"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/85;->A0O:[Ljava/lang/String;

    .line 17659
    invoke-static {}, Lcom/facebook/ads/redexgen/X/85;->A0B()V

    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/85;->A0Q:I

    .line 17660
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/85;->A0R:I

    .line 17661
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/85;->A0S:I

    .line 17662
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x42280000    # 42.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/85;->A0P:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/cj;)V
    .locals 11

    .line 17663
    move-object v1, p0

    move-object v5, p2

    move-object/from16 v2, p5

    invoke-direct {p0, p1, v5, p4, v2}, Lcom/facebook/ads/redexgen/X/T4;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/cj;)V

    .line 17664
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lz;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Lz;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/85;->A0H:Lcom/facebook/ads/redexgen/X/Lz;

    .line 17665
    const/4 v0, -0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/85;->A00:I

    .line 17666
    iput-object p3, v1, Lcom/facebook/ads/redexgen/X/85;->A05:Lcom/facebook/ads/redexgen/X/7J;

    .line 17667
    iput-object p1, v1, Lcom/facebook/ads/redexgen/X/85;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    .line 17668
    iput-object p4, v1, Lcom/facebook/ads/redexgen/X/85;->A0I:Lcom/facebook/ads/redexgen/X/MU;

    .line 17669
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/T4;->A08:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0X()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/85;->A0E:I

    .line 17670
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/85;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/IS;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/IS;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/85;->A0M:Lcom/facebook/ads/redexgen/X/IS;

    .line 17671
    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/85;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    sget-object v3, Lcom/facebook/ads/redexgen/X/PI;->A04:Lcom/facebook/ads/redexgen/X/PI;

    new-instance v0, Lcom/facebook/ads/redexgen/X/PK;

    invoke-direct {v0, v4, v3, p0}, Lcom/facebook/ads/redexgen/X/PK;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/PI;Lcom/facebook/ads/redexgen/X/PJ;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/85;->A0L:Lcom/facebook/ads/redexgen/X/PK;

    .line 17672
    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/85;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    sget-object v3, Lcom/facebook/ads/redexgen/X/PI;->A03:Lcom/facebook/ads/redexgen/X/PI;

    new-instance v0, Lcom/facebook/ads/redexgen/X/PK;

    invoke-direct {v0, v4, v3, p0}, Lcom/facebook/ads/redexgen/X/PK;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/PI;Lcom/facebook/ads/redexgen/X/PJ;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/85;->A0K:Lcom/facebook/ads/redexgen/X/PK;

    .line 17673
    new-instance v3, Lcom/facebook/ads/redexgen/X/OM;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/85;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    .line 17674
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T4;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/MU;

    move-result-object v6

    iget-object v7, v1, Lcom/facebook/ads/redexgen/X/85;->A04:Lcom/facebook/ads/redexgen/X/cj;

    iget-object v9, v1, Lcom/facebook/ads/redexgen/X/85;->A0B:Lcom/facebook/ads/redexgen/X/QZ;

    iget-object v10, v1, Lcom/facebook/ads/redexgen/X/85;->A0H:Lcom/facebook/ads/redexgen/X/Lz;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/OM;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/16;Landroid/view/View;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;)V

    .line 17675
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/OM;->A0J()Lcom/facebook/ads/redexgen/X/ON;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/85;->A0J:Lcom/facebook/ads/redexgen/X/ON;

    .line 17676
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/16;->A0J()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/85;->A0F:Lcom/facebook/ads/redexgen/X/1I;

    .line 17677
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/85;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17678
    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/T4;->A0C:Lcom/facebook/ads/redexgen/X/MT;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MT;->setProgressSpinnerInvisible(Z)V

    .line 17679
    :cond_0
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/85;)Lcom/facebook/ads/redexgen/X/cj;
    .locals 0

    .line 17680
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/T4;->A08:Lcom/facebook/ads/redexgen/X/cj;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/85;)Lcom/facebook/ads/redexgen/X/cj;
    .locals 0

    .line 17681
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/85;->A04:Lcom/facebook/ads/redexgen/X/cj;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/85;)Lcom/facebook/ads/redexgen/X/XT;
    .locals 0

    .line 17682
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/85;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/85;)Lcom/facebook/ads/redexgen/X/JT;
    .locals 0

    .line 17683
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/T4;->A0A:Lcom/facebook/ads/redexgen/X/JT;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/85;)Lcom/facebook/ads/redexgen/X/Lz;
    .locals 0

    .line 17684
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/85;->A0H:Lcom/facebook/ads/redexgen/X/Lz;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/85;)Lcom/facebook/ads/redexgen/X/QZ;
    .locals 0

    .line 17685
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/85;->A0B:Lcom/facebook/ads/redexgen/X/QZ;

    return-object p0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/85;->A0N:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v3, v0, -0xe

    sget-object v1, Lcom/facebook/ads/redexgen/X/85;->A0O:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/85;->A0O:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    int-to-byte v0, v3

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/85;)Ljava/lang/String;
    .locals 0

    .line 17686
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/85;->A0C:Ljava/lang/String;

    return-object p0
.end method

.method private A08()V
    .locals 5

    .line 17687
    iget v0, p0, Lcom/facebook/ads/redexgen/X/85;->A00:I

    const/4 v4, 0x0

    const/16 v2, 0x8

    if-lez v0, :cond_1

    .line 17688
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A0K:Lcom/facebook/ads/redexgen/X/PK;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/PK;->setVisibility(I)V

    .line 17689
    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/85;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/85;->A0E:I

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_0

    .line 17690
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/85;->A0L:Lcom/facebook/ads/redexgen/X/PK;

    sget-object v2, Lcom/facebook/ads/redexgen/X/85;->A0O:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/85;->A0O:[Ljava/lang/String;

    const-string v1, "6a52QfyEa3IWfhbHGHqjZ8J10HxaoQoC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/PK;->setVisibility(I)V

    .line 17691
    :goto_1
    return-void

    .line 17692
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A0L:Lcom/facebook/ads/redexgen/X/PK;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/PK;->setVisibility(I)V

    goto :goto_1

    .line 17693
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A0K:Lcom/facebook/ads/redexgen/X/PK;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/PK;->setVisibility(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A09()V
    .locals 4

    .line 17694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A08:Lcom/facebook/ads/redexgen/X/O9;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A06:Lcom/facebook/ads/redexgen/X/2F;

    if-eqz v0, :cond_0

    .line 17695
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17696
    .local p0, "dotsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/85;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    .line 17697
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A06:Lcom/facebook/ads/redexgen/X/2F;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2F;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17698
    sget v0, Lcom/facebook/ads/redexgen/X/85;->A0Q:I

    invoke-virtual {v3, v2, v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17699
    :goto_0
    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A08:Lcom/facebook/ads/redexgen/X/O9;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/O9;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17701
    .end local p0    # "dotsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 17702
    :cond_1
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17703
    sget v0, Lcom/facebook/ads/redexgen/X/85;->A0Q:I

    invoke-virtual {v3, v2, v2, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private A0A()V
    .locals 5

    .line 17704
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/85;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 17705
    .local p0, "orientation":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/LY;->A01:Landroid/util/DisplayMetrics;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 17706
    .local v0, "width":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/LY;->A01:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 17707
    .local v0, "height":I
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 17708
    sget v0, Lcom/facebook/ads/redexgen/X/85;->A0Q:I

    mul-int/lit8 v0, v0, 0x4

    sub-int v1, v4, v0

    div-int/lit8 v0, v2, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 17709
    .local v1, "childWidth":I
    sub-int/2addr v4, v3

    const/16 v2, 0x8

    div-int/2addr v4, v2

    .line 17710
    .local v0, "childSpacing":I
    mul-int/lit8 v1, v4, 0x4

    .line 17711
    .local v0, "extraSpacing":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A0K:Lcom/facebook/ads/redexgen/X/PK;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/PK;->setVisibility(I)V

    .line 17712
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A0L:Lcom/facebook/ads/redexgen/X/PK;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/PK;->setVisibility(I)V

    .line 17713
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A06:Lcom/facebook/ads/redexgen/X/2F;

    if-eqz v0, :cond_1

    .line 17714
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2F;->getFullscreenCarouselRecyclerViewAdapter()Lcom/facebook/ads/redexgen/X/Rg;

    move-result-object v0

    .line 17715
    .local v4, "adapter":Lcom/facebook/ads/redexgen/X/Rg;
    if-eqz v0, :cond_0

    .line 17716
    invoke-virtual {v0, v3, v4, v1}, Lcom/facebook/ads/redexgen/X/Rg;->A0F(III)V

    .line 17717
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4A;->A06()V

    .line 17718
    :cond_0
    :goto_1
    return-void

    .line 17719
    :cond_1
    const/16 v2, 0x3d

    const/16 v1, 0x11

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/85;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1c

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/85;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17720
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/85;->onDestroy()V

    goto :goto_1

    .line 17721
    .end local v1    # "childWidth":I
    .end local v0    # "extraSpacing":I
    .end local v0
    :cond_2
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 17722
    .restart local v1    # "childWidth":I
    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    .line 17723
    .restart local v0    # "extraSpacing":I
    move v1, v4

    .line 17724
    .restart local v0    # "extraSpacing":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/85;->A08()V

    goto :goto_0
.end method

.method public static A0B()V
    .locals 4

    const/16 v0, 0x81

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/85;->A0O:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/85;->A0O:[Ljava/lang/String;

    const-string v1, "0pXVmbGKHAzIVbBBK7Eyv6Mrdc2f0VIY"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/85;->A0N:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x5et
        -0x75t
        -0x75t
        -0x78t
        -0x75t
        0x39t
        0x7ct
        -0x75t
        0x7et
        0x7at
        -0x73t
        -0x7et
        -0x79t
        -0x80t
        0x39t
        0x7ct
        0x7at
        -0x75t
        -0x78t
        -0x72t
        -0x74t
        0x7et
        -0x7bt
        0x39t
        -0x71t
        -0x7et
        0x7et
        -0x70t
        0x59t
        -0x7at
        -0x7at
        -0x7dt
        -0x7at
        0x34t
        -0x75t
        0x7ct
        0x7dt
        -0x80t
        0x79t
        0x34t
        0x77t
        0x75t
        -0x7at
        -0x7dt
        -0x77t
        -0x79t
        0x79t
        -0x80t
        0x34t
        0x77t
        0x75t
        -0x7at
        0x78t
        0x34t
        0x77t
        0x7ct
        0x75t
        -0x7et
        0x7bt
        0x79t
        0x42t
        0x5bt
        0x57t
        0x56t
        -0x76t
        0x79t
        0x7et
        0x7at
        -0x7dt
        0x78t
        0x7at
        0x63t
        0x7at
        -0x77t
        -0x74t
        -0x7ct
        -0x79t
        -0x80t
        -0x61t
        -0x5et
        -0x63t
        -0x5et
        -0x61t
        -0x4et
        -0x61t
        -0x63t
        -0x60t
        -0x4dt
        -0x54t
        -0x5et
        -0x56t
        -0x5dt
        -0x21t
        -0x15t
        -0x17t
        -0x56t
        -0x1et
        -0x23t
        -0x21t
        -0x1ft
        -0x22t
        -0x15t
        -0x15t
        -0x19t
        -0x56t
        -0x23t
        -0x20t
        -0x11t
        -0x56t
        -0x1bt
        -0x16t
        -0x10t
        -0x1ft
        -0x12t
        -0x11t
        -0x10t
        -0x1bt
        -0x10t
        -0x1bt
        -0x23t
        -0x18t
        -0x56t
        -0x21t
        -0x18t
        -0x1bt
        -0x21t
        -0x19t
        -0x1ft
        -0x20t
    .end array-data
.end method

.method private final A0C()V
    .locals 4

    .line 17725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A06:Lcom/facebook/ads/redexgen/X/2F;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 17726
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2F;->removeAllViews()V

    .line 17727
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/85;->A06:Lcom/facebook/ads/redexgen/X/2F;

    .line 17728
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A08:Lcom/facebook/ads/redexgen/X/O9;

    if-eqz v0, :cond_1

    .line 17729
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O9;->removeAllViews()V

    .line 17730
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/85;->A08:Lcom/facebook/ads/redexgen/X/O9;

    .line 17731
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/85;->A03:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/facebook/ads/redexgen/X/85;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/85;->A0O:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 17732
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 17733
    :cond_3
    return-void
.end method

.method private final A0D(ILandroid/os/Bundle;)V
    .locals 21
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17734
    move-object/from16 v0, p0

    const/4 v6, 0x1

    const/4 v4, 0x0

    move/from16 v2, p1

    if-ne v2, v6, :cond_6

    const/4 v9, 0x1

    .line 17735
    .local v1, "isPortrait":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/85;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/85;->A03:Landroid/widget/RelativeLayout;

    .line 17736
    new-instance v10, Lcom/facebook/ads/redexgen/X/SV;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/85;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    const/4 v12, 0x0

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/85;->A0D:Ljava/util/List;

    .line 17737
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/PE;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/PE;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1G;->A00()Lcom/facebook/ads/redexgen/X/1E;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/1E;->A05:Lcom/facebook/ads/redexgen/X/1E;

    if-ne v3, v1, :cond_5

    const/4 v13, 0x1

    :goto_1
    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/85;->A0F:Lcom/facebook/ads/redexgen/X/1I;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/T4;->A08:Lcom/facebook/ads/redexgen/X/cj;

    .line 17738
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1J;->A06()Z

    move-result v15

    .line 17739
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/T4;->getAdEventManager()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v17

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/85;->A0I:Lcom/facebook/ads/redexgen/X/MU;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/85;->A0B:Lcom/facebook/ads/redexgen/X/QZ;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/85;->A0H:Lcom/facebook/ads/redexgen/X/Lz;

    const/16 v8, 0x5c

    const/16 v3, 0x25

    const/16 v1, 0x6e

    invoke-static {v8, v3, v1}, Lcom/facebook/ads/redexgen/X/85;->A06(III)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v20, v4

    move-object/from16 v18, v7

    move-object/from16 v19, v5

    invoke-direct/range {v10 .. v20}, Lcom/facebook/ads/redexgen/X/SV;-><init>(Lcom/facebook/ads/redexgen/X/XT;IZLcom/facebook/ads/redexgen/X/1I;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;)V

    iput-object v10, v0, Lcom/facebook/ads/redexgen/X/85;->A07:Lcom/facebook/ads/redexgen/X/Nx;

    .line 17740
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/85;->A07:Lcom/facebook/ads/redexgen/X/Nx;

    .line 17741
    if-eqz v9, :cond_4

    const/4 v1, 0x1

    .line 17742
    :goto_2
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/Nx;->A0A(I)V

    .line 17743
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/85;->A03:Landroid/widget/RelativeLayout;

    const/4 v5, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17744
    new-instance v1, Lcom/facebook/ads/redexgen/X/Rf;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Rf;-><init>(Lcom/facebook/ads/redexgen/X/85;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/85;->A0A:Lcom/facebook/ads/redexgen/X/QY;

    .line 17745
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/85;->A0A:Lcom/facebook/ads/redexgen/X/QY;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/85;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v1, Lcom/facebook/ads/redexgen/X/QZ;

    invoke-direct {v1, v0, v6, v4, v3}, Lcom/facebook/ads/redexgen/X/QZ;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/85;->A0B:Lcom/facebook/ads/redexgen/X/QZ;

    .line 17746
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/85;->A0B:Lcom/facebook/ads/redexgen/X/QZ;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/85;->A01:I

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/QZ;->A0W(I)V

    .line 17747
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/85;->A0B:Lcom/facebook/ads/redexgen/X/QZ;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/85;->A02:I

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/QZ;->A0X(I)V

    .line 17748
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/85;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v1, Lcom/facebook/ads/redexgen/X/2F;

    invoke-direct {v1, v3}, Lcom/facebook/ads/redexgen/X/2F;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/85;->A06:Lcom/facebook/ads/redexgen/X/2F;

    .line 17749
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/85;->A06:Lcom/facebook/ads/redexgen/X/2F;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 17750
    const/4 v3, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17751
    .local v12, "recyclerViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17752
    new-instance v3, Lcom/facebook/ads/redexgen/X/Rh;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/85;->A06:Lcom/facebook/ads/redexgen/X/2F;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/85;->A0D:Ljava/util/List;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/85;->A0B:Lcom/facebook/ads/redexgen/X/QZ;

    move v5, v2

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Rh;-><init>(Lcom/facebook/ads/redexgen/X/2F;ILjava/util/List;Lcom/facebook/ads/redexgen/X/QZ;Landroid/os/Bundle;)V

    iput-object v3, v0, Lcom/facebook/ads/redexgen/X/85;->A09:Lcom/facebook/ads/redexgen/X/Rh;

    .line 17753
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/85;->A0C:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 17754
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/85;->A06:Lcom/facebook/ads/redexgen/X/2F;

    new-instance v4, Lcom/facebook/ads/redexgen/X/Rg;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/85;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/85;->A0D:Ljava/util/List;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/85;->A04:Lcom/facebook/ads/redexgen/X/cj;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/T4;->A0A:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/85;->A05:Lcom/facebook/ads/redexgen/X/7J;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/85;->A0B:Lcom/facebook/ads/redexgen/X/QZ;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/85;->A0H:Lcom/facebook/ads/redexgen/X/Lz;

    .line 17755
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/T4;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/MU;

    move-result-object v12

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/85;->A0C:Ljava/lang/String;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/85;->A09:Lcom/facebook/ads/redexgen/X/Rh;

    iget-object v15, v0, Lcom/facebook/ads/redexgen/X/85;->A0M:Lcom/facebook/ads/redexgen/X/IS;

    invoke-direct/range {v4 .. v15}, Lcom/facebook/ads/redexgen/X/Rg;-><init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/util/List;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;Lcom/facebook/ads/redexgen/X/MU;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Rh;Lcom/facebook/ads/redexgen/X/IS;)V

    .line 17756
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Eq;->setAdapter(Lcom/facebook/ads/redexgen/X/4A;)V

    .line 17757
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/85;->A0A()V

    .line 17758
    :goto_3
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/85;->A09:Lcom/facebook/ads/redexgen/X/Rh;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/85;->A0F(Lcom/facebook/ads/redexgen/X/Rh;)V

    .line 17759
    const/4 v4, -0x1

    const/4 v3, -0x2

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17760
    .local v2, "adDetailsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xc

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17761
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/85;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/JD;->A1D(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17762
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/85;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    .line 17763
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8J;->A09()Lcom/facebook/ads/redexgen/X/Jf;

    move-result-object v11

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/85;->A06:Lcom/facebook/ads/redexgen/X/2F;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/T4;->A08:Lcom/facebook/ads/redexgen/X/cj;

    .line 17764
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    sget-object v4, Lcom/facebook/ads/redexgen/X/85;->A0O:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0x11

    if-eq v4, v3, :cond_7

    sget-object v7, Lcom/facebook/ads/redexgen/X/85;->A0O:[Ljava/lang/String;

    const-string v4, ""

    const/4 v3, 0x5

    aput-object v4, v7, v3

    invoke-interface {v11, v10, v9, v8}, Lcom/facebook/ads/redexgen/X/Jf;->AFC(Landroid/view/View;Ljava/lang/String;Z)V

    .line 17765
    :cond_0
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/85;->A03:Landroid/widget/RelativeLayout;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/85;->A06:Lcom/facebook/ads/redexgen/X/2F;

    invoke-virtual {v4, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17766
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/85;->A09()V

    .line 17767
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/85;->A03:Landroid/widget/RelativeLayout;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/85;->A08:Lcom/facebook/ads/redexgen/X/O9;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17768
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/85;->A07:Lcom/facebook/ads/redexgen/X/Nx;

    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/Nx;->setTitleMaxLines(I)V

    .line 17769
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/85;->A07:Lcom/facebook/ads/redexgen/X/Nx;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Nx;->A09()V

    .line 17770
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/85;->A07:Lcom/facebook/ads/redexgen/X/Nx;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Nx;->A08()V

    .line 17771
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/85;->A03:Landroid/widget/RelativeLayout;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/85;->A07:Lcom/facebook/ads/redexgen/X/Nx;

    invoke-virtual {v3, v1, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17772
    const/4 v1, -0x2

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17773
    .local v0, "leftArrowLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17774
    .local v2, "rightArrowLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x9

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17775
    const/16 v4, 0xf

    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17776
    sget v1, Lcom/facebook/ads/redexgen/X/85;->A0P:I

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 17777
    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 17778
    sget v3, Lcom/facebook/ads/redexgen/X/85;->A0Q:I

    const/4 v1, 0x0

    invoke-virtual {v7, v3, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17779
    const/16 v1, 0xb

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17780
    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17781
    sget v1, Lcom/facebook/ads/redexgen/X/85;->A0P:I

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 17782
    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 17783
    sget v3, Lcom/facebook/ads/redexgen/X/85;->A0Q:I

    const/4 v1, 0x0

    invoke-virtual {v6, v1, v1, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17784
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/85;->A03:Landroid/widget/RelativeLayout;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/85;->A0K:Lcom/facebook/ads/redexgen/X/PK;

    invoke-virtual {v3, v1, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17785
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/85;->A03:Landroid/widget/RelativeLayout;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/85;->A0L:Lcom/facebook/ads/redexgen/X/PK;

    invoke-virtual {v3, v1, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17786
    const/4 v3, -0x1

    const/4 v1, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17787
    .local v6, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17788
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/85;->A03:Landroid/widget/RelativeLayout;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/85;->A0M:Lcom/facebook/ads/redexgen/X/IS;

    invoke-virtual {v3, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17789
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/85;->A03:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/T4;->A0U(Landroid/view/View;ZI)V

    .line 17790
    sget v1, Lcom/facebook/ads/redexgen/X/OH;->A00:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/85;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/85;->removeView(Landroid/view/View;)V

    .line 17791
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/85;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/JD;->A1s(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17792
    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 17793
    :goto_4
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/85;->A0C:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 17794
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/85;->A07:Lcom/facebook/ads/redexgen/X/Nx;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/85;->A04:Lcom/facebook/ads/redexgen/X/cj;

    .line 17795
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v3

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/85;->A04:Lcom/facebook/ads/redexgen/X/cj;

    .line 17796
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v4

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/85;->A0C:Ljava/lang/String;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/T4;->A08:Lcom/facebook/ads/redexgen/X/cj;

    .line 17797
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 17798
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Nx;->setInfo(Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/O0;)V

    .line 17799
    :cond_1
    return-void

    .line 17800
    :cond_2
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/85;->A0J:Lcom/facebook/ads/redexgen/X/ON;

    .line 17801
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v2

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/85;->A04:Lcom/facebook/ads/redexgen/X/cj;

    .line 17802
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v1

    .line 17803
    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/OH;->A00(Lcom/facebook/ads/redexgen/X/XT;Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_4

    .line 17804
    :cond_3
    const/16 v8, 0x3d

    const/16 v7, 0x11

    const/4 v6, 0x7

    sget-object v4, Lcom/facebook/ads/redexgen/X/85;->A0O:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v4, v4, v3

    const/16 v3, 0x11

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x50

    if-eq v4, v3, :cond_8

    sget-object v5, Lcom/facebook/ads/redexgen/X/85;->A0O:[Ljava/lang/String;

    const-string v4, ""

    const/4 v3, 0x5

    aput-object v4, v5, v3

    invoke-static {v8, v7, v6}, Lcom/facebook/ads/redexgen/X/85;->A06(III)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    const/16 v4, 0x1c

    const/16 v3, 0xb

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/85;->A06(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17805
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/85;->onDestroy()V

    goto/16 :goto_3

    .line 17806
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 17807
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 17808
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/cj;)V
    .locals 6

    .line 17809
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/85;->A04:Lcom/facebook/ads/redexgen/X/cj;

    .line 17810
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A04:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A0C:Ljava/lang/String;

    .line 17811
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A04:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0E()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/85;->A01:I

    .line 17812
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A04:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0F()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/85;->A02:I

    .line 17813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A04:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0X()Ljava/util/List;

    move-result-object v5

    .line 17814
    .local p0, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A0D:Ljava/util/List;

    .line 17815
    const/4 v4, 0x0

    .local p1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 17816
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/19;

    .line 17817
    .local v0, "adInfo":Lcom/facebook/ads/redexgen/X/19;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/85;->A0D:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/PE;

    invoke-direct {v0, v4, v1, v3}, Lcom/facebook/ads/redexgen/X/PE;-><init>(IILcom/facebook/ads/redexgen/X/19;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17818
    .end local v0    # "adInfo":Lcom/facebook/ads/redexgen/X/19;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 17819
    .end local p1    # "i":I
    :cond_0
    return-void
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/Rh;)V
    .locals 4

    .line 17820
    new-instance v1, Lcom/facebook/ads/redexgen/X/Et;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Et;-><init>()V

    .line 17821
    .local p0, "mSnapHelper":Lcom/facebook/ads/redexgen/X/bO;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A06:Lcom/facebook/ads/redexgen/X/2F;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bO;->A0G(Lcom/facebook/ads/redexgen/X/Eq;)V

    .line 17822
    new-instance v0, Lcom/facebook/ads/redexgen/X/Re;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Re;-><init>(Lcom/facebook/ads/redexgen/X/85;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Rh;->A0Z(Lcom/facebook/ads/redexgen/X/OV;)V

    .line 17823
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/85;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A05:Lcom/facebook/ads/redexgen/X/17;

    .line 17824
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/O9;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/O9;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1I;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A08:Lcom/facebook/ads/redexgen/X/O9;

    .line 17825
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A08:Lcom/facebook/ads/redexgen/X/O9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 17826
    sget v1, Lcom/facebook/ads/redexgen/X/85;->A0R:I

    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 17827
    .local p1, "positionDotsLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/85;->A0S:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 17828
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A08:Lcom/facebook/ads/redexgen/X/O9;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/O9;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17829
    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/85;I)V
    .locals 0

    .line 17830
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/85;->setUpLayoutForCardAtIndex(I)V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/85;Lcom/facebook/ads/redexgen/X/Lz;)V
    .locals 0

    .line 17831
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/T4;->setImpressionRecordingFlag(Lcom/facebook/ads/redexgen/X/Lz;)V

    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/85;)Z
    .locals 0

    .line 17832
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T4;->A0Z()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/85;)Z
    .locals 0

    .line 17833
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T4;->A0Y()Z

    move-result p0

    return p0
.end method

.method private setUpLayoutForCardAtIndex(I)V
    .locals 11

    .line 17897
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A08:Lcom/facebook/ads/redexgen/X/O9;

    if-eqz v0, :cond_0

    .line 17898
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/O9;->A00(I)V

    .line 17899
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A04:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/16;->A0L(I)Lcom/facebook/ads/redexgen/X/19;

    move-result-object v4

    .line 17900
    .local p0, "adInfo":Lcom/facebook/ads/redexgen/X/19;
    if-eqz v4, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/85;->A00:I

    if-eq v0, p1, :cond_3

    .line 17901
    iput p1, p0, Lcom/facebook/ads/redexgen/X/85;->A00:I

    .line 17902
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/85;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    .line 17903
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/85;->A08()V

    .line 17904
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/OH;->A00:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/85;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/85;->removeView(Landroid/view/View;)V

    .line 17905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17906
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 17907
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A0C:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/85;->A07:Lcom/facebook/ads/redexgen/X/Nx;

    sget-object v1, Lcom/facebook/ads/redexgen/X/85;->A0O:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/85;->A0O:[Ljava/lang/String;

    const-string v1, "kFih28rpO37RepskuaJrvvoNb65qRIkh"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v5, :cond_5

    .line 17908
    :cond_2
    const/16 v2, 0x3d

    const/16 v1, 0x11

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/85;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1c

    const/16 v1, 0x21

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/85;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17909
    :goto_1
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 17910
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/85;->A0M:Lcom/facebook/ads/redexgen/X/IS;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IS;->setVisibility(I)V

    .line 17911
    :cond_3
    :goto_2
    return-void

    .line 17912
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/85;->A0M:Lcom/facebook/ads/redexgen/X/IS;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IS;->setVisibility(I)V

    goto :goto_2

    .line 17913
    :cond_5
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v6

    .line 17914
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/85;->A0C:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A08:Lcom/facebook/ads/redexgen/X/cj;

    .line 17915
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 17916
    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Nx;->setInfo(Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/O0;)V

    goto :goto_1

    .line 17917
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A0J:Lcom/facebook/ads/redexgen/X/ON;

    .line 17918
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v1

    .line 17919
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v0

    .line 17920
    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/OH;->A00(Lcom/facebook/ads/redexgen/X/XT;Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0a()Z
    .locals 1

    .line 17834
    const/4 v0, 0x0

    return v0
.end method

.method public final A8e(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/52;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17835
    const/16 v2, 0x4e

    const/16 v1, 0xe

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/85;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/cj;

    .line 17836
    .local p0, "dataBundle":Lcom/facebook/ads/redexgen/X/cj;
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/T4;->A0V(Lcom/facebook/ads/redexgen/X/52;)V

    .line 17837
    if-eqz v0, :cond_0

    .line 17838
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/85;->A0E(Lcom/facebook/ads/redexgen/X/cj;)V

    .line 17839
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/52;->A0H()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 17840
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/85;->A0D(ILandroid/os/Bundle;)V

    .line 17841
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rd;

    invoke-direct {v0, p0, p3}, Lcom/facebook/ads/redexgen/X/Rd;-><init>(Lcom/facebook/ads/redexgen/X/85;Lcom/facebook/ads/redexgen/X/52;)V

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/52;->A0K(Lcom/facebook/ads/redexgen/X/50;)V

    .line 17842
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A08:Lcom/facebook/ads/redexgen/X/cj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A03()I

    move-result v0

    .line 17843
    .local p1, "unskippableSec":I
    if-lez v0, :cond_1

    .line 17844
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/T4;->A0T(I)V

    .line 17845
    :cond_1
    return-void
.end method

.method public final ABU(Z)V
    .locals 1

    .line 17846
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/T4;->ABU(Z)V

    .line 17847
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A09:Lcom/facebook/ads/redexgen/X/Rh;

    if-eqz v0, :cond_0

    .line 17848
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rh;->A0Q()V

    .line 17849
    :cond_0
    return-void
.end method

.method public final ABt(Z)V
    .locals 1

    .line 17850
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/T4;->ABt(Z)V

    .line 17851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A09:Lcom/facebook/ads/redexgen/X/Rh;

    if-eqz v0, :cond_0

    .line 17852
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rh;->A0R()V

    .line 17853
    :cond_0
    return-void
.end method

.method public final ACD(Lcom/facebook/ads/redexgen/X/PI;)V
    .locals 4

    .line 17854
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A06:Lcom/facebook/ads/redexgen/X/2F;

    if-eqz v0, :cond_0

    .line 17855
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2F;->getLayoutManager()Lcom/facebook/ads/redexgen/X/be;

    move-result-object v3

    .line 17856
    .local p0, "layoutManager":Lcom/facebook/ads/redexgen/X/4M;
    sget-object v0, Lcom/facebook/ads/redexgen/X/PI;->A03:Lcom/facebook/ads/redexgen/X/PI;

    if-ne p1, v0, :cond_2

    .line 17857
    iget v0, p0, Lcom/facebook/ads/redexgen/X/85;->A00:I

    if-gtz v0, :cond_1

    const/4 v2, 0x0

    .line 17858
    .local p1, "newPosition":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/85;->A06:Lcom/facebook/ads/redexgen/X/2F;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4b;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4b;-><init>()V

    invoke-virtual {v3, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/be;->A21(Lcom/facebook/ads/redexgen/X/Eq;Lcom/facebook/ads/redexgen/X/4b;I)V

    .line 17859
    :goto_1
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/85;->setUpLayoutForCardAtIndex(I)V

    .line 17860
    .end local p0    # "layoutManager":Lcom/facebook/ads/redexgen/X/4M;
    .end local p1    # "newPosition":I
    :cond_0
    return-void

    .line 17861
    :cond_1
    add-int/lit8 v2, v0, -0x1

    goto :goto_0

    .line 17862
    .end local p1
    :cond_2
    iget v2, p0, Lcom/facebook/ads/redexgen/X/85;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/85;->A0E:I

    add-int/lit8 v0, v1, -0x1

    if-lt v2, v0, :cond_3

    add-int/lit8 v2, v1, -0x1

    .line 17863
    .restart local p1    # "newPosition":I
    :goto_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/85;->A06:Lcom/facebook/ads/redexgen/X/2F;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4b;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4b;-><init>()V

    invoke-virtual {v3, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/be;->A21(Lcom/facebook/ads/redexgen/X/Eq;Lcom/facebook/ads/redexgen/X/4b;I)V

    goto :goto_1

    .line 17864
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public final AE6(Landroid/os/Bundle;)V
    .locals 1

    .line 17865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A09:Lcom/facebook/ads/redexgen/X/Rh;

    if-eqz v0, :cond_0

    .line 17866
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Rh;->A0X(Landroid/os/Bundle;)V

    .line 17867
    :cond_0
    return-void
.end method

.method public getCloseButtonStyle()I
    .locals 1
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation

    .line 17868
    const/4 v0, 0x0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 17869
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17870
    .local p0, "savedInstanceState":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/85;->AE6(Landroid/os/Bundle;)V

    .line 17871
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/T4;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 17872
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/85;->A0A()V

    .line 17873
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/85;->A06:Lcom/facebook/ads/redexgen/X/2F;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A09:Lcom/facebook/ads/redexgen/X/Rh;

    if-eqz v0, :cond_0

    .line 17874
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/2F;->getLayoutManager()Lcom/facebook/ads/redexgen/X/be;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/85;->A00:I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/be;->A1t(I)V

    .line 17875
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/85;->A09:Lcom/facebook/ads/redexgen/X/Rh;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/85;->A00:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rh;->A0U(I)V

    .line 17876
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/85;->A09()V

    .line 17877
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/85;->A07:Lcom/facebook/ads/redexgen/X/Nx;

    if-eqz v1, :cond_1

    .line 17878
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nx;->A0A(I)V

    .line 17879
    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 17880
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/T4;->onDestroy()V

    .line 17881
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17882
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A0G:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A09()Lcom/facebook/ads/redexgen/X/Jf;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/85;->A0O:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/85;->A0O:[Ljava/lang/String;

    const-string v1, "nCvA44nJ0TVVJ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A06:Lcom/facebook/ads/redexgen/X/2F;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Jf;->AF3(Landroid/view/View;)V

    .line 17883
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A0C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17884
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/T4;->A0A:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/85;->A0C:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Nu;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Nu;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A0B:Lcom/facebook/ads/redexgen/X/QZ;

    .line 17885
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A03(Lcom/facebook/ads/redexgen/X/QZ;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A0H:Lcom/facebook/ads/redexgen/X/Lz;

    .line 17886
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A02(Lcom/facebook/ads/redexgen/X/Lz;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v0

    .line 17887
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nu;->A05()Ljava/util/Map;

    move-result-object v0

    .line 17888
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JT;->A8n(Ljava/lang/String;Ljava/util/Map;)V

    .line 17889
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/85;->A0C()V

    .line 17890
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A0B:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0V()V

    .line 17891
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A0B:Lcom/facebook/ads/redexgen/X/QZ;

    .line 17892
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A0A:Lcom/facebook/ads/redexgen/X/QY;

    .line 17893
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A0D:Ljava/util/List;

    .line 17894
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 17895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/85;->A0H:Lcom/facebook/ads/redexgen/X/Lz;

    invoke-virtual {v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/Lz;->A06(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 17896
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/T4;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
