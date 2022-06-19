.class public final Lcom/facebook/ads/redexgen/X/AE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/DT;->A0a(Lcom/facebook/ads/redexgen/X/Af;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/DT;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Af;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/AE;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/DT;Lcom/facebook/ads/redexgen/X/Af;)V
    .locals 0

    .line 21651
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AE;->A00:Lcom/facebook/ads/redexgen/X/DT;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/AE;->A01:Lcom/facebook/ads/redexgen/X/Af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/AE;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x77

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x4c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AE;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x14t
        0x1ft
        0x16t
        -0x9t
        0x13t
        0x8t
        0x20t
        0xct
        0x19t
        -0x10t
        0x14t
        0x17t
        0x13t
        -0x10t
        0x15t
        0x1bt
        0xct
        0x19t
        0x15t
        0x8t
        0x13t
        -0x1et
        -0x5t
        -0xet
        0x5t
        -0x3t
        -0xet
        -0x10t
        0x1t
        -0xet
        -0xft
        -0x53t
        -0xet
        -0x1t
        -0x1t
        -0x4t
        -0x1t
        -0x53t
        -0xft
        -0xet
        -0x7t
        -0xat
        0x3t
        -0xet
        -0x1t
        -0xat
        -0x5t
        -0xct
        -0x53t
        -0x6t
        -0xet
        0x0t
        0x0t
        -0x12t
        -0xct
        -0xet
        -0x53t
        -0x4t
        -0x5t
        -0x53t
        -0xet
        0x5t
        0x1t
        -0xet
        -0x1t
        -0x5t
        -0x12t
        -0x7t
        -0x53t
        0x1t
        -0xbt
        -0x1t
        -0xet
        -0x12t
        -0xft
        -0x45t
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v5, p0

    .line 21652
    .local p0, "this":Lcom/facebook/ads/redexgen/X/AE;
    :try_start_0
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/AE;->A00:Lcom/facebook/ads/redexgen/X/DT;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/AE;->A01:Lcom/facebook/ads/redexgen/X/Af;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/DT;->A0U(Lcom/facebook/ads/redexgen/X/DT;Lcom/facebook/ads/redexgen/X/Af;)V

    .line 21653
    return-void
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/A9; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21654
    :catch_0
    move-exception v4

    .line 21655
    .local v0, "e":Lcom/facebook/ads/redexgen/X/A9;
    :try_start_1
    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AE;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x15

    const/16 v1, 0x37

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21656
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21657
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/AE;
    :catchall_0
    move-exception v0

    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/A9;
    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
