.class public final Lcom/facebook/ads/redexgen/X/7a;
.super Lcom/facebook/ads/redexgen/X/Kk;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7T;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7T;)V
    .locals 0

    .line 17247
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7a;->A00:Lcom/facebook/ads/redexgen/X/7T;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kk;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Ko;)V
    .locals 2

    .line 17248
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7a;->A00:Lcom/facebook/ads/redexgen/X/7T;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->setVisibility(I)V

    .line 17249
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 17250
    check-cast p1, Lcom/facebook/ads/redexgen/X/Ko;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7a;->A00(Lcom/facebook/ads/redexgen/X/Ko;)V

    return-void
.end method
