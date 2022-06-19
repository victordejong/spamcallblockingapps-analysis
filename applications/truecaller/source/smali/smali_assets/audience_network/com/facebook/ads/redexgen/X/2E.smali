.class public final Lcom/facebook/ads/redexgen/X/2E;
.super Lcom/facebook/ads/redexgen/X/9v;
.source ""


# static fields
.field public static final A06:I

.field public static final A07:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/SZ;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/PE;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/JT;

.field public final A03:Lcom/facebook/ads/redexgen/X/Tj;

.field public final A04:Lcom/facebook/ads/redexgen/X/A1;

.field public final A05:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 4972
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, -0x3f800000    # -4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/2E;->A07:I

    .line 4973
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/2E;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ON;Lcom/facebook/ads/redexgen/X/Tj;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/A1;)V
    .locals 1

    .line 4974
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/9v;-><init>(Lcom/facebook/ads/redexgen/X/ON;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/Rh;)V

    .line 4975
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2E;->A03:Lcom/facebook/ads/redexgen/X/Tj;

    .line 4976
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/2E;->A05:Ljava/lang/String;

    .line 4977
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/2E;->A04:Lcom/facebook/ads/redexgen/X/A1;

    .line 4978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0I:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A08()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A02:Lcom/facebook/ads/redexgen/X/JT;

    .line 4979
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A03:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Tj;->A1J(Landroid/view/View;)V

    .line 4980
    return-void
.end method


# virtual methods
.method public setupNativeCtaExtension(Lcom/facebook/ads/redexgen/X/PE;)V
    .locals 11

    .line 4981
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2E;->A01:Lcom/facebook/ads/redexgen/X/PE;

    .line 4982
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0I:Lcom/facebook/ads/redexgen/X/ON;

    .line 4983
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A0K(Landroid/content/Context;)I

    move-result v1

    .line 4984
    .local p0, "extensionVariant":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A03:Lcom/facebook/ads/redexgen/X/Tj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0y()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0J()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v6

    .line 4985
    .local p1, "colorInfo":Lcom/facebook/ads/redexgen/X/1I;
    new-instance v3, Lcom/facebook/ads/redexgen/X/SZ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0I:Lcom/facebook/ads/redexgen/X/ON;

    .line 4986
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A03:Lcom/facebook/ads/redexgen/X/Tj;

    .line 4987
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0y()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0P()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/2E;->A02:Lcom/facebook/ads/redexgen/X/JT;

    .line 4988
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ni;->getDummyListener()Lcom/facebook/ads/redexgen/X/MU;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A04:Lcom/facebook/ads/redexgen/X/A1;

    .line 4989
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/A1;->A0c()Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A03:Lcom/facebook/ads/redexgen/X/Tj;

    .line 4990
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A17()Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v10

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/SZ;-><init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/2E;->A00:Lcom/facebook/ads/redexgen/X/SZ;

    .line 4991
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/2E;->A00:Lcom/facebook/ads/redexgen/X/SZ;

    .line 4992
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PE;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2E;->A05:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4993
    invoke-virtual {v4, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/SZ;->setCta(Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/util/Map;)V

    .line 4994
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2E;->A03:Lcom/facebook/ads/redexgen/X/Tj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A00:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Tj;->A1J(Landroid/view/View;)V

    .line 4995
    const/4 v2, -0x1

    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4996
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, 0x0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 4997
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4998
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2E;->A00:Lcom/facebook/ads/redexgen/X/SZ;

    sget v2, Lcom/facebook/ads/redexgen/X/2E;->A06:I

    const/4 v1, 0x5

    .line 4999
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/1I;->A09(Z)I

    move-result v0

    .line 5000
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0P(Landroid/view/View;III)V

    .line 5001
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A00:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5002
    :cond_0
    :goto_0
    return-void

    .line 5003
    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 5004
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5005
    sget v0, Lcom/facebook/ads/redexgen/X/2E;->A07:I

    invoke-virtual {v4, v5, v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 5006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A00:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {p0, v0, v5, v4}, Lcom/facebook/ads/redexgen/X/2E;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    goto :goto_0
.end method
