.class public abstract Lcom/facebook/ads/redexgen/X/BQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Uz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/2s;,
        Lcom/facebook/ads/redexgen/X/2t;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/2t;

.field public final A03:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/2t;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/BX;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/facebook/ads/redexgen/X/2t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xrToQ1M30eypgaiDt2KcbeXQSJmH4zEy"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "FOMm0GJvPogulFgRKU73d9QQGInBRxBZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DAifx7fz7Oznb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tEspMkbIuGZVzgapMfnbK02RMeMH6P5b"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hnmT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jbKY175w2AZdEkpyONR9SNFucMTvW6Vd"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vt70xpgsPpIXmuxmiV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wsDuhCL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/BQ;->A06:[Ljava/lang/String;

    .line 23614
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 23615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23616
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A03:Ljava/util/ArrayDeque;

    .line 23617
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    const/16 v0, 0xa

    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    .line 23618
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BQ;->A03:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/facebook/ads/redexgen/X/2t;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/2t;-><init>(Lcom/facebook/ads/redexgen/X/GU;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 23619
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23620
    .end local p0    # "i":I
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A04:Ljava/util/ArrayDeque;

    .line 23621
    const/4 v2, 0x0

    .restart local p0    # "i":I
    :goto_1
    const/4 v0, 0x2

    if-ge v2, v0, :cond_1

    .line 23622
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BQ;->A04:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/facebook/ads/redexgen/X/2s;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/2s;-><init>(Lcom/facebook/ads/redexgen/X/BQ;Lcom/facebook/ads/redexgen/X/GU;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 23623
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 23624
    .end local p0    # "i":I
    :cond_1
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A05:Ljava/util/PriorityQueue;

    .line 23625
    return-void
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/2t;)V
    .locals 1

    .line 23626
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/WZ;->A07()V

    .line 23627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A03:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 23628
    return-void
.end method


# virtual methods
.method public abstract A0L()Lcom/facebook/ads/redexgen/X/GL;
.end method

.method public A0M()Lcom/facebook/ads/redexgen/X/Ba;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GM;
        }
    .end annotation

    .line 23629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A02:Lcom/facebook/ads/redexgen/X/2t;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 23630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A03:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23631
    const/4 v0, 0x0

    return-object v0

    .line 23632
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 23633
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A03:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/2t;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A02:Lcom/facebook/ads/redexgen/X/2t;

    .line 23634
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A02:Lcom/facebook/ads/redexgen/X/2t;

    return-object v0
.end method

.method public A0N()Lcom/facebook/ads/redexgen/X/BX;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GM;
        }
    .end annotation

    .line 23635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 23636
    return-object v5

    .line 23637
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A05:Ljava/util/PriorityQueue;

    .line 23638
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/2t;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/WZ;->A00:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BQ;->A00:J

    cmp-long v0, v3, v1

    if-gtz v0, :cond_4

    .line 23639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/2t;

    .line 23640
    .local p0, "inputBuffer":Lcom/facebook/ads/redexgen/X/2t;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Be;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23641
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/BX;

    .line 23642
    .local v0, "outputBuffer":Lcom/facebook/ads/redexgen/X/BX;
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Be;->A00(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/BQ;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23643
    .end local v0    # "outputBuffer":Lcom/facebook/ads/redexgen/X/BX;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/BQ;->A0P(Lcom/facebook/ads/redexgen/X/Ba;)V

    .line 23644
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BQ;->A0R()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23645
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BQ;->A0L()Lcom/facebook/ads/redexgen/X/GL;

    move-result-object v7

    .line 23646
    .local v0, "subtitle":Lcom/facebook/ads/redexgen/X/GL;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Be;->A03()Z

    move-result v0

    if-nez v0, :cond_2

    .line 23647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/BX;

    .line 23648
    .restart local v0    # "subtitle":Lcom/facebook/ads/redexgen/X/GL;
    iget-wide v5, v3, Lcom/facebook/ads/redexgen/X/WZ;->A00:J

    const-wide v8, 0x7fffffffffffffffL

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/BX;->A09(JLcom/facebook/ads/redexgen/X/GL;J)V

    .line 23649
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/BQ;->A0K(Lcom/facebook/ads/redexgen/X/2t;)V

    .line 23650
    return-object v4

    .line 23651
    .end local v0    # "subtitle":Lcom/facebook/ads/redexgen/X/GL;
    .end local v0
    :cond_2
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/BQ;->A0K(Lcom/facebook/ads/redexgen/X/2t;)V

    .line 23652
    .end local p0    # "inputBuffer":Lcom/facebook/ads/redexgen/X/2t;
    goto :goto_0

    .line 23653
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/BQ;->A06:[Ljava/lang/String;

    const-string v1, "hAEA"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/BQ;->A0K(Lcom/facebook/ads/redexgen/X/2t;)V

    .line 23654
    return-object v4

    .line 23655
    :cond_4
    return-object v5
.end method

.method public A0O(Lcom/facebook/ads/redexgen/X/Ba;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GM;
        }
    .end annotation

    .line 23656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A02:Lcom/facebook/ads/redexgen/X/2t;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A03(Z)V

    .line 23657
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Be;->A03()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23658
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/BQ;->A02:Lcom/facebook/ads/redexgen/X/2t;

    sget-object v2, Lcom/facebook/ads/redexgen/X/BQ;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23659
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/BQ;->A06:[Ljava/lang/String;

    const-string v1, "0mhI93daunZi59PwiuGO0KbLyKVCPwQH"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "r2E3xZENv7Zr1SQt92aJBQoSxSc5nrbU"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/BQ;->A0K(Lcom/facebook/ads/redexgen/X/2t;)V

    goto :goto_1

    .line 23660
    :cond_2
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/BQ;->A02:Lcom/facebook/ads/redexgen/X/2t;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/BQ;->A01:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A01:J

    invoke-static {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/2t;->A01(Lcom/facebook/ads/redexgen/X/2t;J)J

    .line 23661
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BQ;->A05:Ljava/util/PriorityQueue;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A02:Lcom/facebook/ads/redexgen/X/2t;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 23662
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A02:Lcom/facebook/ads/redexgen/X/2t;

    .line 23663
    return-void
.end method

.method public abstract A0P(Lcom/facebook/ads/redexgen/X/Ba;)V
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/BX;)V
    .locals 1

    .line 23664
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/BX;->A07()V

    .line 23665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A04:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 23666
    return-void
.end method

.method public abstract A0R()Z
.end method

.method public final bridge synthetic A4i()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23667
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BQ;->A0M()Lcom/facebook/ads/redexgen/X/Ba;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A4j()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23668
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BQ;->A0N()Lcom/facebook/ads/redexgen/X/BX;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ADC(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23669
    check-cast p1, Lcom/facebook/ads/redexgen/X/Ba;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/BQ;->A0O(Lcom/facebook/ads/redexgen/X/Ba;)V

    return-void
.end method

.method public ADS()V
    .locals 0

    .line 23670
    return-void
.end method

.method public AEU(J)V
    .locals 0

    .line 23671
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/BQ;->A00:J

    .line 23672
    return-void
.end method

.method public flush()V
    .locals 2

    .line 23673
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A01:J

    .line 23674
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A00:J

    .line 23675
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A05:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/2t;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BQ;->A0K(Lcom/facebook/ads/redexgen/X/2t;)V

    goto :goto_0

    .line 23677
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A02:Lcom/facebook/ads/redexgen/X/2t;

    if-eqz v0, :cond_1

    .line 23678
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BQ;->A0K(Lcom/facebook/ads/redexgen/X/2t;)V

    .line 23679
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BQ;->A02:Lcom/facebook/ads/redexgen/X/2t;

    .line 23680
    :cond_1
    return-void
.end method
