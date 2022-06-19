.class public final Lcom/facebook/ads/redexgen/X/4O;
.super Lcom/facebook/ads/redexgen/X/Mi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/IS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/IS;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/IS;)V
    .locals 0

    .line 11479
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4O;->A00:Lcom/facebook/ads/redexgen/X/IS;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Mi;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7v;)V
    .locals 1

    .line 11480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4O;->A00:Lcom/facebook/ads/redexgen/X/IS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IS;->A00(Lcom/facebook/ads/redexgen/X/IS;)Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4O;->A00:Lcom/facebook/ads/redexgen/X/IS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IS;->A05()V

    .line 11482
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 11483
    check-cast p1, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4O;->A00(Lcom/facebook/ads/redexgen/X/7v;)V

    return-void
.end method
