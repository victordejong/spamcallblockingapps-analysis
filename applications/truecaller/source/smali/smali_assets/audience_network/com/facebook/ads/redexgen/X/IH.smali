.class public final Lcom/facebook/ads/redexgen/X/IH;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/IF;->A04(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/IF;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/IF;)V
    .locals 0

    .line 38379
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IH;->A00:Lcom/facebook/ads/redexgen/X/IF;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 2

    .line 38380
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IH;->A00:Lcom/facebook/ads/redexgen/X/IF;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A05:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A03(Lcom/facebook/ads/redexgen/X/IF;Lcom/facebook/ads/redexgen/X/Q5;)Lcom/facebook/ads/redexgen/X/Q5;

    .line 38381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IH;->A00:Lcom/facebook/ads/redexgen/X/IF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IF;->A02(Lcom/facebook/ads/redexgen/X/IF;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IH;->A00:Lcom/facebook/ads/redexgen/X/IF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IF;->A01(Lcom/facebook/ads/redexgen/X/IF;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 38382
    return-void
.end method
