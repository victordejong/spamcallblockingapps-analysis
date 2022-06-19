.class public final Lcom/facebook/ads/redexgen/X/Rj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OX;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Rh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rh;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rh;)V
    .locals 0

    .line 51123
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:Lcom/facebook/ads/redexgen/X/Rh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACO(I)V
    .locals 2

    .line 51124
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:Lcom/facebook/ads/redexgen/X/Rh;

    const/4 v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Rh;->A0G(Lcom/facebook/ads/redexgen/X/Rh;IZ)V

    .line 51125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:Lcom/facebook/ads/redexgen/X/Rh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rh;->A0K(Lcom/facebook/ads/redexgen/X/Rh;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:Lcom/facebook/ads/redexgen/X/Rh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rh;->A0E(Lcom/facebook/ads/redexgen/X/Rh;)V

    .line 51127
    :goto_0
    return-void

    .line 51128
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:Lcom/facebook/ads/redexgen/X/Rh;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Rh;->A0F(Lcom/facebook/ads/redexgen/X/Rh;I)V

    goto :goto_0
.end method
