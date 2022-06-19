.class public final Lcom/facebook/ads/redexgen/X/V7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/He;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExtractingLoadable"
.end annotation


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/HV;

.field public A04:Z

.field public final A05:Landroid/net/Uri;

.field public final A06:Lcom/facebook/ads/redexgen/X/CW;

.field public final A07:Lcom/facebook/ads/redexgen/X/FH;

.field public final A08:Lcom/facebook/ads/redexgen/X/HR;

.field public final A09:Lcom/facebook/ads/redexgen/X/IC;

.field public volatile A0A:Z

.field public final synthetic A0B:Lcom/facebook/ads/redexgen/X/Bk;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nBGgOhUJr5w54zk2FcSY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "YYZuUd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gwBohD1o6c6DfEcFdJm47xfjaEoVukk3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3TNnSL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hJWvKqQqk09hkKqv49F3L8Ilz7Jhye22"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "G8FOHrMAxxSNQBngbaVWxtAhYQnldn5N"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "v6FRbmkBAKb4FwdIpHjrHHJWg4k1tULi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7hirQzfzNIRD79h7knAyc8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/V7;->A0C:[Ljava/lang/String;

    .line 57833
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Bk;Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HR;Lcom/facebook/ads/redexgen/X/FH;Lcom/facebook/ads/redexgen/X/IC;)V
    .locals 2

    .line 57834
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V7;->A0B:Lcom/facebook/ads/redexgen/X/Bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57835
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A05:Landroid/net/Uri;

    .line 57836
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/HR;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A08:Lcom/facebook/ads/redexgen/X/HR;

    .line 57837
    invoke-static {p4}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FH;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A07:Lcom/facebook/ads/redexgen/X/FH;

    .line 57838
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/V7;->A09:Lcom/facebook/ads/redexgen/X/IC;

    .line 57839
    new-instance v0, Lcom/facebook/ads/redexgen/X/CW;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CW;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A06:Lcom/facebook/ads/redexgen/X/CW;

    .line 57840
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A04:Z

    .line 57841
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A01:J

    .line 57842
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/V7;)J
    .locals 1

    .line 57843
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A02:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/V7;)J
    .locals 1

    .line 57844
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A00:J

    return-wide v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/V7;)J
    .locals 1

    .line 57845
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A01:J

    return-wide v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/V7;)Lcom/facebook/ads/redexgen/X/HV;
    .locals 0

    .line 57846
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/V7;->A03:Lcom/facebook/ads/redexgen/X/HV;

    return-object p0
.end method


# virtual methods
.method public final A04(JJ)V
    .locals 1

    .line 57847
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A06:Lcom/facebook/ads/redexgen/X/CW;

    iput-wide p1, v0, Lcom/facebook/ads/redexgen/X/CW;->A00:J

    .line 57848
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/V7;->A02:J

    .line 57849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A04:Z

    .line 57850
    return-void
.end method

.method public final A3w()V
    .locals 1

    .line 57851
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A0A:Z

    .line 57852
    return-void
.end method

