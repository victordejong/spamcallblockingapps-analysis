.class public final Lcom/facebook/ads/redexgen/X/JP;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/JQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdEventBuilder"
.end annotation


# instance fields
.field public A00:D

.field public A01:Lcom/facebook/ads/redexgen/X/JV;

.field public A02:Lcom/facebook/ads/redexgen/X/JW;

.field public A03:Ljava/lang/String;

.field public A04:Ljava/lang/String;

.field public A05:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A06:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(D)Lcom/facebook/ads/redexgen/X/JP;
    .locals 0

    .line 40512
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/JP;->A00:D

    .line 40513
    return-object p0
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/JV;)Lcom/facebook/ads/redexgen/X/JP;
    .locals 0

    .line 40514
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JP;->A01:Lcom/facebook/ads/redexgen/X/JV;

    .line 40515
    return-object p0
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/JP;
    .locals 0

    .line 40516
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JP;->A02:Lcom/facebook/ads/redexgen/X/JW;

    .line 40517
    return-object p0
.end method

.method public final A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;
    .locals 0

    .line 40518
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JP;->A03:Ljava/lang/String;

    .line 40519
    return-object p0
.end method

.method public final A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;
    .locals 0

    .line 40520
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JP;->A04:Ljava/lang/String;

    .line 40521
    return-object p0
.end method

.method public final A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/JP;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/JP;"
        }
    .end annotation

    .line 40522
    .local p1, "mData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JP;->A05:Ljava/util/Map;

    .line 40523
    return-object p0
.end method

.method public final A06(Z)Lcom/facebook/ads/redexgen/X/JP;
    .locals 0

    .line 40524
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/JP;->A06:Z

    .line 40525
    return-object p0
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/JQ;
    .locals 10

    .line 40526
    new-instance v0, Lcom/facebook/ads/redexgen/X/JQ;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JP;->A04:Ljava/lang/String;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/JP;->A00:D

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/JP;->A03:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/JP;->A05:Ljava/util/Map;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/JP;->A01:Lcom/facebook/ads/redexgen/X/JV;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/JP;->A02:Lcom/facebook/ads/redexgen/X/JW;

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/JP;->A06:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/JQ;-><init>(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/JV;Lcom/facebook/ads/redexgen/X/JW;Z)V

    return-object v0
.end method
