.class public final Lcom/facebook/ads/redexgen/X/2y;
.super Lcom/facebook/ads/redexgen/X/Df;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/metadata/MetadataRenderer$Output;
    }
.end annotation


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/E3;

.field public A03:Z

.field public final A04:Landroid/os/Handler;

.field public final A05:Lcom/facebook/ads/redexgen/X/AM;

.field public final A06:Lcom/facebook/ads/redexgen/X/E5;

.field public final A07:Lcom/facebook/ads/redexgen/X/Cp;

.field public final A08:Lcom/facebook/ads/redexgen/X/E6;

.field public final A09:[J

.field public final A0A:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "03Bqi0KbTszfVpZRuJU3ds8C"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "k1GP5ixeRS7AgIgDUeTgx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4NCpljRKbMpI7nrSCbEL8iNDtCMdRKX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "14neR4MzrfGB8mqjKcaUOPf9qenZk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2yEqk33zpOnAOPOYE0N2JJzqUjZjGZ3w"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pyvhSQAAYlr5mafzJ0Hik2RvaYh4S"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "eoJA2AjfdFBVMgfGYGogvo8ECKzj9gDa"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xUrUxSkwRZIOD3qEvYK8t45D"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2y;->A0B:[Ljava/lang/String;

    .line 7453
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/E6;Landroid/os/Looper;)V
    .locals 1

    .line 7454
    sget-object v0, Lcom/facebook/ads/redexgen/X/E5;->A00:Lcom/facebook/ads/redexgen/X/E5;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/2y;-><init>(Lcom/facebook/ads/redexgen/X/E6;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/E5;)V

    .line 7455
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/E6;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/E5;)V
    .locals 2

    .line 7456
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;-><init>(I)V

    .line 7457
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/E6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A08:Lcom/facebook/ads/redexgen/X/E6;

    .line 7458
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A04:Landroid/os/Handler;

    .line 7459
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/E5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A06:Lcom/facebook/ads/redexgen/X/E5;

    .line 7460
    new-instance v0, Lcom/facebook/ads/redexgen/X/AM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A05:Lcom/facebook/ads/redexgen/X/AM;

    .line 7461
    new-instance v0, Lcom/facebook/ads/redexgen/X/Cp;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Cp;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A07:Lcom/facebook/ads/redexgen/X/Cp;

    .line 7462
    const/4 v1, 0x5

    new-array v0, v1, [Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A0A:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    .line 7463
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A09:[J

    .line 7464
    return-void

    .line 7465
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0
.end method

.method private A00()V
    .locals 2

    .line 7466
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2y;->A0A:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7467
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A01:I

    .line 7468
    iput v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A00:I

    .line 7469
    return-void
.end method

.method private A01(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 7470
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2y;->A04:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 7471
    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 7472
    :goto_0
    return-void

    .line 7473
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2y;->A02(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    goto :goto_0
.end method

.method private A02(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V
    .locals 1

    .line 7474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A08:Lcom/facebook/ads/redexgen/X/E6;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/E6;->ABJ(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    .line 7475
    return-void
.end method


# virtual methods
.method public final A12()V
    .locals 1

    .line 7476
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2y;->A00()V

    .line 7477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A02:Lcom/facebook/ads/redexgen/X/E3;

    .line 7478
    return-void
.end method

.method public final A15(JZ)V
    .locals 1

    .line 7479
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2y;->A00()V

    .line 7480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A03:Z

    .line 7481
    return-void
.end method

.method public final A17([Lcom/facebook/ads/internal/exoplayer2/Format;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 7482
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2y;->A06:Lcom/facebook/ads/redexgen/X/E5;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/E5;->A4D(Lcom/facebook/ads/internal/exoplayer2/Format;)Lcom/facebook/ads/redexgen/X/E3;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A02:Lcom/facebook/ads/redexgen/X/E3;

    .line 7483
    return-void
.end method

.method public final A8J()Z
    .locals 1

    .line 7484
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A03:Z

    return v0
.end method

.method public final A8U()Z
    .locals 1

    .line 7485
    const/4 v0, 0x1

    return v0
.end method

.method public final ADf(JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 7486
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A03:Z

    const/4 v5, 0x5

    const/4 v4, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A00:I

    if-ge v0, v5, :cond_0

    .line 7487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A07:Lcom/facebook/ads/redexgen/X/Cp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WZ;->A07()V

    .line 7488
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2y;->A05:Lcom/facebook/ads/redexgen/X/AM;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2y;->A07:Lcom/facebook/ads/redexgen/X/Cp;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A10(Lcom/facebook/ads/redexgen/X/AM;Lcom/facebook/ads/redexgen/X/WZ;Z)I

    move-result v1

    .line 7489
    .local p0, "result":I
    const/4 v0, -0x4

    if-ne v1, v0, :cond_0

    .line 7490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A07:Lcom/facebook/ads/redexgen/X/Cp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Be;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7491
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/2y;->A03:Z

    .line 7492
    .end local p0    # "result":I
    .end local p1    # null:J
    :cond_0
    :goto_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/2y;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/2y;->A0B:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7493
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A07:Lcom/facebook/ads/redexgen/X/Cp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Be;->A03()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 7494
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2y;->A07:Lcom/facebook/ads/redexgen/X/Cp;

    sget-object v2, Lcom/facebook/ads/redexgen/X/2y;->A0B:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/2y;->A0B:[Ljava/lang/String;

    const-string v1, "oJNy7wvRq4TsnN4Ik7JOHneCelTjV3TM"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "4f5lGS7X1G5JYf6Usji5tJWLoKljCGYJ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A05:Lcom/facebook/ads/redexgen/X/AM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AM;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-wide v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    iput-wide v0, v3, Lcom/facebook/ads/redexgen/X/Cp;->A00:J

    .line 7495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A07:Lcom/facebook/ads/redexgen/X/Cp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WZ;->A08()V

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/2y;->A0B:[Ljava/lang/String;

    const-string v1, "JrbxqibW71vJtGIxmKNzu0gc"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "aBslXCcOqyoFcXReLJb0k0eg"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A05:Lcom/facebook/ads/redexgen/X/AM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AM;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-wide v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    iput-wide v0, v3, Lcom/facebook/ads/redexgen/X/Cp;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A07:Lcom/facebook/ads/redexgen/X/Cp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WZ;->A08()V

    .line 7496
    :goto_1
    :try_start_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/2y;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A00:I

    add-int/2addr v3, v0

    rem-int/2addr v3, v5

    .line 7497
    .local p3, "index":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2y;->A0A:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2y;->A02:Lcom/facebook/ads/redexgen/X/E3;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A07:Lcom/facebook/ads/redexgen/X/Cp;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/E3;->A4f(Lcom/facebook/ads/redexgen/X/Cp;)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    move-result-object v0

    aput-object v0, v2, v3

    .line 7498
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2y;->A09:[J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A07:Lcom/facebook/ads/redexgen/X/Cp;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/WZ;->A00:J

    aput-wide v0, v2, v3

    .line 7499
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A00:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A00:I

    goto/16 :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/E4; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/2y;->A0B:[Ljava/lang/String;

    const-string v1, "FI5ou6JhGKfNQASG6lr2Dh53KdKmMJ1"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "8nK6Ac79BLzTFAHCrRK9v"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-lez v3, :cond_5

    .line 7500
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A09:[J

    iget v3, p0, Lcom/facebook/ads/redexgen/X/2y;->A01:I

    aget-wide v1, v0, v3

    cmp-long v0, v1, p1

    if-gtz v0, :cond_5

    .line 7501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A0A:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2y;->A01(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    .line 7502
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2y;->A0A:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2y;->A01:I

    const/4 v0, 0x0

    aput-object v0, v2, v1

    .line 7503
    add-int/2addr v1, v4

    rem-int/2addr v1, v5

    iput v1, p0, Lcom/facebook/ads/redexgen/X/2y;->A01:I

    .line 7504
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A00:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A00:I

    .line 7505
    :cond_5
    return-void

    .line 7506
    :catch_0
    move-exception v1

    .line 7507
    .local p1, "e":Lcom/facebook/ads/redexgen/X/E4;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A9;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A9;

    move-result-object v0

    throw v0
.end method

.method public final AEv(Lcom/facebook/ads/internal/exoplayer2/Format;)I
    .locals 2

    .line 7508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A06:Lcom/facebook/ads/redexgen/X/E5;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/E5;->AEw(Lcom/facebook/ads/internal/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7509
    const/4 v1, 0x0

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0x(Lcom/facebook/ads/redexgen/X/C9;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 7510
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 7511
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 7512
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2y;->A02(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    .line 7513
    const/4 v0, 0x1

    return v0

    .line 7514
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
