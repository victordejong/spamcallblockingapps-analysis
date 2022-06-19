.class public final Lcom/facebook/ads/redexgen/X/CU;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/IV;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24914
    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A00:Lcom/facebook/ads/redexgen/X/IV;

    .line 24915
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/EF;)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    .locals 8
    .param p2    # Lcom/facebook/ads/redexgen/X/EF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 24916
    const/4 v5, 0x0

    .line 24917
    .local p0, "peekedId3Bytes":I
    const/4 v7, 0x0

    .line 24918
    .local p1, "metadata":Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A00:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/16 v6, 0xa

    const/4 v4, 0x0

    invoke-interface {p1, v0, v4, v6}, Lcom/facebook/ads/redexgen/X/CQ;->ACp([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A00:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 24920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A00:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0G()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/VH;->A03:I

    if-eq v1, v0, :cond_0

    .line 24921
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/EF;
    :catch_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->ADr()V

    .line 24922
    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/CQ;->A3J(I)V

    .line 24923
    return-object v7

    .line 24924
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CU;->A00:Lcom/facebook/ads/redexgen/X/IV;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 24925
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A00:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0D()I

    move-result v3

    .line 24926
    .local p2, "framesLength":I
    add-int/lit8 v2, v3, 0xa

    .line 24927
    .local v0, "tagLength":I
    if-nez v7, :cond_1

    .line 24928
    new-array v1, v2, [B

    .line 24929
    .local v0, "id3Data":[B
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A00:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    invoke-static {v0, v4, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24930
    invoke-interface {p1, v1, v6, v3}, Lcom/facebook/ads/redexgen/X/CQ;->ACp([BII)V

    .line 24931
    new-instance v0, Lcom/facebook/ads/redexgen/X/VH;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/VH;-><init>(Lcom/facebook/ads/redexgen/X/EF;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/VH;->A0O([BI)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    move-result-object v7

    .line 24932
    .end local v0    # "id3Data":[B
    :goto_1
    add-int/2addr v5, v2

    .line 24933
    .end local p2    # "framesLength":I
    .end local v0
    goto :goto_0

    .line 24934
    :cond_1
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/CQ;->A3J(I)V

    goto :goto_1
.end method
