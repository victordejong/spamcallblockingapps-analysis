.class public final Lcom/facebook/ads/redexgen/X/OG;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static A03:[Ljava/lang/String;

.field public static final A04:F

.field public static final A05:I

.field public static final A06:I


# instance fields
.field public final A00:Landroid/widget/TextView;

.field public final A01:Landroid/widget/TextView;

.field public final A02:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "lF8IVPZcS3mZAefsIaNZ6E9xMmjOqdH7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "idkW2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HbWJiF6R60B06srsOI5ot4Pv3KsUxfPN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7f3O1w3Qg3dv0DYXPvEPDd2nNc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nnNATfNTHr6hSEkqMWy2MP3i9vksRg0T"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pai30RxYeYeDatKriEp6xPPXjxDmZE6E"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MhBAxeK5XElhMNsb"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "N4hTYih9SgQSzhMEA04rsaAJRIerHLwS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/OG;->A03:[Ljava/lang/String;

    .line 46936
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/facebook/ads/redexgen/X/OG;->A04:F

    .line 46937
    sget v1, Lcom/facebook/ads/redexgen/X/OG;->A04:F

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/OG;->A06:I

    .line 46938
    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/OG;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1I;ZIII)V
    .locals 5

    .line 46939
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46940
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/OG;->setOrientation(I)V

    .line 46941
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OG;->A02:Landroid/widget/TextView;

    .line 46942
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OG;->A02:Landroid/widget/TextView;

    invoke-static {v0, v1, p4}, Lcom/facebook/ads/redexgen/X/M5;->A0X(Landroid/widget/TextView;ZI)V

    .line 46943
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OG;->A02:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 46944
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OG;->A02:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/redexgen/X/OG;->A06:I

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 46945
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OG;->A01:Landroid/widget/TextView;

    .line 46946
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OG;->A00:Landroid/widget/TextView;

    .line 46947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OG;->A00:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v0, v4, p5}, Lcom/facebook/ads/redexgen/X/M5;->A0X(Landroid/widget/TextView;ZI)V

    .line 46948
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OG;->A00:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 46949
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OG;->A00:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/redexgen/X/OG;->A06:I

    int-to-float v0, v0

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 46950
    const/4 v3, -0x2

    const/4 v2, -0x1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46951
    .local p0, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OG;->A02:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/OG;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46952
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46953
    .local p4, "sponsoredLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OG;->A01:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/OG;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46954
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OG;->A01:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46955
    invoke-virtual {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/OG;->A00(Lcom/facebook/ads/redexgen/X/1I;Z)V

    .line 46956
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46957
    .local p2, "descriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v4, p6, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 46958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OG;->A00:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/OG;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46959
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1I;ZZZ)V
    .locals 7

    .line 46960
    if-eqz p4, :cond_2

    const/16 v4, 0x12

    .line 46961
    :goto_0
    if-eqz p4, :cond_1

    const/16 v5, 0xe

    .line 46962
    :goto_1
    sget v6, Lcom/facebook/ads/redexgen/X/OG;->A05:I

    if-eqz p5, :cond_0

    div-int/lit8 v6, v6, 0x2

    .line 46963
    :cond_0
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/OG;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1I;ZIII)V

    .line 46964
    return-void

    .line 46965
    :cond_1
    const/16 v5, 0x10

    goto :goto_1

    .line 46966
    :cond_2
    const/16 v4, 0x16

    goto :goto_0
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/1I;Z)V
    .locals 2

    .line 46967
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OG;->A02:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/1I;->A06(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46968
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OG;->A01:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/1I;->A04(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46969
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OG;->A00:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/1I;->A05(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46970
    return-void
.end method

.method public final A01(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46971
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v3, 0x1

    xor-int/2addr v5, v3

    .line 46972
    .local p0, "isTitleValid":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v3

    .line 46973
    .local p2, "isDesriptionValid":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OG;->A02:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46974
    if-eqz p3, :cond_0

    .line 46975
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OG;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46976
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OG;->A00:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    :goto_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/OG;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    const-string p2, ""

    goto :goto_1

    .line 46977
    :cond_2
    move-object p1, p2

    goto :goto_0

    .line 46978
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/OG;->A03:[Ljava/lang/String;

    const-string v1, "cGsHRNQKRzUTXMDBZCyzngEN4Bg1pclE"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v1, 0x3

    if-eqz v5, :cond_4

    if-nez v4, :cond_7

    .line 46979
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OG;->A02:Landroid/widget/TextView;

    if-eqz p4, :cond_6

    const/4 v1, 0x2

    :cond_5
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 46980
    :goto_3
    return-void

    .line 46981
    :cond_6
    if-eqz p5, :cond_5

    const/4 v1, 0x4

    goto :goto_2

    .line 46982
    :cond_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OG;->A02:Landroid/widget/TextView;

    if-eqz p4, :cond_a

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 46983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OG;->A00:Landroid/widget/TextView;

    if-eqz p4, :cond_8

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_3

    :cond_8
    if-eqz p5, :cond_9

    const/4 v3, 0x3

    goto :goto_5

    :cond_9
    const/4 v3, 0x2

    goto :goto_5

    .line 46984
    :cond_a
    const/4 v0, 0x2

    goto :goto_4
.end method

.method public getDescriptionTextView()Landroid/widget/TextView;
    .locals 1

    .line 46985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OG;->A00:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 46986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OG;->A02:Landroid/widget/TextView;

    return-object v0
.end method

.method public setAlignment(I)V
    .locals 1

    .line 46987
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OG;->A02:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 46988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OG;->A00:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 46989
    return-void
.end method

.method public setDescriptionVisibility(I)V
    .locals 1

    .line 46990
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OG;->A00:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46991
    return-void
.end method
