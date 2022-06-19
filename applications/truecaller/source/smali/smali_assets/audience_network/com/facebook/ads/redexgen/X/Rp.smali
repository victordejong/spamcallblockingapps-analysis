.class public final Lcom/facebook/ads/redexgen/X/Rp;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/87;->A0E(Lcom/facebook/ads/redexgen/X/7t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/87;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/7t;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rp;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/87;Lcom/facebook/ads/redexgen/X/7t;)V
    .locals 0

    .line 51144
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rp;->A00:Lcom/facebook/ads/redexgen/X/87;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Rp;->A01:Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rp;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x35

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

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rp;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x7et
        -0x4bt
        -0x5at
        -0x5at
        -0x5bt
        -0x4et
        -0x57t
        -0x52t
        -0x59t
        0x60t
        -0x57t
        -0x52t
        -0x5ct
        -0x5bt
        -0x5at
        -0x57t
        -0x52t
        -0x57t
        -0x4ct
        -0x5bt
        -0x54t
        -0x47t
    .end array-data
.end method


# virtual methods
.method public final A06()V
    .locals 4

    .line 51145
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A00:Lcom/facebook/ads/redexgen/X/87;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/87;->A02(Lcom/facebook/ads/redexgen/X/87;)Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getState()Lcom/facebook/ads/redexgen/X/QW;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A02:Lcom/facebook/ads/redexgen/X/QW;

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A00:Lcom/facebook/ads/redexgen/X/87;

    .line 51146
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/87;->A02(Lcom/facebook/ads/redexgen/X/87;)Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getCurrentPositionInMillis()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rp;->A01:Lcom/facebook/ads/redexgen/X/7t;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mj;->A00()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 51147
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rp;->A00:Lcom/facebook/ads/redexgen/X/87;

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rp;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/87;->A0C(Lcom/facebook/ads/redexgen/X/87;Ljava/lang/String;)V

    .line 51148
    :cond_0
    return-void
.end method
