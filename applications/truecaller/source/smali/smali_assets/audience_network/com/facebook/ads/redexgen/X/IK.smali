.class public final Lcom/facebook/ads/redexgen/X/IK;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/IF;->A05(Z)V
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

    .line 38397
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IK;->A00:Lcom/facebook/ads/redexgen/X/IF;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 2

    .line 38398
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IK;->A00:Lcom/facebook/ads/redexgen/X/IF;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A03:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A03(Lcom/facebook/ads/redexgen/X/IF;Lcom/facebook/ads/redexgen/X/Q5;)Lcom/facebook/ads/redexgen/X/Q5;

    .line 38399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IK;->A00:Lcom/facebook/ads/redexgen/X/IF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IF;->A02(Lcom/facebook/ads/redexgen/X/IF;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IK;->A00:Lcom/facebook/ads/redexgen/X/IF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IF;->A00(Lcom/facebook/ads/redexgen/X/IF;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 38400
    return-void
.end method
