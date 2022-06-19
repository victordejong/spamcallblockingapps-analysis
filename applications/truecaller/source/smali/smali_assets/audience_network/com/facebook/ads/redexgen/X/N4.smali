.class public final Lcom/facebook/ads/redexgen/X/N4;
.super Lcom/facebook/ads/redexgen/X/27;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ms;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Pd;Ljava/util/List;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ms;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ms;DDDZ)V
    .locals 8

    .line 45320
    move-object v0, p0

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/N4;->A00:Lcom/facebook/ads/redexgen/X/Ms;

    move-object v0, p0

    move-wide v3, p4

    move-wide v1, p2

    move/from16 v7, p8

    move-wide v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/27;-><init>(DDDZ)V

    return-void
.end method


# virtual methods
.method public final A00(ZZLcom/facebook/ads/redexgen/X/29;)V
    .locals 4

    .line 45321
    if-eqz p2, :cond_0

    .line 45322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N4;->A00:Lcom/facebook/ads/redexgen/X/Ms;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0F(Lcom/facebook/ads/redexgen/X/Ms;)Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N4;->A00:Lcom/facebook/ads/redexgen/X/Ms;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0H(Lcom/facebook/ads/redexgen/X/Ms;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N4;->A00:Lcom/facebook/ads/redexgen/X/Ms;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pe;->A03:Lcom/facebook/ads/redexgen/X/Pe;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0L(Lcom/facebook/ads/redexgen/X/Ms;Lcom/facebook/ads/redexgen/X/Pe;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JT;->A9H(Ljava/lang/String;Ljava/util/Map;)V

    .line 45323
    :cond_0
    return-void
.end method
