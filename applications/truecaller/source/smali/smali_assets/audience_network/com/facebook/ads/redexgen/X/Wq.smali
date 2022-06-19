.class public final Lcom/facebook/ads/redexgen/X/Wq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/IM;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/A6;
    }
.end annotation


# static fields
.field public static A04:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Wn;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/IM;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/A6;

.field public final A03:Lcom/facebook/ads/redexgen/X/UH;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wq;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/A6;Lcom/facebook/ads/redexgen/X/I9;)V
    .locals 1

    .line 65071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65072
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Lcom/facebook/ads/redexgen/X/A6;

    .line 65073
    new-instance v0, Lcom/facebook/ads/redexgen/X/UH;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/UH;-><init>(Lcom/facebook/ads/redexgen/X/I9;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A03:Lcom/facebook/ads/redexgen/X/UH;

    .line 65074
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wq;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 3

    .line 65075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A01:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/IM;->A7B()J

    move-result-wide v1

    .line 65076
    .local p0, "rendererClockPositionUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A03:Lcom/facebook/ads/redexgen/X/UH;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/UH;->A02(J)V

    .line 65077
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A01:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/IM;->A78()Lcom/facebook/ads/redexgen/X/AU;

    move-result-object v1

    .line 65078
    .local v1, "playbackParameters":Lcom/facebook/ads/redexgen/X/AU;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A03:Lcom/facebook/ads/redexgen/X/UH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UH;->A78()Lcom/facebook/ads/redexgen/X/AU;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AU;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A03:Lcom/facebook/ads/redexgen/X/UH;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/UH;->AET(Lcom/facebook/ads/redexgen/X/AU;)Lcom/facebook/ads/redexgen/X/AU;

    .line 65080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Lcom/facebook/ads/redexgen/X/A6;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/A6;->ABZ(Lcom/facebook/ads/redexgen/X/AU;)V

    .line 65081
    :cond_0
    return-void
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wq;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x5ft
        0x67t
        0x7et
        0x66t
        0x7bt
        0x62t
        0x7et
        0x77t
        0x32t
        0x60t
        0x77t
        0x7ct
        0x76t
        0x77t
        0x60t
        0x77t
        0x60t
        0x32t
        0x7ft
        0x77t
        0x76t
        0x7bt
        0x73t
        0x32t
        0x71t
        0x7et
        0x7dt
        0x71t
        0x79t
        0x61t
        0x32t
        0x77t
        0x7ct
        0x73t
        0x70t
        0x7et
        0x77t
        0x76t
        0x3ct
    .end array-data
.end method

.method private A03()Z
    .locals 1

    .line 65082
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A00:Lcom/facebook/ads/redexgen/X/Wn;

    if-eqz v0, :cond_1

    .line 65083
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Wn;->A8J()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A00:Lcom/facebook/ads/redexgen/X/Wn;

    .line 65084
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Wn;->A8U()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A00:Lcom/facebook/ads/redexgen/X/Wn;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Wn;->A7w()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 65085
    :goto_0
    return v0

    .line 65086
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A04()J
    .locals 2

    .line 65087
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wq;->A03()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65088
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wq;->A01()V

    .line 65089
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A01:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/IM;->A7B()J

    move-result-wide v0

    return-wide v0

    .line 65090
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A03:Lcom/facebook/ads/redexgen/X/UH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UH;->A7B()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A05()V
    .locals 1

    .line 65091
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A03:Lcom/facebook/ads/redexgen/X/UH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UH;->A00()V

    .line 65092
    return-void
.end method

.method public final A06()V
    .locals 1

    .line 65093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A03:Lcom/facebook/ads/redexgen/X/UH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UH;->A01()V

    .line 65094
    return-void
.end method

.method public final A07(J)V
    .locals 1

    .line 65095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A03:Lcom/facebook/ads/redexgen/X/UH;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/UH;->A02(J)V

    .line 65096
    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/Wn;)V
    .locals 1

    .line 65097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A00:Lcom/facebook/ads/redexgen/X/Wn;

    if-ne p1, v0, :cond_0

    .line 65098
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A01:Lcom/facebook/ads/redexgen/X/IM;

    .line 65099
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A00:Lcom/facebook/ads/redexgen/X/Wn;

    .line 65100
    :cond_0
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/Wn;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 65101
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Wn;->A6r()Lcom/facebook/ads/redexgen/X/IM;

    move-result-object v1

    .line 65102
    .local p0, "rendererMediaClock":Lcom/facebook/ads/redexgen/X/IM;
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A01:Lcom/facebook/ads/redexgen/X/IM;

    if-eq v1, v0, :cond_0

    .line 65103
    if-nez v0, :cond_1

    .line 65104
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Wq;->A01:Lcom/facebook/ads/redexgen/X/IM;

    .line 65105
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wq;->A00:Lcom/facebook/ads/redexgen/X/Wn;

    .line 65106
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wq;->A01:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A03:Lcom/facebook/ads/redexgen/X/UH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UH;->A78()Lcom/facebook/ads/redexgen/X/AU;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->AET(Lcom/facebook/ads/redexgen/X/AU;)Lcom/facebook/ads/redexgen/X/AU;

    .line 65107
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wq;->A01()V

    .line 65108
    :cond_0
    return-void

    .line 65109
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x27

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wq;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/A9;->A02(Ljava/lang/RuntimeException;)Lcom/facebook/ads/redexgen/X/A9;

    move-result-object v0

    throw v0
.end method

.method public final A78()Lcom/facebook/ads/redexgen/X/AU;
    .locals 1

    .line 65110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A01:Lcom/facebook/ads/redexgen/X/IM;

    if-eqz v0, :cond_0

    .line 65111
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/IM;->A78()Lcom/facebook/ads/redexgen/X/AU;

    move-result-object v0

    .line 65112
    :goto_0
    return-object v0

    .line 65113
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A03:Lcom/facebook/ads/redexgen/X/UH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UH;->A78()Lcom/facebook/ads/redexgen/X/AU;

    move-result-object v0

    goto :goto_0
.end method

.method public final A7B()J
    .locals 2

    .line 65114
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wq;->A03()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A01:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/IM;->A7B()J

    move-result-wide v0

    return-wide v0

    .line 65116
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A03:Lcom/facebook/ads/redexgen/X/UH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UH;->A7B()J

    move-result-wide v0

    return-wide v0
.end method

.method public final AET(Lcom/facebook/ads/redexgen/X/AU;)Lcom/facebook/ads/redexgen/X/AU;
    .locals 1

    .line 65117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A01:Lcom/facebook/ads/redexgen/X/IM;

    if-eqz v0, :cond_0

    .line 65118
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/IM;->AET(Lcom/facebook/ads/redexgen/X/AU;)Lcom/facebook/ads/redexgen/X/AU;

    move-result-object p1

    .line 65119
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A03:Lcom/facebook/ads/redexgen/X/UH;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/UH;->AET(Lcom/facebook/ads/redexgen/X/AU;)Lcom/facebook/ads/redexgen/X/AU;

    .line 65120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Lcom/facebook/ads/redexgen/X/A6;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/A6;->ABZ(Lcom/facebook/ads/redexgen/X/AU;)V

    .line 65121
    return-object p1
.end method
