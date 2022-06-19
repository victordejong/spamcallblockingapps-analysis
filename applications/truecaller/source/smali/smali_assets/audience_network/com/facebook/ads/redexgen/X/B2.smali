.class public final Lcom/facebook/ads/redexgen/X/B2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/UL;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/UL;",
        "Ljava/util/Comparator<",
        "Lcom/facebook/ads/redexgen/X/Hu;",
        ">;"
    }
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public final A01:J

.field public final A02:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/facebook/ads/redexgen/X/Hu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qrCZDebBZXOMsu5PI8FdamZv"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "usPTrKdLrE7MLvxS6mJMRwkls4hZpcPz"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "BDrpv9J1bckqz2zbQbGMwvdv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cHdTuf55w1r5Lcr9n47avjSAGBdp9rLc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "v1mI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NFtkBlX9Mz"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jBDMosIM65rjrOuIbY8WA7ZUxyDm84U3"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/B2;->A03:[Ljava/lang/String;

    .line 22824
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 22825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22826
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/B2;->A01:J

    .line 22827
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/B2;->A02:Ljava/util/TreeSet;

    .line 22828
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Hu;Lcom/facebook/ads/redexgen/X/Hu;)I
    .locals 5

    .line 22829
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/Hu;->A00:J

    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/Hu;->A00:J

    sub-long/2addr v3, v0

    .line 22830
    .local p0, "lastAccessTimestampDelta":J
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 22831
    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/Hu;->A00(Lcom/facebook/ads/redexgen/X/Hu;)I

    move-result v0

    return v0

    .line 22832
    :cond_0
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/Hu;->A00:J

    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/Hu;->A00:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Hq;J)V
    .locals 5

    .line 22833
    :catch_0
    :goto_0
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/B2;->A00:J

    add-long/2addr v3, p2

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/B2;->A01:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B2;->A02:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/B2;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/B2;->A03:[Ljava/lang/String;

    const-string v1, "3qXh8T5e4LOlD1IWJEc6SNWF"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "YJzC3pPkQPrTmiUzc4g95RWz"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    .line 22834
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B2;->A02:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Hu;

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Hq;->ADd(Lcom/facebook/ads/redexgen/X/Hu;)V

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Ho; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 22835
    :cond_1
    return-void
.end method


# virtual methods
.method public final AC7(Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/Hu;)V
    .locals 4

    .line 22836
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B2;->A02:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 22837
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/B2;->A00:J

    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/Hu;->A01:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/B2;->A00:J

    .line 22838
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/B2;->A01(Lcom/facebook/ads/redexgen/X/Hq;J)V

    .line 22839
    return-void
.end method

.method public final AC8(Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/Hu;)V
    .locals 4

    .line 22840
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B2;->A02:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 22841
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/B2;->A00:J

    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/Hu;->A01:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/B2;->A00:J

    .line 22842
    return-void
.end method

.method public final AC9(Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/Hu;Lcom/facebook/ads/redexgen/X/Hu;)V
    .locals 0

    .line 22843
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/B2;->AC8(Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/Hu;)V

    .line 22844
    invoke-virtual {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/B2;->AC7(Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/Hu;)V

    .line 22845
    return-void
.end method

.method public final ACA(Lcom/facebook/ads/redexgen/X/Hq;Ljava/lang/String;JJ)V
    .locals 0

    .line 22846
    invoke-direct {p0, p1, p5, p6}, Lcom/facebook/ads/redexgen/X/B2;->A01(Lcom/facebook/ads/redexgen/X/Hq;J)V

    .line 22847
    return-void
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 22848
    check-cast p1, Lcom/facebook/ads/redexgen/X/Hu;

    check-cast p2, Lcom/facebook/ads/redexgen/X/Hu;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/B2;->A00(Lcom/facebook/ads/redexgen/X/Hu;Lcom/facebook/ads/redexgen/X/Hu;)I

    move-result v0

    return v0
.end method
