.class public final Lcom/facebook/ads/redexgen/X/TC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/NV;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/TB;-><init>(Lcom/facebook/ads/redexgen/X/52;Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/52;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/TB;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/TB;Lcom/facebook/ads/redexgen/X/52;)V
    .locals 0

    .line 53771
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TC;->A01:Lcom/facebook/ads/redexgen/X/TB;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TC;->A00:Lcom/facebook/ads/redexgen/X/52;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AA8()V
    .locals 2

    .line 53772
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TC;->A00:Lcom/facebook/ads/redexgen/X/52;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/52;->finish(I)V

    .line 53773
    return-void
.end method
