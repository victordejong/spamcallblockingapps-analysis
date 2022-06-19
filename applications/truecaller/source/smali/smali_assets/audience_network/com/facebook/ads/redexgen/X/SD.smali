.class public final Lcom/facebook/ads/redexgen/X/SD;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/9f;->A8Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9f;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9f;)V
    .locals 0

    .line 51425
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 3

    .line 51426
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9f;->A06(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/MU;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Lcom/facebook/ads/redexgen/X/9f;

    .line 51427
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9f;->A00(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SD;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9f;->A00(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    .line 51428
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MU;->A8a(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;)V

    .line 51429
    return-void
.end method
