.class public final Lcom/facebook/ads/redexgen/X/81;
.super Lcom/facebook/ads/redexgen/X/Kk;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7x;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7x;)V
    .locals 0

    .line 17512
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/81;->A00:Lcom/facebook/ads/redexgen/X/7x;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kk;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Ko;)V
    .locals 2

    .line 17513
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/81;->A00:Lcom/facebook/ads/redexgen/X/7x;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/7x;->A09(Lcom/facebook/ads/redexgen/X/7x;)Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getDuration()I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/7x;->A00:I

    .line 17514
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 17515
    check-cast p1, Lcom/facebook/ads/redexgen/X/Ko;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/81;->A00(Lcom/facebook/ads/redexgen/X/Ko;)V

    return-void
.end method
