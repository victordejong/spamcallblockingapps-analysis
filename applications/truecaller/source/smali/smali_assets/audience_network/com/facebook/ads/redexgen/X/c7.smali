.class public final Lcom/facebook/ads/redexgen/X/c7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/20;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/c6;->A4L(Lcom/facebook/ads/redexgen/X/1x;)Lcom/facebook/ads/redexgen/X/20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/1x;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/c6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/c6;Lcom/facebook/ads/redexgen/X/1x;)V
    .locals 0

    .line 71105
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/c7;->A01:Lcom/facebook/ads/redexgen/X/c6;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/c7;->A00:Lcom/facebook/ads/redexgen/X/1x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A4K(Lcom/facebook/ads/redexgen/X/1u;Lcom/facebook/ads/redexgen/X/cG;)Lcom/facebook/ads/redexgen/X/1z;
    .locals 3

    .line 71106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c7;->A00:Lcom/facebook/ads/redexgen/X/1x;

    .line 71107
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1x;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c7;->A00:Lcom/facebook/ads/redexgen/X/1x;

    new-instance v0, Lcom/facebook/ads/redexgen/X/c5;

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/facebook/ads/redexgen/X/c5;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1x;Lcom/facebook/ads/redexgen/X/1u;Lcom/facebook/ads/redexgen/X/cG;)V

    .line 71108
    return-object v0
.end method
