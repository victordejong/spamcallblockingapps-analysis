.class public final Lcom/facebook/ads/redexgen/X/7T;
.super Lcom/facebook/ads/redexgen/X/Mk;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Mi;

.field public final A01:Lcom/facebook/ads/redexgen/X/L3;

.field public final A02:Lcom/facebook/ads/redexgen/X/Kq;

.field public final A03:Lcom/facebook/ads/redexgen/X/Kk;

.field public final A04:Lcom/facebook/ads/redexgen/X/Q4;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "dj2bca5KMhic7lU7SNdjndSTQwmssf52"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TPlcacN2BRfqpmqqou3eGj4ypEirHC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "lK1i5T"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LDnNwGMA5Xj1Rc4RK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9vPtQslMJEvaRYxyY6ZiMi1q6kn3NQTo"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pbwCeIFhJ07zfEQSECI2TdcOW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Wj7W52"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ztBFgo3EeJBil6N8wes8zN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7T;->A05:[Ljava/lang/String;

    .line 17189
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 1

    .line 17190
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/7T;-><init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;)V

    .line 17191
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;)V
    .locals 1

    .line 17192
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/7T;-><init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;I)V

    .line 17193
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 17194
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Mk;-><init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/util/AttributeSet;I)V

    .line 17195
    new-instance v0, Lcom/facebook/ads/redexgen/X/7a;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7a;-><init>(Lcom/facebook/ads/redexgen/X/7T;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7T;->A03:Lcom/facebook/ads/redexgen/X/Kk;

    .line 17196
    new-instance v0, Lcom/facebook/ads/redexgen/X/7Z;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7Z;-><init>(Lcom/facebook/ads/redexgen/X/7T;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7T;->A01:Lcom/facebook/ads/redexgen/X/L3;

    .line 17197
    new-instance v0, Lcom/facebook/ads/redexgen/X/7V;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7V;-><init>(Lcom/facebook/ads/redexgen/X/7T;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7T;->A02:Lcom/facebook/ads/redexgen/X/Kq;

    .line 17198
    new-instance v0, Lcom/facebook/ads/redexgen/X/7U;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7U;-><init>(Lcom/facebook/ads/redexgen/X/7T;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7T;->A00:Lcom/facebook/ads/redexgen/X/Mi;

    .line 17199
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7T;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 17200
    .local p0, "metrics":Landroid/util/DisplayMetrics;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q4;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Q4;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7T;->A04:Lcom/facebook/ads/redexgen/X/Q4;

    .line 17201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7T;->A04:Lcom/facebook/ads/redexgen/X/Q4;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Q4;->setChecked(Z)V

    .line 17202
    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v0, v1

    float-to-int v2, v0

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17203
    .local p1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7T;->setVisibility(I)V

    .line 17204
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7T;->A04:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/7T;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17205
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/7T;->setClickable(Z)V

    .line 17206
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/7T;->setFocusable(Z)V

    .line 17207
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/7T;)Lcom/facebook/ads/redexgen/X/Q4;
    .locals 0

    .line 17208
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7T;->A04:Lcom/facebook/ads/redexgen/X/Q4;

    return-object p0
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 17209
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A07()V

    .line 17210
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/7T;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7T;->A04:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Q4;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17212
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->getVideoView()Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17213
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->getVideoView()Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getEventBus()Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9P;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7T;->A03:Lcom/facebook/ads/redexgen/X/Kk;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7T;->A00:Lcom/facebook/ads/redexgen/X/Mi;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7T;->A01:Lcom/facebook/ads/redexgen/X/L3;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7T;->A02:Lcom/facebook/ads/redexgen/X/Kq;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9O;->A03([Lcom/facebook/ads/redexgen/X/9P;)V

    .line 17214
    :cond_0
    return-void
.end method

.method public final A08()V
    .locals 4

    .line 17215
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->getVideoView()Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17216
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mk;->getVideoView()Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getEventBus()Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9P;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7T;->A02:Lcom/facebook/ads/redexgen/X/Kq;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7T;->A01:Lcom/facebook/ads/redexgen/X/L3;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7T;->A00:Lcom/facebook/ads/redexgen/X/Mi;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7T;->A03:Lcom/facebook/ads/redexgen/X/Kk;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9O;->A04([Lcom/facebook/ads/redexgen/X/9P;)V

    .line 17217
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/7T;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7T;->A04:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Q4;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17219
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Mk;->A08()V

    .line 17220
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 17221
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7T;
    .local v1, "v":Landroid/view/View;
    :try_start_0
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Mk;->getVideoView()Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v2

    .line 17222
    .local p1, "videoView":Lcom/facebook/ads/redexgen/X/Po;
    if-nez v2, :cond_1

    .line 17223
    return-void

    .line 17224
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Po;->getState()Lcom/facebook/ads/redexgen/X/QW;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A07:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_2

    .line 17225
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Po;->getState()Lcom/facebook/ads/redexgen/X/QW;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A05:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_2

    .line 17226
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Po;->getState()Lcom/facebook/ads/redexgen/X/QW;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A06:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v1, v0, :cond_3

    .line 17227
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/7T;
    :cond_2
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pj;->A05:Lcom/facebook/ads/redexgen/X/Pj;

    const/16 v0, 0xb

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0b(Lcom/facebook/ads/redexgen/X/Pj;I)V

    goto :goto_0

    .line 17228
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Po;->getState()Lcom/facebook/ads/redexgen/X/QW;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A0A:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v1, v0, :cond_4

    .line 17229
    const/4 v1, 0x1

    const/4 v0, 0x7

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0e(ZI)V

    .line 17230
    :cond_4
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "videoView":Lcom/facebook/ads/redexgen/X/Po;
    .end local v1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/7T;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/7T;->A05:[Ljava/lang/String;

    const-string v1, "YsoDkb8mAWGLBYzRGBa3i8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public setPauseAccessibilityLabel(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7T;->A04:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Q4;->setPauseAccessibilityLabel(Ljava/lang/String;)V

    .line 17232
    return-void
.end method

.method public setPlayAccessibilityLabel(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7T;->A04:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Q4;->setPlayAccessibilityLabel(Ljava/lang/String;)V

    .line 17234
    return-void
.end method
