.class public final Lcom/facebook/ads/redexgen/X/Jt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdViewAttributesApi;


# static fields
.field public static final A07:I

.field public static final A08:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Landroid/graphics/Typeface;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 40950
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Jt;->A08:I

    .line 40951
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Jt;->A07:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40953
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A06:Landroid/graphics/Typeface;

    .line 40954
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Jt;->A00:I

    .line 40955
    const v0, -0xe2ded7

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A04:I

    .line 40956
    const v0, -0x9e9890

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A05:I

    .line 40957
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Jt;->A01:I

    .line 40958
    const v0, -0xbd8719

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A03:I

    .line 40959
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A02:I

    .line 40960
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 40961
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 40962
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A01:I

    return v0
.end method

.method public final A02()I
    .locals 1

    .line 40963
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A02:I

    return v0
.end method

.method public final A03()I
    .locals 1

    .line 40964
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A03:I

    return v0
.end method

.method public final A04(F)I
    .locals 4

    .line 40965
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Jt;->A01:I

    const/high16 v2, -0x1000000

    and-int/2addr v2, v3

    xor-int/lit8 v1, v3, -0x1

    const v0, 0xffffff

    and-int/2addr v1, v0

    or-int/2addr v2, v1

    .line 40966
    .local p1, "textColor":I
    invoke-static {v2, v3, p1}, Lcom/facebook/ads/redexgen/X/2N;->A02(IIF)I

    move-result v0

    return v0
.end method

.method public final A05(Landroid/widget/TextView;)V
    .locals 8

    .line 40967
    const/4 v5, 0x2

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 40968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A06:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 40969
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 40970
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 40971
    .local p1, "buttonBackgroundUnpressed":Landroid/graphics/drawable/GradientDrawable;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A01:I

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 40972
    sget v0, Lcom/facebook/ads/redexgen/X/Jt;->A08:I

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 40973
    sget v1, Lcom/facebook/ads/redexgen/X/Jt;->A07:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A02:I

    invoke-virtual {v7, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 40974
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 40975
    .local v0, "buttonBackgroundPressed":Landroid/graphics/drawable/GradientDrawable;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A03:I

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 40976
    sget v0, Lcom/facebook/ads/redexgen/X/Jt;->A08:I

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 40977
    sget v1, Lcom/facebook/ads/redexgen/X/Jt;->A07:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A02:I

    invoke-virtual {v6, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 40978
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 40979
    .local v0, "bgSld":Landroid/graphics/drawable/StateListDrawable;
    new-array v0, v4, [I

    const v1, 0x10100a7

    const/4 v3, 0x0

    aput v1, v0, v3

    invoke-virtual {v2, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 40980
    new-array v0, v3, [I

    invoke-virtual {v2, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 40981
    invoke-static {p1, v2}, Lcom/facebook/ads/redexgen/X/M5;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 40982
    new-array v2, v5, [[I

    new-array v0, v4, [I

    aput v1, v0, v3

    aput-object v0, v2, v3

    new-array v0, v3, [I

    aput-object v0, v2, v4

    new-array v1, v5, [I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A01:I

    aput v0, v1, v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A03:I

    aput v0, v1, v4

    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 40983
    .local p0, "textColors":Landroid/content/res/ColorStateList;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 40984
    return-void
.end method

.method public final A06(Landroid/widget/TextView;)V
    .locals 1

    .line 40985
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A05:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40986
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 40987
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A06:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 40988
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 40989
    return-void
.end method

.method public final A07(Landroid/widget/TextView;)V
    .locals 2

    .line 40990
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A04:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40991
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 40992
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jt;->A06:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 40993
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 40994
    return-void
.end method

.method public final A08(Landroid/widget/TextView;)V
    .locals 2

    .line 40995
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A04:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40996
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 40997
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jt;->A06:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 40998
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 40999
    return-void
.end method

.method public final A09(Lcom/facebook/ads/AdOptionsView;I)V
    .locals 1

    .line 41000
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jt;->A04:I

    invoke-virtual {p1, v0}, Lcom/facebook/ads/AdOptionsView;->setIconColor(I)V

    .line 41001
    invoke-virtual {p1, p2}, Lcom/facebook/ads/AdOptionsView;->setIconSizeDp(I)V

    .line 41002
    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    .line 41003
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jt;->A00:I

    .line 41004
    return-void
.end method

.method public final setCTABackgroundColor(I)V
    .locals 0

    .line 41005
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jt;->A01:I

    .line 41006
    return-void
.end method

.method public final setCTABorderColor(I)V
    .locals 0

    .line 41007
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jt;->A02:I

    .line 41008
    return-void
.end method

.method public final setCTATextColor(I)V
    .locals 0

    .line 41009
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jt;->A03:I

    .line 41010
    return-void
.end method

.method public final setPrimaryTextColor(I)V
    .locals 0

    .line 41011
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jt;->A04:I

    .line 41012
    return-void
.end method

.method public final setSecondaryTextColor(I)V
    .locals 0

    .line 41013
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jt;->A05:I

    .line 41014
    return-void
.end method

.method public final setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 41015
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jt;->A06:Landroid/graphics/Typeface;

    .line 41016
    return-void
.end method
