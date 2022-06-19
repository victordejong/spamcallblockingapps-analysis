.class public final Lcom/facebook/ads/redexgen/X/aO;
.super Lcom/facebook/ads/redexgen/X/6b;
.source ""


# static fields
.field public static A04:[B


# instance fields
.field public A00:Landroid/content/pm/ConfigurationInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field public final A02:Landroid/app/ActivityManager;

.field public final A03:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/aO;->A05()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V
    .locals 4

    .line 68026
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6b;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V

    .line 68027
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Landroid/content/Context;

    .line 68028
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aO;->A03:Landroid/content/Context;

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aO;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A02:Landroid/app/ActivityManager;

    .line 68029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A02:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    .line 68030
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A00:Landroid/content/pm/ConfigurationInfo;

    .line 68031
    :cond_0
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 68032
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/aO;)Landroid/app/ActivityManager$RunningAppProcessInfo;
    .locals 0

    .line 68033
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aO;->A01:Landroid/app/ActivityManager$RunningAppProcessInfo;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/aO;)Landroid/app/ActivityManager;
    .locals 0

    .line 68034
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aO;->A02:Landroid/app/ActivityManager;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/aO;)Landroid/content/pm/ConfigurationInfo;
    .locals 0

    .line 68035
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aO;->A00:Landroid/content/pm/ConfigurationInfo;

    return-object p0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/aO;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/aO;->A04:[B

    return-void

    :array_0
    .array-data 1
        0xdt
        0xft
        0x18t
        0x5t
        0x1at
        0x5t
        0x18t
        0x15t
    .end array-data
.end method


# virtual methods
.method public final A0G()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 68036
    new-instance v0, Lcom/facebook/ads/redexgen/X/aR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aR;-><init>(Lcom/facebook/ads/redexgen/X/aO;)V

    .line 68037
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0H()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 68038
    new-instance v0, Lcom/facebook/ads/redexgen/X/aQ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aQ;-><init>(Lcom/facebook/ads/redexgen/X/aO;)V

    .line 68039
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 68040
    new-instance v0, Lcom/facebook/ads/redexgen/X/aV;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aV;-><init>(Lcom/facebook/ads/redexgen/X/aO;)V

    .line 68041
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 68042
    new-instance v0, Lcom/facebook/ads/redexgen/X/aU;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aU;-><init>(Lcom/facebook/ads/redexgen/X/aO;)V

    .line 68043
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 68044
    new-instance v0, Lcom/facebook/ads/redexgen/X/aT;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aT;-><init>(Lcom/facebook/ads/redexgen/X/aO;)V

    .line 68045
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0L()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 68046
    new-instance v0, Lcom/facebook/ads/redexgen/X/aW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aW;-><init>(Lcom/facebook/ads/redexgen/X/aO;)V

    .line 68047
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 68048
    new-instance v0, Lcom/facebook/ads/redexgen/X/aS;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aS;-><init>(Lcom/facebook/ads/redexgen/X/aO;)V

    .line 68049
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 68050
    new-instance v0, Lcom/facebook/ads/redexgen/X/aX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aX;-><init>(Lcom/facebook/ads/redexgen/X/aO;)V

    .line 68051
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 68052
    new-instance v0, Lcom/facebook/ads/redexgen/X/aP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aP;-><init>(Lcom/facebook/ads/redexgen/X/aO;)V

    .line 68053
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0P()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 68054
    new-instance v0, Lcom/facebook/ads/redexgen/X/aZ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aZ;-><init>(Lcom/facebook/ads/redexgen/X/aO;)V

    .line 68055
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0Q()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 68056
    new-instance v0, Lcom/facebook/ads/redexgen/X/aY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aY;-><init>(Lcom/facebook/ads/redexgen/X/aO;)V

    .line 68057
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method
