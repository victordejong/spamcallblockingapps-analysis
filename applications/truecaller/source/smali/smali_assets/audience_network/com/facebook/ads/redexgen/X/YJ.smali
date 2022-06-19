.class public final Lcom/facebook/ads/redexgen/X/YJ;
.super Lcom/facebook/ads/redexgen/X/6b;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/YK;
    }
.end annotation


# instance fields
.field public A00:Landroid/hardware/SensorManager;

.field public final A01:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V
    .locals 0

    .line 66792
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6b;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V

    .line 66793
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YJ;->A01:Landroid/content/Context;

    .line 66794
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/YJ;)Landroid/content/Context;
    .locals 0

    .line 66795
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YJ;->A01:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final A0G()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66796
    new-instance v0, Lcom/facebook/ads/redexgen/X/YL;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YL;-><init>(Lcom/facebook/ads/redexgen/X/YJ;)V

    return-object v0
.end method
