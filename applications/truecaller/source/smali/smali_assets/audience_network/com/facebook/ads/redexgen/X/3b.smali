.class public final Lcom/facebook/ads/redexgen/X/3b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/bh;,
        Lcom/facebook/ads/redexgen/X/3a;
    }
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/3a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 9858
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 9859
    new-instance v0, Lcom/facebook/ads/redexgen/X/bh;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/bh;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3b;->A00:Lcom/facebook/ads/redexgen/X/3a;

    .line 9860
    :goto_0
    return-void

    .line 9861
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/3a;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3a;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3b;->A00:Lcom/facebook/ads/redexgen/X/3a;

    goto :goto_0
.end method

.method public static A00(Landroid/widget/EdgeEffect;FF)V
    .locals 1

    .line 9862
    sget-object v0, Lcom/facebook/ads/redexgen/X/3b;->A00:Lcom/facebook/ads/redexgen/X/3a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/3a;->A00(Landroid/widget/EdgeEffect;FF)V

    .line 9863
    return-void
.end method
