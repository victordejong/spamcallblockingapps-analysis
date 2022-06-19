.class public final Lcom/facebook/ads/redexgen/X/9I;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/X0;->A09(Lcom/facebook/ads/redexgen/X/8J;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Landroid/content/SharedPreferences;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/8J;

.field public final synthetic A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XdxsWQHKmAYrPa6mv803llFsbG6xUBv1"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0ZMGl2pSIAaZIEqvxPmnMQII5PMyDfzp"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "xK6bN8ERsE3qlK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "WJOztIfqKvqLg1zb8DcclROO5I1m6hYl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NZ35AS4Ok4U2uFg9Bn0RAVLmEZFAhNaA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "i6NGDYiwjEbiTB59W8H8ewYatIcL2Rm5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tt3j"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3tQ5yRyF2hXRO3n7qZm1zDaXW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9I;->A04:[Ljava/lang/String;

    .line 20031
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9I;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8J;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 20032
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9I;->A01:Lcom/facebook/ads/redexgen/X/8J;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9I;->A02:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00()Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20033
    const/4 v4, 0x0

    .line 20034
    .local p0, "checksumApiFingerprint":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-ge v1, v0, :cond_0

    sget-object v3, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9I;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A01:Lcom/facebook/ads/redexgen/X/8J;

    .line 20035
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20036
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A01:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lb;->A01(Lcom/facebook/ads/redexgen/X/8J;)Ljava/lang/String;

    move-result-object v4

    .line 20037
    :cond_1
    if-nez v4, :cond_2

    .line 20038
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9I;->A01:Lcom/facebook/ads/redexgen/X/8J;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8J;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/X0;->A05(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X0;->A06(Ljava/lang/String;)Ljava/lang/String;

    .line 20039
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9I;->A02:Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/X0;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 20040
    invoke-static {}, Lcom/facebook/ads/redexgen/X/X0;->A07()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 20041
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 20042
    :cond_2
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/X0;->A06(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/9I;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/9I;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/9I;->A04:[Ljava/lang/String;

    const-string v1, "ijq86j9eF5Bfako4vk0V9m1lrfYXSgO1"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_1

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x69

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9I;->A03:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x7ct
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20043
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9I;->A00()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
