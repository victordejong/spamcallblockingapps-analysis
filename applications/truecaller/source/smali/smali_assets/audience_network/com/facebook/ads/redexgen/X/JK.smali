.class public final enum Lcom/facebook/ads/redexgen/X/JK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/JO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DSLStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/JK;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static final synthetic A01:[Lcom/facebook/ads/redexgen/X/JK;

.field public static final enum A02:Lcom/facebook/ads/redexgen/X/JK;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/JK;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 40463
    invoke-static {}, Lcom/facebook/ads/redexgen/X/JK;->A01()V

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/JK;->A02:Lcom/facebook/ads/redexgen/X/JK;

    .line 40464
    const/4 v3, 0x1

    const/4 v2, 0x7

    const/4 v1, 0x5

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/JK;->A03:Lcom/facebook/ads/redexgen/X/JK;

    .line 40465
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/JK;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JK;->A02:Lcom/facebook/ads/redexgen/X/JK;

    aput-object v0, v1, v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/JK;->A03:Lcom/facebook/ads/redexgen/X/JK;

    aput-object v0, v1, v3

    sput-object v1, Lcom/facebook/ads/redexgen/X/JK;->A01:[Lcom/facebook/ads/redexgen/X/JK;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40466
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/JK;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x54

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

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/JK;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x4bt
        -0x48t
        -0x56t
        -0x53t
        -0x4et
        -0x49t
        -0x50t
        -0x32t
        -0x3ft
        -0x43t
        -0x40t
        -0x2bt
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JK;
    .locals 1

    .line 40467
    const-class v0, Lcom/facebook/ads/redexgen/X/JK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/JK;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/JK;
    .locals 1

    .line 40468
    sget-object v0, Lcom/facebook/ads/redexgen/X/JK;->A01:[Lcom/facebook/ads/redexgen/X/JK;

    invoke-virtual {v0}, [Lcom/facebook/ads/redexgen/X/JK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/JK;

    return-object v0
.end method
