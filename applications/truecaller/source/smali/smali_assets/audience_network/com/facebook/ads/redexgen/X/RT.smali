.class public final Lcom/facebook/ads/redexgen/X/RT;
.super Lcom/facebook/ads/redexgen/X/4e;
.source ""


# static fields
.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/QY;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/QZ;

.field public A02:Lcom/facebook/ads/redexgen/X/QZ;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:Landroid/util/SparseBooleanArray;

.field public final A08:Lcom/facebook/ads/redexgen/X/XT;

.field public final A09:Lcom/facebook/ads/redexgen/X/9m;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "av2tITPhYKbVn20ukUfJR25ELbcgjHbj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MLeLe181lhP7dC21QqjxU1VDKV9lNkzJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XUmY4VBJ2tlJWKlPJ7YkBdCsKtcC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "bK6oHsXedskfaWsjnVeS6YyvP0sRA20b"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BhCeFQN4dHt9z3MLE3p7bnIzhrf86Cw8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mLW9T0fP2Q5Hob07hRXsv0QUH1fN4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pNzPXZ5fcby2PvmlRsfUzns43oHDF5Mi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3YktW7BrcDIc4Xw2f2zdWv5xFETbHIAE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/RT;->A0A:[Ljava/lang/String;

    .line 50701
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9m;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/QZ;IIIILcom/facebook/ads/redexgen/X/XT;)V
    .locals 0

    .line 50702
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4e;-><init>(Landroid/view/View;)V

    .line 50703
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/RT;->A08:Lcom/facebook/ads/redexgen/X/XT;

    .line 50704
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RT;->A09:Lcom/facebook/ads/redexgen/X/9m;

    .line 50705
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RT;->A07:Landroid/util/SparseBooleanArray;

    .line 50706
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/RT;->A01:Lcom/facebook/ads/redexgen/X/QZ;

    .line 50707
    iput p4, p0, Lcom/facebook/ads/redexgen/X/RT;->A03:I

    .line 50708
    iput p5, p0, Lcom/facebook/ads/redexgen/X/RT;->A04:I

    .line 50709
    iput p6, p0, Lcom/facebook/ads/redexgen/X/RT;->A05:I

    .line 50710
    iput p7, p0, Lcom/facebook/ads/redexgen/X/RT;->A06:I

    .line 50711
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/RT;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 50712
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/RT;->A07:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/RT;)Lcom/facebook/ads/redexgen/X/QZ;
    .locals 0

    .line 50713
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/RT;->A01:Lcom/facebook/ads/redexgen/X/QZ;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/RT;)Lcom/facebook/ads/redexgen/X/QZ;
    .locals 0

    .line 50714
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/RT;->A02:Lcom/facebook/ads/redexgen/X/QZ;

    return-object p0
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Lz;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/PE;)V
    .locals 9

    .line 50715
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RT;->A07:Landroid/util/SparseBooleanArray;

    move-object v5, p4

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/PE;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50716
    return-void

    .line 50717
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RT;->A02:Lcom/facebook/ads/redexgen/X/QZ;

    if-eqz v0, :cond_2

    .line 50718
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0V()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/RT;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 50719
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/RT;->A0A:[Ljava/lang/String;

    const-string v1, "iteeE4SnfkkyQnEAEqI0za4snrHpWaXy"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RT;->A02:Lcom/facebook/ads/redexgen/X/QZ;

    .line 50720
    :cond_2
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/PE;->A04()Ljava/util/Map;

    move-result-object v7

    .line 50721
    .local p0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/facebook/ads/redexgen/X/RV;

    move-object v3, p0

    move-object v8, p2

    move-object v6, p1

    move-object v4, p3

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/RV;-><init>(Lcom/facebook/ads/redexgen/X/RT;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/PE;Lcom/facebook/ads/redexgen/X/JT;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Lz;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/RT;->A00:Lcom/facebook/ads/redexgen/X/QY;

    .line 50722
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/RT;->A09:Lcom/facebook/ads/redexgen/X/9m;

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RT;->A00:Lcom/facebook/ads/redexgen/X/QY;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RT;->A08:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QZ;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/QZ;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RT;->A02:Lcom/facebook/ads/redexgen/X/QZ;

    .line 50723
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RT;->A02:Lcom/facebook/ads/redexgen/X/QZ;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0Y(Z)V

    .line 50724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RT;->A02:Lcom/facebook/ads/redexgen/X/QZ;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QZ;->A0W(I)V

    .line 50725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RT;->A02:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QZ;->A0X(I)V

    .line 50726
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RT;->A09:Lcom/facebook/ads/redexgen/X/9m;

    new-instance v0, Lcom/facebook/ads/redexgen/X/RU;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/RU;-><init>(Lcom/facebook/ads/redexgen/X/RT;Lcom/facebook/ads/redexgen/X/PE;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9m;->setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/OW;)V

    .line 50727
    return-void
.end method


# virtual methods
.method public final A0l(Lcom/facebook/ads/redexgen/X/PE;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/Lz;Ljava/lang/String;)V
    .locals 5

    .line 50728
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PE;->A02()I

    move-result v4

    .line 50729
    .local p0, "position":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RT;->A09:Lcom/facebook/ads/redexgen/X/9m;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v0, -0x5f000010

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9m;->setTag(ILjava/lang/Object;)V

    .line 50730
    iget v1, p0, Lcom/facebook/ads/redexgen/X/RT;->A03:I

    const/4 v0, -0x2

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 50731
    .local p1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v4, :cond_2

    iget v3, p0, Lcom/facebook/ads/redexgen/X/RT;->A04:I

    .line 50732
    .local p2, "leftMargin":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/RT;->A06:I

    add-int/lit8 v0, v0, -0x1

    if-lt v4, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/RT;->A04:I

    .line 50733
    .local p3, "rightMargin":I
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 50734
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PE;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v4

    .line 50735
    .local p4, "imageUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PE;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v3

    .line 50736
    .local p5, "videoUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RT;->A09:Lcom/facebook/ads/redexgen/X/9m;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9m;->setIsVideo(Z)V

    .line 50737
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RT;->A09:Lcom/facebook/ads/redexgen/X/9m;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9m;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RT;->A09:Lcom/facebook/ads/redexgen/X/9m;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/9m;->setVideoPlaceholderUrl(Ljava/lang/String;)V

    .line 50739
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RT;->A09:Lcom/facebook/ads/redexgen/X/9m;

    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/7J;->A0Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9m;->setVideoUrl(Ljava/lang/String;)V

    .line 50740
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RT;->A09:Lcom/facebook/ads/redexgen/X/9m;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/9m;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50741
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RT;->A09:Lcom/facebook/ads/redexgen/X/9m;

    .line 50742
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PE;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A06()Ljava/lang/String;

    move-result-object v1

    .line 50743
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PE;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A01()Ljava/lang/String;

    move-result-object v0

    .line 50744
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9m;->setAdTitleAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 50745
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RT;->A09:Lcom/facebook/ads/redexgen/X/9m;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PE;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PE;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9m;->setCTAInfo(Lcom/facebook/ads/redexgen/X/1J;Ljava/util/Map;)V

    .line 50746
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RT;->A09:Lcom/facebook/ads/redexgen/X/9m;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PE;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9m;->A0k(Ljava/util/Map;)V

    .line 50747
    invoke-direct {p0, p2, p4, p5, p1}, Lcom/facebook/ads/redexgen/X/RT;->A08(Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Lz;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/PE;)V

    .line 50748
    return-void

    .line 50749
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RT;->A09:Lcom/facebook/ads/redexgen/X/9m;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/9m;->setImageUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 50750
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/RT;->A05:I

    goto/16 :goto_1

    .line 50751
    :cond_2
    iget v3, p0, Lcom/facebook/ads/redexgen/X/RT;->A05:I

    goto/16 :goto_0
.end method
