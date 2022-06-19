.class public final Lcom/facebook/ads/redexgen/X/c3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/20;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/F2;->A00(Lcom/facebook/ads/redexgen/X/21;)Lcom/facebook/ads/redexgen/X/20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/21;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/21;)V
    .locals 0

    .line 70969
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/c3;->A00:Lcom/facebook/ads/redexgen/X/21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A4K(Lcom/facebook/ads/redexgen/X/1u;Lcom/facebook/ads/redexgen/X/cG;)Lcom/facebook/ads/redexgen/X/1z;
    .locals 3

    .line 70970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A00:Lcom/facebook/ads/redexgen/X/21;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/21;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c3;->A00:Lcom/facebook/ads/redexgen/X/21;

    new-instance v0, Lcom/facebook/ads/redexgen/X/c4;

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/facebook/ads/redexgen/X/c4;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/21;Lcom/facebook/ads/redexgen/X/1u;Lcom/facebook/ads/redexgen/X/cG;)V

    return-object v0
.end method
