.class public final Lcom/facebook/ads/redexgen/X/OU;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final A04:I

.field public static final A05:I

.field public static final A06:I

.field public static final A07:I

.field public static final A08:I


# instance fields
.field public final A00:I

.field public final A01:Landroid/widget/RelativeLayout;

.field public final A02:Lcom/facebook/ads/redexgen/X/SZ;

.field public final A03:Lcom/facebook/ads/redexgen/X/ON;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 47243
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v1, 0x42100000    # 36.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/OU;->A06:I

    .line 47244
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/OU;->A07:I

    .line 47245
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41b80000    # 23.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/OU;->A04:I

    .line 47246
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/OU;->A05:I

    .line 47247
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/OU;->A08:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ON;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/O0;)V
    .locals 13

    .line 47248
    move-object v2, p0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47249
    iput-object p1, v2, Lcom/facebook/ads/redexgen/X/OU;->A03:Lcom/facebook/ads/redexgen/X/ON;

    .line 47250
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/1I;->A08(Z)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/OU;->A00:I

    .line 47251
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/OU;->A01:Landroid/widget/RelativeLayout;

    .line 47252
    const/4 v3, -0x1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 47253
    .local v7, "containerParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/OU;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/OU;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47254
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/OU;->A01:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 47255
    move-object v0, p2

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/OU;->A01(Ljava/lang/String;)V

    .line 47256
    new-instance v5, Lcom/facebook/ads/redexgen/X/SZ;

    .line 47257
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v6

    .line 47258
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0P()Ljava/lang/String;

    move-result-object v7

    .line 47259
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A06()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v9

    .line 47260
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A09()Lcom/facebook/ads/redexgen/X/MU;

    move-result-object v10

    .line 47261
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A0B()Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v11

    .line 47262
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A07()Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v12

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/facebook/ads/redexgen/X/SZ;-><init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;)V

    iput-object v5, v2, Lcom/facebook/ads/redexgen/X/OU;->A02:Lcom/facebook/ads/redexgen/X/SZ;

    .line 47263
    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/OU;->A02:Lcom/facebook/ads/redexgen/X/SZ;

    .line 47264
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v5

    .line 47265
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47266
    move-object/from16 v7, p4

    invoke-virtual {v6, v5, v1, v0, v7}, Lcom/facebook/ads/redexgen/X/SZ;->setCta(Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/O0;)V

    .line 47267
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/OU;->A02:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/SZ;->setIsInAppBrowser(Z)V

    .line 47268
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 47269
    .local v0, "ctaButtonParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/OU;->A02:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/OU;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47270
    return-void
.end method

.method private A00(Landroid/view/View;)V
    .locals 4

    .line 47271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OU;->A03:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 47272
    .local p0, "arrowButton":Landroid/widget/ImageView;
    sget-object v0, Lcom/facebook/ads/redexgen/X/MD;->A0N:Lcom/facebook/ads/redexgen/X/MD;

    .line 47273
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ME;->A01(Lcom/facebook/ads/redexgen/X/MD;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 47274
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 47275
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 47276
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 47277
    iget v0, p0, Lcom/facebook/ads/redexgen/X/OU;->A00:I

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 47278
    sget v0, Lcom/facebook/ads/redexgen/X/OU;->A04:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47279
    .local p1, "arrowParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/OU;->A05:I

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 47280
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 47281
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47282
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OU;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47283
    return-void
.end method

.method private A01(Ljava/lang/String;)V
    .locals 4

    .line 47284
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OU;->A03:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 47285
    .local p0, "innerCta":Landroid/widget/TextView;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 47286
    sget v1, Lcom/facebook/ads/redexgen/X/OU;->A07:I

    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 47287
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47288
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 47289
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 47290
    iget v1, p0, Lcom/facebook/ads/redexgen/X/OU;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/OU;->A08:I

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0O(Landroid/view/View;II)V

    .line 47291
    const/high16 v0, -0x1000000

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47292
    sget v2, Lcom/facebook/ads/redexgen/X/OU;->A06:I

    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47293
    .local p1, "ctaParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47294
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OU;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47296
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/OU;->A00(Landroid/view/View;)V

    .line 47297
    return-void
.end method


# virtual methods
.method public final performClick()Z
    .locals 1

    .line 47298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OU;->A02:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SZ;->performClick()Z

    move-result v0

    return v0
.end method
