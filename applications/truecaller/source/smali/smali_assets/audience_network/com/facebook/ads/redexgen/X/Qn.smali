.class public final Lcom/facebook/ads/redexgen/X/Qn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Qm;
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/Qd;

.field public A04:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:I

.field public final A06:I


# direct methods
.method public constructor <init>(IIIIILjava/util/Map;Lcom/facebook/ads/redexgen/X/Qd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Qd;",
            ")V"
        }
    .end annotation

    .line 50286
    .local p6, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50287
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Qn;->A06:I

    .line 50288
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Qn;->A00:I

    .line 50289
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Qn;->A02:I

    .line 50290
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Qn;->A05:I

    .line 50291
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Qn;->A01:I

    .line 50292
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Qn;->A04:Ljava/util/Map;

    .line 50293
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/Qn;->A03:Lcom/facebook/ads/redexgen/X/Qd;

    .line 50294
    return-void
.end method

.method public synthetic constructor <init>(IIIIILjava/util/Map;Lcom/facebook/ads/redexgen/X/Qd;Lcom/facebook/ads/redexgen/X/Ql;)V
    .locals 0

    .line 50295
    invoke-direct/range {p0 .. p7}, Lcom/facebook/ads/redexgen/X/Qn;-><init>(IIIIILjava/util/Map;Lcom/facebook/ads/redexgen/X/Qd;)V

    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 50296
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Qn;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 50297
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Qn;->A01:I

    return v0
.end method

.method public final A02()I
    .locals 1

    .line 50298
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Qn;->A02:I

    return v0
.end method

.method public final A03()I
    .locals 1

    .line 50299
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Qn;->A05:I

    return v0
.end method

.method public final A04()I
    .locals 1

    .line 50300
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Qn;->A06:I

    return v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/Qd;
    .locals 1

    .line 50301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qn;->A03:Lcom/facebook/ads/redexgen/X/Qd;

    return-object v0
.end method

.method public final A06()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qn;->A04:Ljava/util/Map;

    return-object v0
.end method
