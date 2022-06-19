.class public final Lcom/facebook/ads/redexgen/X/Es;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/HO;

.field public final A01:Lcom/facebook/ads/redexgen/X/HQ;

.field public final A02:Lcom/facebook/ads/redexgen/X/HQ;

.field public final A03:Lcom/facebook/ads/redexgen/X/Hq;

.field public final A04:Lcom/facebook/ads/redexgen/X/IZ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/HQ;)V
    .locals 6

    .line 32293
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Es;-><init>(Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/HQ;Lcom/facebook/ads/redexgen/X/HQ;Lcom/facebook/ads/redexgen/X/HO;Lcom/facebook/ads/redexgen/X/IZ;)V

    .line 32294
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/HQ;Lcom/facebook/ads/redexgen/X/HQ;Lcom/facebook/ads/redexgen/X/HO;Lcom/facebook/ads/redexgen/X/IZ;)V
    .locals 0
    .param p3    # Lcom/facebook/ads/redexgen/X/HQ;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/redexgen/X/HO;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/ads/redexgen/X/IZ;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32296
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32297
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Es;->A03:Lcom/facebook/ads/redexgen/X/Hq;

    .line 32298
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Es;->A02:Lcom/facebook/ads/redexgen/X/HQ;

    .line 32299
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Es;->A01:Lcom/facebook/ads/redexgen/X/HQ;

    .line 32300
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Es;->A00:Lcom/facebook/ads/redexgen/X/HO;

    .line 32301
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Es;->A04:Lcom/facebook/ads/redexgen/X/IZ;

    .line 32302
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/Hq;
    .locals 1

    .line 32303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Es;->A03:Lcom/facebook/ads/redexgen/X/Hq;

    return-object v0
.end method

.method public final A01(Z)Lcom/facebook/ads/redexgen/X/UN;
    .locals 11

    .line 32304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Es;->A01:Lcom/facebook/ads/redexgen/X/HQ;

    if-eqz v0, :cond_0

    .line 32305
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HQ;->A4C()Lcom/facebook/ads/redexgen/X/HR;

    move-result-object v3

    .line 32306
    .local v3, "cacheReadDataSource":Lcom/facebook/ads/redexgen/X/HR;
    :goto_0
    if-eqz p1, :cond_1

    .line 32307
    new-instance v0, Lcom/facebook/ads/redexgen/X/UN;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Es;->A03:Lcom/facebook/ads/redexgen/X/Hq;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ub;->A02:Lcom/facebook/ads/redexgen/X/Ub;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/UN;-><init>(Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/HR;Lcom/facebook/ads/redexgen/X/HR;Lcom/facebook/ads/redexgen/X/HP;ILcom/facebook/ads/redexgen/X/Hs;)V

    return-object v0

    .line 32308
    :cond_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/Ua;-><init>()V

    goto :goto_0

    .line 32309
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Es;->A00:Lcom/facebook/ads/redexgen/X/HO;

    if-eqz v0, :cond_3

    .line 32310
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HO;->createDataSink()Lcom/facebook/ads/redexgen/X/HP;

    move-result-object v8

    .line 32311
    .local v5, "cacheWriteDataSink":Lcom/facebook/ads/redexgen/X/HP;
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Es;->A02:Lcom/facebook/ads/redexgen/X/HQ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HQ;->A4C()Lcom/facebook/ads/redexgen/X/HR;

    move-result-object v6

    .line 32312
    .local p0, "upstream":Lcom/facebook/ads/redexgen/X/HR;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Es;->A04:Lcom/facebook/ads/redexgen/X/IZ;

    if-nez v2, :cond_2

    .line 32313
    .end local p0    # "upstream":Lcom/facebook/ads/redexgen/X/HR;
    .local v2, "upstream":Lcom/facebook/ads/redexgen/X/HR;
    :goto_2
    new-instance v4, Lcom/facebook/ads/redexgen/X/UN;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Es;->A03:Lcom/facebook/ads/redexgen/X/Hq;

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/UN;-><init>(Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/HR;Lcom/facebook/ads/redexgen/X/HR;Lcom/facebook/ads/redexgen/X/HP;ILcom/facebook/ads/redexgen/X/Hs;)V

    return-object v4

    .line 32314
    :cond_2
    const/16 v1, -0x3e8

    new-instance v0, Lcom/facebook/ads/redexgen/X/US;

    invoke-direct {v0, v6, v2, v1}, Lcom/facebook/ads/redexgen/X/US;-><init>(Lcom/facebook/ads/redexgen/X/HR;Lcom/facebook/ads/redexgen/X/IZ;I)V

    move-object v6, v0

    goto :goto_2

    .line 32315
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Es;->A03:Lcom/facebook/ads/redexgen/X/Hq;

    const-wide/32 v0, 0x200000

    new-instance v8, Lcom/facebook/ads/redexgen/X/UO;

    invoke-direct {v8, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/UO;-><init>(Lcom/facebook/ads/redexgen/X/Hq;J)V

    goto :goto_1
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/IZ;
    .locals 1

    .line 32316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Es;->A04:Lcom/facebook/ads/redexgen/X/IZ;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/IZ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IZ;-><init>()V

    goto :goto_0
.end method
