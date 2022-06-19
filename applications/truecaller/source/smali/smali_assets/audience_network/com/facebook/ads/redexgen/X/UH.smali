.class public final Lcom/facebook/ads/redexgen/X/UH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/IM;


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/AU;

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/I9;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "JbcDsPAiqgb9rsViVRKehTXv1iFS9Alt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AfEyeuF2jCfkWNmIQlP22Iq9vQ5XDBZo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "cIPTiq2qkEqnYzKxb3sH3HOJO6VigB4N"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "bIuwftDwBGArWYVN2grLSP1kPnHfbgfq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1GGMxn0jatOJtlepcpEnLiyqpa0L6Zpp"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dBndgbsmlMbgteIClih73P1Nf1skDdlq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kMZcBPwOEd1j6nxu2sFbdi5kLjNzhQnH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "M7tzCbQcNsxxyZ9EacAqZIMXmH340eiG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/UH;->A05:[Ljava/lang/String;

    .line 56054
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/I9;)V
    .locals 1

    .line 56055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56056
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UH;->A04:Lcom/facebook/ads/redexgen/X/I9;

    .line 56057
    sget-object v0, Lcom/facebook/ads/redexgen/X/AU;->A04:Lcom/facebook/ads/redexgen/X/AU;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UH;->A02:Lcom/facebook/ads/redexgen/X/AU;

    .line 56058
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 2

    .line 56059
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UH;->A03:Z

    if-nez v0, :cond_0

    .line 56060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UH;->A04:Lcom/facebook/ads/redexgen/X/I9;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/I9;->A55()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/UH;->A00:J

    .line 56061
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UH;->A03:Z

    .line 56062
    :cond_0
    return-void
.end method

.method public final A01()V
    .locals 5

    .line 56063
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UH;->A03:Z

    if-eqz v0, :cond_0

    .line 56064
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/UH;->A7B()J

    move-result-wide v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/UH;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/UH;->A05:[Ljava/lang/String;

    const-string v1, "yV0nDN2yEP24GlsqsYFBRUnmoDIsFkRQ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/UH;->A02(J)V

    .line 56065
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UH;->A03:Z

    .line 56066
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A02(J)V
    .locals 2

    .line 56067
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/UH;->A01:J

    .line 56068
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UH;->A03:Z

    if-eqz v0, :cond_0

    .line 56069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UH;->A04:Lcom/facebook/ads/redexgen/X/I9;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/I9;->A55()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/UH;->A00:J

    .line 56070
    :cond_0
    return-void
.end method

.method public final A78()Lcom/facebook/ads/redexgen/X/AU;
    .locals 1

    .line 56071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UH;->A02:Lcom/facebook/ads/redexgen/X/AU;

    return-object v0
.end method

.method public final A7B()J
    .locals 7

    .line 56072
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/UH;->A01:J

    .line 56073
    .local p0, "positionUs":J
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UH;->A03:Z

    if-eqz v0, :cond_0

    .line 56074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UH;->A04:Lcom/facebook/ads/redexgen/X/I9;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/I9;->A55()J

    move-result-wide v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/UH;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_3

    sget-object v6, Lcom/facebook/ads/redexgen/X/UH;->A05:[Ljava/lang/String;

    const-string v1, "ixlqsHFDPmeKY4bwdkSegalU4BLtdIOn"

    const/4 v0, 0x1

    aput-object v1, v6, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UH;->A00:J

    sub-long/2addr v4, v0

    .line 56075
    .local v2, "elapsedSinceBaseMs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UH;->A02:Lcom/facebook/ads/redexgen/X/AU;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/AU;->A01:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-nez v0, :cond_2

    .line 56076
    invoke-static {v4, v5}, Lcom/facebook/ads/redexgen/X/A3;->A00(J)J

    move-result-wide v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/UH;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6a

    if-eq v1, v0, :cond_1

    sget-object v4, Lcom/facebook/ads/redexgen/X/UH;->A05:[Ljava/lang/String;

    const-string v1, "AIwpqv7aDt0R5Z0o8sSBDj22LkfdUh0v"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    add-long/2addr v2, v5

    .line 56077
    .end local v2    # "elapsedSinceBaseMs":J
    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/UH;->A05:[Ljava/lang/String;

    const-string v1, "vgrMGSSY4L8ja71DPmzZRGyrcWnnIJj3"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    add-long/2addr v2, v5

    goto :goto_0

    .line 56078
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UH;->A02:Lcom/facebook/ads/redexgen/X/AU;

    invoke-virtual {v0, v4, v5}, Lcom/facebook/ads/redexgen/X/AU;->A00(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AET(Lcom/facebook/ads/redexgen/X/AU;)Lcom/facebook/ads/redexgen/X/AU;
    .locals 2

    .line 56079
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UH;->A03:Z

    if-eqz v0, :cond_0

    .line 56080
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/UH;->A7B()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/UH;->A02(J)V

    .line 56081
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UH;->A02:Lcom/facebook/ads/redexgen/X/AU;

    .line 56082
    return-object p1
.end method
