.class public final Lcom/facebook/ads/redexgen/X/1p;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/95;

.field public final A02:Ljava/lang/String;

.field public final A03:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/95;Ljava/lang/String;J)V
    .locals 0

    .line 4608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4609
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1p;->A03:Lorg/json/JSONObject;

    .line 4610
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1p;->A01:Lcom/facebook/ads/redexgen/X/95;

    .line 4611
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/1p;->A02:Ljava/lang/String;

    .line 4612
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/1p;->A00:J

    .line 4613
    return-void
.end method


# virtual methods
.method public final A00()J
    .locals 2

    .line 4614
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1p;->A00:J

    return-wide v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/95;
    .locals 1

    .line 4615
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1p;->A01:Lcom/facebook/ads/redexgen/X/95;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .locals 1

    .line 4616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1p;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A03()Lorg/json/JSONObject;
    .locals 1

    .line 4617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1p;->A03:Lorg/json/JSONObject;

    return-object v0
.end method
