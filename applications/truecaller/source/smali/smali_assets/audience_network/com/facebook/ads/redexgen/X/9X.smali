.class public final enum Lcom/facebook/ads/redexgen/X/9X;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9Y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FetchInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/9X;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static final synthetic A01:[Lcom/facebook/ads/redexgen/X/9X;

.field public static final enum A02:Lcom/facebook/ads/redexgen/X/9X;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/9X;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/9X;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 20321
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9X;->A01()V

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9X;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9X;

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/9X;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9X;->A02:Lcom/facebook/ads/redexgen/X/9X;

    .line 20322
    const/4 v4, 0x1

    const/16 v2, 0x25

    const/16 v1, 0x13

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9X;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9X;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/9X;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9X;->A04:Lcom/facebook/ads/redexgen/X/9X;

    .line 20323
    const/4 v3, 0x2

    const/16 v2, 0xf

    const/16 v1, 0x16

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9X;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9X;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/9X;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9X;->A03:Lcom/facebook/ads/redexgen/X/9X;

    .line 20324
    const/4 v0, 0x3

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/9X;

    sget-object v0, Lcom/facebook/ads/redexgen/X/9X;->A02:Lcom/facebook/ads/redexgen/X/9X;

    aput-object v0, v1, v5

    sget-object v0, Lcom/facebook/ads/redexgen/X/9X;->A04:Lcom/facebook/ads/redexgen/X/9X;

    aput-object v0, v1, v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/9X;->A03:Lcom/facebook/ads/redexgen/X/9X;

    aput-object v0, v1, v3

    sput-object v1, Lcom/facebook/ads/redexgen/X/9X;->A01:[Lcom/facebook/ads/redexgen/X/9X;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20325
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/9X;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x13

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

    const/16 v0, 0x38

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9X;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x3at
        0x39t
        0x28t
        0x3ft
        0x34t
        0x39t
        0x38t
        0x23t
        0x2et
        0x39t
        0x3ft
        0x33t
        0x2et
        0x38t
        0x2ft
        0x43t
        0x40t
        0x51t
        0x46t
        0x4dt
        0x5at
        0x47t
        0x50t
        0x43t
        0x43t
        0x40t
        0x57t
        0x5at
        0x51t
        0x4at
        0x4at
        0x5at
        0x56t
        0x48t
        0x44t
        0x49t
        0x49t
        0x4dt
        0x4ct
        0x5ct
        0x51t
        0x46t
        0x40t
        0x4ct
        0x51t
        0x47t
        0x50t
        0x5ct
        0x57t
        0x4ct
        0x5ct
        0x45t
        0x46t
        0x57t
        0x40t
        0x4bt
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/9X;
    .locals 1

    .line 20326
    const-class v0, Lcom/facebook/ads/redexgen/X/9X;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9X;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/9X;
    .locals 1

    .line 20327
    sget-object v0, Lcom/facebook/ads/redexgen/X/9X;->A01:[Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, [Lcom/facebook/ads/redexgen/X/9X;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/9X;

    return-object v0
.end method
