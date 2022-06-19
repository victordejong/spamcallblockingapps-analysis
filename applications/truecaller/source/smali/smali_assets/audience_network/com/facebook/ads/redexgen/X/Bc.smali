.class public final Lcom/facebook/ads/redexgen/X/Bc;
.super Lcom/facebook/ads/redexgen/X/VA;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/FI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;,
        Lcom/facebook/ads/redexgen/X/V5;,
        Lcom/facebook/ads/internal/exoplayer2/source/ExtractorMediaSource$EventListener;
    }
.end annotation


# instance fields
.field public A00:J

.field public A01:Z

.field public final A02:I

.field public final A03:I

.field public final A04:Landroid/net/Uri;

.field public final A05:Lcom/facebook/ads/redexgen/X/CS;

.field public final A06:Lcom/facebook/ads/redexgen/X/HQ;

.field public final A07:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A08:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HQ;Lcom/facebook/ads/redexgen/X/CS;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 2
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23959
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/VA;-><init>()V

    .line 23960
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bc;->A04:Landroid/net/Uri;

    .line 23961
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Bc;->A06:Lcom/facebook/ads/redexgen/X/HQ;

    .line 23962
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Bc;->A05:Lcom/facebook/ads/redexgen/X/CS;

    .line 23963
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Bc;->A03:I

    .line 23964
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Bc;->A08:Ljava/lang/String;

    .line 23965
    iput p6, p0, Lcom/facebook/ads/redexgen/X/Bc;->A02:I

    .line 23966
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Bc;->A00:J

    .line 23967
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/Bc;->A07:Ljava/lang/Object;

    .line 23968
    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HQ;Lcom/facebook/ads/redexgen/X/CS;ILjava/lang/String;ILjava/lang/Object;Lcom/facebook/ads/redexgen/X/FJ;)V
    .locals 0

    .line 23969
    invoke-direct/range {p0 .. p7}, Lcom/facebook/ads/redexgen/X/Bc;-><init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HQ;Lcom/facebook/ads/redexgen/X/CS;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private A00(JZ)V
    .locals 7

    .line 23970
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Bc;->A00:J

    .line 23971
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Bc;->A01:Z

    .line 23972
    new-instance v1, Lcom/facebook/ads/redexgen/X/V1;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Bc;->A00:J

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Bc;->A01:Z

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Bc;->A07:Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/V1;-><init>(JZZLjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/VA;->A01(Lcom/facebook/ads/redexgen/X/Ao;Ljava/lang/Object;)V

    .line 23973
    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 0

    .line 23974
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/Wo;Z)V
    .locals 3

    .line 23975
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bc;->A00:J

    const/4 v0, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Bc;->A00(JZ)V

    .line 23976
    return-void
.end method

.method public final A4O(Lcom/facebook/ads/redexgen/X/FL;Lcom/facebook/ads/redexgen/X/HJ;)Lcom/facebook/ads/redexgen/X/V3;
    .locals 11

    .line 23977
    iget v0, p1, Lcom/facebook/ads/redexgen/X/FL;->A02:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A03(Z)V

    .line 23978
    new-instance v1, Lcom/facebook/ads/redexgen/X/Bk;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Bc;->A04:Landroid/net/Uri;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bc;->A06:Lcom/facebook/ads/redexgen/X/HQ;

    .line 23979
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HQ;->A4C()Lcom/facebook/ads/redexgen/X/HR;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bc;->A05:Lcom/facebook/ads/redexgen/X/CS;

    .line 23980
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CS;->A4G()[Lcom/facebook/ads/redexgen/X/CP;

    move-result-object v4

    iget v5, p0, Lcom/facebook/ads/redexgen/X/Bc;->A03:I

    .line 23981
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/VA;->A00(Lcom/facebook/ads/redexgen/X/FL;)Lcom/facebook/ads/redexgen/X/FY;

    move-result-object v6

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/Bc;->A08:Ljava/lang/String;

    iget v10, p0, Lcom/facebook/ads/redexgen/X/Bc;->A02:I

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/redexgen/X/Bk;-><init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HR;[Lcom/facebook/ads/redexgen/X/CP;ILcom/facebook/ads/redexgen/X/FY;Lcom/facebook/ads/redexgen/X/FI;Lcom/facebook/ads/redexgen/X/HJ;Ljava/lang/String;I)V

    .line 23982
    return-object v1

    .line 23983
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A9P()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23984
    return-void
.end method

.method public final AC5(JZ)V
    .locals 3

    .line 23985
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    iget-wide p1, p0, Lcom/facebook/ads/redexgen/X/Bc;->A00:J

    .line 23986
    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bc;->A00:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bc;->A01:Z

    if-ne v0, p3, :cond_1

    .line 23987
    return-void

    .line 23988
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Bc;->A00(JZ)V

    .line 23989
    return-void
.end method

.method public final ADX(Lcom/facebook/ads/redexgen/X/V3;)V
    .locals 0

    .line 23990
    check-cast p1, Lcom/facebook/ads/redexgen/X/Bk;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Bk;->A0R()V

    .line 23991
    return-void
.end method
