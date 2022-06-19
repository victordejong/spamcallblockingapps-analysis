.class public final Lcom/facebook/ads/redexgen/X/6N;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:Landroid/view/OrientationEventListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/6L;

.field public final A01:Lcom/facebook/ads/redexgen/X/6o;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ciYSwpO57ig7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AgXvWM7vBAP276b3F"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "h3L2uX2266ICJ0F8mxeOzYeo"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "sn1Bi96p4g3FJ3lBwfTgs4qOj566"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nEyUaJreiz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9f6cxckTFidZYnVMHRSclm"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9nbfinSPxnf3N791gNAhDrqxfgbV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "EACetWGUN5dpVn0xkHaZeeKDOZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6N;->A03:[Ljava/lang/String;

    .line 15010
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6L;Lcom/facebook/ads/redexgen/X/6o;)V
    .locals 0

    .line 15011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15012
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6N;->A00:Lcom/facebook/ads/redexgen/X/6L;

    .line 15013
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6N;->A01:Lcom/facebook/ads/redexgen/X/6o;

    .line 15014
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/6N;)Lcom/facebook/ads/redexgen/X/6L;
    .locals 0

    .line 15015
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/6N;->A00:Lcom/facebook/ads/redexgen/X/6L;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized A01()V
    .locals 1

    monitor-enter p0

    .line 15016
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/6N;->A02:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 15017
    sget-object v0, Lcom/facebook/ads/redexgen/X/6N;->A02:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 15018
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6N;->A02:Landroid/view/OrientationEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15019
    .end local v0
    :cond_0
    monitor-exit p0

    return-void

    .line 15020
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A02(Landroid/content/Context;)V
    .locals 8

    monitor-enter p0

    .line 15021
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/6N;->A02:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15022
    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/6N;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/6N;->A03:[Ljava/lang/String;

    const-string v1, "WLHhaS1yyOUNNZKQvAoQ3Zw3xj"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "prMYx6h4YCDadOhBb"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 15023
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 15024
    .local v1, "timeStamp":J
    move-object v3, p1

    if-nez v3, :cond_2

    const-string v2, ""

    .line 15025
    .local p0, "contextPackageName":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6N;->A01:Lcom/facebook/ads/redexgen/X/6o;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6o;->A0G:Lcom/facebook/ads/redexgen/X/6o;

    if-ne v1, v0, :cond_3

    goto :goto_1

    .line 15026
    .end local v0
    :cond_2
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 15027
    :goto_1
    const/4 v7, 0x0

    goto :goto_2

    .line 15028
    :cond_3
    new-instance v7, Lcom/facebook/ads/redexgen/X/6x;

    invoke-direct {v7, v2}, Lcom/facebook/ads/redexgen/X/6x;-><init>(Ljava/lang/String;)V

    .line 15029
    .local v0, "signalValueContext":Lcom/facebook/ads/redexgen/X/6x;
    :goto_2
    new-instance v1, Lcom/facebook/ads/redexgen/X/6M;

    const/4 v4, 0x3

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/6M;-><init>(Lcom/facebook/ads/redexgen/X/6N;Landroid/content/Context;IJLcom/facebook/ads/redexgen/X/6x;)V

    sput-object v1, Lcom/facebook/ads/redexgen/X/6N;->A02:Landroid/view/OrientationEventListener;

    .line 15030
    sget-object v0, Lcom/facebook/ads/redexgen/X/6N;->A02:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15031
    monitor-exit p0

    return-void

    .line 15032
    .end local p0    # "contextPackageName":Ljava/lang/String;
    .end local v1    # "timeStamp":J
    .end local v0    # "signalValueContext":Lcom/facebook/ads/redexgen/X/6x;
    .end local v2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
