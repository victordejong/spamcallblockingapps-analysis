.class public final Lcom/facebook/ads/redexgen/X/WV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/C9;
.implements Lcom/facebook/ads/redexgen/X/Bq;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;,
        Lcom/facebook/ads/redexgen/X/Bz;,
        Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSessionManager$Mode;,
        Lcom/facebook/ads/redexgen/X/C0;,
        Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/ads/redexgen/X/CA;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/C9<",
        "TT;>;",
        "Lcom/facebook/ads/redexgen/X/Bq<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Landroid/os/Looper;

.field public A02:[B

.field public final A03:I

.field public final A04:Lcom/facebook/ads/redexgen/X/Bw;

.field public final A05:Lcom/facebook/ads/redexgen/X/CG;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/CG<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final A06:Lcom/facebook/ads/redexgen/X/CK;

.field public final A07:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/WW<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final A09:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/WW<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final A0A:Ljava/util/UUID;

.field public final A0B:Z

.field public volatile A0C:Lcom/facebook/ads/redexgen/X/Bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/WV<",
            "TT;>.MediaDrmHandler;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0jHq0iWGhsIySlQoDiDGup3biHh1u6"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "i2l5O7Dt7qLUzCpPXTMvAA2Zo4KmgWR2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "WWWB5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "5af5rLtbMnzIwH5Nva3tIodv6"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "N1ag4SyeR1bkHrLLU69ntDAZG70pDTMe"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aZncB9cokv9961OmHq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "gIBDsbvLQEgXIogWiAeZHaFgFZc1jweS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Prja9buVBy0glhaqAx1SHba3MELDXzlR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WV;->A0E:[Ljava/lang/String;

    .line 63153
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WV;->A03()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Ljava/util/UUID;Z)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    .locals 8

    .line 63154
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A01:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 63155
    .local p0, "matchingSchemeDatas":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;>;"
    const/4 v3, 0x0

    .local p1, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A01:I

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-ge v3, v0, :cond_5

    .line 63156
    invoke-virtual {p0, v3}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A01(I)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v4

    .line 63157
    .local p2, "schemeData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    invoke-virtual {v4, p1}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A02(Ljava/util/UUID;)Z

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/WV;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_0

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/WV;->A0E:[Ljava/lang/String;

    const-string v1, "V0Q9eaLMfBF3CEdW"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v5, :cond_1

    sget-object v0, Lcom/facebook/ads/redexgen/X/A3;->A01:Ljava/util/UUID;

    .line 63158
    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/facebook/ads/redexgen/X/A3;->A02:Ljava/util/UUID;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A02(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v6, 0x1

    .line 63159
    .local v0, "uuidMatches":Z
    :cond_2
    if-eqz v6, :cond_4

    iget-object v0, v4, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A04:[B

    if-nez v0, :cond_3

    if-eqz p2, :cond_4

    .line 63160
    :cond_3
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63161
    .end local p2    # "schemeData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    .end local v0    # "uuidMatches":Z
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63162
    .end local p1    # "i":I
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 63163
    const/4 v0, 0x0

    return-object v0

    .line 63164
    :cond_6
    sget-object v0, Lcom/facebook/ads/redexgen/X/A3;->A05:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 63165
    const/4 v4, 0x0

    .restart local p1    # "i":I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_a

    .line 63166
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    .line 63167
    .local p2, "matchingSchemeData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    invoke-virtual {v3}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A01()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v3, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A04:[B

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D8;->A00([B)I

    move-result v2

    .line 63168
    .local v3, "version":I
    :goto_3
    sget v0, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_7

    if-nez v2, :cond_7

    .line 63169
    return-object v3

    .line 63170
    :cond_7
    sget v0, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    if-lt v0, v1, :cond_8

    if-ne v2, v5, :cond_8

    .line 63171
    return-object v3

    .line 63172
    .end local p2    # "matchingSchemeData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    .end local v3    # "version":I
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 63173
    :cond_9
    const/4 v2, -0x1

    goto :goto_3

    .line 63174
    .end local p1    # "i":I
    :cond_a
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v1, Lcom/facebook/ads/redexgen/X/WV;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_b

    goto/16 :goto_1

    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/WV;->A0E:[Ljava/lang/String;

    const-string v1, "QMUEyZuv57oImxraVf5zIpun0ErJkPMX"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object v3
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/WV;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x25

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/WV;)Ljava/util/List;
    .locals 0

    .line 63175
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/WV;->A09:Ljava/util/List;

    return-object p0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x6c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WV;->A0D:[B

    return-void

    :array_0
    .array-data 1
        0x4at
        0x6bt
        0x68t
        0x6ft
        0x7bt
        0x62t
        0x7at
        0x4at
        0x7ct
        0x63t
        0x5dt
        0x6bt
        0x7dt
        0x7dt
        0x67t
        0x61t
        0x60t
        0x43t
        0x69t
        0x7ct
        0x9t
        0x3ft
        0x20t
        0x4t
        0x23t
        0x24t
        0x39t
        0x9t
        0x2ct
        0x39t
        0x2ct
        0x6dt
        0x22t
        0x23t
        0x21t
        0x34t
        0x6dt
        0x2et
        0x22t
        0x23t
        0x39t
        0x2ct
        0x24t
        0x23t
        0x3et
        0x6dt
        0x2et
        0x22t
        0x20t
        0x20t
        0x22t
        0x23t
        0x6dt
        0x1dt
        0x1et
        0x1et
        0x5t
        0x6dt
        0x1et
        0x2et
        0x25t
        0x28t
        0x20t
        0x28t
        0x9t
        0x2ct
        0x39t
        0x2ct
        0x63t
        0x6dt
        0xct
        0x3et
        0x3et
        0x38t
        0x20t
        0x24t
        0x23t
        0x2at
        0x6dt
        0x3et
        0x38t
        0x3dt
        0x3dt
        0x22t
        0x3ft
        0x39t
        0x6dt
        0x2bt
        0x22t
        0x3ft
        0x77t
        0x6dt
        0x6dt
        0x6ct
        0x6dt
        0x3ft
        0x78t
        0x79t
        0x78t
        0x68t
        0xat
        0xct
        0x7t
        0xat
        0x31t
        0x37t
        0x3ct
        0x21t
    .end array-data
.end method


# virtual methods
.method public final A04(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Bx;)V
    .locals 1

    .line 63176
    .local p1, "this":Lcom/facebook/ads/redexgen/X/WV;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A04:Lcom/facebook/ads/redexgen/X/Bw;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Bw;->A03(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Bx;)V

    .line 63177
    return-void
.end method

.method public final A2P(Landroid/os/Looper;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/redexgen/X/C8;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/facebook/ads/redexgen/X/C8<",
            "TT;>;"
        }
    .end annotation

    .line 63178
    .local v0, "this":Lcom/facebook/ads/redexgen/X/WV;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/WV;->A01:Landroid/os/Looper;

    const/4 v1, 0x0

    move-object/from16 v14, p1

    if-eqz v0, :cond_0

    if-ne v0, v14, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 63179
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/WV;->A09:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63180
    iput-object v14, v3, Lcom/facebook/ads/redexgen/X/WV;->A01:Landroid/os/Looper;

    .line 63181
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/WV;->A0C:Lcom/facebook/ads/redexgen/X/Bz;

    if-nez v0, :cond_1

    .line 63182
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bz;

    invoke-direct {v0, v3, v14}, Lcom/facebook/ads/redexgen/X/Bz;-><init>(Lcom/facebook/ads/redexgen/X/WV;Landroid/os/Looper;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/WV;->A0C:Lcom/facebook/ads/redexgen/X/Bz;

    .line 63183
    :cond_1
    const/4 v9, 0x0

    .line 63184
    .local p0, "schemeData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/WV;->A02:[B

    const/4 v5, 0x0

    if-nez v0, :cond_3

    .line 63185
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/WV;->A0A:Ljava/util/UUID;

    move-object/from16 v2, p2

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/WV;->A00(Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Ljava/util/UUID;Z)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v9

    .line 63186
    if-nez v9, :cond_3

    .line 63187
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/WV;->A0A:Ljava/util/UUID;

    new-instance v2, Lcom/facebook/ads/redexgen/X/C0;

    invoke-direct {v2, v0, v5}, Lcom/facebook/ads/redexgen/X/C0;-><init>(Ljava/util/UUID;Lcom/facebook/ads/redexgen/X/By;)V

    .line 63188
    .local v14, "error":Lcom/facebook/ads/redexgen/X/C0;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/WV;->A04:Lcom/facebook/ads/redexgen/X/Bw;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A04(Ljava/lang/Exception;)V

    .line 63189
    new-instance v1, Lcom/facebook/ads/redexgen/X/C6;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/C6;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/WU;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/WU;-><init>(Lcom/facebook/ads/redexgen/X/C6;)V

    return-object v0

    .line 63190
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 63191
    .end local p0    # "schemeData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    .local v0, "schemeData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    :cond_3
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/WV;->A0B:Z

    if-nez v0, :cond_7

    .line 63192
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/WV;->A09:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 63193
    .end local p0
    .end local v14    # "error":Lcom/facebook/ads/redexgen/X/C0;
    .local v2, "session":Lcom/facebook/ads/redexgen/X/WW;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    :goto_1
    if-nez v5, :cond_4

    .line 63194
    new-instance v5, Lcom/facebook/ads/redexgen/X/WW;

    iget-object v6, v3, Lcom/facebook/ads/redexgen/X/WV;->A0A:Ljava/util/UUID;

    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/WV;->A05:Lcom/facebook/ads/redexgen/X/CG;

    iget v10, v3, Lcom/facebook/ads/redexgen/X/WV;->A00:I

    iget-object v11, v3, Lcom/facebook/ads/redexgen/X/WV;->A02:[B

    iget-object v12, v3, Lcom/facebook/ads/redexgen/X/WV;->A07:Ljava/util/HashMap;

    iget-object v13, v3, Lcom/facebook/ads/redexgen/X/WV;->A06:Lcom/facebook/ads/redexgen/X/CK;

    iget-object v15, v3, Lcom/facebook/ads/redexgen/X/WV;->A04:Lcom/facebook/ads/redexgen/X/Bw;

    iget v0, v3, Lcom/facebook/ads/redexgen/X/WV;->A03:I

    move-object/from16 v8, p0

    move/from16 v16, v0

    invoke-direct/range {v5 .. v16}, Lcom/facebook/ads/redexgen/X/WW;-><init>(Ljava/util/UUID;Lcom/facebook/ads/redexgen/X/CG;Lcom/facebook/ads/redexgen/X/Bq;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;I[BLjava/util/HashMap;Lcom/facebook/ads/redexgen/X/CK;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/Bw;I)V

    .line 63195
    .end local v2    # "session":Lcom/facebook/ads/redexgen/X/WW;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    .restart local p0    # "schemeData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/WV;->A09:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63196
    .end local p0    # "schemeData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    .restart local v2    # "session":Lcom/facebook/ads/redexgen/X/WW;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    :cond_4
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/WW;->A0G()V

    .line 63197
    return-object v5

    .line 63198
    :cond_5
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/WV;->A09:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/WV;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/WV;->A0E:[Ljava/lang/String;

    const-string v1, "NYlDF58TVUPxDFfWvHrOlngI"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    check-cast v5, Lcom/facebook/ads/redexgen/X/WW;

    goto :goto_1

    .line 63199
    .end local p0
    :cond_7
    const/4 v4, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/WV;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 63200
    .restart local p0    # "schemeData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/WV;->A0E:[Ljava/lang/String;

    const-string v1, "2tfSkouS8gaRHNrU7OMeTyiBrWH6VnUA"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v9, :cond_9

    iget-object v5, v9, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A04:[B

    .line 63201
    .local v14, "initData":[B
    :cond_9
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/WV;->A09:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/WW;

    .line 63202
    .local v3, "existingSession":Lcom/facebook/ads/redexgen/X/WW;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    invoke-virtual {v1, v5}, Lcom/facebook/ads/redexgen/X/WW;->A0M([B)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 63203
    move-object v5, v1

    goto/16 :goto_1

    .line 63204
    :cond_b
    move-object v5, v4

    goto/16 :goto_1
.end method

.method public final A3v(Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Z
    .locals 6
    .param p1    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 63205
    .local v4, "this":Lcom/facebook/ads/redexgen/X/WV;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A02:[B

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 63206
    return v3

    .line 63207
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A0A:Ljava/util/UUID;

    invoke-static {p1, v0, v3}, Lcom/facebook/ads/redexgen/X/WV;->A00(Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Ljava/util/UUID;Z)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v5

    .line 63208
    .local p0, "schemeData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    const/4 v4, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/WV;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/WV;->A0E:[Ljava/lang/String;

    const-string v1, "f9Fo7yPZ7tYjgWekbXY"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v5, :cond_1

    .line 63209
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A01:I

    if-ne v0, v3, :cond_7

    invoke-virtual {p1, v4}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A01(I)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/A3;->A02:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A02(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 63210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14

    const/16 v1, 0x48

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A0A:Ljava/util/UUID;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63211
    :cond_1
    iget-object v4, p1, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A02:Ljava/lang/String;

    .line 63212
    .local v3, "schemeType":Ljava/lang/String;
    if-eqz v4, :cond_2

    const/16 v2, 0x64

    const/4 v1, 0x4

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63213
    :cond_2
    return v3

    .line 63214
    :cond_3
    const/16 v2, 0x5c

    const/4 v1, 0x4

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 63215
    const/16 v2, 0x60

    const/4 v1, 0x4

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 63216
    const/16 v2, 0x68

    const/4 v1, 0x4

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WV;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 63217
    :cond_4
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x19

    if-lt v1, v0, :cond_5

    :goto_0
    return v3

    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 63218
    :cond_6
    return v3

    .line 63219
    :cond_7
    return v4

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ABl()V
    .locals 2

    .line 63220
    .local v1, "this":Lcom/facebook/ads/redexgen/X/WV;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/WW;

    .line 63221
    .local v0, "session":Lcom/facebook/ads/redexgen/X/WW;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WW;->A0H()V

    .line 63222
    .end local v0    # "session":Lcom/facebook/ads/redexgen/X/WW;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    goto :goto_0

    .line 63223
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63224
    return-void
.end method

.method public final ABm(Ljava/lang/Exception;)V
    .locals 4

    .line 63225
    .local v0, "this":Lcom/facebook/ads/redexgen/X/WV;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/WW;

    .line 63226
    .local p1, "session":Lcom/facebook/ads/redexgen/X/WW;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/WW;->A0K(Ljava/lang/Exception;)V

    .line 63227
    .end local p1    # "session":Lcom/facebook/ads/redexgen/X/WW;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    goto :goto_0

    .line 63228
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/WV;->A08:Ljava/util/List;

    sget-object v2, Lcom/facebook/ads/redexgen/X/WV;->A0E:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/WV;->A0E:[Ljava/lang/String;

    const-string v1, "LfmgySfdwng"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 63229
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AD8(Lcom/facebook/ads/redexgen/X/WW;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/WW<",
            "TT;>;)V"
        }
    .end annotation

    .line 63230
    .local v0, "this":Lcom/facebook/ads/redexgen/X/WV;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    .local v0, "session":Lcom/facebook/ads/redexgen/X/WW;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A08:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 63232
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/WW;->A0I()V

    .line 63233
    :cond_0
    return-void
.end method

.method public final ADY(Lcom/facebook/ads/redexgen/X/C8;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/C8<",
            "TT;>;)V"
        }
    .end annotation

    .line 63234
    .local p1, "this":Lcom/facebook/ads/redexgen/X/WV;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    .local v0, "session":Lcom/facebook/ads/redexgen/X/C8;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSession<TT;>;"
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/WU;

    if-eqz v0, :cond_0

    .line 63235
    return-void

    .line 63236
    :cond_0
    check-cast p1, Lcom/facebook/ads/redexgen/X/WW;

    .line 63237
    .local p0, "drmSession":Lcom/facebook/ads/redexgen/X/WW;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/WW;->A0L()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A09:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WV;->A08:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 63240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A08:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/WW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WW;->A0I()V

    .line 63241
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WV;->A08:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63242
    :cond_2
    return-void
.end method
