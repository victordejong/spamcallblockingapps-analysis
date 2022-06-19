.class public final Lcom/facebook/ads/redexgen/X/AP;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/AP;

.field public A02:Lcom/facebook/ads/redexgen/X/AQ;

.field public A03:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

.field public A04:Lcom/facebook/ads/redexgen/X/HH;

.field public A05:Z

.field public A06:Z

.field public A07:Lcom/facebook/ads/redexgen/X/HH;

.field public final A08:Lcom/facebook/ads/redexgen/X/V3;

.field public final A09:Ljava/lang/Object;

.field public final A0A:[Lcom/facebook/ads/redexgen/X/Fi;

.field public final A0B:[Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/FN;

.field public final A0D:Lcom/facebook/ads/redexgen/X/HG;

.field public final A0E:[Lcom/facebook/ads/redexgen/X/Ah;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "veEP335vIU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "oLB3f1kinZ5WOxb9JrKF9bI12rnC7Hj4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JTOn230cVZ0r3ImY4sjYKOAnliXJWsYG"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qI3jAuZXuqqi9ieUnmB3HYz1RRsZ6ptY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FV6PRsoISyO05pqLoteca44"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2aqdzlIyDZTOMtMqQXI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yc78GsDKEqwKVvSYIw58zbgjS6oh7wuT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vKvp49qN2fZ5TwJRBPfaEcKl4xZFQEWJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/AP;->A0G:[Ljava/lang/String;

    .line 21719
    invoke-static {}, Lcom/facebook/ads/redexgen/X/AP;->A01()V

    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/Ah;JLcom/facebook/ads/redexgen/X/HG;Lcom/facebook/ads/redexgen/X/HJ;Lcom/facebook/ads/redexgen/X/FN;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/AQ;)V
    .locals 14

    move-wide/from16 v2, p2

    .line 21720
    move-object v5, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21721
    iput-object p1, v5, Lcom/facebook/ads/redexgen/X/AP;->A0E:[Lcom/facebook/ads/redexgen/X/Ah;

    .line 21722
    move-object/from16 v6, p8

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/AQ;->A03:J

    sub-long/2addr v2, v0

    iput-wide v2, v5, Lcom/facebook/ads/redexgen/X/AP;->A00:J

    .line 21723
    move-object/from16 v0, p4

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/AP;->A0D:Lcom/facebook/ads/redexgen/X/HG;

    .line 21724
    move-object/from16 v1, p6

    iput-object v1, v5, Lcom/facebook/ads/redexgen/X/AP;->A0C:Lcom/facebook/ads/redexgen/X/FN;

    .line 21725
    invoke-static/range {p7 .. p7}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/AP;->A09:Ljava/lang/Object;

    .line 21726
    iput-object v6, v5, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    .line 21727
    array-length v0, p1

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Fi;

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/AP;->A0A:[Lcom/facebook/ads/redexgen/X/Fi;

    .line 21728
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/AP;->A0B:[Z

    .line 21729
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/AQ;->A04:Lcom/facebook/ads/redexgen/X/FL;

    move-object/from16 v2, p5

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/FN;->A4O(Lcom/facebook/ads/redexgen/X/FL;Lcom/facebook/ads/redexgen/X/HJ;)Lcom/facebook/ads/redexgen/X/V3;

    move-result-object v8

    .line 21730
    .local v2, "mediaPeriod":Lcom/facebook/ads/redexgen/X/V3;
    iget-wide v3, v6, Lcom/facebook/ads/redexgen/X/AQ;->A02:J

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 21731
    new-instance v7, Lcom/facebook/ads/redexgen/X/Bm;

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    iget-wide v12, v6, Lcom/facebook/ads/redexgen/X/AQ;->A02:J

    invoke-direct/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/Bm;-><init>(Lcom/facebook/ads/redexgen/X/V3;ZJJ)V

    move-object v8, v7

    .line 21732
    :cond_0
    iput-object v8, v5, Lcom/facebook/ads/redexgen/X/AP;->A08:Lcom/facebook/ads/redexgen/X/V3;

    .line 21733
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/AP;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x69

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AP;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0x2at
        0x42t
        0x41t
        0x46t
        0x3et
        0x2dt
        0x42t
        0x4ft
        0x46t
        0x4ct
        0x41t
        0x25t
        0x4ct
        0x49t
        0x41t
        0x42t
        0x4ft
        0x32t
        0x47t
        0x54t
        0x4bt
        0x51t
        0x46t
        0x2t
        0x54t
        0x47t
        0x4et
        0x47t
        0x43t
        0x55t
        0x47t
        0x2t
        0x48t
        0x43t
        0x4bt
        0x4et
        0x47t
        0x46t
        0x10t
    .end array-data
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/HH;)V
    .locals 5

    .line 21734
    const/4 v3, 0x0

    .local p0, "i":I
    :goto_0
    iget v4, p1, Lcom/facebook/ads/redexgen/X/HH;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/AP;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/AP;->A0G:[Ljava/lang/String;

    const-string v1, "zTmDI2eB0pskJnfpVdGiT2gSjaG941UO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "GwIuNKKr0Vh704cWvV3fzSTRpdmwONBr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge v3, v4, :cond_2

    .line 21735
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/HH;->A00(I)Z

    move-result v1

    .line 21736
    .local p1, "rendererEnabled":Z
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/HH;->A01:Lcom/facebook/ads/redexgen/X/HE;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/HE;->A00(I)Lcom/facebook/ads/redexgen/X/HD;

    move-result-object v0

    .line 21737
    .local v3, "trackSelection":Lcom/facebook/ads/redexgen/X/HD;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 21738
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HD;->A56()V

    .line 21739
    .end local p1    # "rendererEnabled":Z
    .end local v3    # "trackSelection":Lcom/facebook/ads/redexgen/X/HD;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 21740
    .end local p0    # "i":I
    :cond_2
    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/HH;)V
    .locals 1

    .line 21741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A07:Lcom/facebook/ads/redexgen/X/HH;

    .line 21742
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AP;->A07:Lcom/facebook/ads/redexgen/X/HH;

    .line 21743
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A07:Lcom/facebook/ads/redexgen/X/HH;

    if-eqz v0, :cond_0

    .line 21744
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AP;->A02(Lcom/facebook/ads/redexgen/X/HH;)V

    .line 21745
    :cond_0
    return-void
.end method

.method private A04([Lcom/facebook/ads/redexgen/X/Fi;)V
    .locals 3

    .line 21746
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AP;->A0E:[Lcom/facebook/ads/redexgen/X/Ah;

    array-length v0, v1

    if-ge v2, v0, :cond_1

    .line 21747
    aget-object v0, v1, v2

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A7b()I

    move-result v1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A04:Lcom/facebook/ads/redexgen/X/HH;

    .line 21748
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/HH;->A00(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21749
    new-instance v0, Lcom/facebook/ads/redexgen/X/V8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/V8;-><init>()V

    aput-object v0, p1, v2

    .line 21750
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21751
    .end local p0    # "i":I
    :cond_1
    return-void
.end method

.method private A05([Lcom/facebook/ads/redexgen/X/Fi;)V
    .locals 3

    .line 21752
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AP;->A0E:[Lcom/facebook/ads/redexgen/X/Ah;

    array-length v0, v1

    if-ge v2, v0, :cond_1

    .line 21753
    aget-object v0, v1, v2

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A7b()I

    move-result v1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    .line 21754
    const/4 v0, 0x0

    aput-object v0, p1, v2

    .line 21755
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21756
    .end local p0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public final A06()J
    .locals 2

    .line 21757
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A06:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A08:Lcom/facebook/ads/redexgen/X/V3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/V3;->A6w()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final A07()J
    .locals 2

    .line 21758
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A00:J

    return-wide v0
.end method

.method public final A08(J)J
    .locals 2

    .line 21759
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AP;->A07()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final A09(J)J
    .locals 2

    .line 21760
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AP;->A07()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public final A0A(JZ)J
    .locals 2

    .line 21761
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A0E:[Lcom/facebook/ads/redexgen/X/Ah;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/AP;->A0B(JZ[Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A0B(JZ[Z)J
    .locals 12

    .line 21762
    const/4 v4, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A04:Lcom/facebook/ads/redexgen/X/HH;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HH;->A00:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v4, v0, :cond_1

    .line 21763
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AP;->A0B:[Z

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AP;->A04:Lcom/facebook/ads/redexgen/X/HH;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A07:Lcom/facebook/ads/redexgen/X/HH;

    .line 21764
    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/HH;->A02(Lcom/facebook/ads/redexgen/X/HH;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    aput-boolean v2, v3, v4

    .line 21765
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 21766
    .end local p0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A0A:[Lcom/facebook/ads/redexgen/X/Fi;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AP;->A05([Lcom/facebook/ads/redexgen/X/Fi;)V

    .line 21767
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A04:Lcom/facebook/ads/redexgen/X/HH;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AP;->A03(Lcom/facebook/ads/redexgen/X/HH;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/AP;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 21768
    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/AP;->A0G:[Ljava/lang/String;

    const-string v1, "QjaNyuHuRXZwiIdLefV3JnB"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    const-string v1, "qMpMOgpNZnnJVrHuPMC"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A04:Lcom/facebook/ads/redexgen/X/HH;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/HH;->A01:Lcom/facebook/ads/redexgen/X/HE;

    .line 21769
    .local p0, "trackSelections":Lcom/facebook/ads/redexgen/X/HE;
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/AP;->A08:Lcom/facebook/ads/redexgen/X/V3;

    .line 21770
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/HE;->A01()[Lcom/facebook/ads/redexgen/X/HD;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/AP;->A0B:[Z

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/AP;->A0A:[Lcom/facebook/ads/redexgen/X/Fi;

    .line 21771
    move-wide v10, p1

    move-object/from16 v9, p4

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/V3;->AEE([Lcom/facebook/ads/redexgen/X/HD;[Z[Lcom/facebook/ads/redexgen/X/Fi;[ZJ)J

    move-result-wide v7

    .line 21772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A0A:[Lcom/facebook/ads/redexgen/X/Fi;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AP;->A04([Lcom/facebook/ads/redexgen/X/Fi;)V

    .line 21773
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/AP;->A05:Z

    .line 21774
    const/4 v5, 0x0

    .local v10, "i":I
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AP;->A0A:[Lcom/facebook/ads/redexgen/X/Fi;

    array-length v0, v1

    if-ge v5, v0, :cond_7

    .line 21775
    aget-object v6, v1, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/AP;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/AP;->A0G:[Ljava/lang/String;

    const-string v1, "ECZNN42Owql1H3dvmIySnd1"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "Y1ZBsUrBheVlA6CxnB4"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v6, :cond_5

    .line 21776
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A04:Lcom/facebook/ads/redexgen/X/HH;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/HH;->A00(I)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 21777
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A0E:[Lcom/facebook/ads/redexgen/X/Ah;

    aget-object v0, v0, v5

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ah;->A7b()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_3

    .line 21778
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/AP;->A05:Z

    .line 21779
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/AP;->A0G:[Ljava/lang/String;

    const-string v1, "F5cg"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v6, :cond_5

    goto :goto_2

    .line 21780
    :cond_5
    invoke-virtual {v4, v5}, Lcom/facebook/ads/redexgen/X/HE;->A00(I)Lcom/facebook/ads/redexgen/X/HD;

    move-result-object v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 21781
    .end local v10    # "i":I
    :cond_7
    return-wide v7
.end method

.method public final A0C(Z)J
    .locals 5

    .line 21782
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A06:Z

    if-nez v0, :cond_0

    .line 21783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AQ;->A03:J

    return-wide v0

    .line 21784
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A08:Lcom/facebook/ads/redexgen/X/V3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/V3;->A5q()J

    move-result-wide v3

    .line 21785
    .local p0, "bufferedPositionUs":J
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 21786
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    sget-object v2, Lcom/facebook/ads/redexgen/X/AP;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/AP;->A0G:[Ljava/lang/String;

    const-string v1, "Yxep602BeUF0L8l"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-wide v3, v3, Lcom/facebook/ads/redexgen/X/AQ;->A01:J

    .line 21787
    :cond_2
    return-wide v3
.end method

.method public final A0D()V
    .locals 5

    .line 21788
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AP;->A03(Lcom/facebook/ads/redexgen/X/HH;)V

    .line 21789
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/AQ;->A02:J

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 21790
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AP;->A0C:Lcom/facebook/ads/redexgen/X/FN;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A08:Lcom/facebook/ads/redexgen/X/V3;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Bm;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Bm;->A05:Lcom/facebook/ads/redexgen/X/V3;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/FN;->ADX(Lcom/facebook/ads/redexgen/X/V3;)V

    goto :goto_0

    .line 21791
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AP;->A0C:Lcom/facebook/ads/redexgen/X/FN;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A08:Lcom/facebook/ads/redexgen/X/V3;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/FN;->ADX(Lcom/facebook/ads/redexgen/X/V3;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21792
    :catch_0
    move-exception v4

    .line 21793
    .local p0, "e":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AP;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x11

    const/16 v1, 0x16

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21794
    .end local p0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public final A0E(F)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 21795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A06:Z

    .line 21796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A08:Lcom/facebook/ads/redexgen/X/V3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/V3;->A7a()Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A03:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    .line 21797
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/AP;->A0I(F)Z

    .line 21798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/AQ;->A03:J

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/AP;->A0A(JZ)J

    move-result-wide v2

    .line 21799
    .local p0, "newStartPositionUs":J
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/AP;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AQ;->A03:J

    sub-long/2addr v0, v2

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/AP;->A00:J

    .line 21800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/AQ;->A01(J)Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    .line 21801
    return-void
.end method

.method public final A0F(J)V
    .locals 3

    .line 21802
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/AP;->A08(J)J

    move-result-wide v1

    .line 21803
    .local p0, "loadingPeriodPositionUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A08:Lcom/facebook/ads/redexgen/X/V3;

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/V3;->A48(J)Z

    .line 21804
    return-void
.end method

.method public final A0G(J)V
    .locals 3

    .line 21805
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A06:Z

    if-eqz v0, :cond_0

    .line 21806
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AP;->A08:Lcom/facebook/ads/redexgen/X/V3;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/AP;->A08(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/V3;->ADO(J)V

    .line 21807
    :cond_0
    return-void
.end method

.method public final A0H()Z
    .locals 5

    .line 21808
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A06:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A05:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A08:Lcom/facebook/ads/redexgen/X/V3;

    .line 21809
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/V3;->A5q()J

    move-result-wide v3

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 21810
    :goto_0
    return v0

    .line 21811
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0I(F)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 21812
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AP;->A0D:Lcom/facebook/ads/redexgen/X/HG;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AP;->A0E:[Lcom/facebook/ads/redexgen/X/Ah;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A03:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    .line 21813
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HG;->A0T([Lcom/facebook/ads/redexgen/X/Ah;Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;)Lcom/facebook/ads/redexgen/X/HH;

    move-result-object v1

    .line 21814
    .local p0, "selectorResult":Lcom/facebook/ads/redexgen/X/HH;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A07:Lcom/facebook/ads/redexgen/X/HH;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/HH;->A01(Lcom/facebook/ads/redexgen/X/HH;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 21815
    return v3

    .line 21816
    :cond_0
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/AP;->A04:Lcom/facebook/ads/redexgen/X/HH;

    .line 21817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AP;->A04:Lcom/facebook/ads/redexgen/X/HH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/HH;->A01:Lcom/facebook/ads/redexgen/X/HE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HE;->A01()[Lcom/facebook/ads/redexgen/X/HD;

    move-result-object v2

    array-length v1, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v0, v2, v3

    .line 21818
    .local v0, "trackSelection":Lcom/facebook/ads/redexgen/X/HD;
    if-eqz v0, :cond_1

    .line 21819
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/HD;->ABa(F)V

    .line 21820
    .end local v0    # "trackSelection":Lcom/facebook/ads/redexgen/X/HD;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 21821
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
