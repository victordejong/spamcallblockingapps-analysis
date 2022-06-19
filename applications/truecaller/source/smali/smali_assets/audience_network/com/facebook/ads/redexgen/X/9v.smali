.class public Lcom/facebook/ads/redexgen/X/9v;
.super Lcom/facebook/ads/redexgen/X/SJ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/SW;
    }
.end annotation


# static fields
.field public static A0J:[Ljava/lang/String;

.field public static final A0K:I

.field public static final A0L:I

.field public static final A0M:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Mm;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/OW;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/PG;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public A06:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Lcom/facebook/ads/redexgen/X/Rh;

.field public final A08:Lcom/facebook/ads/redexgen/X/XT;

.field public final A09:Lcom/facebook/ads/redexgen/X/Mi;

.field public final A0A:Lcom/facebook/ads/redexgen/X/L3;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Kq;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Kk;

.field public final A0D:Lcom/facebook/ads/redexgen/X/KM;

.field public final A0E:Ljava/lang/String;

.field public final A0F:Landroid/graphics/Paint;

.field public final A0G:Landroid/graphics/Path;

.field public final A0H:Landroid/graphics/RectF;

.field public final A0I:Lcom/facebook/ads/redexgen/X/ON;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "dJoea1DbFsfm9GTpKIzcXYdmCRfBe4FS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "N1xc2MysRccxXRgwDgHXZSQeh7bFq7uk"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3nDu3mubCrSGPsHb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SUxuavEQD34fwSKO8hxc7w"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hmAyL1Y1BI3zOyZEMNvfuG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1nycCDmAbpyAo4RWRzHJ2ixoeiRT"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fh6VcnyoMwgZMcb2oBIx6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bmD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9v;->A0J:[Ljava/lang/String;

    .line 21222
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/4 v0, 0x0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/9v;->A0L:I

    .line 21223
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v1, 0x41100000    # 9.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/9v;->A0M:I

    .line 21224
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/9v;->A0K:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ON;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/Rh;)V
    .locals 3

    .line 21225
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/SJ;-><init>(Lcom/facebook/ads/redexgen/X/ON;Z)V

    .line 21226
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0G:Landroid/graphics/Path;

    .line 21227
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0H:Landroid/graphics/RectF;

    .line 21228
    new-instance v0, Lcom/facebook/ads/redexgen/X/A0;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/A0;-><init>(Lcom/facebook/ads/redexgen/X/9v;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0D:Lcom/facebook/ads/redexgen/X/KM;

    .line 21229
    new-instance v0, Lcom/facebook/ads/redexgen/X/9z;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9z;-><init>(Lcom/facebook/ads/redexgen/X/9v;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A09:Lcom/facebook/ads/redexgen/X/Mi;

    .line 21230
    new-instance v0, Lcom/facebook/ads/redexgen/X/9y;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9y;-><init>(Lcom/facebook/ads/redexgen/X/9v;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0B:Lcom/facebook/ads/redexgen/X/Kq;

    .line 21231
    new-instance v0, Lcom/facebook/ads/redexgen/X/9x;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9x;-><init>(Lcom/facebook/ads/redexgen/X/9v;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0A:Lcom/facebook/ads/redexgen/X/L3;

    .line 21232
    new-instance v0, Lcom/facebook/ads/redexgen/X/9w;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9w;-><init>(Lcom/facebook/ads/redexgen/X/9v;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0C:Lcom/facebook/ads/redexgen/X/Kk;

    .line 21233
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9v;->A0I:Lcom/facebook/ads/redexgen/X/ON;

    .line 21234
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/9v;->A07:Lcom/facebook/ads/redexgen/X/Rh;

    .line 21235
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9v;->A0E:Ljava/lang/String;

    .line 21236
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A08:Lcom/facebook/ads/redexgen/X/XT;

    .line 21237
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/9v;->setGravity(I)V

    .line 21238
    sget v1, Lcom/facebook/ads/redexgen/X/9v;->A0L:I

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/facebook/ads/redexgen/X/9v;->setPadding(IIII)V

    .line 21239
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 21240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A08:Lcom/facebook/ads/redexgen/X/XT;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9v;->setUpView(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 21241
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0F:Landroid/graphics/Paint;

    .line 21242
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A0F:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 21243
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A0F:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21244
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A0F:Landroid/graphics/Paint;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 21245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0F:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21246
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-ge v1, v0, :cond_0

    .line 21247
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/9v;->setLayerType(ILandroid/graphics/Paint;)V

    .line 21248
    :cond_0
    return-void
.end method

.method private A00()V
    .locals 2

    .line 21249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0I:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0A()Lcom/facebook/ads/redexgen/X/IS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21250
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    if-eqz v0, :cond_0

    .line 21251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0I:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0A()Lcom/facebook/ads/redexgen/X/IS;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PG;->getSimpleVideoView()Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IS;->A8f(Lcom/facebook/ads/redexgen/X/Po;)V

    .line 21252
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9v;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1R(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0I:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0A()Lcom/facebook/ads/redexgen/X/IS;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IS;->A07(Z)V

    .line 21254
    :cond_0
    return-void
.end method

.method private A01()V
    .locals 2

    .line 21255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0I:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0A()Lcom/facebook/ads/redexgen/X/IS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0I:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0A()Lcom/facebook/ads/redexgen/X/IS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IS;->A05()V

    .line 21257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    if-eqz v0, :cond_0

    .line 21258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0I:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0A()Lcom/facebook/ads/redexgen/X/IS;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PG;->getSimpleVideoView()Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IS;->AF4(Lcom/facebook/ads/redexgen/X/Po;)V

    .line 21259
    :cond_0
    return-void
.end method

.method private A02()V
    .locals 4

    .line 21260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A01:Lcom/facebook/ads/redexgen/X/OW;

    if-nez v0, :cond_0

    .line 21261
    return-void

    .line 21262
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9v;->A0i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A05:Z

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9v;->A0i()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/9v;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/9v;->A0J:[Ljava/lang/String;

    const-string v1, "whWH7G9NZGoicUCMK8TGye"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "jQqQ2QRGHP0rmsCqitHuog"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A04:Z

    if-eqz v0, :cond_4

    .line 21263
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A01:Lcom/facebook/ads/redexgen/X/OW;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OW;->A9r()V

    .line 21264
    :cond_4
    return-void
.end method

.method private A03(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21265
    if-nez p1, :cond_0

    .line 21266
    return-void

    .line 21267
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 21268
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v2, :cond_1

    .line 21269
    return-void

    .line 21270
    :cond_1
    const/16 v1, 0xd

    const/4 v0, -0x1

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 21271
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21272
    return-void
.end method

.method public static A04(Landroid/view/View;)V
    .locals 3

    .line 21273
    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21274
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 21275
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/9v;)V
    .locals 0

    .line 21276
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9v;->A01()V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/9v;)V
    .locals 0

    .line 21277
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9v;->A00()V

    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/9v;)V
    .locals 0

    .line 21278
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9v;->A02()V

    return-void
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/9v;Z)Z
    .locals 0

    .line 21279
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9v;->A05:Z

    return p1
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/9v;Z)Z
    .locals 0

    .line 21280
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9v;->A04:Z

    return p1
.end method

.method private setUpView(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 0

    .line 21352
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9v;->setUpImageView(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 21353
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9v;->setUpVideoView(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 21354
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9v;->setUpMediaContainer(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 21355
    return-void
.end method


# virtual methods
.method public final A0B()Z
    .locals 1

    .line 21281
    const/4 v0, 0x0

    return v0
.end method

.method public final A0c()Z
    .locals 1

    .line 21282
    const/4 v0, 0x0

    return v0
.end method

.method public final A0e()V
    .locals 1

    .line 21283
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9v;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    if-eqz v0, :cond_0

    .line 21284
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PG;->A01()V

    .line 21285
    :cond_0
    return-void
.end method

.method public final A0f()V
    .locals 2

    .line 21286
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9v;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21287
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9v;->A0g()V

    .line 21288
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    if-eqz v1, :cond_0

    .line 21289
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pj;->A03:Lcom/facebook/ads/redexgen/X/Pj;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PG;->A05(Lcom/facebook/ads/redexgen/X/Pj;)V

    .line 21290
    :cond_0
    return-void
.end method

.method public final A0g()V
    .locals 2

    .line 21291
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A07:Lcom/facebook/ads/redexgen/X/Rh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rh;->A0P()Lcom/facebook/ads/redexgen/X/OZ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OZ;->getVolume()F

    move-result v1

    .line 21292
    .local p0, "newVolume":F
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9v;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PG;->getVolume()F

    move-result v0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    .line 21293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/PG;->setVolume(F)V

    .line 21294
    :cond_0
    return-void
.end method

.method public final A0h()Z
    .locals 1

    .line 21295
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9v;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PG;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0i()Z
    .locals 1

    .line 21296
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A03:Z

    return v0
.end method

.method public final A0j(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21297
    .local v2, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    if-eqz v0, :cond_0

    .line 21298
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PG;->A02()V

    .line 21299
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9v;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21300
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getAdEventManager()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0E:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/PG;->A04(Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;Ljava/util/Map;)V

    .line 21301
    :cond_0
    return-void
.end method

.method public final getVideoView()Lcom/facebook/ads/redexgen/X/PG;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 21303
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/OJ;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 21304
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 21305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0G:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 21306
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9v;->A0H:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9v;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9v;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v7, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 21307
    const/4 v5, 0x0

    .line 21308
    .local p0, "radius":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9v;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    .line 21309
    .local p1, "isPortrait":Z
    :goto_0
    if-eqz v6, :cond_0

    .line 21310
    sget v5, Lcom/facebook/ads/redexgen/X/9v;->A0K:I

    .line 21311
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9v;->A0G:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9v;->A0H:Landroid/graphics/RectF;

    int-to-float v2, v5

    int-to-float v1, v5

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 21312
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A0G:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0F:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 21313
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9v;->A0H:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/9v;->A0L:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9v;->getWidth()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/9v;->A0L:I

    sub-int/2addr v1, v0

    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9v;->getHeight()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/9v;->A0L:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {v4, v3, v7, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 21314
    if-eqz v6, :cond_1

    .line 21315
    sget v5, Lcom/facebook/ads/redexgen/X/9v;->A0M:I

    .line 21316
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9v;->A0G:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9v;->A0H:Landroid/graphics/RectF;

    int-to-float v2, v5

    int-to-float v1, v5

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 21317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0G:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 21318
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/SJ;->onDraw(Landroid/graphics/Canvas;)V

    .line 21319
    return-void

    .line 21320
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 3

    .line 21321
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A00:Lcom/facebook/ads/redexgen/X/Mm;

    if-eqz v1, :cond_0

    .line 21322
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mm;->setVisibility(I)V

    .line 21323
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9v;->A00:Lcom/facebook/ads/redexgen/X/Mm;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A08:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sb;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Sb;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XT;)V

    .line 21324
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sb;->A04()Lcom/facebook/ads/redexgen/X/Sb;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/SW;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/SW;-><init>(Lcom/facebook/ads/redexgen/X/9v;Lcom/facebook/ads/redexgen/X/A0;)V

    .line 21325
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A06(Lcom/facebook/ads/redexgen/X/Nt;)Lcom/facebook/ads/redexgen/X/Sb;

    move-result-object v0

    .line 21326
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Sb;->A07(Ljava/lang/String;)V

    .line 21327
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    if-eqz v1, :cond_1

    .line 21328
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PG;->setVisibility(I)V

    .line 21329
    :cond_1
    return-void
.end method

.method public setIsVideo(Z)V
    .locals 0

    .line 21330
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9v;->A03:Z

    .line 21331
    return-void
.end method

.method public setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/OW;)V
    .locals 0

    .line 21332
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9v;->A01:Lcom/facebook/ads/redexgen/X/OW;

    .line 21333
    return-void
.end method

.method public setUpImageView(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 1

    .line 21334
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mm;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Mm;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A00:Lcom/facebook/ads/redexgen/X/Mm;

    .line 21335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A00:Lcom/facebook/ads/redexgen/X/Mm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9v;->A04(Landroid/view/View;)V

    .line 21336
    return-void
.end method

.method public setUpMediaContainer(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 2

    .line 21337
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A06:Landroid/widget/RelativeLayout;

    .line 21338
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9v;->A04(Landroid/view/View;)V

    .line 21339
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A00:Lcom/facebook/ads/redexgen/X/Mm;

    if-eqz v1, :cond_0

    .line 21340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 21341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A00:Lcom/facebook/ads/redexgen/X/Mm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9v;->A03(Landroid/view/View;)V

    .line 21342
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    if-eqz v1, :cond_1

    .line 21343
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 21344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9v;->A03(Landroid/view/View;)V

    .line 21345
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/9v;->addView(Landroid/view/View;)V

    .line 21346
    return-void
.end method

.method public setUpVideoView(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 3

    .line 21347
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9v;->A0E:Ljava/lang/String;

    .line 21348
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getAdEventManager()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Jb;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JT;)V

    .line 21349
    .local p0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Jb;
    new-instance v0, Lcom/facebook/ads/redexgen/X/PG;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/PG;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/Jb;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    .line 21350
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9v;->A04(Landroid/view/View;)V

    .line 21351
    return-void
.end method

.method public setVideoPlaceholderUrl(Ljava/lang/String;)V
    .locals 1

    .line 21356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    if-eqz v0, :cond_0

    .line 21357
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PG;->setPlaceholderUrl(Ljava/lang/String;)V

    .line 21358
    :cond_0
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 5

    .line 21359
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9v;->A00:Lcom/facebook/ads/redexgen/X/Mm;

    if-eqz v4, :cond_0

    .line 21360
    const/16 v3, 0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/9v;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/9v;->A0J:[Ljava/lang/String;

    const-string v1, "s54OOOYMcUndmM7F"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Mm;->setVisibility(I)V

    .line 21361
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    if-eqz v1, :cond_1

    .line 21362
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PG;->setVisibility(I)V

    .line 21363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PG;->setVideoURI(Ljava/lang/String;)V

    .line 21364
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0D:Lcom/facebook/ads/redexgen/X/KM;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PG;->A03(Lcom/facebook/ads/redexgen/X/9P;)V

    .line 21365
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A09:Lcom/facebook/ads/redexgen/X/Mi;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PG;->A03(Lcom/facebook/ads/redexgen/X/9P;)V

    .line 21366
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0B:Lcom/facebook/ads/redexgen/X/Kq;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PG;->A03(Lcom/facebook/ads/redexgen/X/9P;)V

    .line 21367
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0A:Lcom/facebook/ads/redexgen/X/L3;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PG;->A03(Lcom/facebook/ads/redexgen/X/9P;)V

    .line 21368
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9v;->A02:Lcom/facebook/ads/redexgen/X/PG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9v;->A0C:Lcom/facebook/ads/redexgen/X/Kk;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PG;->A03(Lcom/facebook/ads/redexgen/X/9P;)V

    .line 21369
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
