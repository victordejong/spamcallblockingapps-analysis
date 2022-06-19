.class public final Lcom/facebook/ads/redexgen/X/SG;
.super Lcom/facebook/ads/redexgen/X/QY;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9f;
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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SG;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9f;)V
    .locals 0

    .line 51442
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SG;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QY;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/SG;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x41

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

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SG;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1et
        -0xft
        -0x16t
        -0x23t
        -0x1at
        -0xft
    .end array-data
.end method


# virtual methods
.method public final A03()V
    .locals 5

    .line 51443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9f;->A05(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lz;->A07()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51444
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9f;->A05(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lz;->A05()V

    .line 51445
    new-instance v1, Lcom/facebook/ads/redexgen/X/Nu;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Nu;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A00:Lcom/facebook/ads/redexgen/X/9f;

    .line 51446
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9f;->A0A(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A03(Lcom/facebook/ads/redexgen/X/QZ;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A00:Lcom/facebook/ads/redexgen/X/9f;

    .line 51447
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9f;->A05(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A02(Lcom/facebook/ads/redexgen/X/Lz;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v0

    .line 51448
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nu;->A05()Ljava/util/Map;

    move-result-object v4

    .line 51449
    .local p0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9f;->A09(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/On;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A0O()Ljava/lang/String;

    move-result-object v3

    .line 51450
    .local v0, "htmlHashSum":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51451
    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SG;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51452
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9f;->A03(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9f;->A00(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/JT;->A8v(Ljava/lang/String;Ljava/util/Map;)V

    .line 51453
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9f;->A02(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2Y()V

    .line 51454
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A00:Lcom/facebook/ads/redexgen/X/9f;

    .line 51455
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9f;->A00(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0S()Ljava/lang/String;

    move-result-object v0

    .line 51456
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/26;->A00(Ljava/lang/String;)V

    .line 51457
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9f;->A06(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/MU;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9f;->A06(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/MU;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SG;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9f;->A07(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A6i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MU;->A3q(Ljava/lang/String;)V

    .line 51459
    .end local p0    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v0    # "htmlHashSum":Ljava/lang/String;
    :cond_1
    return-void
.end method
