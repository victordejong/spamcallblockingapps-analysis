.class public abstract Lcom/facebook/ads/redexgen/X/B3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/UX;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseFactory"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Hb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22850
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hb;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hb;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A00:Lcom/facebook/ads/redexgen/X/Hb;

    .line 22851
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/UU;
    .locals 1

    .line 22852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B3;->A00:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/B3;->A01(Lcom/facebook/ads/redexgen/X/Hb;)Lcom/facebook/ads/redexgen/X/UU;

    move-result-object v0

    return-object v0
.end method

.method public abstract A01(Lcom/facebook/ads/redexgen/X/Hb;)Lcom/facebook/ads/redexgen/X/UU;
.end method

.method public final bridge synthetic A4C()Lcom/facebook/ads/redexgen/X/HR;
    .locals 1

    .line 22853
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/B3;->A00()Lcom/facebook/ads/redexgen/X/UU;

    move-result-object v0

    return-object v0
.end method
