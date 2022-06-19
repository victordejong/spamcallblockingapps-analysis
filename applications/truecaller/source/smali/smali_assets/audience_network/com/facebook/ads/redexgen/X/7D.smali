.class public final Lcom/facebook/ads/redexgen/X/7D;
.super Lcom/facebook/ads/redexgen/X/Mi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6e;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6e;)V
    .locals 0

    .line 16604
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7D;->A00:Lcom/facebook/ads/redexgen/X/6e;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Mi;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7v;)V
    .locals 2

    .line 16605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A00:Lcom/facebook/ads/redexgen/X/6e;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6e;->A06(Lcom/facebook/ads/redexgen/X/6e;)Lcom/facebook/ads/redexgen/X/Q4;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Q4;->setChecked(Z)V

    .line 16606
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 16607
    check-cast p1, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7D;->A00(Lcom/facebook/ads/redexgen/X/7v;)V

    return-void
.end method
