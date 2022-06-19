.class public final Lcom/facebook/ads/redexgen/X/Xp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Xn;->A0I()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Xn;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xn;)V
    .locals 0

    .line 66505
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xp;->A00:Lcom/facebook/ads/redexgen/X/Xn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 3

    .line 66506
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Xp;->A00:Lcom/facebook/ads/redexgen/X/Xn;

    .line 66507
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/78;->A02(J)J

    move-result-wide v0

    .line 66508
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/6b;->A06(J)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0
.end method
