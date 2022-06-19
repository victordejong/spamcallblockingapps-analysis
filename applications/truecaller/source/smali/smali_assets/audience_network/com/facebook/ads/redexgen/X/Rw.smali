.class public final Lcom/facebook/ads/redexgen/X/Rw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MS;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Rv;->A0N()Lcom/facebook/ads/redexgen/X/MT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rv;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rv;)V
    .locals 0

    .line 51252
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rw;->A00:Lcom/facebook/ads/redexgen/X/Rv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AA8()V
    .locals 3

    .line 51253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rw;->A00:Lcom/facebook/ads/redexgen/X/Rv;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Rv;->A05:Lcom/facebook/ads/redexgen/X/Jb;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ja;->A07:Lcom/facebook/ads/redexgen/X/Ja;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A02(Lcom/facebook/ads/redexgen/X/Ja;Ljava/util/Map;)V

    .line 51254
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rw;->A00:Lcom/facebook/ads/redexgen/X/Rv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rv;->A0T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51255
    return-void

    .line 51256
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rw;->A00:Lcom/facebook/ads/redexgen/X/Rv;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Rv;->A08:Lcom/facebook/ads/redexgen/X/MU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rw;->A00:Lcom/facebook/ads/redexgen/X/Rv;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Rv;->A09:Lcom/facebook/ads/redexgen/X/Mw;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A6Q()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MU;->A3q(Ljava/lang/String;)V

    .line 51257
    return-void
.end method
