.class public final Lcom/facebook/ads/redexgen/X/VY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CP;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Dc;
    }
.end annotation


# static fields
.field public static A08:[Ljava/lang/String;

.field public static final A09:Lcom/facebook/ads/redexgen/X/CS;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/CR;

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public final A05:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Dc;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Lcom/facebook/ads/redexgen/X/IV;

.field public final A07:Lcom/facebook/ads/redexgen/X/Ih;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mExdGVP0maPlz"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mtU4GW9lJGPRgwi7WTtJ47xTDMOD9Jvz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "mnVK2jaR5CYO63Y95SEKprVffrLm5k0s"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WHnhbYArFQVibafDHBFVvoYN0aOa9WUH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "bzekXst0bt0AdcZvIiwJXkkJcIHRgIjU"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "gyTL2jV1VgKAzlNybmW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "q"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VY;->A08:[Ljava/lang/String;

    .line 58943
    new-instance v0, Lcom/facebook/ads/redexgen/X/VZ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/VZ;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/VY;->A09:Lcom/facebook/ads/redexgen/X/CS;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 58944
    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ih;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ih;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/VY;-><init>(Lcom/facebook/ads/redexgen/X/Ih;)V

    .line 58945
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ih;)V
    .locals 2

    .line 58946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58947
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VY;->A07:Lcom/facebook/ads/redexgen/X/Ih;

    .line 58948
    const/16 v1, 0x1000

    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:Lcom/facebook/ads/redexgen/X/IV;

    .line 58949
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A05:Landroid/util/SparseArray;

    .line 58950
    return-void
.end method


# virtual methods
.method public final A8A(Lcom/facebook/ads/redexgen/X/CR;)V
    .locals 3

    .line 58951
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VY;->A01:Lcom/facebook/ads/redexgen/X/CR;

    .line 58952
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/WN;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/WN;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CR;->AEA(Lcom/facebook/ads/redexgen/X/CY;)V

    .line 58953
    return-void
.end method

.method public final ADD(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/CW;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 58954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    invoke-interface {p1, v1, v3, v0, v6}, Lcom/facebook/ads/redexgen/X/CQ;->ACq([BIIZ)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 58955
    return v2

    .line 58956
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 58957
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v1

    .line 58958
    .local p0, "nextStartCode":I
    const/16 v0, 0x1b9

    if-ne v1, v0, :cond_1

    .line 58959
    return v2

    .line 58960
    :cond_1
    const/16 v0, 0x1ba

    if-ne v1, v0, :cond_2

    .line 58961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/16 v0, 0xa

    invoke-interface {p1, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/CQ;->ACp([BII)V

    .line 58962
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:Lcom/facebook/ads/redexgen/X/IV;

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 58963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 58964
    .local p1, "packStuffingLength":I
    add-int/lit8 v0, v0, 0xe

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    .line 58965
    return v3

    .line 58966
    .end local p1    # "packStuffingLength":I
    :cond_2
    const/16 v0, 0x1bb

    const/4 v5, 0x2

    if-ne v1, v0, :cond_3

    .line 58967
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    invoke-interface {p1, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/CQ;->ACp([BII)V

    .line 58968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 58969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0I()I

    move-result v0

    .line 58970
    .local p1, "systemHeaderLength":I
    add-int/lit8 v0, v0, 0x6

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    .line 58971
    return v3

    .line 58972
    .end local p1    # "systemHeaderLength":I
    :cond_3
    and-int/lit16 v0, v1, -0x100

    shr-int/lit8 v0, v0, 0x8

    if-eq v0, v6, :cond_4

    .line 58973
    invoke-interface {p1, v6}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    .line 58974
    return v3

    .line 58975
    :cond_4
    and-int/lit16 v7, v1, 0xff

    .line 58976
    .local v0, "streamId":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Dc;

    .line 58977
    .local v6, "payloadReader":Lcom/facebook/ads/redexgen/X/Dc;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A02:Z

    if-nez v0, :cond_a

    .line 58978
    if-nez v4, :cond_6

    .line 58979
    const/4 v2, 0x0

    .line 58980
    .local v3, "elementaryStreamReader":Lcom/facebook/ads/redexgen/X/DV;
    const/16 v0, 0xbd

    if-ne v7, v0, :cond_7

    .line 58981
    new-instance v2, Lcom/facebook/ads/redexgen/X/Vn;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Vn;-><init>()V

    .line 58982
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/VY;->A03:Z

    .line 58983
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A00:J

    .line 58984
    :cond_5
    :goto_0
    if-eqz v2, :cond_6

    .line 58985
    const/16 v0, 0x100

    new-instance v1, Lcom/facebook/ads/redexgen/X/Dj;

    invoke-direct {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/Dj;-><init>(II)V

    .line 58986
    .local v0, "idGenerator":Lcom/facebook/ads/redexgen/X/Dj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A01:Lcom/facebook/ads/redexgen/X/CR;

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/DV;->A4T(Lcom/facebook/ads/redexgen/X/CR;Lcom/facebook/ads/redexgen/X/Dj;)V

    .line 58987
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A07:Lcom/facebook/ads/redexgen/X/Ih;

    new-instance v4, Lcom/facebook/ads/redexgen/X/Dc;

    invoke-direct {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/Dc;-><init>(Lcom/facebook/ads/redexgen/X/DV;Lcom/facebook/ads/redexgen/X/Ih;)V

    .line 58988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58989
    .end local v3    # "elementaryStreamReader":Lcom/facebook/ads/redexgen/X/DV;
    .end local v0    # "idGenerator":Lcom/facebook/ads/redexgen/X/Dj;
    :cond_6
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A03:Z

    if-eqz v0, :cond_d

    iget-boolean v7, p0, Lcom/facebook/ads/redexgen/X/VY;->A04:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/VY;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58990
    :cond_7
    and-int/lit16 v1, v7, 0xe0

    const/16 v0, 0xc0

    if-ne v1, v0, :cond_8

    .line 58991
    new-instance v2, Lcom/facebook/ads/redexgen/X/Vb;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Vb;-><init>()V

    .line 58992
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/VY;->A03:Z

    .line 58993
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A00:J

    goto :goto_0

    .line 58994
    :cond_8
    and-int/lit16 v1, v7, 0xf0

    const/16 v0, 0xe0

    if-ne v1, v0, :cond_5

    .line 58995
    new-instance v2, Lcom/facebook/ads/redexgen/X/Vg;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Vg;-><init>()V

    .line 58996
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/VY;->A04:Z

    .line 58997
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A00:J

    goto :goto_0

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/VY;->A08:[Ljava/lang/String;

    const-string v1, "GuNYv8iGB9fWJbOt3uu3Za7wMxPGJegg"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "GUiTHbar7DdTUGk0lHWf4lwKJeXDLMXK"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v7, :cond_d

    .line 58998
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/VY;->A00:J

    const-wide/16 v7, 0x2000

    add-long/2addr v1, v7

    .line 58999
    .local v3, "maxSearchPosition":J
    :goto_1
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CQ;->A79()J

    move-result-wide v7

    cmp-long v0, v7, v1

    if-lez v0, :cond_a

    .line 59000
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/VY;->A02:Z

    .line 59001
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A01:Lcom/facebook/ads/redexgen/X/CR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CR;->A5A()V

    .line 59002
    .end local v3    # "maxSearchPosition":J
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    invoke-interface {p1, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/CQ;->ACp([BII)V

    .line 59003
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 59004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0I()I

    move-result v0

    .line 59005
    .local p1, "payloadLength":I
    add-int/lit8 v5, v0, 0x6

    sget-object v1, Lcom/facebook/ads/redexgen/X/VY;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_b

    .line 59006
    .local v1, "pesLength":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/VY;->A08:[Ljava/lang/String;

    const-string v1, "LU8WC4TuN3WXFvWf57u6WvD8Lscdw8Rq"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v4, :cond_c

    .line 59007
    :goto_2
    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/CQ;->AEh(I)V

    .line 59008
    :goto_3
    return v3

    .line 59009
    .local v1, "pesLength":I
    :cond_b
    if-nez v4, :cond_c

    goto :goto_2

    .line 59010
    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IV;->A0W(I)V

    .line 59011
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    invoke-interface {p1, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/CQ;->readFully([BII)V

    .line 59012
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:Lcom/facebook/ads/redexgen/X/IV;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 59013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A03(Lcom/facebook/ads/redexgen/X/IV;)V

    .line 59014
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VY;->A06:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IV;->A05()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0X(I)V

    goto :goto_3

    .line 59015
    :cond_d
    const-wide/32 v1, 0x100000

    goto :goto_1
.end method

.method public final AE9(JJ)V
    .locals 2

    .line 59016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A07:Lcom/facebook/ads/redexgen/X/Ih;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ih;->A08()V

    .line 59017
    const/4 v1, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 59018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VY;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Dc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dc;->A02()V

    .line 59019
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59020
    .end local p0    # "i":I
    :cond_0
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

    .line 59021
    const/16 v0, 0xe

    new-array v5, v0, [B

    .line 59022
    .local p1, "scratch":[B
    const/4 v4, 0x0

    invoke-interface {p1, v5, v4, v0}, Lcom/facebook/ads/redexgen/X/CQ;->ACp([BII)V

    .line 59023
    aget-byte v0, v5, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x18

    const/4 v3, 0x1

    aget-byte v0, v5, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v1, v0

    const/4 v8, 0x2

    aget-byte v0, v5, v8

    and-int/lit16 v0, v0, 0xff

    const/16 v6, 0x8

    shl-int/2addr v0, v6

    or-int/2addr v1, v0

    const/4 v7, 0x3

    aget-byte v0, v5, v7

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    const/16 v0, 0x1ba

    if-eq v0, v1, :cond_0

    .line 59024
    return v4

    .line 59025
    :cond_0
    const/4 v2, 0x4

    aget-byte v0, v5, v2

    and-int/lit16 v1, v0, 0xc4

    const/16 v0, 0x44

    if-eq v1, v0, :cond_1

    .line 59026
    return v4

    .line 59027
    :cond_1
    const/4 v0, 0x6

    aget-byte v0, v5, v0

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_2

    .line 59028
    return v4

    .line 59029
    :cond_2
    aget-byte v0, v5, v6

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_3

    .line 59030
    return v4

    .line 59031
    :cond_3
    const/16 v0, 0x9

    aget-byte v0, v5, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    .line 59032
    return v4

    .line 59033
    :cond_4
    const/16 v0, 0xc

    aget-byte v0, v5, v0

    and-int/2addr v0, v7

    if-eq v0, v7, :cond_5

    .line 59034
    return v4

    .line 59035
    :cond_5
    const/16 v6, 0xd

    sget-object v1, Lcom/facebook/ads/redexgen/X/VY;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/VY;->A08:[Ljava/lang/String;

    const-string v1, "dWjhqjXulz1hd3AtKzuGBSPNQhOMyT1H"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    aget-byte v0, v5, v6

    and-int/lit8 v0, v0, 0x7

    .line 59036
    .local p0, "packStuffingLength":I
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CQ;->A3J(I)V

    .line 59037
    invoke-interface {p1, v5, v4, v7}, Lcom/facebook/ads/redexgen/X/CQ;->ACp([BII)V

    .line 59038
    aget-byte v0, v5, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x10

    aget-byte v0, v5, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v1, v0

    aget-byte v0, v5, v8

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    if-ne v3, v0, :cond_6

    const/4 v4, 0x1

    :cond_6
    return v4

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
