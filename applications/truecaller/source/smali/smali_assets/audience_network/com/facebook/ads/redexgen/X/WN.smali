.class public final Lcom/facebook/ads/redexgen/X/WN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CY;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/CY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unseekable"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/CX;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 62970
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/WN;-><init>(JJ)V

    .line 62971
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3

    .line 62972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62973
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/WN;->A00:J

    .line 62974
    const-wide/16 v1, 0x0

    cmp-long v0, p3, v1

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/CZ;->A04:Lcom/facebook/ads/redexgen/X/CZ;

    :goto_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/CX;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/CX;-><init>(Lcom/facebook/ads/redexgen/X/CZ;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/WN;->A01:Lcom/facebook/ads/redexgen/X/CX;

    .line 62975
    return-void

    .line 62976
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/CZ;

    invoke-direct {v0, v1, v2, p3, p4}, Lcom/facebook/ads/redexgen/X/CZ;-><init>(JJ)V

    goto :goto_0
.end method


# virtual methods
.method public final A6O()J
    .locals 2

    .line 62977
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A00:J

    return-wide v0
.end method

.method public final A7I(J)Lcom/facebook/ads/redexgen/X/CX;
    .locals 1

    .line 62978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A01:Lcom/facebook/ads/redexgen/X/CX;

    return-object v0
.end method

.method public final A8Y()Z
    .locals 1

    .line 62979
    const/4 v0, 0x0

    return v0
.end method
