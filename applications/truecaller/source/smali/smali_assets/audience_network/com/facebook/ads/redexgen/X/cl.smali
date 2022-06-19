.class public abstract Lcom/facebook/ads/redexgen/X/cl;
.super Lcom/facebook/ads/redexgen/X/4A;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/15;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/4A<",
        "Lcom/facebook/ads/redexgen/X/TA;",
        ">;"
    }
.end annotation


# static fields
.field public static final A05:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/15;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Tj;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:I

.field public final A03:Lcom/facebook/ads/redexgen/X/XT;

.field public final A04:Lcom/facebook/ads/redexgen/X/QY;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 72075
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/cl;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/18;Ljava/util/List;Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/18;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Tj;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/XT;",
            ")V"
        }
    .end annotation

    .line 72076
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4A;-><init>()V

    .line 72077
    new-instance v0, Lcom/facebook/ads/redexgen/X/cn;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cn;-><init>(Lcom/facebook/ads/redexgen/X/cl;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cl;->A04:Lcom/facebook/ads/redexgen/X/QY;

    .line 72078
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/cl;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 72079
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/18;->getChildSpacing()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/cl;->A02:I

    .line 72080
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cl;->A01:Ljava/util/List;

    .line 72081
    return-void
.end method

.method private A04(I)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 4

    .line 72082
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 72083
    .local p0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, p0, Lcom/facebook/ads/redexgen/X/cl;->A02:I

    if-nez p1, :cond_0

    mul-int/lit8 v2, v2, 0x2

    .line 72084
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cl;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/cl;->A02:I

    mul-int/lit8 v1, v0, 0x2

    .line 72085
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 72086
    return-object v3

    .line 72087
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/cl;->A02:I

    goto :goto_0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/cl;)Lcom/facebook/ads/redexgen/X/15;
    .locals 0

    .line 72088
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cl;->A00:Lcom/facebook/ads/redexgen/X/15;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/cl;)Lcom/facebook/ads/redexgen/X/QY;
    .locals 0

    .line 72089
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cl;->A04:Lcom/facebook/ads/redexgen/X/QY;

    return-object p0
.end method


# virtual methods
.method public final A0D()I
    .locals 1

    .line 72090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cl;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic A0E(Lcom/facebook/ads/redexgen/X/4e;I)V
    .locals 0

    .line 72091
    check-cast p1, Lcom/facebook/ads/redexgen/X/TA;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/cl;->A0H(Lcom/facebook/ads/redexgen/X/TA;I)V

    return-void
.end method

.method public final A0F(Landroid/widget/ImageView;I)V
    .locals 4

    .line 72092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cl;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Tj;

    .line 72093
    .local p0, "childAd":Lcom/facebook/ads/redexgen/X/Tj;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tj;->A11()Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v2

    .line 72094
    .local p1, "coverImage":Lcom/facebook/ads/redexgen/X/Jr;
    if-eqz v2, :cond_0

    .line 72095
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cl;->A03:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sb;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Sb;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XT;)V

    .line 72096
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sb;->A04()Lcom/facebook/ads/redexgen/X/Sb;

    move-result-object v1

    .line 72097
    .local p2, "downloadImageTask":Lcom/facebook/ads/redexgen/X/Sb;
    new-instance v0, Lcom/facebook/ads/redexgen/X/cm;

    invoke-direct {v0, p0, p2, v3}, Lcom/facebook/ads/redexgen/X/cm;-><init>(Lcom/facebook/ads/redexgen/X/cl;ILcom/facebook/ads/redexgen/X/Tj;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A06(Lcom/facebook/ads/redexgen/X/Nt;)Lcom/facebook/ads/redexgen/X/Sb;

    .line 72098
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Jr;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A07(Ljava/lang/String;)V

    .line 72099
    .end local p2    # "downloadImageTask":Lcom/facebook/ads/redexgen/X/Sb;
    :cond_0
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/15;)V
    .locals 0

    .line 72100
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cl;->A00:Lcom/facebook/ads/redexgen/X/15;

    .line 72101
    return-void
.end method

.method public A0H(Lcom/facebook/ads/redexgen/X/TA;I)V
    .locals 2

    .line 72102
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/TA;->A0l()Lcom/facebook/ads/internal/api/AdNativeComponentView;

    move-result-object v1

    .line 72103
    .local p0, "cardView":Lcom/facebook/ads/internal/api/AdNativeComponentView;
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/cl;->A04(I)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72104
    return-void
.end method
