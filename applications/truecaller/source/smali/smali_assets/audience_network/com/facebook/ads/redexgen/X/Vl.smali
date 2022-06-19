.class public final Lcom/facebook/ads/redexgen/X/Vl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CP;


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:Lcom/facebook/ads/redexgen/X/CS;

.field public static final A07:I


# instance fields
.field public A00:Z

.field public final A01:J

.field public final A02:Lcom/facebook/ads/redexgen/X/Vk;

.field public final A03:Lcom/facebook/ads/redexgen/X/IV;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "6Yd3MlxO6zs0On0JMF5Pwnois3aNTjpE"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MmQBoaYzrmdPmtEAYQ3R1Y6Mcsh6By7B"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7RUBoC8KCwVWfiCX9SWb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GS41ND25W7ytYawGpGonJQP9IOOENLXr"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lL4oomLzy5vPLaNFQ0K"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "J26"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "emQAR3GMgLzBn72fJq6a"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GcSIxJRAUXsHB0u2DOmppTTbOqtsj228"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vl;->A05:[Ljava/lang/String;

    .line 60088
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vl;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vm;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vm;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vl;->A06:Lcom/facebook/ads/redexgen/X/CS;

    .line 60089
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vl;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Il;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Vl;->A07:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60090
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Vl;-><init>(J)V

    .line 60091
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 60092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60093
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Vl;->A01:J

    .line 60094
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vk;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Vk;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A02:Lcom/facebook/ads/redexgen/X/Vk;

    .line 60095
    const/16 v1, 0xc8

    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A03:Lcom/facebook/ads/redexgen/X/IV;

    .line 60096
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vl;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x78

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

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vl;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1bt
        0x16t
        0x61t
    .end array-data
.end method


# virtual methods
.method public final A8A(Lcom/facebook/ads/redexgen/X/CR;)V
    .locals 4

    .line 60097
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vl;->A02:Lcom/facebook/ads/redexgen/X/Vk;

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dj;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Dj;-><init>(II)V

    invoke-virtual {v3, p1, v0}, Lcom/facebook/ads/redexgen/X/Vk;->A4T(Lcom/facebook/ads/redexgen/X/CR;Lcom/facebook/ads/redexgen/X/Dj;)V

    .line 60098
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CR;->A5A()V

    .line 60099
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/WN;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/WN;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CR;->AEA(Lcom/facebook/ads/redexgen/X/CY;)V

    .line 60100
    return-void
.end method

.method public final ADD(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/CW;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A03:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/4 v4, 0x0

    const/16 v0, 0xc8

    invoke-interface {p1, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/CQ;->read([BII)I

    move-result v1

    .line 60102
    .local p0, "bytesRead":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 60103
    return v0

    .line 60104
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A03:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 60105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A03:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;->A0X(I)V

    .line 60106
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A00:Z

    if-nez v0, :cond_1

    .line 60107
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vl;->A02:Lcom/facebook/ads/redexgen/X/Vk;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Vl;->A01:J

    const/4 v0, 0x1

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Vk;->ACm(JZ)V

    .line 60108
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A00:Z

    .line 60109
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vl;->A02:Lcom/facebook/ads/redexgen/X/Vk;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A03:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Vk;->A46(Lcom/facebook/ads/redexgen/X/IV;)V

    .line 60110
    return v4
.end method

.method public final AE9(JJ)V
    .locals 1

    .line 60111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A00:Z

    .line 60112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A02:Lcom/facebook/ads/redexgen/X/Vk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vk;->AE8()V

    .line 60113
    return-void
.end method

.method public final AEj(Lcom/facebook/ads/redexgen/X/CQ;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60114
    const/16 v2, 0xa

    new-instance v5, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v5, v2}, Lcom/facebook/ads/redexgen/X/IV;-><init>(I)V

    .line 60115
    .local p0, "scratch":Lcom/facebook/ads/redexgen/X/IV;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    new-instance v4, Lcom/facebook/ads/redexgen/X/IU;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/IU;-><init>([B)V

    .line 60116
    .local v2, "scratchBits":Lcom/facebook/ads/redexgen/X/IU;
    const/4 v3, 0x0

    .line 60117
    .local v5, "startPosition":I
    :goto_0
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/4 v8, 0x0

    invoke-interface {p1, v0, v8, v2}, Lcom/facebook/ads/redexgen/X/CQ;->ACp([BII)V

    .line 60118
    invoke-virtual {v5, v8}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 60119
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IV;->A0G()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/Vl;->A07:I

    if-eq v1, v0, :cond_4

    .line 60120
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->ADr()V

    .line 60121
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/CQ;->A3J(I)V

    .line 60122
    move v7, v3

    .line 60123
    .local p1, "headerPosition":I
    const/4 v6, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vl;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_5

    .line 60124
    .local v0, "validFramesSize":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vl;->A05:[Ljava/lang/String;

    const-string v1, "mY90xJHLqPMDpFXgmiZe2UkYD68ZyI7P"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v2, 0x0

    .line 60125
    .local v3, "validFramesCount":I
    :goto_1
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/4 v0, 0x2

    invoke-interface {p1, v1, v8, v0}, Lcom/facebook/ads/redexgen/X/CQ;->ACp([BII)V

    .line 60126
    invoke-virtual {v5, v8}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 60127
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IV;->A0I()I

    move-result v0

    .line 60128
    .local v0, "syncBytes":I
    const v1, 0xfff6

    and-int/2addr v1, v0

    const v0, 0xfff0

    if-eq v1, v0, :cond_1

    .line 60129
    const/4 v2, 0x0

    .line 60130
    const/4 v6, 0x0

    .line 60131
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->ADr()V

    .line 60132
    add-int/lit8 v7, v7, 0x1

    sub-int v1, v7, v3

    const/16 v0, 0x2000

    if-lt v1, v0, :cond_0

    .line 60133
    return v8

    .line 60134
    :cond_0
    invoke-interface {p1, v7}, Lcom/facebook/ads/redexgen/X/CQ;->A3J(I)V

    goto :goto_1

    .line 60135
    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x4

    if-lt v2, v1, :cond_2

    const/16 v0, 0xbc

    if-le v6, v0, :cond_2

    .line 60136
    const/4 v0, 0x1

    return v0

    .line 60137
    :cond_2
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    invoke-interface {p1, v0, v8, v1}, Lcom/facebook/ads/redexgen/X/CQ;->ACp([BII)V

    .line 60138
    const/16 v0, 0xe

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IU;->A07(I)V

    .line 60139
    const/16 v0, 0xd

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v1

    .line 60140
    .local v8, "frameSize":I
    const/4 v0, 0x6

    if-gt v1, v0, :cond_3

    .line 60141
    return v8

    .line 60142
    :cond_3
    add-int/lit8 v0, v1, -0x6

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CQ;->A3J(I)V

    .line 60143
    add-int/2addr v6, v1

    goto :goto_1

    .line 60144
    .end local p1    # "headerPosition":I
    .end local v0    # "syncBytes":I
    .end local v3    # "validFramesCount":I
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 60145
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IV;->A0D()I

    move-result v1

    .line 60146
    .local v0, "length":I
    add-int/lit8 v0, v1, 0xa

    add-int/2addr v3, v0

    .line 60147
    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/CQ;->A3J(I)V

    .line 60148
    .end local v0    # "length":I
    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
