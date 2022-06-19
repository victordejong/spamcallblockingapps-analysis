.class public final Lcom/facebook/ads/redexgen/X/PG;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final A07:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/A8;

.field public A01:Lcom/facebook/ads/redexgen/X/7x;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/Ij;

.field public A03:Lcom/facebook/ads/redexgen/X/7b;

.field public A04:Lcom/facebook/ads/redexgen/X/6e;

.field public final A05:Lcom/facebook/ads/redexgen/X/XT;

.field public final A06:Lcom/facebook/ads/redexgen/X/Jb;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 48346
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/PG;->A07:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/Jb;)V
    .locals 0

    .line 48347
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48348
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/PG;->A06:Lcom/facebook/ads/redexgen/X/Jb;

    .line 48349
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PG;->A05:Lcom/facebook/ads/redexgen/X/XT;

    .line 48350
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/PG;->setUpView(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 48351
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/PG;)Lcom/facebook/ads/redexgen/X/6e;
    .locals 0

    .line 48352
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PG;->A04:Lcom/facebook/ads/redexgen/X/6e;

    return-object p0
.end method

.method private setUpPlugins(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 5

    .line 48371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A00:Lcom/facebook/ads/redexgen/X/A8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->A0X()V

    .line 48372
    new-instance v0, Lcom/facebook/ads/redexgen/X/7b;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/7b;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A03:Lcom/facebook/ads/redexgen/X/7b;

    .line 48373
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PG;->A00:Lcom/facebook/ads/redexgen/X/A8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A03:Lcom/facebook/ads/redexgen/X/7b;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0c(Lcom/facebook/ads/redexgen/X/Pk;)V

    .line 48374
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PG;->A06:Lcom/facebook/ads/redexgen/X/Jb;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ij;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Ij;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/Jb;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A02:Lcom/facebook/ads/redexgen/X/Ij;

    .line 48375
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PG;->A00:Lcom/facebook/ads/redexgen/X/A8;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7j;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/7j;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0c(Lcom/facebook/ads/redexgen/X/Pk;)V

    .line 48376
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PG;->A00:Lcom/facebook/ads/redexgen/X/A8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A02:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0c(Lcom/facebook/ads/redexgen/X/Pk;)V

    .line 48377
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PG;->A06:Lcom/facebook/ads/redexgen/X/Jb;

    const/4 v4, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/6e;

    invoke-direct {v0, p1, v4, v1}, Lcom/facebook/ads/redexgen/X/6e;-><init>(Lcom/facebook/ads/redexgen/X/XT;ZLcom/facebook/ads/redexgen/X/Jb;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A04:Lcom/facebook/ads/redexgen/X/6e;

    .line 48378
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PG;->A00:Lcom/facebook/ads/redexgen/X/A8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A04:Lcom/facebook/ads/redexgen/X/6e;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0c(Lcom/facebook/ads/redexgen/X/Pk;)V

    .line 48379
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PG;->A00:Lcom/facebook/ads/redexgen/X/A8;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PG;->A04:Lcom/facebook/ads/redexgen/X/6e;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pw;->A03:Lcom/facebook/ads/redexgen/X/Pw;

    new-instance v0, Lcom/facebook/ads/redexgen/X/JX;

    invoke-direct {v0, v2, v1, v4, v4}, Lcom/facebook/ads/redexgen/X/JX;-><init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Pw;ZZ)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0c(Lcom/facebook/ads/redexgen/X/Pk;)V

    .line 48380
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A00:Lcom/facebook/ads/redexgen/X/A8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->A0g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48381
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/JD;->A1s(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48382
    return-void

    .line 48383
    :cond_0
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48384
    .local p0, "muteButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 48385
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 48386
    sget v0, Lcom/facebook/ads/redexgen/X/PG;->A07:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 48387
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A02:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ij;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48388
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PG;->A00:Lcom/facebook/ads/redexgen/X/A8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A02:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/A8;->addView(Landroid/view/View;)V

    .line 48389
    return-void
.end method

.method private setUpVideo(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 4

    .line 48390
    new-instance v0, Lcom/facebook/ads/redexgen/X/A8;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/A8;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A00:Lcom/facebook/ads/redexgen/X/A8;

    .line 48391
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PG;->A00:Lcom/facebook/ads/redexgen/X/A8;

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Po;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48392
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A00:Lcom/facebook/ads/redexgen/X/A8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 48393
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A00:Lcom/facebook/ads/redexgen/X/A8;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/PG;->addView(Landroid/view/View;)V

    .line 48394
    new-instance v0, Lcom/facebook/ads/redexgen/X/PF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PF;-><init>(Lcom/facebook/ads/redexgen/X/PG;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/PG;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48395
    return-void
.end method

.method private setUpView(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 0

    .line 48396
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/PG;->setUpVideo(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 48397
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/PG;->setUpPlugins(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 48398
    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 3

    .line 48353
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PG;->A00:Lcom/facebook/ads/redexgen/X/A8;

    const/4 v1, 0x1

    const/16 v0, 0xa

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0e(ZI)V

    .line 48354
    return-void
.end method

.method public final A02()V
    .locals 1

    .line 48355
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A01:Lcom/facebook/ads/redexgen/X/7x;

    if-eqz v0, :cond_0

    .line 48356
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7x;->A0g()V

    .line 48357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A01:Lcom/facebook/ads/redexgen/X/7x;

    .line 48358
    :cond_0
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/9P;)V
    .locals 1

    .line 48359
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A00:Lcom/facebook/ads/redexgen/X/A8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getEventBus()Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9O;->A05(Lcom/facebook/ads/redexgen/X/9P;)Z

    .line 48360
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/JT;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48361
    .local v5, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PG;->A02()V

    .line 48362
    new-instance v0, Lcom/facebook/ads/redexgen/X/7x;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PG;->A05:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PG;->A00:Lcom/facebook/ads/redexgen/X/A8;

    move-object v4, p2

    move-object v5, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/7x;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Po;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A01:Lcom/facebook/ads/redexgen/X/7x;

    .line 48363
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Pj;)V
    .locals 2

    .line 48364
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PG;->A00:Lcom/facebook/ads/redexgen/X/A8;

    const/16 v0, 0xd

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0b(Lcom/facebook/ads/redexgen/X/Pj;I)V

    .line 48365
    return-void
.end method

.method public final A06()Z
    .locals 1

    .line 48366
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A00:Lcom/facebook/ads/redexgen/X/A8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->A0k()Z

    move-result v0

    return v0
.end method

.method public getSimpleVideoView()Lcom/facebook/ads/redexgen/X/Po;
    .locals 1

    .line 48367
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A00:Lcom/facebook/ads/redexgen/X/A8;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 48368
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A00:Lcom/facebook/ads/redexgen/X/A8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getVolume()F

    move-result v0

    return v0
.end method

.method public setPlaceholderUrl(Ljava/lang/String;)V
    .locals 1

    .line 48369
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A03:Lcom/facebook/ads/redexgen/X/7b;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7b;->setImage(Ljava/lang/String;)V

    .line 48370
    return-void
.end method

.method public setVideoURI(Ljava/lang/String;)V
    .locals 1

    .line 48399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A00:Lcom/facebook/ads/redexgen/X/A8;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Po;->setVideoURI(Ljava/lang/String;)V

    .line 48400
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 48401
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A00:Lcom/facebook/ads/redexgen/X/A8;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Po;->setVolume(F)V

    .line 48402
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PG;->A02:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A09()V

    .line 48403
    return-void
.end method
