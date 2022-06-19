.class public final Lcom/facebook/ads/redexgen/X/Pq;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Po;->AC1(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Po;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Po;II)V
    .locals 0

    .line 49234
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pq;->A02:Lcom/facebook/ads/redexgen/X/Po;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Pq;->A00:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/Pq;->A01:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 4

    .line 49235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pq;->A02:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A09(Lcom/facebook/ads/redexgen/X/Po;)Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Pq;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Pq;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ke;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ke;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/9O;->A02(Lcom/facebook/ads/redexgen/X/9N;)V

    .line 49236
    return-void
.end method
