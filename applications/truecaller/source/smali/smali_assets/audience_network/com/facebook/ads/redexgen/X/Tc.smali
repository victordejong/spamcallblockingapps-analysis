.class public final Lcom/facebook/ads/redexgen/X/Tc;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/KX;->A0N(Lcom/facebook/ads/redexgen/X/KU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/KX;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HdBP5Xz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1x1Spdd4leaR6rMyIqz7jDuVALPBafGP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "axXL5TnL0HBMXsVKsrA9GDOWQxSG9OY6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1dEgnVHIT0m43fI6JYH9hpNhfyiBWS6N"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "iEi5yE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "UjLwzpYsoJIrFySVWBkKISpV5tCrd9dB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Qbq65yz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "qKKFep347IAmJ8sue1lLg6VgEBnKG6W3"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Tc;->A02:[Ljava/lang/String;

    .line 54248
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tc;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KX;)V
    .locals 0

    .line 54249
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tc;->A00:Lcom/facebook/ads/redexgen/X/KX;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tc;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tc;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tc;->A02:[Ljava/lang/String;

    const-string v1, "vKWhPjbFalI70MxhKihYQQhrE25QXeUX"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x59

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tc;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x19t
        0x1ct
        0x10t
        0xet
        0x19t
        0xct
        0x21t
        0x15t
        0x1ft
        0x1ct
        0x21t
        0x21t
        0x19t
        0x12t
    .end array-data
.end method


# virtual methods
.method public final A06()V
    .locals 4

    .line 54250
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tc;->A00:Lcom/facebook/ads/redexgen/X/KX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KX;->A01(Lcom/facebook/ads/redexgen/X/KX;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/8l;->A87(Ljava/lang/String;)V

    .line 54251
    return-void
.end method
