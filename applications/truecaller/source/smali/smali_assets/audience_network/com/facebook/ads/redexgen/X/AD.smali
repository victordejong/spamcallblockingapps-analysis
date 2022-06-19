.class public final Lcom/facebook/ads/redexgen/X/AD;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/DU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfoUpdate"
.end annotation


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/AT;

.field public final A03:Lcom/facebook/ads/redexgen/X/HG;

.field public final A04:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/ads/redexgen/X/AX;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Z

.field public final A06:Z

.field public final A07:Z

.field public final A08:Z

.field public final A09:Z

.field public final A0A:Z

.field public final A0B:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WV1wdoH9jrQVDigahBrbrXyjnekpmiiE"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mIVo7Cnr72P7RKesjBWLJYV7ajvYF70D"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "pH5vi4Kbi5SdF2Ft8jCp0yyfmrwCNJ93"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VAiIhwzGtJV"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "mutijWrtbdTsRUOKFhZTpXzdiINxdKbV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "iAqM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "YM6GPYhzTMlO14HNxrpVvdDRlTI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "SmN7PcN3RYN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/AD;->A0C:[Ljava/lang/String;

    .line 21607
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AT;Lcom/facebook/ads/redexgen/X/AT;Ljava/util/Set;Lcom/facebook/ads/redexgen/X/HG;ZIIZZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/AT;",
            "Lcom/facebook/ads/redexgen/X/AT;",
            "Ljava/util/Set<",
            "Lcom/facebook/ads/redexgen/X/AX;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/HG;",
            "ZIIZZZ)V"
        }
    .end annotation

    .line 21608
    .local p7, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/internal/exoplayer2/Player$EventListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21609
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AD;->A02:Lcom/facebook/ads/redexgen/X/AT;

    .line 21610
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/AD;->A04:Ljava/util/Set;

    .line 21611
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/AD;->A03:Lcom/facebook/ads/redexgen/X/HG;

    .line 21612
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/AD;->A08:Z

    .line 21613
    iput p6, p0, Lcom/facebook/ads/redexgen/X/AD;->A00:I

    .line 21614
    iput p7, p0, Lcom/facebook/ads/redexgen/X/AD;->A01:I

    .line 21615
    iput-boolean p8, p0, Lcom/facebook/ads/redexgen/X/AD;->A09:Z

    .line 21616
    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/AD;->A06:Z

    .line 21617
    const/4 v2, 0x0

    if-nez p10, :cond_0

    iget v1, p2, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    if-eq v1, v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A07:Z

    .line 21618
    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    if-ne v1, v0, :cond_1

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/AT;->A07:Ljava/lang/Object;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AT;->A07:Ljava/lang/Object;

    if-eq v1, v0, :cond_4

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A0A:Z

    .line 21619
    iget-boolean v1, p2, Lcom/facebook/ads/redexgen/X/AT;->A08:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/AT;->A08:Z

    if-eq v1, v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A05:Z

    .line 21620
    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/HH;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/HH;

    if-eq v1, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/AD;->A0B:Z

    .line 21621
    return-void

    .line 21622
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 21623
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 21624
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A00()V
    .locals 5

    .line 21625
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A0A:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A01:I

    if-nez v0, :cond_1

    .line 21626
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A04:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/AX;

    .line 21627
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/AX;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A02:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AT;->A03:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A02:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/AT;->A07:Ljava/lang/Object;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A01:I

    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AX;->ACG(Lcom/facebook/ads/redexgen/X/Ao;Ljava/lang/Object;I)V

    .line 21628
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/AX;
    goto :goto_0

    .line 21629
    :cond_1
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/AD;->A08:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/AD;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/AD;->A0C:[Ljava/lang/String;

    const-string v1, "CSJCqnrxZvV"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "Hkj5q7ot6VH"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_4

    .line 21630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A04:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/AD;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    if-eqz v3, :cond_4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/AX;

    .line 21631
    .restart local v0    # "listener":Lcom/facebook/ads/redexgen/X/AX;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A00:I

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/AX;->ABf(I)V

    .line 21632
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/AX;
    goto :goto_2

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/AD;->A0C:[Ljava/lang/String;

    const-string v1, "CqJcwx9zuxyuReRUn3Ztwbm9rESV0hnU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "BsXcrNWYLVI0RgolRvCIuekTJNQNO1r0"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_4

    goto :goto_3

    .line 21633
    :cond_4
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A0B:Z

    if-eqz v0, :cond_5

    .line 21634
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AD;->A03:Lcom/facebook/ads/redexgen/X/HG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A02:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/HH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/HH;->A02:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/HG;->A0U(Ljava/lang/Object;)V

    .line 21635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A04:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/AX;

    .line 21636
    .restart local v0    # "listener":Lcom/facebook/ads/redexgen/X/AX;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A02:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/AT;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A02:Lcom/facebook/ads/redexgen/X/AT;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A06:Lcom/facebook/ads/redexgen/X/HH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/HH;->A01:Lcom/facebook/ads/redexgen/X/HE;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AX;->ACH(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/HE;)V

    .line 21637
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/AX;
    goto :goto_4

    .line 21638
    :cond_5
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/AD;->A05:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/AD;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    goto/16 :goto_1

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/AD;->A0C:[Ljava/lang/String;

    const-string v1, "ZmCtUBpIkW4VOgBlZsMYRrBehzT"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Qd2F"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_7

    .line 21639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A04:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/AX;

    .line 21640
    .restart local v0    # "listener":Lcom/facebook/ads/redexgen/X/AX;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A02:Lcom/facebook/ads/redexgen/X/AT;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A08:Z

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/AX;->AB8(Z)V

    .line 21641
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/AX;
    goto :goto_5

    .line 21642
    :cond_7
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A07:Z

    if-eqz v0, :cond_8

    .line 21643
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A04:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/AX;

    .line 21644
    .restart local v0    # "listener":Lcom/facebook/ads/redexgen/X/AX;
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/AD;->A06:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A02:Lcom/facebook/ads/redexgen/X/AT;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AT;->A00:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AX;->ABd(ZI)V

    .line 21645
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/AX;
    goto :goto_6

    .line 21646
    :cond_8
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A09:Z

    if-eqz v0, :cond_9

    .line 21647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AD;->A04:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AX;

    .line 21648
    .restart local v0    # "listener":Lcom/facebook/ads/redexgen/X/AX;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AX;->AC2()V

    .line 21649
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/AX;
    goto :goto_7

    .line 21650
    :cond_9
    return-void
.end method
