.class public final Lcom/facebook/ads/redexgen/X/IF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Q6;


# instance fields
.field public A00:Landroid/graphics/drawable/TransitionDrawable;

.field public A01:Landroid/graphics/drawable/TransitionDrawable;

.field public A02:Lcom/facebook/ads/redexgen/X/Q5;

.field public final A03:I

.field public final A04:Landroid/graphics/drawable/Drawable;

.field public final A05:Landroid/graphics/drawable/Drawable;

.field public final A06:Landroid/os/Handler;

.field public final A07:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 38239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38240
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A06:Landroid/os/Handler;

    .line 38241
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A05:Lcom/facebook/ads/redexgen/X/Q5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    .line 38242
    iput p2, p0, Lcom/facebook/ads/redexgen/X/IF;->A03:I

    .line 38243
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IF;->A07:Landroid/view/View;

    .line 38244
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/IF;->A05:Landroid/graphics/drawable/Drawable;

    .line 38245
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/IF;->A04:Landroid/graphics/drawable/Drawable;

    .line 38246
    const/4 v4, 0x2

    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object p3, v1, v3

    const/4 v2, 0x1

    aput-object p4, v1, v2

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A01:Landroid/graphics/drawable/TransitionDrawable;

    .line 38247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 38248
    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    aput-object p4, v1, v3

    aput-object p3, v1, v2

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A00:Landroid/graphics/drawable/TransitionDrawable;

    .line 38249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A00:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 38250
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IF;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 38251
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/IF;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 38252
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/IF;->A04:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/IF;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 38253
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/IF;->A05:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/IF;)Landroid/view/View;
    .locals 0

    .line 38254
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/IF;->A07:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/IF;Lcom/facebook/ads/redexgen/X/Q5;)Lcom/facebook/ads/redexgen/X/Q5;
    .locals 0

    .line 38255
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IF;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    return-object p1
.end method

.method private A04(Z)V
    .locals 4

    .line 38256
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IF;->A06:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 38257
    if-eqz p1, :cond_0

    .line 38258
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A06:Lcom/facebook/ads/redexgen/X/Q5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    .line 38259
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IF;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A00:Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 38260
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IF;->A00:Landroid/graphics/drawable/TransitionDrawable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A03:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 38261
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IF;->A06:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/IH;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/IH;-><init>(Lcom/facebook/ads/redexgen/X/IF;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A03:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38262
    :goto_0
    return-void

    .line 38263
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IF;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A05:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 38264
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A05:Lcom/facebook/ads/redexgen/X/Q5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    goto :goto_0
.end method

.method private A05(Z)V
    .locals 4

    .line 38265
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IF;->A06:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 38266
    if-eqz p1, :cond_0

    .line 38267
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A04:Lcom/facebook/ads/redexgen/X/Q5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    .line 38268
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IF;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 38269
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IF;->A01:Landroid/graphics/drawable/TransitionDrawable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A03:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 38270
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IF;->A06:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/IK;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/IK;-><init>(Lcom/facebook/ads/redexgen/X/IF;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A03:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38271
    :goto_0
    return-void

    .line 38272
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IF;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A04:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 38273
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A03:Lcom/facebook/ads/redexgen/X/Q5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    goto :goto_0
.end method


# virtual methods
.method public final A3L(ZZ)V
    .locals 0

    .line 38274
    if-eqz p2, :cond_0

    .line 38275
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/IF;->A04(Z)V

    .line 38276
    :goto_0
    return-void

    .line 38277
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/IF;->A05(Z)V

    goto :goto_0
.end method

.method public final A7R()Lcom/facebook/ads/redexgen/X/Q5;
    .locals 1

    .line 38278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    return-object v0
.end method

.method public final cancel()V
    .locals 2

    .line 38279
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IF;->A06:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 38280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 38281
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A00:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 38282
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IF;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A04:Lcom/facebook/ads/redexgen/X/Q5;

    if-ne v1, v0, :cond_0

    .line 38283
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A05:Lcom/facebook/ads/redexgen/X/Q5;

    .line 38284
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    .line 38285
    return-void

    .line 38286
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A03:Lcom/facebook/ads/redexgen/X/Q5;

    goto :goto_0
.end method
