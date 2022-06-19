.class public final Lcom/facebook/ads/redexgen/X/8p;
.super Lcom/facebook/ads/redexgen/X/Rv;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/OJ;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Landroid/widget/ImageView;

.field public final A02:Lcom/facebook/ads/redexgen/X/50;

.field public final A03:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A04:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A05:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/MU;)V
    .locals 3

    .line 19352
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/Rv;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/MU;)V

    .line 19353
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ru;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ru;-><init>(Lcom/facebook/ads/redexgen/X/8p;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A02:Lcom/facebook/ads/redexgen/X/50;

    .line 19354
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19355
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19356
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19357
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8p;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A01:Landroid/widget/ImageView;

    .line 19358
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8p;->A01:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 19359
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8p;->A01:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 19360
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8p;->A01:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A03:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Sb;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XT;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 19361
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A00()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 19362
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A01()I

    move-result v0

    .line 19363
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A05(II)Lcom/facebook/ads/redexgen/X/Sb;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rt;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rt;-><init>(Lcom/facebook/ads/redexgen/X/8p;)V

    .line 19364
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A06(Lcom/facebook/ads/redexgen/X/Nt;)Lcom/facebook/ads/redexgen/X/Sb;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 19365
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A07(Ljava/lang/String;)V

    .line 19366
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/8p;)I
    .locals 0

    .line 19367
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->getCloseButtonStyle()I

    move-result p0

    return p0
.end method

.method private A01(I)Lcom/facebook/ads/redexgen/X/OJ;
    .locals 9

    .line 19368
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19369
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A01:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 19370
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/OM;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rv;->A03:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rv;->A04:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rv;->A08:Lcom/facebook/ads/redexgen/X/MU;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/8p;->A01:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Rv;->A0A:Lcom/facebook/ads/redexgen/X/QZ;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Rv;->A06:Lcom/facebook/ads/redexgen/X/Lz;

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/OM;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/16;Landroid/view/View;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A07:Lcom/facebook/ads/redexgen/X/MT;

    .line 19371
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MT;->getToolbarHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/OM;->A0E(I)Lcom/facebook/ads/redexgen/X/OM;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A07:Lcom/facebook/ads/redexgen/X/MT;

    .line 19372
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/OM;->A0H(Lcom/facebook/ads/redexgen/X/MT;)Lcom/facebook/ads/redexgen/X/OM;

    move-result-object v0

    .line 19373
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OM;->A0D(I)Lcom/facebook/ads/redexgen/X/OM;

    move-result-object v0

    .line 19374
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0J()Lcom/facebook/ads/redexgen/X/ON;

    move-result-object v2

    .line 19375
    .local p0, "params":Lcom/facebook/ads/redexgen/X/ON;
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OK;->A00(Lcom/facebook/ads/redexgen/X/ON;Landroid/os/Bundle;Z)Lcom/facebook/ads/redexgen/X/OJ;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/8p;)Lcom/facebook/ads/redexgen/X/OJ;
    .locals 0

    .line 19376
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8p;->A00:Lcom/facebook/ads/redexgen/X/OJ;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/8p;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 19377
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8p;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/8p;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 19378
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8p;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A05()V
    .locals 1

    .line 19379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19380
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rv;->A0P()V

    .line 19381
    :cond_0
    return-void
.end method

