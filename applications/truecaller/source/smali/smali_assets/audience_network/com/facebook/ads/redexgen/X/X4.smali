.class public final Lcom/facebook/ads/redexgen/X/X4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/RJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/X3;->A05(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/8Y;Lcom/facebook/ads/redexgen/X/Qf;)Lcom/facebook/ads/redexgen/X/GC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/XS;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/KU;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KU;Lcom/facebook/ads/redexgen/X/XS;)V
    .locals 0

    .line 65867
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/X4;->A01:Lcom/facebook/ads/redexgen/X/KU;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/X4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A6T()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65868
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/X4;->A01:Lcom/facebook/ads/redexgen/X/KU;

    .line 65869
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9H;->A00()Lcom/facebook/ads/redexgen/X/9H;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/X4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 65870
    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9H;->A01(Lcom/facebook/ads/redexgen/X/8J;Z)Lcom/facebook/ads/redexgen/X/9G;

    move-result-object v0

    .line 65871
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9G;->A6S()Ljava/util/Map;

    move-result-object v0

    .line 65872
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/KU;->A08(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
