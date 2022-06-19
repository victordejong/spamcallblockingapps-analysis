.class public final Lcom/facebook/ads/redexgen/X/Z3;
.super Lcom/facebook/ads/redexgen/X/6b;
.source ""


# instance fields
.field public A00:Landroid/content/ContentResolver;

.field public A01:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V
    .locals 1

    .line 67384
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6b;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V

    .line 67385
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A01:Landroid/util/DisplayMetrics;

    .line 67386
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Z3;->A00:Landroid/content/ContentResolver;

    .line 67387
    return-void
.end method


# virtual methods
.method public final A0G()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67388
    new-instance v0, Lcom/facebook/ads/redexgen/X/Z4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Z4;-><init>(Lcom/facebook/ads/redexgen/X/Z3;)V

    return-object v0
.end method

.method public final A0H()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67389
    new-instance v0, Lcom/facebook/ads/redexgen/X/Z7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Z7;-><init>(Lcom/facebook/ads/redexgen/X/Z3;)V

    return-object v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67390
    new-instance v0, Lcom/facebook/ads/redexgen/X/Z6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Z6;-><init>(Lcom/facebook/ads/redexgen/X/Z3;)V

    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67391
    new-instance v0, Lcom/facebook/ads/redexgen/X/Z8;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Z8;-><init>(Lcom/facebook/ads/redexgen/X/Z3;)V

    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67392
    new-instance v0, Lcom/facebook/ads/redexgen/X/Z5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Z5;-><init>(Lcom/facebook/ads/redexgen/X/Z3;)V

    return-object v0
.end method
