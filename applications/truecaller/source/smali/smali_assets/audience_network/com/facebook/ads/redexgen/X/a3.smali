.class public final Lcom/facebook/ads/redexgen/X/a3;
.super Lcom/facebook/ads/redexgen/X/6b;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/a4;
    }
.end annotation


# instance fields
.field public final A00:Landroid/content/Context;

.field public final A01:Landroid/content/pm/ApplicationInfo;

.field public final A02:Lcom/facebook/ads/redexgen/X/61;

.field public final A03:Lcom/facebook/ads/redexgen/X/74;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V
    .locals 3

    .line 67825
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6b;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V

    .line 67826
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a3;->A01:Landroid/content/pm/ApplicationInfo;

    .line 67827
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/a3;->A00:Landroid/content/Context;

    .line 67828
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/a3;->A02:Lcom/facebook/ads/redexgen/X/61;

    .line 67829
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/a3;->A00:Landroid/content/Context;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a3;->A02:Lcom/facebook/ads/redexgen/X/61;

    .line 67830
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/61;->A0a()Lcom/facebook/ads/redexgen/X/6o;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a3;->A02:Lcom/facebook/ads/redexgen/X/61;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/61;->A0g()Ljava/lang/String;

    move-result-object v0

    .line 67831
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/74;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/6o;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/74;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a3;->A03:Lcom/facebook/ads/redexgen/X/74;

    .line 67832
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/a3;)Landroid/content/Context;
    .locals 0

    .line 67833
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/a3;->A00:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/a3;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 67834
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/a3;->A01:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/a3;)Lcom/facebook/ads/redexgen/X/61;
    .locals 0

    .line 67835
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/a3;->A02:Lcom/facebook/ads/redexgen/X/61;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/a3;Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6z;
    .locals 0

    .line 67836
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/a3;->A05(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object p0

    return-object p0
.end method

.method private A05(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/6z;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Nullable Dereference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/a4;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/6z;"
        }
    .end annotation

    .line 67837
    .local v4, "appCertificateHashHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/signals/library/nativesignals/AppInfoSignalCollector$AppCertificateHashes;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xc;

    .line 67838
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 67839
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6b;->A02()Lcom/facebook/ads/redexgen/X/6x;

    move-result-object v3

    sget-object v5, Lcom/facebook/ads/redexgen/X/6y;->A06:Lcom/facebook/ads/redexgen/X/6y;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Xc;-><init>(JLcom/facebook/ads/redexgen/X/6x;Ljava/util/HashMap;Lcom/facebook/ads/redexgen/X/6y;)V

    .line 67840
    return-object v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/a3;)Lcom/facebook/ads/redexgen/X/74;
    .locals 0

    .line 67841
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/a3;->A03:Lcom/facebook/ads/redexgen/X/74;

    return-object p0
.end method


# virtual methods
.method public final A0G()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67842
    new-instance v0, Lcom/facebook/ads/redexgen/X/aE;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aE;-><init>(Lcom/facebook/ads/redexgen/X/a3;)V

    .line 67843
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0H()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67844
    new-instance v0, Lcom/facebook/ads/redexgen/X/aG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aG;-><init>(Lcom/facebook/ads/redexgen/X/a3;)V

    .line 67845
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67846
    new-instance v0, Lcom/facebook/ads/redexgen/X/aH;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aH;-><init>(Lcom/facebook/ads/redexgen/X/a3;)V

    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67847
    new-instance v0, Lcom/facebook/ads/redexgen/X/aL;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aL;-><init>(Lcom/facebook/ads/redexgen/X/a3;)V

    .line 67848
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67849
    new-instance v0, Lcom/facebook/ads/redexgen/X/a9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/a9;-><init>(Lcom/facebook/ads/redexgen/X/a3;)V

    .line 67850
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0L()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67851
    new-instance v0, Lcom/facebook/ads/redexgen/X/a6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/a6;-><init>(Lcom/facebook/ads/redexgen/X/a3;)V

    .line 67852
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67853
    new-instance v0, Lcom/facebook/ads/redexgen/X/aD;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aD;-><init>(Lcom/facebook/ads/redexgen/X/a3;)V

    .line 67854
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67855
    new-instance v0, Lcom/facebook/ads/redexgen/X/aC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aC;-><init>(Lcom/facebook/ads/redexgen/X/a3;)V

    .line 67856
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67857
    new-instance v0, Lcom/facebook/ads/redexgen/X/a8;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/a8;-><init>(Lcom/facebook/ads/redexgen/X/a3;)V

    .line 67858
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0P()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67859
    new-instance v0, Lcom/facebook/ads/redexgen/X/a5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/a5;-><init>(Lcom/facebook/ads/redexgen/X/a3;)V

    .line 67860
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0Q()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67861
    new-instance v0, Lcom/facebook/ads/redexgen/X/a7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/a7;-><init>(Lcom/facebook/ads/redexgen/X/a3;)V

    .line 67862
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0R()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67863
    new-instance v0, Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aA;-><init>(Lcom/facebook/ads/redexgen/X/a3;)V

    .line 67864
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0S()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67865
    new-instance v0, Lcom/facebook/ads/redexgen/X/aB;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aB;-><init>(Lcom/facebook/ads/redexgen/X/a3;)V

    .line 67866
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0T()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67867
    new-instance v0, Lcom/facebook/ads/redexgen/X/aN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aN;-><init>(Lcom/facebook/ads/redexgen/X/a3;)V

    .line 67868
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0U()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67869
    new-instance v0, Lcom/facebook/ads/redexgen/X/aM;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aM;-><init>(Lcom/facebook/ads/redexgen/X/a3;)V

    .line 67870
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0V()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67871
    new-instance v0, Lcom/facebook/ads/redexgen/X/aK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aK;-><init>(Lcom/facebook/ads/redexgen/X/a3;)V

    .line 67872
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0W()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67873
    new-instance v0, Lcom/facebook/ads/redexgen/X/aJ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aJ;-><init>(Lcom/facebook/ads/redexgen/X/a3;)V

    .line 67874
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0X()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67875
    new-instance v0, Lcom/facebook/ads/redexgen/X/aI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aI;-><init>(Lcom/facebook/ads/redexgen/X/a3;)V

    .line 67876
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0Y()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 67877
    new-instance v0, Lcom/facebook/ads/redexgen/X/aF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aF;-><init>(Lcom/facebook/ads/redexgen/X/a3;)V

    .line 67878
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method
