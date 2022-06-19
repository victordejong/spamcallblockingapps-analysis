.class public final Lcom/facebook/ads/redexgen/X/VT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Dd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/VS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PmtReader"
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Dk;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Landroid/util/SparseIntArray;

.field public final A03:Lcom/facebook/ads/redexgen/X/IU;

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/VS;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "RGyTh4SpGx69CnC3uYB0gmKqWWTNP"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "iDg"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "j2BD3qxwlCatqD2Ch8dsr4SydA7XKwXL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "m1LAn1cIXYa33UPzElI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "cPJKdoCFMTZnGOgvNAg6pI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "iUx5cAJ8Ufw2U1Fp6uB6P"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "qd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YeOgnvzSUR8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VT;->A05:[Ljava/lang/String;

    .line 58718
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VS;I)V
    .locals 2

    .line 58719
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58720
    const/4 v0, 0x5

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IU;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VT;->A03:Lcom/facebook/ads/redexgen/X/IU;

    .line 58721
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VT;->A01:Landroid/util/SparseArray;

    .line 58722
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VT;->A02:Landroid/util/SparseIntArray;

    .line 58723
    iput p2, p0, Lcom/facebook/ads/redexgen/X/VT;->A00:I

    .line 58724
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/IV;I)Lcom/facebook/ads/redexgen/X/Dh;
    .locals 12

    .line 58725
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A06()I

    move-result v8

    .line 58726
    .local p1, "descriptorsStartPosition":I
    add-int v9, v8, p2

    .line 58727
    .local p2, "descriptorsEndPosition":I
    const/4 v7, -0x1

    .line 58728
    .local p1, "streamType":I
    const/4 v6, 0x0

    .line 58729
    .local v8, "language":Ljava/lang/String;
    const/4 v5, 0x0

    .line 58730
    .local v9, "dvbSubtitleInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A06()I

    move-result v0

    if-ge v0, v9, :cond_a

    .line 58731
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v3

    .line 58732
    .local v7, "descriptorTag":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    .line 58733
    .local v6, "descriptorLength":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A06()I

    move-result v10

    add-int/2addr v10, v0

    .line 58734
    .local v5, "positionOfNextDescriptor":I
    const/4 v0, 0x5

    if-ne v3, v0, :cond_3

    .line 58735
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0M()J

    move-result-wide v3

    .line 58736
    .local v0, "formatIdentifier":J
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VS;->A06()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 58737
    const/16 v7, 0x81

    .line 58738
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A06()I

    move-result v0

    sub-int/2addr v10, v0

    invoke-virtual {p1, v10}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 58739
    .end local v7    # "descriptorTag":I
    .end local v6    # "descriptorLength":I
    .end local v5    # "positionOfNextDescriptor":I
    goto :goto_0

    .line 58740
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VS;->A04()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 58741
    const/16 v7, 0x87

    goto :goto_1

    .line 58742
    :cond_2
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VS;->A05()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 58743
    const/16 v7, 0x24

    goto :goto_1

    .line 58744
    :cond_3
    const/16 v4, 0x6a

    sget-object v2, Lcom/facebook/ads/redexgen/X/VT;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/VT;->A05:[Ljava/lang/String;

    const-string v1, "0iRHlmeNaIWOYOZ0wuzrf"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "tRWtYFFxRJJ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v3, v4, :cond_4

    .line 58745
    const/16 v7, 0x81

    goto :goto_1

    .line 58746
    :cond_4
    const/16 v4, 0x7a

    sget-object v1, Lcom/facebook/ads/redexgen/X/VT;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/VT;->A05:[Ljava/lang/String;

    const-string v1, "1wLlXhx7j4gWLvUCKIdOcZbAVKCqpjoE"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne v3, v4, :cond_6

    .line 58747
    :goto_2
    const/16 v7, 0x87

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/VT;->A05:[Ljava/lang/String;

    const-string v1, "yxMQjgWbjbckRLnQ6dtKu"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "lY9rZIuJvHs"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v3, v4, :cond_6

    goto :goto_2

    .line 58748
    :cond_6
    const/16 v0, 0x7b

    if-ne v3, v0, :cond_7

    .line 58749
    const/16 v7, 0x8a

    goto :goto_1

    .line 58750
    :cond_7
    const/16 v0, 0xa

    const/4 v11, 0x3

    if-ne v3, v0, :cond_8

    .line 58751
    invoke-virtual {p1, v11}, Lcom/facebook/ads/redexgen/X/IV;->A0S(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 58752
    :cond_8
    const/16 v0, 0x59

    if-ne v3, v0, :cond_0

    .line 58753
    const/16 v7, 0x59

    .line 58754
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 58755
    :goto_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A06()I

    move-result v0

    if-ge v0, v10, :cond_0

    .line 58756
    invoke-virtual {p1, v11}, Lcom/facebook/ads/redexgen/X/IV;->A0S(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 58757
    .local v0, "dvbLanguage":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v3

    .line 58758
    .local v0, "dvbSubtitlingType":I
    const/4 v2, 0x4

    new-array v1, v2, [B

    .line 58759
    .local v10, "initializationData":[B
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/IV;->A0c([BII)V

    .line 58760
    new-instance v0, Lcom/facebook/ads/redexgen/X/Dg;

    invoke-direct {v0, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/Dg;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58761
    .end local v0    # "dvbSubtitlingType":I
    .end local v0
    .end local v10    # "initializationData":[B
    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58762
    :cond_a
    invoke-virtual {p1, v9}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 58763
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    .line 58764
    invoke-static {v0, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dh;

    invoke-direct {v0, v7, v6, v5, v1}, Lcom/facebook/ads/redexgen/X/Dh;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 58765
    return-object v0
.end method


# virtual methods
.method public final A46(Lcom/facebook/ads/redexgen/X/IV;)V
    .locals 14

    .line 58766
    move-object v4, p0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    .line 58767
    .local v4, "tableId":I
    const/4 v7, 0x2

    if-eq v0, v7, :cond_0

    .line 58768
    return-void

    .line 58769
    :cond_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A02(Lcom/facebook/ads/redexgen/X/VS;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A02(Lcom/facebook/ads/redexgen/X/VS;)I

    move-result v0

    if-eq v0, v7, :cond_1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A00(Lcom/facebook/ads/redexgen/X/VS;)I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 58770
    .end local v0
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A0E(Lcom/facebook/ads/redexgen/X/VS;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/Ih;

    .line 58771
    .restart local v0
    :goto_0
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 58772
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0I()I

    move-result v8

    .line 58773
    .local v0, "programNumber":I
    const/4 v10, 0x5

    invoke-virtual {p1, v10}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 58774
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A03:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {p1, v0, v7}, Lcom/facebook/ads/redexgen/X/IV;->A0a(Lcom/facebook/ads/redexgen/X/IU;I)V

    .line 58775
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A03:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 58776
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A03:Lcom/facebook/ads/redexgen/X/IU;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v0

    .line 58777
    .local v1, "programInfoLength":I
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 58778
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A02(Lcom/facebook/ads/redexgen/X/VS;)I

    move-result v0

    const/16 v6, 0x2000

    const/16 v1, 0x15

    if-ne v0, v7, :cond_2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A0B(Lcom/facebook/ads/redexgen/X/VS;)Lcom/facebook/ads/redexgen/X/Dk;

    move-result-object v0

    if-nez v0, :cond_2

    .line 58779
    new-array v2, v2, [B

    const/4 v0, 0x0

    new-instance v11, Lcom/facebook/ads/redexgen/X/Dh;

    invoke-direct {v11, v1, v0, v0, v2}, Lcom/facebook/ads/redexgen/X/Dh;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 58780
    .local v7, "dummyEsInfo":Lcom/facebook/ads/redexgen/X/Dh;
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/VS;->A0A(Lcom/facebook/ads/redexgen/X/VS;)Lcom/facebook/ads/redexgen/X/Di;

    move-result-object v0

    invoke-interface {v0, v1, v11}, Lcom/facebook/ads/redexgen/X/Di;->A4N(ILcom/facebook/ads/redexgen/X/Dh;)Lcom/facebook/ads/redexgen/X/Dk;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/VS;->A0C(Lcom/facebook/ads/redexgen/X/VS;Lcom/facebook/ads/redexgen/X/Dk;)Lcom/facebook/ads/redexgen/X/Dk;

    .line 58781
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A0B(Lcom/facebook/ads/redexgen/X/VS;)Lcom/facebook/ads/redexgen/X/Dk;

    move-result-object v11

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    .line 58782
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A09(Lcom/facebook/ads/redexgen/X/VS;)Lcom/facebook/ads/redexgen/X/CR;

    move-result-object v2

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dj;

    invoke-direct {v0, v8, v1, v6}, Lcom/facebook/ads/redexgen/X/Dj;-><init>(III)V

    .line 58783
    invoke-interface {v11, v9, v2, v0}, Lcom/facebook/ads/redexgen/X/Dk;->A8C(Lcom/facebook/ads/redexgen/X/Ih;Lcom/facebook/ads/redexgen/X/CR;Lcom/facebook/ads/redexgen/X/Dj;)V

    .line 58784
    .end local v7    # "dummyEsInfo":Lcom/facebook/ads/redexgen/X/Dh;
    :cond_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 58785
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 58786
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v13

    .line 58787
    .local v7, "remainingEntriesLength":I
    :goto_1
    if-lez v13, :cond_c

    .line 58788
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A03:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {p1, v0, v10}, Lcom/facebook/ads/redexgen/X/IV;->A0a(Lcom/facebook/ads/redexgen/X/IU;I)V

    .line 58789
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/VT;->A03:Lcom/facebook/ads/redexgen/X/IU;

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v11

    .line 58790
    .local v0, "streamType":I
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/VT;->A03:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 58791
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/VT;->A03:Lcom/facebook/ads/redexgen/X/IU;

    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v10

    .line 58792
    .local v0, "elementaryPid":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A03:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 58793
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A03:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v2

    .line 58794
    .local v0, "esInfoLength":I
    invoke-direct {v4, p1, v2}, Lcom/facebook/ads/redexgen/X/VT;->A00(Lcom/facebook/ads/redexgen/X/IV;I)Lcom/facebook/ads/redexgen/X/Dh;

    move-result-object v5

    .line 58795
    .local v2, "esInfo":Lcom/facebook/ads/redexgen/X/Dh;
    const/4 v0, 0x6

    if-ne v11, v0, :cond_3

    .line 58796
    iget v11, v5, Lcom/facebook/ads/redexgen/X/Dh;->A00:I

    .line 58797
    :cond_3
    add-int/lit8 v0, v2, 0x5

    sub-int/2addr v13, v0

    .line 58798
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A02(Lcom/facebook/ads/redexgen/X/VS;)I

    move-result v0

    if-ne v0, v7, :cond_8

    move v3, v11

    .line 58799
    .local v0, "trackId":I
    :goto_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A08(Lcom/facebook/ads/redexgen/X/VS;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 58800
    :cond_4
    :goto_3
    const/4 v10, 0x5

    const/4 v5, 0x4

    const/16 v3, 0xc

    const/16 v1, 0x15

    goto :goto_1

    .line 58801
    :cond_5
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A02(Lcom/facebook/ads/redexgen/X/VS;)I

    move-result v0

    if-ne v0, v7, :cond_7

    if-ne v11, v1, :cond_7

    .line 58802
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A0B(Lcom/facebook/ads/redexgen/X/VS;)Lcom/facebook/ads/redexgen/X/Dk;

    move-result-object v5

    .line 58803
    .local v0, "reader":Lcom/facebook/ads/redexgen/X/Dk;
    :goto_4
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A02(Lcom/facebook/ads/redexgen/X/VS;)I

    move-result v0

    if-ne v0, v7, :cond_6

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A02:Landroid/util/SparseIntArray;

    .line 58804
    invoke-virtual {v0, v3, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ge v10, v0, :cond_4

    .line 58805
    :cond_6
    iget-object v11, v4, Lcom/facebook/ads/redexgen/X/VT;->A02:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VT;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/VT;->A05:[Ljava/lang/String;

    const-string v1, "hYuW2ZxScZvjOUyRYzD"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v11, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 58806
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 58807
    :cond_7
    iget-object v12, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    sget-object v2, Lcom/facebook/ads/redexgen/X/VT;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/VT;->A05:[Ljava/lang/String;

    const-string v1, "uMTX0BK3hwRt9LI9TXEhN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "Q6yhhKO6s7v"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v12}, Lcom/facebook/ads/redexgen/X/VS;->A0A(Lcom/facebook/ads/redexgen/X/VS;)Lcom/facebook/ads/redexgen/X/Di;

    move-result-object v0

    invoke-interface {v0, v11, v5}, Lcom/facebook/ads/redexgen/X/Di;->A4N(ILcom/facebook/ads/redexgen/X/Dh;)Lcom/facebook/ads/redexgen/X/Dk;

    move-result-object v5

    goto :goto_4

    .line 58808
    :cond_8
    move v3, v10

    goto :goto_2

    .line 58809
    :cond_9
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    .line 58810
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A0E(Lcom/facebook/ads/redexgen/X/VS;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ih;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ih;->A03()J

    move-result-wide v0

    new-instance v9, Lcom/facebook/ads/redexgen/X/Ih;

    invoke-direct {v9, v0, v1}, Lcom/facebook/ads/redexgen/X/Ih;-><init>(J)V

    .line 58811
    .local v0, "timestampAdjuster":Lcom/facebook/ads/redexgen/X/Ih;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A0E(Lcom/facebook/ads/redexgen/X/VS;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58812
    :cond_c
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 58813
    .local v0, "trackIdCount":I
    const/4 v3, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v3, v5, :cond_f

    .line 58814
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    .line 58815
    .restart local v0    # "trackIdCount":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A08(Lcom/facebook/ads/redexgen/X/VS;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v10, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 58816
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Dk;

    .line 58817
    .restart local v0    # "trackIdCount":I
    if-eqz v2, :cond_e

    .line 58818
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A0B(Lcom/facebook/ads/redexgen/X/VS;)Lcom/facebook/ads/redexgen/X/Dk;

    move-result-object v0

    if-eq v2, v0, :cond_d

    .line 58819
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    .line 58820
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A09(Lcom/facebook/ads/redexgen/X/VS;)Lcom/facebook/ads/redexgen/X/CR;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dj;

    invoke-direct {v0, v8, v10, v6}, Lcom/facebook/ads/redexgen/X/Dj;-><init>(III)V

    .line 58821
    invoke-interface {v2, v9, v1, v0}, Lcom/facebook/ads/redexgen/X/Dk;->A8C(Lcom/facebook/ads/redexgen/X/Ih;Lcom/facebook/ads/redexgen/X/CR;Lcom/facebook/ads/redexgen/X/Dj;)V

    .line 58822
    :cond_d
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A07(Lcom/facebook/ads/redexgen/X/VS;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58823
    .end local v0    # "trackIdCount":I
    .end local v0
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 58824
    .end local v2    # "i":I
    :cond_f
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A02(Lcom/facebook/ads/redexgen/X/VS;)I

    move-result v0

    if-ne v0, v7, :cond_11

    .line 58825
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A0H(Lcom/facebook/ads/redexgen/X/VS;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 58826
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A09(Lcom/facebook/ads/redexgen/X/VS;)Lcom/facebook/ads/redexgen/X/CR;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CR;->A5A()V

    .line 58827
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/VS;->A03(Lcom/facebook/ads/redexgen/X/VS;I)I

    .line 58828
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/VS;->A0I(Lcom/facebook/ads/redexgen/X/VS;Z)Z

    .line 58829
    :cond_10
    :goto_6
    return-void

    .line 58830
    :cond_11
    const/4 v0, 0x0

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/VS;->A07(Lcom/facebook/ads/redexgen/X/VS;)Landroid/util/SparseArray;

    move-result-object v2

    iget v1, v4, Lcom/facebook/ads/redexgen/X/VT;->A00:I

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 58831
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/VS;->A02(Lcom/facebook/ads/redexgen/X/VS;)I

    move-result v2

    const/4 v1, 0x1

    if-ne v2, v1, :cond_12

    :goto_7
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/VS;->A03(Lcom/facebook/ads/redexgen/X/VS;I)I

    .line 58832
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A00(Lcom/facebook/ads/redexgen/X/VS;)I

    move-result v0

    if-nez v0, :cond_10

    .line 58833
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A09(Lcom/facebook/ads/redexgen/X/VS;)Lcom/facebook/ads/redexgen/X/CR;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CR;->A5A()V

    .line 58834
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/VS;->A0I(Lcom/facebook/ads/redexgen/X/VS;Z)Z

    goto :goto_6

    .line 58835
    :cond_12
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VT;->A04:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A00(Lcom/facebook/ads/redexgen/X/VS;)I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_7
.end method

.method public final A8C(Lcom/facebook/ads/redexgen/X/Ih;Lcom/facebook/ads/redexgen/X/CR;Lcom/facebook/ads/redexgen/X/Dj;)V
    .locals 0

    .line 58836
    return-void
.end method
