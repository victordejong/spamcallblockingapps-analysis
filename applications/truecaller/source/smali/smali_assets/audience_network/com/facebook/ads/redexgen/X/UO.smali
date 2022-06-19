.class public final Lcom/facebook/ads/redexgen/X/UO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HP;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/UP;
    }
.end annotation


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/HV;

.field public A03:Lcom/facebook/ads/redexgen/X/Ic;

.field public A04:Ljava/io/File;

.field public A05:Ljava/io/FileOutputStream;

.field public A06:Ljava/io/OutputStream;

.field public final A07:I

.field public final A08:J

.field public final A09:Lcom/facebook/ads/redexgen/X/Hq;

.field public final A0A:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "w20bAWjYMNQBWlbon1lxwLvvC2Wc6aDw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lwUY3oAzCyDGvzazHVXOHQ3zY7kbNweW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "UaweMkDBVxVyODuJAIk0oAizBiXulMgw"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HCwWhWYnSwS9lU8hovQ66gM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BSrpyguVpFJpaQafc1NdT7mO3uIgLmFW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "PMiNqiQ4kgs0VWuHsJy6tm47yNuoSJAG"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "LFxM2Smyc2PeWHZihlec1nFmzNKIeMAJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "CwFpegEhQfdxfTMnj3Ot7m2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/UO;->A0B:[Ljava/lang/String;

    .line 56597
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hq;J)V
    .locals 6

    .line 56598
    const/16 v4, 0x5000

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/UO;-><init>(Lcom/facebook/ads/redexgen/X/Hq;JIZ)V

    .line 56599
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hq;JIZ)V
    .locals 1

    .line 56600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56601
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Hq;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A09:Lcom/facebook/ads/redexgen/X/Hq;

    .line 56602
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/UO;->A08:J

    .line 56603
    iput p4, p0, Lcom/facebook/ads/redexgen/X/UO;->A07:I

    .line 56604
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/UO;->A0A:Z

    .line 56605
    return-void
.end method

