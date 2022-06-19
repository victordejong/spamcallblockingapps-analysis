.class public final Lcom/facebook/ads/redexgen/X/AT;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:J

.field public final A03:Lcom/facebook/ads/redexgen/X/Ao;

.field public final A04:Lcom/facebook/ads/redexgen/X/FL;

.field public final A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

.field public final A06:Lcom/facebook/ads/redexgen/X/HH;

.field public final A07:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A08:Z

.field public volatile A09:J

.field public volatile A0A:J


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ao;JLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HH;)V
    .locals 12

    .line 22114
    const/4 v0, 0x0

    new-instance v3, Lcom/facebook/ads/redexgen/X/FL;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/FL;-><init>(I)V

    const/4 v2, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v4, p2

    move-object v1, p1

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/AT;-><init>(Lcom/facebook/ads/redexgen/X/Ao;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FL;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HH;)V

    .line 22115
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ao;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FL;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HH;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 22116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22117
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    .line 22118
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/AT;->A07:Ljava/lang/Object;

    .line 22119
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    .line 22120
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/AT;->A02:J

    .line 22121
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/AT;->A01:J

    .line 22122
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/AT;->A0A:J

    .line 22123
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/AT;->A09:J

    .line 22124
    iput p8, p0, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    .line 22125
    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/AT;->A08:Z

    .line 22126
    iput-object p10, p0, Lcom/facebook/ads/redexgen/X/AT;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    .line 22127
    iput-object p11, p0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/HH;

    .line 22128
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/AT;Lcom/facebook/ads/redexgen/X/AT;)V
    .locals 2

    .line 22129
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A0A:J

    iput-wide v0, p1, Lcom/facebook/ads/redexgen/X/AT;->A0A:J

    .line 22130
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A09:J

    iput-wide v0, p1, Lcom/facebook/ads/redexgen/X/AT;->A09:J

    .line 22131
    return-void
.end method


# virtual methods
.method public final A01(I)Lcom/facebook/ads/redexgen/X/AT;
    .locals 13

    .line 22132
    new-instance v1, Lcom/facebook/ads/redexgen/X/AT;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AT;->A07:Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    .line 22133
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/FL;->A00(I)Lcom/facebook/ads/redexgen/X/FL;

    move-result-object v4

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/AT;->A02:J

    iget-wide v7, p0, Lcom/facebook/ads/redexgen/X/AT;->A01:J

    iget v9, p0, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    iget-boolean v10, p0, Lcom/facebook/ads/redexgen/X/AT;->A08:Z

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/AT;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v12, p0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/HH;

    invoke-direct/range {v1 .. v12}, Lcom/facebook/ads/redexgen/X/AT;-><init>(Lcom/facebook/ads/redexgen/X/Ao;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FL;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HH;)V

    .line 22134
    .local p0, "playbackInfo":Lcom/facebook/ads/redexgen/X/AT;
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/AT;->A00(Lcom/facebook/ads/redexgen/X/AT;Lcom/facebook/ads/redexgen/X/AT;)V

    .line 22135
    return-object v1
.end method

.method public final A02(I)Lcom/facebook/ads/redexgen/X/AT;
    .locals 12

    .line 22136
    new-instance v0, Lcom/facebook/ads/redexgen/X/AT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AT;->A07:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/AT;->A02:J

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/AT;->A01:J

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/AT;->A08:Z

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/AT;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/HH;

    move v8, p1

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/AT;-><init>(Lcom/facebook/ads/redexgen/X/Ao;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FL;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HH;)V

    .line 22137
    .local p0, "playbackInfo":Lcom/facebook/ads/redexgen/X/AT;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/AT;->A00(Lcom/facebook/ads/redexgen/X/AT;Lcom/facebook/ads/redexgen/X/AT;)V

    .line 22138
    return-object v0
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/Ao;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/AT;
    .locals 12

    .line 22139
    new-instance v0, Lcom/facebook/ads/redexgen/X/AT;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/AT;->A02:J

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/AT;->A01:J

    iget v8, p0, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/AT;->A08:Z

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/AT;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/HH;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/AT;-><init>(Lcom/facebook/ads/redexgen/X/Ao;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FL;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HH;)V

    .line 22140
    .local p0, "playbackInfo":Lcom/facebook/ads/redexgen/X/AT;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/AT;->A00(Lcom/facebook/ads/redexgen/X/AT;Lcom/facebook/ads/redexgen/X/AT;)V

    .line 22141
    return-object v0
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/FL;JJ)Lcom/facebook/ads/redexgen/X/AT;
    .locals 14

    move-wide/from16 v8, p4

    .line 22142
    move-object v1, p0

    new-instance v2, Lcom/facebook/ads/redexgen/X/AT;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/AT;->A07:Ljava/lang/Object;

    .line 22143
    move-object v5, p1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/FL;->A01()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget v10, v1, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    iget-boolean v11, v1, Lcom/facebook/ads/redexgen/X/AT;->A08:Z

    iget-object v12, v1, Lcom/facebook/ads/redexgen/X/AT;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v13, v1, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/HH;

    move-wide/from16 v6, p2

    invoke-direct/range {v2 .. v13}, Lcom/facebook/ads/redexgen/X/AT;-><init>(Lcom/facebook/ads/redexgen/X/Ao;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FL;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HH;)V

    .line 22144
    return-object v2

    .line 22145
    :cond_0
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method public final A05(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HH;)Lcom/facebook/ads/redexgen/X/AT;
    .locals 12

    .line 22146
    new-instance v0, Lcom/facebook/ads/redexgen/X/AT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AT;->A07:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/AT;->A02:J

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/AT;->A01:J

    iget v8, p0, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/AT;->A08:Z

    move-object v10, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/AT;-><init>(Lcom/facebook/ads/redexgen/X/Ao;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FL;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HH;)V

    .line 22147
    .local p0, "playbackInfo":Lcom/facebook/ads/redexgen/X/AT;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/AT;->A00(Lcom/facebook/ads/redexgen/X/AT;Lcom/facebook/ads/redexgen/X/AT;)V

    .line 22148
    return-object v0
.end method

.method public final A06(Z)Lcom/facebook/ads/redexgen/X/AT;
    .locals 12

    .line 22149
    new-instance v0, Lcom/facebook/ads/redexgen/X/AT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/AT;->A07:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AT;->A04:Lcom/facebook/ads/redexgen/X/FL;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/AT;->A02:J

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/AT;->A01:J

    iget v8, p0, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/AT;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/HH;

    move v9, p1

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/AT;-><init>(Lcom/facebook/ads/redexgen/X/Ao;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FL;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HH;)V

    .line 22150
    .local p0, "playbackInfo":Lcom/facebook/ads/redexgen/X/AT;
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/AT;->A00(Lcom/facebook/ads/redexgen/X/AT;Lcom/facebook/ads/redexgen/X/AT;)V

    .line 22151
    return-object v0
.end method
