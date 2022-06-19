.class public final Lcom/facebook/ads/redexgen/X/PD;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A04:I

.field public static final A05:I


# instance fields
.field public A00:Landroid/widget/TextView;

.field public A01:Landroid/widget/TextView;

.field public A02:Lcom/facebook/ads/redexgen/X/OA;

.field public final A03:Lcom/facebook/ads/redexgen/X/XT;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 48298
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x42000000    # 32.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/PD;->A04:I

    .line 48299
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/PD;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 0

    .line 48300
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48301
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PD;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 48302
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/PD;->A00(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 48303
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 7

    .line 48304
    const/16 v6, 0x10

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/PD;->setGravity(I)V

    .line 48305
    new-instance v0, Lcom/facebook/ads/redexgen/X/OA;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/OA;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A02:Lcom/facebook/ads/redexgen/X/OA;

    .line 48306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A02:Lcom/facebook/ads/redexgen/X/OA;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/OA;->setFullCircleCorners(Z)V

    .line 48307
    sget v0, Lcom/facebook/ads/redexgen/X/PD;->A04:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48308
    .local p1, "pageImageViewParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/PD;->A05:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 48309
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A02:Lcom/facebook/ads/redexgen/X/OA;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/PD;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48310
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48311
    .local v0, "pageInfoView":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48312
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A00:Landroid/widget/TextView;

    .line 48313
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48314
    .local v5, "pageNameViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A00:Landroid/widget/TextView;

    invoke-static {v0, v5, v6}, Lcom/facebook/ads/redexgen/X/M5;->A0X(Landroid/widget/TextView;ZI)V

    .line 48315
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PD;->A00:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 48316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A00:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 48317
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A01:Landroid/widget/TextView;

    .line 48318
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PD;->A01:Landroid/widget/TextView;

    const/16 v0, 0xe

    invoke-static {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0X(Landroid/widget/TextView;ZI)V

    .line 48319
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A00:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48320
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A01:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48321
    invoke-virtual {p0, v3, v2}, Lcom/facebook/ads/redexgen/X/PD;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48322
    return-void
.end method


# virtual methods
.method public final A01(II)V
    .locals 1

    .line 48323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A00:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48325
    return-void
.end method

.method public setPageDetails(Lcom/facebook/ads/redexgen/X/1S;)V
    .locals 3

    .line 48326
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PD;->A02:Lcom/facebook/ads/redexgen/X/OA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A03:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Sb;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Sb;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XT;)V

    .line 48327
    .local p0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/Sb;
    sget v0, Lcom/facebook/ads/redexgen/X/PD;->A04:I

    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A05(II)Lcom/facebook/ads/redexgen/X/Sb;

    .line 48328
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A07(Ljava/lang/String;)V

    .line 48329
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PD;->A00:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1S;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48330
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PD;->A01:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1S;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48331
    return-void
.end method