.method private A00()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56606
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A06:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 56607
    return-void

    .line 56608
    :cond_0
    const/4 v4, 0x0

    .line 56609
    .local v0, "success":Z
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 56610
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A0A:Z

    if-eqz v0, :cond_1

    .line 56611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A05:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56612
    :cond_1
    const/4 v2, 0x1

    .line 56613
    .end local v0    # "success":Z
    .local p0, "success":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A06:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Il;->A0X(Ljava/io/Closeable;)V

    .line 56614
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/UO;->A06:Ljava/io/OutputStream;

    .line 56615
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UO;->A04:Ljava/io/File;

    .line 56616
    .local v0, "fileToCommit":Ljava/io/File;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/UO;->A04:Ljava/io/File;

    .line 56617
    if-eqz v2, :cond_2

    .line 56618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A09:Lcom/facebook/ads/redexgen/X/Hq;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Hq;->A42(Ljava/io/File;)V

    .line 56619
    .end local v0    # "fileToCommit":Ljava/io/File;
    :goto_0
    return-void

    .line 56620
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 56621
    .end local p0    # "success":Z
    .local v0, "success":Z
    :catchall_0
    move-exception v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A06:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Il;->A0X(Ljava/io/Closeable;)V

    .line 56622
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/UO;->A06:Ljava/io/OutputStream;

    .line 56623
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UO;->A04:Ljava/io/File;

    .line 56624
    .local v3, "fileToCommit":Ljava/io/File;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/UO;->A04:Ljava/io/File;

    .line 56625
    if-eqz v4, :cond_3

    .line 56626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A09:Lcom/facebook/ads/redexgen/X/Hq;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Hq;->A42(Ljava/io/File;)V

    .line 56627
    .end local v3    # "fileToCommit":Ljava/io/File;
    :goto_1
    throw v2

    .line 56628
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private A01()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A02:Lcom/facebook/ads/redexgen/X/HV;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/HV;->A02:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 56630
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/UO;->A08:J

    .line 56631
    .local v0, "maxLength":J
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/UO;->A09:Lcom/facebook/ads/redexgen/X/Hq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A02:Lcom/facebook/ads/redexgen/X/HV;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/HV;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A02:Lcom/facebook/ads/redexgen/X/HV;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/HV;->A01:J

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/UO;->A00:J

    add-long/2addr v4, v0

    .line 56632
    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Hq;->AEl(Ljava/lang/String;JJ)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A04:Ljava/io/File;

    .line 56633
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UO;->A04:Ljava/io/File;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A05:Ljava/io/FileOutputStream;

    .line 56634
    iget v2, p0, Lcom/facebook/ads/redexgen/X/UO;->A07:I

    if-lez v2, :cond_1

    .line 56635
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UO;->A03:Lcom/facebook/ads/redexgen/X/Ic;

    if-nez v1, :cond_0

    .line 56636
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UO;->A05:Ljava/io/FileOutputStream;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ic;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ic;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A03:Lcom/facebook/ads/redexgen/X/Ic;

    .line 56637
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A03:Lcom/facebook/ads/redexgen/X/Ic;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A06:Ljava/io/OutputStream;

    .line 56638
    :goto_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A01:J

    .line 56639
    return-void

    .line 56640
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A05:Ljava/io/FileOutputStream;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A00(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 56641
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A05:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A06:Ljava/io/OutputStream;

    goto :goto_2

    .line 56642
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A02:Lcom/facebook/ads/redexgen/X/HV;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/HV;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A00:J

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A08:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_0
.end method


# virtual methods
.method public final ACh(Lcom/facebook/ads/redexgen/X/HV;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/UP;
        }
    .end annotation

    .line 56643
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/HV;->A02:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 56644
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/HV;->A02(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56645
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A02:Lcom/facebook/ads/redexgen/X/HV;

    .line 56646
    return-void

    .line 56647
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UO;->A02:Lcom/facebook/ads/redexgen/X/HV;

    .line 56648
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A00:J

    .line 56649
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UO;->A01()V

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56650
    :catch_0
    move-exception v1

    .line 56651
    .local p0, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/UP;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/UP;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 56652
    :goto_0
    return-void
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/UP;
        }
    .end annotation

    .line 56653
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A02:Lcom/facebook/ads/redexgen/X/HV;

    if-nez v0, :cond_0

    .line 56654
    return-void

    .line 56655
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UO;->A00()V

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56656
    :catch_0
    move-exception v1

    .line 56657
    .local p0, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/UP;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/UP;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 56658
    :goto_0
    return-void
.end method

.method public final write([BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/UP;
        }
    .end annotation

    .line 56659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A02:Lcom/facebook/ads/redexgen/X/HV;

    if-nez v0, :cond_0

    .line 56660
    return-void

    .line 56661
    :cond_0
    const/4 v6, 0x0

    .line 56662
    .local p0, "bytesWritten":I
    :goto_0
    if-ge v6, p3, :cond_3

    .line 56663
    :try_start_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/UO;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A08:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v4, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/UO;->A0B:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_1

    .line 56664
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 56665
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/UO;->A0B:[Ljava/lang/String;

    const-string v1, "jgYsfafqQwydOQ8BdugE0IR3OVOgVMqo"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v4, :cond_2

    .line 56666
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UO;->A00()V

    .line 56667
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UO;->A01()V

    .line 56668
    :cond_2
    sub-int v0, p3, v6

    int-to-long v4, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A08:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/UO;->A01:J

    sub-long/2addr v0, v2

    .line 56669
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v4, v0

    .line 56670
    .local p2, "bytesToWrite":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UO;->A06:Ljava/io/OutputStream;

    add-int v0, p2, v6

    invoke-virtual {v1, p1, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 56671
    add-int/2addr v6, v4

    .line 56672
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/UO;->A01:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/UO;->A01:J

    .line 56673
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/UO;->A00:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/UO;->A00:J

    goto :goto_0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 56674
    .end local p0    # "bytesWritten":I
    :catch_0
    move-exception v1

    .line 56675
    .local p0, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/UP;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/UP;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 56676
    .end local p0    # "e":Ljava/io/IOException;
    :cond_3
    return-void
.end method
