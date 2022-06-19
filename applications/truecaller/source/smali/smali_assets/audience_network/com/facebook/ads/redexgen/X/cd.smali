.class public final Lcom/facebook/ads/redexgen/X/cd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5U;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/1b;->A09(Lcom/facebook/ads/redexgen/X/XT;Ljava/util/EnumSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/1b;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/XT;

.field public final synthetic A02:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1b;Lcom/facebook/ads/redexgen/X/XT;Z)V
    .locals 0

    .line 72019
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cd;->A00:Lcom/facebook/ads/redexgen/X/1b;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cd;->A01:Lcom/facebook/ads/redexgen/X/XT;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/cd;->A02:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9p()V
    .locals 5

    .line 72020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cd;->A01:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cd;->A02:Z

    if-eqz v0, :cond_0

    .line 72021
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/cd;->A00:Lcom/facebook/ads/redexgen/X/1b;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cd;->A01:Lcom/facebook/ads/redexgen/X/XT;

    .line 72022
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/1b;->A01(Lcom/facebook/ads/redexgen/X/1b;)Lcom/facebook/ads/redexgen/X/cj;

    move-result-object v2

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/ce;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ce;-><init>(Lcom/facebook/ads/redexgen/X/cd;)V

    .line 72023
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oo;->A01(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/16;ILcom/facebook/ads/redexgen/X/Ol;)Lcom/facebook/ads/redexgen/X/On;

    move-result-object v0

    .line 72024
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/1b;->A05(Lcom/facebook/ads/redexgen/X/1b;Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/On;

    .line 72025
    :goto_0
    return-void

    .line 72026
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cd;->A00:Lcom/facebook/ads/redexgen/X/1b;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1b;->A03(Lcom/facebook/ads/redexgen/X/1b;)Lcom/facebook/ads/redexgen/X/1a;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1a;->A9j()V

    goto :goto_0
.end method

.method public final A9q()V
    .locals 2

    .line 72027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cd;->A00:Lcom/facebook/ads/redexgen/X/1b;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1b;->A03(Lcom/facebook/ads/redexgen/X/1b;)Lcom/facebook/ads/redexgen/X/1a;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1a;->A9i(Lcom/facebook/ads/AdError;)V

    .line 72028
    return-void
.end method
