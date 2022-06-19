.class public final Lcom/facebook/ads/redexgen/X/Rk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OZ;


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

    .line 51129
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A00:Lcom/facebook/ads/redexgen/X/Rh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVolume()F
    .locals 1

    .line 51130
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A00:Lcom/facebook/ads/redexgen/X/Rh;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Rh;->A00:F

    return v0
.end method

.method public final setVolume(F)V
    .locals 1

    .line 51131
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A00:Lcom/facebook/ads/redexgen/X/Rh;

    iput p1, v0, Lcom/facebook/ads/redexgen/X/Rh;->A00:F

    .line 51132
    return-void
.end method
