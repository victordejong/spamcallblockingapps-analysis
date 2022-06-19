.class public final Lcom/facebook/ads/redexgen/X/YQ;
.super Lcom/facebook/ads/redexgen/X/6b;
.source ""


# static fields
.field public static A07:[B

.field public static final A08:Ljava/lang/String;


# instance fields
.field public final A00:Landroid/content/Context;

.field public final A01:Landroid/content/pm/PackageInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:Landroid/content/pm/PackageManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/61;

.field public final A04:[Landroid/content/pm/ActivityInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A05:[Landroid/content/pm/ServiceInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A06:[Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 66907
    invoke-static {}, Lcom/facebook/ads/redexgen/X/YQ;->A07()V

    const-class v0, Lcom/facebook/ads/redexgen/X/YQ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/YQ;->A08:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V
    .locals 1

    .line 66908
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6b;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V

    .line 66909
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YQ;->A00:Landroid/content/Context;

    .line 66910
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/YQ;->A03:Lcom/facebook/ads/redexgen/X/61;

    .line 66911
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/YQ;->A02(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A01:Landroid/content/pm/PackageInfo;

    .line 66912
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A02:Landroid/content/pm/PackageManager;

    .line 66913
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/YQ;->A08(Landroid/content/Context;)[Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A04:[Landroid/content/pm/ActivityInfo;

    .line 66914
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/YQ;->A0A(Landroid/content/Context;)[Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A05:[Landroid/content/pm/ServiceInfo;

    .line 66915
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/YQ;->A0C(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A06:[Ljava/lang/String;

    .line 66916
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/YQ;)Landroid/content/Context;
    .locals 0

    .line 66917
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A00:Landroid/content/Context;

    return-object p0
.end method

.method private A02(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.util.Log.e"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 66918
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 66919
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x1000

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 66920
    return-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66921
    :catch_0
    move-exception v4

    .line 66922
    .local p0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/facebook/ads/redexgen/X/YQ;->A08:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YQ;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66923
    .end local p0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/YQ;)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 66924
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A01:Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/YQ;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 66925
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A02:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/YQ;)Lcom/facebook/ads/redexgen/X/61;
    .locals 0

    .line 66926
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A03:Lcom/facebook/ads/redexgen/X/61;

    return-object p0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/YQ;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x77

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/YQ;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x1dt
        0x39t
        0x23t
        0x23t
        0x39t
        0x3et
        0x37t
        0x70t
        0x0t
        0x31t
        0x33t
        0x3bt
        0x31t
        0x37t
        0x35t
        0x70t
        0x0t
        0x35t
        0x22t
        0x3dt
        0x39t
        0x23t
        0x23t
        0x39t
        0x3ft
        0x3et
        0x23t
    .end array-data
.end method

.method private A08(Landroid/content/Context;)[Landroid/content/pm/ActivityInfo;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.util.Log.e"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 66927
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 66928
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 66929
    .local p0, "activityInfoList":[Landroid/content/pm/ActivityInfo;
    return-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66930
    .end local p0    # "activityInfoList":[Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v4

    .line 66931
    .local p0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/facebook/ads/redexgen/X/YQ;->A08:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YQ;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66932
    .end local p0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/YQ;)[Landroid/content/pm/ActivityInfo;
    .locals 0

    .line 66933
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A04:[Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method private A0A(Landroid/content/Context;)[Landroid/content/pm/ServiceInfo;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.util.Log.e"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 66934
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 66935
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x4

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 66936
    .local p0, "serviceInfoList":[Landroid/content/pm/ServiceInfo;
    return-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66937
    .end local p0    # "serviceInfoList":[Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v4

    .line 66938
    .local p0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/facebook/ads/redexgen/X/YQ;->A08:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YQ;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66939
    .end local p0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/YQ;)[Landroid/content/pm/ServiceInfo;
    .locals 0

    .line 66940
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A05:[Landroid/content/pm/ServiceInfo;

    return-object p0
.end method

.method private A0C(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.util.Log.e"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 66941
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 66942
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x1000

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 66943
    .local p0, "requestedPermissionsList":[Ljava/lang/String;
    return-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66944
    .end local p0    # "requestedPermissionsList":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 66945
    .local p0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/facebook/ads/redexgen/X/YQ;->A08:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YQ;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66946
    .end local p0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/YQ;)[Ljava/lang/String;
    .locals 0

    .line 66947
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YQ;->A06:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final A0G()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66948
    new-instance v0, Lcom/facebook/ads/redexgen/X/YS;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YS;-><init>(Lcom/facebook/ads/redexgen/X/YQ;)V

    .line 66949
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0H()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66950
    new-instance v0, Lcom/facebook/ads/redexgen/X/YT;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YT;-><init>(Lcom/facebook/ads/redexgen/X/YQ;)V

    .line 66951
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66952
    new-instance v0, Lcom/facebook/ads/redexgen/X/YR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YR;-><init>(Lcom/facebook/ads/redexgen/X/YQ;)V

    .line 66953
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66954
    new-instance v0, Lcom/facebook/ads/redexgen/X/YU;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YU;-><init>(Lcom/facebook/ads/redexgen/X/YQ;)V

    .line 66955
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66956
    new-instance v0, Lcom/facebook/ads/redexgen/X/YZ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YZ;-><init>(Lcom/facebook/ads/redexgen/X/YQ;)V

    .line 66957
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0L()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66958
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yd;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Yd;-><init>(Lcom/facebook/ads/redexgen/X/YQ;)V

    .line 66959
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66960
    new-instance v0, Lcom/facebook/ads/redexgen/X/YY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YY;-><init>(Lcom/facebook/ads/redexgen/X/YQ;)V

    .line 66961
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66962
    new-instance v0, Lcom/facebook/ads/redexgen/X/YV;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YV;-><init>(Lcom/facebook/ads/redexgen/X/YQ;)V

    .line 66963
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66964
    new-instance v0, Lcom/facebook/ads/redexgen/X/YX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YX;-><init>(Lcom/facebook/ads/redexgen/X/YQ;)V

    .line 66965
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0P()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66966
    new-instance v0, Lcom/facebook/ads/redexgen/X/YW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YW;-><init>(Lcom/facebook/ads/redexgen/X/YQ;)V

    .line 66967
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0Q()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66968
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ya;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ya;-><init>(Lcom/facebook/ads/redexgen/X/YQ;)V

    .line 66969
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0R()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66970
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yb;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Yb;-><init>(Lcom/facebook/ads/redexgen/X/YQ;)V

    .line 66971
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0S()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66972
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Yc;-><init>(Lcom/facebook/ads/redexgen/X/YQ;)V

    .line 66973
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0T()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66974
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yf;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Yf;-><init>(Lcom/facebook/ads/redexgen/X/YQ;)V

    .line 66975
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0U()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66976
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yg;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Yg;-><init>(Lcom/facebook/ads/redexgen/X/YQ;)V

    .line 66977
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0V()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66978
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ye;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ye;-><init>(Lcom/facebook/ads/redexgen/X/YQ;)V

    .line 66979
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0W()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66980
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yi;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Yi;-><init>(Lcom/facebook/ads/redexgen/X/YQ;)V

    .line 66981
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0X()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66982
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yj;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Yj;-><init>(Lcom/facebook/ads/redexgen/X/YQ;)V

    .line 66983
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method

.method public final A0Y()Lcom/facebook/ads/redexgen/X/6k;
    .locals 1

    .line 66984
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yh;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Yh;-><init>(Lcom/facebook/ads/redexgen/X/YQ;)V

    .line 66985
    .local p0, "signalExecutor":Lcom/facebook/ads/redexgen/X/6k;
    return-object v0
.end method
