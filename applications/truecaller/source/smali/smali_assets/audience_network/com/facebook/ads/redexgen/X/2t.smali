.class public final Lcom/facebook/ads/redexgen/X/2t;
.super Lcom/facebook/ads/redexgen/X/Ba;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/BQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CeaInputBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Ba;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/ads/redexgen/X/2t;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6789
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ba;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/GU;)V
    .locals 0

    .line 6790
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2t;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/2t;)I
    .locals 7
    .param p1    # Lcom/facebook/ads/redexgen/X/2t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6791
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Be;->A04()Z

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Be;->A04()Z

    move-result v0

    const/4 v6, 0x1

    if-eq v1, v0, :cond_1

    .line 6792
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Be;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v6

    :cond_0
    const/4 v6, -0x1

    goto :goto_0

    .line 6793
    :cond_1
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/WZ;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/WZ;->A00:J

    sub-long/2addr v2, v0

    .line 6794
    .local p0, "delta":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 6795
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/2t;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/2t;->A00:J

    sub-long/2addr v2, v0

    .line 6796
    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 6797
    const/4 v0, 0x0

    return v0

    .line 6798
    :cond_2
    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    :goto_1
    return v6

    :cond_3
    const/4 v6, -0x1

    goto :goto_1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/2t;J)J
    .locals 0

    .line 6799
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/2t;->A00:J

    return-wide p1
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6800
    check-cast p1, Lcom/facebook/ads/redexgen/X/2t;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2t;->A00(Lcom/facebook/ads/redexgen/X/2t;)I

    move-result v0

    return v0
.end method
