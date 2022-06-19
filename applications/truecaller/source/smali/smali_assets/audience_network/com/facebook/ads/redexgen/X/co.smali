.class public abstract Lcom/facebook/ads/redexgen/X/co;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0n;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/RewardData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(I)V
    .locals 0

    .line 72115
    iput p1, p0, Lcom/facebook/ads/redexgen/X/co;->A00:I

    .line 72116
    return-void
.end method

.method public final A01(Lcom/facebook/ads/RewardData;)V
    .locals 0

    .line 72117
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/co;->A01:Lcom/facebook/ads/RewardData;

    .line 72118
    return-void
.end method

.method public abstract A0D()I
.end method

.method public abstract A0E()Lcom/facebook/ads/redexgen/X/16;
.end method

.method public abstract A0F()Z
.end method

.method public final A75()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 72119
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method