.method private A06(I)V
    .locals 5

    .line 19382
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A00:Lcom/facebook/ads/redexgen/X/OJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 19383
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/8p;->A01(I)Lcom/facebook/ads/redexgen/X/OJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A00:Lcom/facebook/ads/redexgen/X/OJ;

    .line 19384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A00:Lcom/facebook/ads/redexgen/X/OJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OJ;->getColors()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v4

    .line 19385
    .local p0, "colors":Lcom/facebook/ads/redexgen/X/1I;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A00:Lcom/facebook/ads/redexgen/X/OJ;

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 19386
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OJ;->A0c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A00:Lcom/facebook/ads/redexgen/X/OJ;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/SU;

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 19387
    .local p1, "fullScreenColors":Z
    :goto_0
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/1I;->A07(Z)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 19388
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rv;->A07:Lcom/facebook/ads/redexgen/X/MT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A00:Lcom/facebook/ads/redexgen/X/OJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OJ;->A0c()Z

    move-result v0

    invoke-virtual {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/MT;->A04(Lcom/facebook/ads/redexgen/X/1I;Z)V

    .line 19389
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8p;->A00:Lcom/facebook/ads/redexgen/X/OJ;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Rv;->A0D:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/8p;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 19390
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A00:Lcom/facebook/ads/redexgen/X/OJ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OJ;->A0c()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Rv;->setUpFullscreenMode(Z)V

    .line 19391
    return-void

    .line 19392
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 19393
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/8p;)V
    .locals 0

    .line 19394
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A05()V

    return-void
.end method

.method private getCloseButtonStyle()I
    .locals 1

    .line 19417
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A00:Lcom/facebook/ads/redexgen/X/OJ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OJ;->getCloseButtonStyle()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0Q()V
    .locals 3

    .line 19395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A00:Lcom/facebook/ads/redexgen/X/OJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0L(Landroid/view/View;)V

    .line 19396
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A07:Lcom/facebook/ads/redexgen/X/MT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0L(Landroid/view/View;)V

    .line 19397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19398
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->A05()V

    .line 19399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A03()I

    move-result v1

    .line 19400
    .local p0, "unskippableSeconds":I
    if-lez v1, :cond_1

    .line 19401
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A00:Lcom/facebook/ads/redexgen/X/OJ;

    if-eqz v0, :cond_0

    .line 19402
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OJ;->A0a()V

    .line 19403
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rs;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rs;-><init>(Lcom/facebook/ads/redexgen/X/8p;)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Rv;->A0R(ILcom/facebook/ads/redexgen/X/Kv;)V

    .line 19404
    :goto_0
    return-void

    .line 19405
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19406
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rv;->A07:Lcom/facebook/ads/redexgen/X/MT;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8p;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MT;->setToolbarActionMode(I)V

    goto :goto_0
.end method

.method public final A0S(Lcom/facebook/ads/redexgen/X/52;)V
    .locals 4

    .line 19407
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A02:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/52;->A0K(Lcom/facebook/ads/redexgen/X/50;)V

    .line 19408
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/52;->A0H()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 19409
    .local p0, "orientation":I
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8p;->A06(I)V

    .line 19410
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rv;->A07:Lcom/facebook/ads/redexgen/X/MT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A07:Lcom/facebook/ads/redexgen/X/MT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MT;->getToolbarHeight()I

    move-result v2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/8p;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19411
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A00:Lcom/facebook/ads/redexgen/X/OJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0H(Landroid/view/View;)V

    .line 19412
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A07:Lcom/facebook/ads/redexgen/X/MT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0H(Landroid/view/View;)V

    .line 19413
    return-void
.end method

.method public final A0T()Z
    .locals 2

    .line 19414
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A00:Lcom/facebook/ads/redexgen/X/OJ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/OJ;->A0d(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final ABU(Z)V
    .locals 0

    .line 19415
    return-void
.end method

.method public final ABt(Z)V
    .locals 0

    .line 19416
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 19418
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Rv;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 19419
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0M()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19420
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8p;->A06(I)V

    .line 19421
    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 19422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19423
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A09()Lcom/facebook/ads/redexgen/X/Jf;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A01:Landroid/widget/ImageView;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Jf;->AF3(Landroid/view/View;)V

    .line 19424
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8p;->A00:Lcom/facebook/ads/redexgen/X/OJ;

    if-eqz v0, :cond_1

    .line 19425
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OJ;->A0W()V

    .line 19426
    :cond_1
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Rv;->onDestroy()V

    .line 19427
    return-void
.end method
