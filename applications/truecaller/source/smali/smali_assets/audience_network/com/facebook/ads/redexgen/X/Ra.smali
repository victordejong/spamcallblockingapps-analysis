.class public final Lcom/facebook/ads/redexgen/X/Ra;
.super Lcom/facebook/ads/redexgen/X/4e;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/QY;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/QZ;

.field public A02:Lcom/facebook/ads/redexgen/X/QZ;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A03:I

.field public final A04:Landroid/util/SparseBooleanArray;

.field public final A05:Lcom/facebook/ads/redexgen/X/XT;

.field public final A06:Lcom/facebook/ads/redexgen/X/9v;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9v;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/QZ;ILcom/facebook/ads/redexgen/X/XT;)V
    .locals 0

    .line 50824
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4e;-><init>(Landroid/view/View;)V

    .line 50825
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Ra;->A05:Lcom/facebook/ads/redexgen/X/XT;

    .line 50826
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ra;->A06:Lcom/facebook/ads/redexgen/X/9v;

    .line 50827
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ra;->A04:Landroid/util/SparseBooleanArray;

    .line 50828
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ra;->A01:Lcom/facebook/ads/redexgen/X/QZ;

    .line 50829
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Ra;->A03:I

    .line 50830
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Ra;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 50831
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ra;->A04:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Ra;)Lcom/facebook/ads/redexgen/X/QZ;
    .locals 0

    .line 50832
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ra;->A01:Lcom/facebook/ads/redexgen/X/QZ;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Ra;)Lcom/facebook/ads/redexgen/X/QZ;
    .locals 0

    .line 50833
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ra;->A02:Lcom/facebook/ads/redexgen/X/QZ;

    return-object p0
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Lz;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/PE;)V
    .locals 9

    .line 50834
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ra;->A04:Landroid/util/SparseBooleanArray;

    move-object v5, p4

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/PE;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50835
    return-void

    .line 50836
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ra;->A02:Lcom/facebook/ads/redexgen/X/QZ;

    if-eqz v0, :cond_1

    .line 50837
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0V()V

    .line 50838
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ra;->A02:Lcom/facebook/ads/redexgen/X/QZ;

    .line 50839
    :cond_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/PE;->A04()Ljava/util/Map;

    move-result-object v7

    .line 50840
    .local p0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/facebook/ads/redexgen/X/Rc;

    move-object v3, p0

    move-object v8, p2

    move-object v6, p1

    move-object v4, p3

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Rc;-><init>(Lcom/facebook/ads/redexgen/X/Ra;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/PE;Lcom/facebook/ads/redexgen/X/JT;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Lz;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Ra;->A00:Lcom/facebook/ads/redexgen/X/QY;

    .line 50841
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ra;->A06:Lcom/facebook/ads/redexgen/X/9v;

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ra;->A00:Lcom/facebook/ads/redexgen/X/QY;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ra;->A05:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QZ;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/QZ;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ra;->A02:Lcom/facebook/ads/redexgen/X/QZ;

    .line 50842
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ra;->A02:Lcom/facebook/ads/redexgen/X/QZ;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0Y(Z)V

    .line 50843
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ra;->A02:Lcom/facebook/ads/redexgen/X/QZ;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QZ;->A0W(I)V

    .line 50844
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ra;->A02:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QZ;->A0X(I)V

    .line 50845
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ra;->A06:Lcom/facebook/ads/redexgen/X/9v;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rb;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/Rb;-><init>(Lcom/facebook/ads/redexgen/X/Ra;Lcom/facebook/ads/redexgen/X/PE;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9v;->setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/OW;)V

    .line 50846
    return-void
.end method


# virtual methods
.method public final A0l(Lcom/facebook/ads/redexgen/X/PE;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/Lz;Ljava/lang/String;III)V
    .locals 6

    .line 50847
    move-object v4, p0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PE;->A02()I

    move-result v5

    .line 50848
    .local p2, "position":I
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Ra;->A06:Lcom/facebook/ads/redexgen/X/9v;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v0, -0x5f000010

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9v;->setTag(ILjava/lang/Object;)V

    .line 50849
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Ra;->A06:Lcom/facebook/ads/redexgen/X/9v;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SJ;->setupNativeCtaExtension(Lcom/facebook/ads/redexgen/X/PE;)V

    .line 50850
    const/4 v0, -0x2

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, p6, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 50851
    .local p3, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v5, :cond_2

    move v1, p8

    .line 50852
    .local p4, "leftMargin":I
    :goto_0
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Ra;->A03:I

    add-int/lit8 v0, v0, -0x1

    if-lt v5, v0, :cond_1

    .line 50853
    .local p6, "rightMargin":I
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0, p8, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 50854
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PE;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v5

    .line 50855
    .local p7, "imageUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PE;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v2

    .line 50856
    .local p8, "videoUrl":Ljava/lang/String;
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Ra;->A06:Lcom/facebook/ads/redexgen/X/9v;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9v;->setIsVideo(Z)V

    .line 50857
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Ra;->A06:Lcom/facebook/ads/redexgen/X/9v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9v;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50858
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Ra;->A06:Lcom/facebook/ads/redexgen/X/9v;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/9v;->setVideoPlaceholderUrl(Ljava/lang/String;)V

    .line 50859
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Ra;->A06:Lcom/facebook/ads/redexgen/X/9v;

    invoke-virtual {p3, v2}, Lcom/facebook/ads/redexgen/X/7J;->A0Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9v;->setVideoUrl(Ljava/lang/String;)V

    .line 50860
    :goto_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Ra;->A06:Lcom/facebook/ads/redexgen/X/9v;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/9v;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50861
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Ra;->A06:Lcom/facebook/ads/redexgen/X/9v;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PE;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9v;->A0j(Ljava/util/Map;)V

    .line 50862
    invoke-direct {p0, p2, p4, p5, p1}, Lcom/facebook/ads/redexgen/X/Ra;->A08(Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Lz;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/PE;)V

    .line 50863
    return-void

    .line 50864
    :cond_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Ra;->A06:Lcom/facebook/ads/redexgen/X/9v;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/9v;->setImageUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 50865
    :cond_1
    move p8, p7

    goto :goto_1

    .line 50866
    :cond_2
    move v1, p7

    goto :goto_0
.end method

.method public final A0m(Lcom/facebook/ads/redexgen/X/QZ;)V
    .locals 0

    .line 50867
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ra;->A01:Lcom/facebook/ads/redexgen/X/QZ;

    .line 50868
    return-void
.end method
