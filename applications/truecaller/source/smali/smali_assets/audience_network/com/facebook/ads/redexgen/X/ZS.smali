.class public final Lcom/facebook/ads/redexgen/X/ZS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ZC;->A0e()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ZC;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZC;)V
    .locals 0

    .line 67583
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZS;->A00:Lcom/facebook/ads/redexgen/X/ZC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 2

    .line 67584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZS;->A00:Lcom/facebook/ads/redexgen/X/ZC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZC;->A03(Lcom/facebook/ads/redexgen/X/ZC;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/ZD;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/ZD;-><init>(Ljava/lang/Class;)V

    .line 67585
    .local p0, "buildConfigParams":Lcom/facebook/ads/redexgen/X/ZD;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZS;->A00:Lcom/facebook/ads/redexgen/X/ZC;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/ZC;->A02(Lcom/facebook/ads/redexgen/X/ZC;Lcom/facebook/ads/redexgen/X/ZD;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0
.end method
