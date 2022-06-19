.class public final Lcom/facebook/ads/redexgen/X/ER;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:J

.field public final A04:J

.field public final A05:J

.field public final A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/EQ;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Z

.field public final A08:Z

.field public final A09:Z

.field public final A0A:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "s27kRN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "abG5pKADna"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "w2jztrB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "I7geUVX8H5XW4NGFgS7QGYJa3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "W37aGUNVZO5G"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "W3qhVhIXcY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2nbP2bKsNJFzfOABHc993I7Qj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6HcftuEFFeXx4hy"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ER;->A0B:[Ljava/lang/String;

    .line 30060
    return-void
.end method

.method public constructor <init>(JZZZLjava/util/List;JZJIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZ",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/EQ;",
            ">;JZJIII)V"
        }
    .end annotation

    .line 30061
    .local p7, "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30062
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/ER;->A04:J

    .line 30063
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/ER;->A0A:Z

    .line 30064
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/ER;->A08:Z

    .line 30065
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/ER;->A09:Z

    .line 30066
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A06:Ljava/util/List;

    .line 30067
    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/ER;->A05:J

    .line 30068
    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/ER;->A07:Z

    .line 30069
    iput-wide p10, p0, Lcom/facebook/ads/redexgen/X/ER;->A03:J

    .line 30070
    iput p12, p0, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    .line 30071
    iput p13, p0, Lcom/facebook/ads/redexgen/X/ER;->A00:I

    .line 30072
    iput p14, p0, Lcom/facebook/ads/redexgen/X/ER;->A01:I

    .line 30073
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 30074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30075
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A04:J

    .line 30076
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A0A:Z

    .line 30077
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A08:Z

    .line 30078
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A09:Z

    .line 30079
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 30080
    .local p0, "componentSpliceListLength":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 30081
    .local v3, "componentSpliceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v1, v3, :cond_3

    .line 30082
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/EQ;->A01(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/EQ;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30083
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 30084
    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    .line 30085
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 30086
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 30087
    .end local v0    # "i":I
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A06:Ljava/util/List;

    .line 30088
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A05:J

    .line 30089
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_4

    const/4 v5, 0x1

    :cond_4
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/ER;->A07:Z

    .line 30090
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A03:J

    .line 30091
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    .line 30092
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A00:I

    .line 30093
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A01:I

    .line 30094
    return-void
.end method

.method public static A00(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/ER;
    .locals 1

    .line 30095
    new-instance v0, Lcom/facebook/ads/redexgen/X/ER;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ER;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static synthetic A01(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/ER;
    .locals 0

    .line 30096
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/ER;->A00(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/ER;

    move-result-object p0

    return-object p0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/IV;)Lcom/facebook/ads/redexgen/X/ER;
    .locals 22

    .line 30097
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IV;->A0M()J

    move-result-wide v8

    .line 30098
    .local v16, "spliceEventId":J
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    .line 30099
    .local v17, "spliceEventCancelIndicator":Z
    :goto_0
    const/4 v11, 0x0

    .line 30100
    .local p0, "outOfNetworkIndicator":Z
    const/4 v12, 0x0

    .line 30101
    .local v0, "programSpliceFlag":Z
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 30102
    .local v0, "utcSpliceTime":J
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 30103
    .local v10, "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    const/16 v19, 0x0

    .line 30104
    .local v11, "uniqueProgramId":I
    const/16 v20, 0x0

    .line 30105
    .local v12, "availNum":I
    const/16 v21, 0x0

    .line 30106
    .local v14, "availsExpected":I
    const/16 v16, 0x0

    .line 30107
    .local v10, "autoReturn":Z
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 30108
    .local v13, "breakDurationUs":J
    if-nez v10, :cond_8

    .line 30109
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ER;->A0B:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 30110
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 30111
    .local v20, "headerByte":I
    :cond_1
    sget-object v3, Lcom/facebook/ads/redexgen/X/ER;->A0B:[Ljava/lang/String;

    const-string v1, "oYMFgXMCdR9ldlOsYeO"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_5

    const/4 v11, 0x1

    .line 30112
    :goto_1
    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_4

    const/4 v12, 0x1

    .line 30113
    :goto_2
    and-int/lit8 v0, v2, 0x20

    if-eqz v0, :cond_3

    const/4 v7, 0x1

    .line 30114
    .local v21, "durationFlag":Z
    :goto_3
    if-eqz v12, :cond_2

    .line 30115
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IV;->A0M()J

    move-result-wide v14

    .line 30116
    :cond_2
    if-nez v12, :cond_6

    .line 30117
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v4

    .line 30118
    .local v8, "componentCount":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 30119
    const/4 v3, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v3, v4, :cond_6

    .line 30120
    .end local p0    # "outOfNetworkIndicator":Z
    .local v0, "outOfNetworkIndicator":Z
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v6

    .line 30121
    .local p0, "componentTag":I
    .end local v0    # "outOfNetworkIndicator":Z
    .end local v0
    .local v0, "programSpliceFlag":Z
    .local v1, "utcSpliceTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IV;->A0M()J

    move-result-wide v0

    .line 30122
    .local v0, "componentUtcSpliceTime":J
    .end local v8    # "componentCount":I
    .local v0, "componentCount":I
    const/4 v5, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/EQ;

    invoke-direct {v2, v6, v0, v1, v5}, Lcom/facebook/ads/redexgen/X/EQ;-><init>(IJLcom/facebook/ads/redexgen/X/EP;)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30123
    .end local p0    # "componentTag":I
    .end local v0    # "componentCount":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 30124
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    .line 30125
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 30126
    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 30127
    .end local p0
    .end local v0
    .end local v0
    .restart local v0    # "componentCount":I
    .restart local v0    # "componentCount":I
    .restart local v1    # "utcSpliceTime":J
    :cond_6
    if-eqz v7, :cond_7

    .line 30128
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    int-to-long v0, v0

    .line 30129
    .local p0, "firstByte":J
    const-wide/16 v5, 0x80

    and-long/2addr v5, v0

    const-wide/16 v3, 0x0

    cmp-long v2, v5, v3

    if-eqz v2, :cond_9

    const/16 v16, 0x1

    .line 30130
    :goto_5
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IV;->A0M()J

    move-result-wide v0

    or-long/2addr v2, v0

    .line 30131
    .local v2, "breakDuration90khz":J
    const-wide/16 v17, 0x3e8

    mul-long v17, v17, v2

    const-wide/16 v0, 0x5a

    div-long v17, v17, v0

    .line 30132
    .end local p0    # "firstByte":J
    .end local v2    # "breakDuration90khz":J
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IV;->A0I()I

    move-result v19

    .line 30133
    .end local v11    # "uniqueProgramId":I
    .local p0, "uniqueProgramId":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v20

    .line 30134
    .end local v12    # "availNum":I
    .local v8, "availNum":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v21

    .line 30135
    .end local v14    # "availsExpected":I
    .local v2, "availsExpected":I
    .end local p0    # "uniqueProgramId":I
    .end local v0    # "componentCount":I
    .end local v0
    .end local v10    # "autoReturn":Z
    .end local v11
    .end local v12
    .end local v14
    .end local v10
    .end local v13    # "breakDurationUs":J
    .local v2, "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    .local v1, "autoReturn":Z
    .restart local v0    # "componentCount":I
    .restart local v0    # "componentCount":I
    .restart local v1    # "autoReturn":Z
    .local v0, "breakDurationUs":J
    .local v1, "uniqueProgramId":I
    .local v0, "availNum":I
    .local v0, "availsExpected":I
    :cond_8
    new-instance v7, Lcom/facebook/ads/redexgen/X/ER;

    invoke-direct/range {v7 .. v21}, Lcom/facebook/ads/redexgen/X/ER;-><init>(JZZZLjava/util/List;JZJIII)V

    return-object v7

    .line 30136
    :cond_9
    const/16 v16, 0x0

    goto :goto_5
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/IV;)Lcom/facebook/ads/redexgen/X/ER;
    .locals 0

    .line 30137
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/ER;->A02(Lcom/facebook/ads/redexgen/X/IV;)Lcom/facebook/ads/redexgen/X/ER;

    move-result-object p0

    return-object p0
.end method

.method private A04(Landroid/os/Parcel;)V
    .locals 3

    .line 30138
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A04:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 30139
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A0A:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 30140
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A08:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 30141
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A09:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 30142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 30143
    .local p0, "componentSpliceListSize":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30144
    const/4 v1, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 30145
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A06:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/EQ;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/EQ;->A03(Lcom/facebook/ads/redexgen/X/EQ;Landroid/os/Parcel;)V

    .line 30146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30147
    .end local p1    # "i":I
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A05:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 30148
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A07:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 30149
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A03:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 30150
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30151
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A00:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30152
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ER;->A01:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30153
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/ER;Landroid/os/Parcel;)V
    .locals 0

    .line 30154
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ER;->A04(Landroid/os/Parcel;)V

    return-void
.end method
