.class public final Lcom/facebook/ads/redexgen/X/Xl;
.super Lcom/facebook/ads/redexgen/X/6b;
.source ""


# instance fields
.field public final A00:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V
    .locals 0

    .line 66477
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6b;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V

    .line 66478
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xl;->A00:Landroid/content/Context;

    .line 66479
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Xl;)Landroid/content/Context;
    .locals 0

    .line 66480
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Xl;->A00:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final A0G()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66481
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xm;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Xm;-><init>(Lcom/facebook/ads/redexgen/X/Xl;)V

    .line 66482
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method
