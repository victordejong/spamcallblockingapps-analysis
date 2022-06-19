.class public final Lcom/facebook/ads/redexgen/X/Mo;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    }
.end annotation


# static fields
.field public static final A06:I

.field public static final A07:I


# instance fields
.field public A00:I

.field public A01:Z

.field public final A02:Landroid/widget/ImageView;

.field public final A03:Landroid/widget/LinearLayout;

.field public final A04:Landroid/widget/TextView;

.field public final A05:Lcom/facebook/ads/redexgen/X/O3;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 44820
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Mo;->A06:I

    .line 44821
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x42300000    # 44.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Mo;->A07:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;I)V
    .locals 3

    .line 44822
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44823
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Mo;->A01:Z

    .line 44824
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Mo;->A02:Landroid/widget/ImageView;

    .line 44825
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mo;->A02:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/ads/redexgen/X/Mo;->A06:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 44826
    new-instance v0, Lcom/facebook/ads/redexgen/X/O3;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/O3;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Mo;->A05:Lcom/facebook/ads/redexgen/X/O3;

    .line 44827
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mo;->A05:Lcom/facebook/ads/redexgen/X/O3;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/O3;->setProgress(F)V

    .line 44828
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mo;->A05:Lcom/facebook/ads/redexgen/X/O3;

    sget v0, Lcom/facebook/ads/redexgen/X/Mo;->A06:I

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/O3;->setPadding(IIII)V

    .line 44829
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Mo;->A04:Landroid/widget/TextView;

    .line 44830
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Mo;->setOrientation(I)V

    .line 44831
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Mo;->A03:Landroid/widget/LinearLayout;

    .line 44832
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Mo;->A00:I

    .line 44833
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Mo;->A00()V

    .line 44834
    return-void
.end method

.method private A00()V
    .locals 7

    .line 44835
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Mo;->A00:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Mo;->setToolbarActionMode(I)V

    .line 44836
    const/4 v4, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44837
    .local p0, "actionContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Mo;->setGravity(I)V

    .line 44838
    sget v0, Lcom/facebook/ads/redexgen/X/Mo;->A07:I

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44839
    .local v5, "actionIconParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Mo;->A04:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0X(Landroid/widget/TextView;ZI)V

    .line 44840
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mo;->A04:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44841
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mo;->A04:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44842
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mo;->A03:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mo;->A02:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44843
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mo;->A03:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mo;->A05:Lcom/facebook/ads/redexgen/X/O3;

    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44844
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mo;->A03:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/Mo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44845
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44846
    .local v0, "actionTextLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44847
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mo;->A04:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Mo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44848
    return-void
.end method

.method private A01()V
    .locals 4

    .line 44849
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mo;->A05:Lcom/facebook/ads/redexgen/X/O3;

    .line 44850
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Mo;->A00:I

    const/4 v3, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 44851
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Mo;->A01:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 44852
    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/O3;->setVisibility(I)V

    .line 44853
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mo;->A02:Landroid/widget/ImageView;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Mo;->A00:I

    if-ne v0, v2, :cond_0

    const/16 v3, 0x8

    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44854
    return-void

    .line 44855
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 44856
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public final A02()Z
    .locals 1

    .line 44857
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mo;->A04:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final A03()Z
    .locals 2

    .line 44858
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Mo;->A00:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 44859
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Mo;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44860
    return-void
.end method

.method public setColors(I)V
    .locals 2

    .line 44861
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mo;->A05:Lcom/facebook/ads/redexgen/X/O3;

    const/16 v0, 0x4d

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/2N;->A01(II)I

    move-result v0

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/O3;->A02(II)V

    .line 44862
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mo;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 44863
    return-void
.end method

.method public setInitialUnskippableSeconds(I)V
    .locals 1

    .line 44864
    if-lez p1, :cond_0

    .line 44865
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Mo;->setToolbarActionMode(I)V

    .line 44866
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 44867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mo;->A05:Lcom/facebook/ads/redexgen/X/O3;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/O3;->setProgressWithAnimation(F)V

    .line 44868
    return-void
.end method

.method public setProgressSpinnerInvisible(Z)V
    .locals 0

    .line 44869
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Mo;->A01:Z

    .line 44870
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Mo;->A01()V

    .line 44871
    return-void
.end method

.method public setToolbarActionMode(I)V
    .locals 3

    .line 44872
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Mo;->A00:I

    .line 44873
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Mo;->A01()V

    .line 44874
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Mo;->setVisibility(I)V

    .line 44875
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 44876
    sget-object v2, Lcom/facebook/ads/redexgen/X/MD;->A0F:Lcom/facebook/ads/redexgen/X/MD;

    .line 44877
    .local p0, "actionEncodedImage":Lcom/facebook/ads/redexgen/X/MD;
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mo;->A02:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/ME;->A01(Lcom/facebook/ads/redexgen/X/MD;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44878
    const/16 v1, 0x3ea

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mo;->A02:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0G(ILandroid/view/View;)V

    .line 44879
    return-void

    .line 44880
    .end local p0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/MD;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/MD;->A0F:Lcom/facebook/ads/redexgen/X/MD;

    .line 44881
    .restart local p0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/MD;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mo;->A02:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44882
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Mo;->setVisibility(I)V

    .line 44883
    goto :goto_0

    .line 44884
    .end local p0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/MD;
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/MD;->A0N:Lcom/facebook/ads/redexgen/X/MD;

    .line 44885
    .restart local p0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/MD;
    goto :goto_0

    .line 44886
    .end local p0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/MD;
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/MD;->A0U:Lcom/facebook/ads/redexgen/X/MD;

    .line 44887
    .restart local p0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/MD;
    goto :goto_0

    .line 44888
    .end local p0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/MD;
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/MD;->A0F:Lcom/facebook/ads/redexgen/X/MD;

    .line 44889
    .restart local p0    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/MD;
    goto :goto_0
.end method

.method public setToolbarMessage(Ljava/lang/String;)V
    .locals 2

    .line 44890
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mo;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44891
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mo;->A04:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44892
    return-void

    .line 44893
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setToolbarMessageEnabled(Z)V
    .locals 2

    .line 44894
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mo;->A04:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44895
    return-void

    .line 44896
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
