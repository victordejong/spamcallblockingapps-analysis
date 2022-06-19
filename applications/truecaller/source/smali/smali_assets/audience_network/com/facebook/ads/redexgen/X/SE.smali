.class public final Lcom/facebook/ads/redexgen/X/SE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Og;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/9f;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/Mw;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9f;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SE;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9f;)V
    .locals 0

    .line 51430
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/SE;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x17

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

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SE;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x31t
        -0x35t
        -0x40t
        -0x28t
    .end array-data
.end method


# virtual methods
.method public final ACS(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 51431
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51432
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9f;->AEq()V

    .line 51433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9f;->A02(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9f;->A02(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A09()Lcom/facebook/ads/redexgen/X/Jf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Jf;->AAH()V

    .line 51435
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SE;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9f;->A09(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/On;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/On;->A0c(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 51436
    return-void
.end method
