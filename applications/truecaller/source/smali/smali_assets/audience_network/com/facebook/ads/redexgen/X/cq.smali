.class public final Lcom/facebook/ads/redexgen/X/cq;
.super Lcom/facebook/ads/redexgen/X/0p;
.source ""


# static fields
.field public static A05:[Ljava/lang/String;

.field public static final A06:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/cs;

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/XT;

.field public final A03:Lcom/facebook/ads/redexgen/X/JT;

.field public final A04:Lcom/facebook/ads/redexgen/X/Nk;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "RwkPFHsv9wotgH8PCqYhpIij5lIi"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "drIC7gYxypHASOm9CvVJaHIQeep0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "f0dvIXyq27iv5zRXvkJTu2cqkG"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "fzusVvXWPget8SSdASQ7tAMFHi8p37he"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Ar6p"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jDkSEm6Ik6fEWWn08WKTicIvFe3Dtksc"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "J7vaKr0jTjoObEFZmlhET1S0K8S4ujA7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2rimL2d5m8eNJCurq2ysJBza56R6EvG7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/cq;->A05:[Ljava/lang/String;

    .line 72234
    const-class v0, Lcom/facebook/ads/redexgen/X/cq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cq;->A06:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/Nk;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/0q;)V
    .locals 0

    .line 72235
    invoke-direct {p0, p1, p5, p4}, Lcom/facebook/ads/redexgen/X/0p;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/0q;Lcom/facebook/ads/redexgen/X/QZ;)V

    .line 72236
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cq;->A03:Lcom/facebook/ads/redexgen/X/JT;

    .line 72237
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/cq;->A04:Lcom/facebook/ads/redexgen/X/Nk;

    .line 72238
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cq;->A02:Lcom/facebook/ads/redexgen/X/XT;

    .line 72239
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/cq;)Lcom/facebook/ads/redexgen/X/cs;
    .locals 0

    .line 72240
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cq;->A00:Lcom/facebook/ads/redexgen/X/cs;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/cq;)Lcom/facebook/ads/redexgen/X/XT;
    .locals 0

    .line 72241
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cq;->A02:Lcom/facebook/ads/redexgen/X/XT;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/cq;)Lcom/facebook/ads/redexgen/X/Nk;
    .locals 0

    .line 72242
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cq;->A04:Lcom/facebook/ads/redexgen/X/Nk;

    return-object p0
.end method


# virtual methods
.method public final A06(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72243
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cq;->A00:Lcom/facebook/ads/redexgen/X/cs;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cs;->A61()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cq;->A02:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2Y()V

    .line 72245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cq;->A00:Lcom/facebook/ads/redexgen/X/cs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cs;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/26;->A00(Ljava/lang/String;)V

    .line 72246
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/cq;->A03:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cq;->A00:Lcom/facebook/ads/redexgen/X/cs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cs;->A61()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/cq;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/cq;->A05:[Ljava/lang/String;

    const-string v1, "Tkg0tGhzpCvpbpNuTPjRHtf4b45H"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "dBPpzaB1YNfwJk5banXGE19c57tB"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v4, v3, p1}, Lcom/facebook/ads/redexgen/X/JT;->A8v(Ljava/lang/String;Ljava/util/Map;)V

    .line 72247
    :cond_1
    return-void
.end method

.method public final declared-synchronized A07()V
    .locals 1

    monitor-enter p0

    .line 72248
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cq;->A01:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cq;->A00:Lcom/facebook/ads/redexgen/X/cs;

    if-nez v0, :cond_0

    goto :goto_0

    .line 72249
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cq;->A01:Z

    .line 72250
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cq;->A00:Lcom/facebook/ads/redexgen/X/cs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cs;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72251
    new-instance v0, Lcom/facebook/ads/redexgen/X/cr;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cr;-><init>(Lcom/facebook/ads/redexgen/X/cq;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M1;->A00(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72252
    .end local v0
    :cond_1
    monitor-exit p0

    return-void

    .line 72253
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 72254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/cs;)V
    .locals 0

    .line 72255
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cq;->A00:Lcom/facebook/ads/redexgen/X/cs;

    .line 72256
    return-void
.end method
