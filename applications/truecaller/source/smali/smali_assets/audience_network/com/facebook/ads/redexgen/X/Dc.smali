.class public final Lcom/facebook/ads/redexgen/X/Dc;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/VY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PesReader"
.end annotation


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public final A05:Lcom/facebook/ads/redexgen/X/DV;

.field public final A06:Lcom/facebook/ads/redexgen/X/IU;

.field public final A07:Lcom/facebook/ads/redexgen/X/Ih;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/DV;Lcom/facebook/ads/redexgen/X/Ih;)V
    .locals 2

    .line 29013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29014
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dc;->A05:Lcom/facebook/ads/redexgen/X/DV;

    .line 29015
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Dc;->A07:Lcom/facebook/ads/redexgen/X/Ih;

    .line 29016
    const/16 v0, 0x40

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IU;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    .line 29017
    return-void
.end method

.method private A00()V
    .locals 3

    .line 29018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 29019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IU;->A0F()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A03:Z

    .line 29020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IU;->A0F()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A02:Z

    .line 29021
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 29022
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A00:I

    .line 29023
    return-void
.end method

.method private A01()V
    .locals 10

    .line 29024
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A01:J

    .line 29025
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A03:Z

    if-eqz v0, :cond_1

    .line 29026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 29027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v0

    int-to-long v1, v0

    const/16 v9, 0x1e

    shl-long/2addr v1, v9

    .line 29028
    .local v0, "pts":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 29029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v3, v0

    or-long/2addr v1, v3

    .line 29030
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 29031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v0

    int-to-long v3, v0

    or-long/2addr v1, v3

    .line 29032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 29033
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A04:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A02:Z

    if-eqz v0, :cond_0

    .line 29034
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 29035
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v0

    int-to-long v3, v0

    shl-long/2addr v3, v9

    .line 29036
    .local p0, "dts":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 29037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v5, v0

    or-long/2addr v3, v5

    .line 29038
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 29039
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v0

    int-to-long v5, v0

    or-long/2addr v3, v5

    .line 29040
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 29041
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A07:Lcom/facebook/ads/redexgen/X/Ih;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/Ih;->A07(J)J

    .line 29042
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/Dc;->A04:Z

    .line 29043
    .end local p0    # "dts":J
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A07:Lcom/facebook/ads/redexgen/X/Ih;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ih;->A07(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A01:J

    .line 29044
    .end local v0    # "pts":J
    :cond_1
    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 29045
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A04:Z

    .line 29046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A05:Lcom/facebook/ads/redexgen/X/DV;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/DV;->AE8()V

    .line 29047
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/IV;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AS;
        }
    .end annotation

    .line 29048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IU;->A00:[B

    const/4 v2, 0x0

    const/4 v0, 0x3

    invoke-virtual {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0c([BII)V

    .line 29049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IU;->A07(I)V

    .line 29050
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dc;->A00()V

    .line 29051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IU;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A00:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0c([BII)V

    .line 29052
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IU;->A07(I)V

    .line 29053
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dc;->A01()V

    .line 29054
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Dc;->A05:Lcom/facebook/ads/redexgen/X/DV;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Dc;->A01:J

    const/4 v0, 0x1

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/DV;->ACm(JZ)V

    .line 29055
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A05:Lcom/facebook/ads/redexgen/X/DV;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/DV;->A46(Lcom/facebook/ads/redexgen/X/IV;)V

    .line 29056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A05:Lcom/facebook/ads/redexgen/X/DV;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/DV;->ACl()V

    .line 29057
    return-void
.end method
