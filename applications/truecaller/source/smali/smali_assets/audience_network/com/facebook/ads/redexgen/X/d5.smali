.class public final Lcom/facebook/ads/redexgen/X/d5;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/0u;->A0G(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lorg/json/JSONObject;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/d5;->A02()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 72806
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/d5;->A00:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/d5;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x15

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/d5;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x7t
        0x13t
        0x4t
        0x10t
        0x14t
        0x4t
        0xft
        0x2t
        0x18t
        0x3et
        0x2t
        0x0t
        0x11t
        0x11t
        0x8t
        0xft
        0x6t
    .end array-data
.end method


# virtual methods
.method public final A06()V
    .locals 6

    .line 72807
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A03:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 72808
    sget-object v2, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/0t;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72809
    :try_start_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/0t;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d5;->A00:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0t;->A09(Lorg/json/JSONObject;)V

    .line 72810
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A04:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 72811
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 72812
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/d5;
    :catch_0
    move-exception v1

    .line 72813
    .local p0, "e":Ljava/lang/InterruptedException;
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8J;

    .line 72814
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A10:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 72815
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/d5;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    goto :goto_0

    .line 72816
    :catch_1
    move-exception v1

    .line 72817
    .local p0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A07()V

    .line 72818
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8J;

    .line 72819
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A0z:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 72820
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/d5;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 72821
    :goto_0
    return-void
.end method