.method public final A8d()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 57853
    const/4 v4, 0x0

    .line 57854
    .local p0, "result":I
    :goto_0
    if-nez v4, :cond_6

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/V7;->A0A:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/V7;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/V7;->A0C:[Ljava/lang/String;

    const-string v1, "6lKOSY"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "aO7eUD"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_6

    .line 57855
    const/4 v3, 0x0

    .line 57856
    .local v4, "input":Lcom/facebook/ads/redexgen/X/CQ;
    const/4 v2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A06:Lcom/facebook/ads/redexgen/X/CW;

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/CW;->A00:J

    .line 57857
    .local v1, "position":J
    new-instance v8, Lcom/facebook/ads/redexgen/X/HV;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/V7;->A05:Landroid/net/Uri;

    const-wide/16 v12, -0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A0B:Lcom/facebook/ads/redexgen/X/Bk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bk;->A08(Lcom/facebook/ads/redexgen/X/Bk;)Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/HV;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    iput-object v8, p0, Lcom/facebook/ads/redexgen/X/V7;->A03:Lcom/facebook/ads/redexgen/X/HV;

    .line 57858
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V7;->A08:Lcom/facebook/ads/redexgen/X/HR;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A03:Lcom/facebook/ads/redexgen/X/HV;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/HR;->ACf(Lcom/facebook/ads/redexgen/X/HV;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A01:J

    .line 57859
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A01:J

    const-wide/16 v6, -0x1

    cmp-long v5, v0, v6

    if-eqz v5, :cond_0

    .line 57860
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A01:J

    add-long/2addr v0, v10

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A01:J

    .line 57861
    :cond_0
    new-instance v8, Lcom/facebook/ads/redexgen/X/WR;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/V7;->A08:Lcom/facebook/ads/redexgen/X/HR;

    iget-wide v12, p0, Lcom/facebook/ads/redexgen/X/V7;->A01:J

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/WR;-><init>(Lcom/facebook/ads/redexgen/X/HR;JJ)V

    move-object v3, v8

    .line 57862
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V7;->A07:Lcom/facebook/ads/redexgen/X/FH;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A08:Lcom/facebook/ads/redexgen/X/HR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HR;->A7d()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/FH;->A02(Lcom/facebook/ads/redexgen/X/CQ;Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/CP;

    move-result-object v5

    .line 57863
    .local v0, "extractor":Lcom/facebook/ads/redexgen/X/CP;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A04:Z

    if-eqz v0, :cond_1

    .line 57864
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A02:J

    invoke-interface {v5, v10, v11, v0, v1}, Lcom/facebook/ads/redexgen/X/CP;->AE9(JJ)V

    .line 57865
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A04:Z

    .line 57866
    :cond_1
    :goto_1
    if-nez v4, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A0A:Z

    if-nez v0, :cond_2

    .line 57867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A09:Lcom/facebook/ads/redexgen/X/IC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IC;->A00()V

    .line 57868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A06:Lcom/facebook/ads/redexgen/X/CW;

    invoke-interface {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/CP;->ADD(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/CW;)I

    move-result v4

    .line 57869
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/WR;->A79()J

    move-result-wide v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A0B:Lcom/facebook/ads/redexgen/X/Bk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bk;->A03(Lcom/facebook/ads/redexgen/X/Bk;)J

    move-result-wide v6

    add-long/2addr v6, v10

    cmp-long v0, v8, v6

    if-lez v0, :cond_1

    .line 57870
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/WR;->A79()J

    move-result-wide v10

    .line 57871
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A09:Lcom/facebook/ads/redexgen/X/IC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IC;->A01()Z

    .line 57872
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A0B:Lcom/facebook/ads/redexgen/X/Bk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bk;->A04(Lcom/facebook/ads/redexgen/X/Bk;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A0B:Lcom/facebook/ads/redexgen/X/Bk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bk;->A06(Lcom/facebook/ads/redexgen/X/Bk;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 57873
    .end local v1    # "position":J
    .end local v0    # "extractor":Lcom/facebook/ads/redexgen/X/CP;
    :cond_2
    if-ne v4, v2, :cond_3

    .line 57874
    const/4 v4, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57875
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A08:Lcom/facebook/ads/redexgen/X/HR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Il;->A0W(Lcom/facebook/ads/redexgen/X/HR;)V

    .line 57876
    .end local v4    # "input":Lcom/facebook/ads/redexgen/X/CQ;
    goto/16 :goto_0

    .line 57877
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/V7;->A06:Lcom/facebook/ads/redexgen/X/CW;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/WR;->A79()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/CW;->A00:J

    .line 57878
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A06:Lcom/facebook/ads/redexgen/X/CW;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/CW;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A03:Lcom/facebook/ads/redexgen/X/HV;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/HV;->A01:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/V7;->A00:J

    goto :goto_2

    .line 57879
    .restart local v4    # "input":Lcom/facebook/ads/redexgen/X/CQ;
    :catchall_0
    move-exception v5

    if-eq v4, v2, :cond_4

    .line 57880
    if-eqz v3, :cond_4

    .line 57881
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/V7;->A06:Lcom/facebook/ads/redexgen/X/CW;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/WR;->A79()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/CW;->A00:J

    .line 57882
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A06:Lcom/facebook/ads/redexgen/X/CW;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/CW;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A03:Lcom/facebook/ads/redexgen/X/HV;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/HV;->A01:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/V7;->A00:J

    .line 57883
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V7;->A08:Lcom/facebook/ads/redexgen/X/HR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Il;->A0W(Lcom/facebook/ads/redexgen/X/HR;)V

    .line 57884
    throw v5

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 57885
    .end local v4    # "input":Lcom/facebook/ads/redexgen/X/CQ;
    :cond_6
    return-void
.end method
