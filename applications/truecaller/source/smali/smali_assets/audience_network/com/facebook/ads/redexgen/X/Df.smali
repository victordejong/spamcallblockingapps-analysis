.class public abstract Lcom/facebook/ads/redexgen/X/Df;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wn;
.implements Lcom/facebook/ads/redexgen/X/Ah;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/Ai;

.field public A04:Lcom/facebook/ads/redexgen/X/Fi;

.field public A05:Z

.field public A06:Z

.field public A07:[Lcom/facebook/ads/internal/exoplayer2/Format;

.field public final A08:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 29081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29082
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Df;->A08:I

    .line 29083
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Z

    .line 29084
    return-void
.end method

.method public static A0x(Lcom/facebook/ads/redexgen/X/C9;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Z
    .locals 0
    .param p0    # Lcom/facebook/ads/redexgen/X/C9;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/C9<",
            "*>;",
            "Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;",
            ")Z"
        }
    .end annotation

    .line 29085
    .local p1, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C9;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<*>;"
    if-nez p1, :cond_0

    .line 29086
    const/4 p0, 0x1

    return p0

    .line 29087
    :cond_0
    if-nez p0, :cond_1

    .line 29088
    const/4 p0, 0x0

    return p0

    .line 29089
    :cond_1
    invoke-interface {p0, p1}, Lcom/facebook/ads/redexgen/X/C9;->A3v(Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A0y()I
    .locals 1

    .line 29090
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    return v0
.end method

.method public final A0z(J)I
    .locals 3

    .line 29091
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Df;->A04:Lcom/facebook/ads/redexgen/X/Fi;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A02:J

    sub-long/2addr p1, v0

    invoke-interface {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/Fi;->AEg(J)I

    move-result v0

    return v0
.end method

.method public final A10(Lcom/facebook/ads/redexgen/X/AM;Lcom/facebook/ads/redexgen/X/WZ;Z)I
    .locals 7

    .line 29092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A04:Lcom/facebook/ads/redexgen/X/Fi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Fi;->ADG(Lcom/facebook/ads/redexgen/X/AM;Lcom/facebook/ads/redexgen/X/WZ;Z)I

    move-result v6

    .line 29093
    .local p0, "result":I
    const/4 v1, -0x4

    if-ne v6, v1, :cond_2

    .line 29094
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Be;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29095
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Z

    .line 29096
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Z

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x3

    goto :goto_0

    .line 29097
    :cond_1
    iget-wide v2, p2, Lcom/facebook/ads/redexgen/X/WZ;->A00:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A02:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Lcom/facebook/ads/redexgen/X/WZ;->A00:J

    goto :goto_1

    .line 29098
    :cond_2
    const/4 v0, -0x5

    if-ne v6, v0, :cond_3

    .line 29099
    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/AM;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 29100
    .local p1, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-wide v3, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    .line 29101
    iget-wide v2, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A02:J

    add-long/2addr v2, v0

    invoke-virtual {v5, v2, v3}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H(J)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 29102
    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/AM;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 29103
    .end local p1    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    :cond_3
    :goto_1
    return v6
.end method

.method public final A11()Lcom/facebook/ads/redexgen/X/Ai;
    .locals 1

    .line 29104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A03:Lcom/facebook/ads/redexgen/X/Ai;

    return-object v0
.end method

.method public A12()V
    .locals 0

    .line 29105
    return-void
.end method

.method public A13()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 29106
    return-void
.end method

.method public A14()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 29107
    return-void
.end method

.method public A15(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 29108
    return-void
.end method

.method public A16(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 29109
    return-void
.end method

.method public A17([Lcom/facebook/ads/internal/exoplayer2/Format;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 29110
    return-void
.end method

.method public final A18()Z
    .locals 1

    .line 29111
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A04:Lcom/facebook/ads/redexgen/X/Fi;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Fi;->A8U()Z

    move-result v0

    goto :goto_0
.end method

.method public final A19()[Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 1

    .line 29112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A07:[Lcom/facebook/ads/internal/exoplayer2/Format;

    return-object v0
.end method

.method public final A4l()V
    .locals 3

    .line 29113
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Df;->A01:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 29114
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A01:I

    .line 29115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A04:Lcom/facebook/ads/redexgen/X/Fi;

    .line 29116
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A07:[Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 29117
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Z

    .line 29118
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A12()V

    .line 29119
    return-void

    .line 29120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A57(Lcom/facebook/ads/redexgen/X/Ai;[Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/redexgen/X/Fi;JZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 29121
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A01:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 29122
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Df;->A03:Lcom/facebook/ads/redexgen/X/Ai;

    .line 29123
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A01:I

    .line 29124
    invoke-virtual {p0, p6}, Lcom/facebook/ads/redexgen/X/Df;->A16(Z)V

    .line 29125
    invoke-virtual {p0, p2, p3, p7, p8}, Lcom/facebook/ads/redexgen/X/Df;->ADh([Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/redexgen/X/Fi;J)V

    .line 29126
    invoke-virtual {p0, p4, p5, p6}, Lcom/facebook/ads/redexgen/X/Df;->A15(JZ)V

    .line 29127
    return-void

    .line 29128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A5u()Lcom/facebook/ads/redexgen/X/Ah;
    .locals 0

    .line 29129
    return-object p0
.end method

.method public A6r()Lcom/facebook/ads/redexgen/X/IM;
    .locals 1

    .line 29130
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A7Q()I
    .locals 1

    .line 29131
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A01:I

    return v0
.end method

.method public final A7V()Lcom/facebook/ads/redexgen/X/Fi;
    .locals 1

    .line 29132
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A04:Lcom/facebook/ads/redexgen/X/Fi;

    return-object v0
.end method

.method public final A7b()I
    .locals 1

    .line 29133
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A08:I

    return v0
.end method

.method public A7q(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 29134
    return-void
.end method

.method public final A7w()Z
    .locals 1

    .line 29135
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Z

    return v0
.end method

.method public final A8G()Z
    .locals 1

    .line 29136
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Z

    return v0
.end method

.method public final A9Q()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29137
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A04:Lcom/facebook/ads/redexgen/X/Fi;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Fi;->A9N()V

    .line 29138
    return-void
.end method

.method public final ADh([Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/redexgen/X/Fi;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 29139
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 29140
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Df;->A04:Lcom/facebook/ads/redexgen/X/Fi;

    .line 29141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Z

    .line 29142
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Df;->A07:[Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 29143
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Df;->A02:J

    .line 29144
    invoke-virtual {p0, p1, p3, p4}, Lcom/facebook/ads/redexgen/X/Df;->A17([Lcom/facebook/ads/internal/exoplayer2/Format;J)V

    .line 29145
    return-void
.end method

.method public final ADs(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 29146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Z

    .line 29147
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Z

    .line 29148
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Df;->A15(JZ)V

    .line 29149
    return-void
.end method

.method public final AEL()V
    .locals 1

    .line 29150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Z

    .line 29151
    return-void
.end method

.method public final AEN(I)V
    .locals 0

    .line 29152
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    .line 29153
    return-void
.end method

.method public AEx()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 29154
    const/4 v0, 0x0

    return v0
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 29155
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A01:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 29156
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A01:I

    .line 29157
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A13()V

    .line 29158
    return-void

    .line 29159
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 29160
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Df;->A01:I

    const/4 v1, 0x1

    const/4 v0, 0x2

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 29161
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A01:I

    .line 29162
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A14()V

    .line 29163
    return-void

    .line 29164
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
