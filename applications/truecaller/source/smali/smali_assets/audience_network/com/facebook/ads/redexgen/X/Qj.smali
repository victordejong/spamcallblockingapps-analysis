.class public final Lcom/facebook/ads/redexgen/X/Qj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Qk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Qn;

.field public A01:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A02:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A03:Z

.field public A04:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Qj;->A04:Z

    .line 50237
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/Qn;)Lcom/facebook/ads/redexgen/X/Qj;
    .locals 0

    .line 50238
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Qj;->A00:Lcom/facebook/ads/redexgen/X/Qn;

    .line 50239
    return-object p0
.end method

.method public final A01(Ljava/util/Set;)Lcom/facebook/ads/redexgen/X/Qj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/Qj;"
        }
    .end annotation

    .line 50240
    .local p1, "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Qj;->A01:Ljava/util/Set;

    .line 50241
    return-object p0
.end method

.method public final A02(Ljava/util/Set;)Lcom/facebook/ads/redexgen/X/Qj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/Qj;"
        }
    .end annotation

    .line 50242
    .local p1, "pinnedPublicKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Qj;->A02:Ljava/util/Set;

    .line 50243
    return-object p0
.end method

.method public final A03(Z)Lcom/facebook/ads/redexgen/X/Qj;
    .locals 0

    .line 50244
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Qj;->A04:Z

    .line 50245
    return-object p0
.end method

.method public final A04(Z)Lcom/facebook/ads/redexgen/X/Qj;
    .locals 0

    .line 50246
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Qj;->A03:Z

    .line 50247
    return-object p0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/Qk;
    .locals 7

    .line 50248
    new-instance v0, Lcom/facebook/ads/redexgen/X/Qk;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Qj;->A00:Lcom/facebook/ads/redexgen/X/Qn;

    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Qj;->A04:Z

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Qj;->A02:Ljava/util/Set;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Qj;->A01:Ljava/util/Set;

    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Qj;->A03:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Qk;-><init>(Lcom/facebook/ads/redexgen/X/Qn;ZLjava/util/Set;Ljava/util/Set;ZLcom/facebook/ads/redexgen/X/Qi;)V

    return-object v0
.end method
