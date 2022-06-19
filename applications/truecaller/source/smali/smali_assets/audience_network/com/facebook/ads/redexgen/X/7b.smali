.class public final Lcom/facebook/ads/redexgen/X/7b;
.super Lcom/facebook/ads/redexgen/X/Mk;
.source ""


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Lcom/facebook/ads/redexgen/X/XT;

.field public final A02:Lcom/facebook/ads/redexgen/X/9P;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9P<",
            "Lcom/facebook/ads/redexgen/X/7v;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/9P;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9P<",
            "Lcom/facebook/ads/redexgen/X/Kr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "t7nWMgaAgPrF08nCpsue0KJ0bXYxildh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6KdtKMmtzfHYFwbGu3Z1Ir1zVfPvm0mZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4a3tRJ2Sc2HJRD7iGLBoGFg5dIAFXATk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UpueiF5Mlf4qFrRwKkN0oaj1wZcm2sVE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2I2trXzlQyfCpDc0SWIB9I9l1xDqUCt2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pVCp6f81Bxfp7pGgyLuO3QWY2ZOI1Rz7"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JWrnXr9CYPwxDsxVPLOhiB9OxQPOAEin"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "O346HS8RGmqKBjl58VTWQBGWIRLrpgc9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7b;->A04:[Ljava/lang/String;

    .line 17251
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 3

    .line 17252
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Mk;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 17253
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ib;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ib;-><init>(Lcom/facebook/ads/redexgen/X/7b;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7b;->A03:Lcom/facebook/ads/redexgen/X/9P;

    .line 17254
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ia;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ia;-><init>(Lcom/facebook/ads/redexgen/X/7b;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7b;->A02:Lcom/facebook/ads/redexgen/X/9P;

    .line 17255
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7b;->A01:Lcom/facebook/ads/redexgen/X/XT;

    .line 17256
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7b;->A00:Landroid/widget/ImageView;

    .line 17257
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7b;->A00:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 17258
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7b;->A00:Landroid/widget/ImageView;

    const/high16 v0, -0x1000000

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 17259
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7b;->A00:Landroid/widget/ImageView;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7b;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7b;->addView(Landroid/view/View;)V

    .line 17261
    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 17262
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A07()V

    .line 17263
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->getVideoView()Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17264
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->getVideoView()Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getEventBus()Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9P;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7b;->A03:Lcom/facebook/ads/redexgen/X/9P;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7b;->A02:Lcom/facebook/ads/redexgen/X/9P;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9O;->A03([Lcom/facebook/ads/redexgen/X/9P;)V

    .line 17265
    :cond_0
    return-void
.end method

.method public final A08()V
    .locals 4

    .line 17266
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->getVideoView()Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17267
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->getVideoView()Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getEventBus()Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9P;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7b;->A02:Lcom/facebook/ads/redexgen/X/9P;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7b;->A03:Lcom/facebook/ads/redexgen/X/9P;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9O;->A04([Lcom/facebook/ads/redexgen/X/9P;)V

    .line 17268
    :cond_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A08()V

    .line 17269
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 17270
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7b;->A00:Landroid/widget/ImageView;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 17271
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17272
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/7b;->setImage(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nt;)V

    .line 17273
    return-void
.end method

.method public setImage(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nt;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/Nt;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17274
    if-nez p1, :cond_0

    .line 17275
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7b;->setVisibility(I)V

    .line 17276
    return-void

    .line 17277
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7b;->setVisibility(I)V

    .line 17278
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7b;->A00:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7b;->A01:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sb;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Sb;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XT;)V

    .line 17279
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sb;->A04()Lcom/facebook/ads/redexgen/X/Sb;

    move-result-object v0

    .line 17280
    .local p0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/Sb;
    if-eqz p2, :cond_1

    .line 17281
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Sb;->A06(Lcom/facebook/ads/redexgen/X/Nt;)Lcom/facebook/ads/redexgen/X/Sb;

    .line 17282
    :cond_1
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Sb;->A07(Ljava/lang/String;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/7b;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 17283
    sget-object v2, Lcom/facebook/ads/redexgen/X/7b;->A04:[Ljava/lang/String;

    const-string v1, "kA5c9xFlh2VnhKEqDnwhhyQ6vC8xp51l"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "v6NK46wFN1tyoiPUrV3jpTAezqYTXUDI"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
