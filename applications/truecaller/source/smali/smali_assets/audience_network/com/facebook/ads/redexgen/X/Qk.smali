.class public final Lcom/facebook/ads/redexgen/X/Qk;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Qj;
    }
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
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Qn;ZLjava/util/Set;Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Qn;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 50249
    .local p3, "pinnedPublicKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50250
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Qk;->A00:Lcom/facebook/ads/redexgen/X/Qn;

    .line 50251
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Qk;->A04:Z

    .line 50252
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Qk;->A02:Ljava/util/Set;

    .line 50253
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Qk;->A01:Ljava/util/Set;

    .line 50254
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/Qk;->A03:Z

    .line 50255
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Qn;ZLjava/util/Set;Ljava/util/Set;ZLcom/facebook/ads/redexgen/X/Qi;)V
    .locals 0

    .line 50256
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Qk;-><init>(Lcom/facebook/ads/redexgen/X/Qn;ZLjava/util/Set;Ljava/util/Set;Z)V

    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/Qn;
    .locals 1

    .line 50257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qk;->A00:Lcom/facebook/ads/redexgen/X/Qn;

    return-object v0
.end method

.method public final A01()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qk;->A01:Ljava/util/Set;

    return-object v0
.end method

.method public final A02()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qk;->A02:Ljava/util/Set;

    return-object v0
.end method

.method public final A03()Z
    .locals 1

    .line 50260
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Qk;->A04:Z

    return v0
.end method

.method public final A04()Z
    .locals 1

    .line 50261
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Qk;->A03:Z

    return v0
.end method
