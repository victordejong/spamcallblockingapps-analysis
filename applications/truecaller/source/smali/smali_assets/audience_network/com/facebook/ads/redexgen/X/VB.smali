.class public final Lcom/facebook/ads/redexgen/X/VB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Er;


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/HV;

.field public final A01:Lcom/facebook/ads/redexgen/X/Hq;

.field public final A02:Lcom/facebook/ads/redexgen/X/UN;

.field public final A03:Lcom/facebook/ads/redexgen/X/Hv;

.field public final A04:Lcom/facebook/ads/redexgen/X/IZ;

.field public final A05:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0vmpU1QtAhI6qjIdcVId"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "klBv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qKjW3ego541fEYihs"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NuBFx4EY8fIgWeMvZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "vAKBh2R"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FoB4J1nu"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9b5WU1uKCw6g3SYcMdOb"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "twQXN8Z"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VB;->A06:[Ljava/lang/String;

    .line 57957
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Es;)V
    .locals 8

    .line 57958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57959
    new-instance v0, Lcom/facebook/ads/redexgen/X/HV;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/HV;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VB;->A00:Lcom/facebook/ads/redexgen/X/HV;

    .line 57960
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Es;->A00()Lcom/facebook/ads/redexgen/X/Hq;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VB;->A01:Lcom/facebook/ads/redexgen/X/Hq;

    .line 57961
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/Es;->A01(Z)Lcom/facebook/ads/redexgen/X/UN;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VB;->A02:Lcom/facebook/ads/redexgen/X/UN;

    .line 57962
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Es;->A02()Lcom/facebook/ads/redexgen/X/IZ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VB;->A04:Lcom/facebook/ads/redexgen/X/IZ;

    .line 57963
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hv;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hv;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VB;->A03:Lcom/facebook/ads/redexgen/X/Hv;

    .line 57964
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VB;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57965
    return-void
.end method


# virtual methods
.method public final A4r()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 57966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VB;->A04:Lcom/facebook/ads/redexgen/X/IZ;

    const/16 v2, -0x3e8

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IZ;->A00(I)V

    .line 57967
    :try_start_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VB;->A00:Lcom/facebook/ads/redexgen/X/HV;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/VB;->A01:Lcom/facebook/ads/redexgen/X/Hq;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/VB;->A02:Lcom/facebook/ads/redexgen/X/UN;

    const/high16 v0, 0x20000

    new-array v6, v0, [B

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/VB;->A04:Lcom/facebook/ads/redexgen/X/IZ;

    const/16 v8, -0x3e8

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/VB;->A03:Lcom/facebook/ads/redexgen/X/Hv;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/VB;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x1

    invoke-static/range {v3 .. v11}, Lcom/facebook/ads/redexgen/X/Hw;->A03(Lcom/facebook/ads/redexgen/X/HV;Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/UN;[BLcom/facebook/ads/redexgen/X/IZ;ILcom/facebook/ads/redexgen/X/Hv;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57968
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/VB;->A04:Lcom/facebook/ads/redexgen/X/IZ;

    sget-object v3, Lcom/facebook/ads/redexgen/X/VB;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v3, v0

    const/4 v0, 0x2

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/VB;->A06:[Ljava/lang/String;

    const-string v1, "qX3fQQGAY3dTsBjdyBPn"

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const-string v1, "Z0TFAaYyqvVnxMY9deNw"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/IZ;->A03(I)V

    .line 57969
    return-void

    .line 57970
    :catchall_0
    move-exception v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VB;->A04:Lcom/facebook/ads/redexgen/X/IZ;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IZ;->A03(I)V

    .line 57971
    throw v1
.end method

.method public final A6L()F
    .locals 6

    .line 57972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VB;->A03:Lcom/facebook/ads/redexgen/X/Hv;

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/Hv;->A01:J

    .line 57973
    .local p0, "contentLength":J
    const-wide/16 v1, -0x1

    cmp-long v0, v4, v1

    if-nez v0, :cond_0

    .line 57974
    const/high16 v1, -0x40800000    # -1.0f

    .line 57975
    :goto_0
    return v1

    .line 57976
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VB;->A03:Lcom/facebook/ads/redexgen/X/Hv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hv;->A00()J

    move-result-wide v2

    long-to-float v1, v2

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    long-to-float v0, v4

    div-float/2addr v1, v0

    goto :goto_0
.end method

.method public final A6M()J
    .locals 2

    .line 57977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VB;->A03:Lcom/facebook/ads/redexgen/X/Hv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hv;->A00()J

    move-result-wide v0

    return-wide v0
.end method

.method public final cancel()V
    .locals 2

    .line 57978
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VB;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 57979
    return-void
.end method

.method public final remove()V
    .locals 2

    .line 57980
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VB;->A01:Lcom/facebook/ads/redexgen/X/Hq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VB;->A00:Lcom/facebook/ads/redexgen/X/HV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hw;->A02(Lcom/facebook/ads/redexgen/X/HV;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hw;->A05(Lcom/facebook/ads/redexgen/X/Hq;Ljava/lang/String;)V

    .line 57981
    return-void
.end method
