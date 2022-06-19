.class public final Lcom/facebook/ads/redexgen/X/FE;
.super Lcom/facebook/ads/redexgen/X/Sg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/d1;->A09(Lcom/facebook/ads/redexgen/X/95;Lcom/facebook/ads/redexgen/X/1p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/d1;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/cs;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/FE;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/d1;Lcom/facebook/ads/redexgen/X/cs;)V
    .locals 0

    .line 33179
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FE;->A00:Lcom/facebook/ads/redexgen/X/d1;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/FE;->A01:Lcom/facebook/ads/redexgen/X/cs;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sg;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/FE;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7b

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

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/FE;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x15t
        0x22t
        0x22t
        0x3ft
        0x22t
        0x70t
        0x35t
        0x28t
        0x35t
        0x33t
        0x25t
        0x24t
        0x39t
        0x3et
        0x37t
        0x70t
        0x31t
        0x33t
        0x24t
        0x39t
        0x3ft
        0x3et
        0x11t
        0x15t
        0x16t
        0x13t
    .end array-data
.end method


# virtual methods
.method public final A9r()V
    .locals 2

    .line 33180
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FE;->A00:Lcom/facebook/ads/redexgen/X/d1;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/d1;->A0B(Lcom/facebook/ads/redexgen/X/d1;Z)Z

    .line 33181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FE;->A00:Lcom/facebook/ads/redexgen/X/d1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/d1;->A0A(Lcom/facebook/ads/redexgen/X/d1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33182
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FE;->A00:Lcom/facebook/ads/redexgen/X/d1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/d1;->A08(Lcom/facebook/ads/redexgen/X/d1;)V

    .line 33183
    :cond_0
    return-void
.end method

.method public final AA7(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33184
    .local v4, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FE;->A00:Lcom/facebook/ads/redexgen/X/d1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/d1;->A02(Lcom/facebook/ads/redexgen/X/d1;)Lcom/facebook/ads/redexgen/X/Dr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dr;->A0I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dF;->A3W()V

    .line 33185
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 33186
    .local p0, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x16

    const/4 v1, 0x4

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33187
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0g;->A04(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FE;->A00:Lcom/facebook/ads/redexgen/X/d1;

    .line 33188
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/d1;->A00(Lcom/facebook/ads/redexgen/X/d1;)Lcom/facebook/ads/redexgen/X/0v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33189
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FE;->A00:Lcom/facebook/ads/redexgen/X/d1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/d1;->A00(Lcom/facebook/ads/redexgen/X/d1;)Lcom/facebook/ads/redexgen/X/0v;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FE;->A00:Lcom/facebook/ads/redexgen/X/d1;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->AA0(Lcom/facebook/ads/redexgen/X/d1;)V

    .line 33190
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FE;->A00:Lcom/facebook/ads/redexgen/X/d1;

    .line 33191
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/d1;->A02(Lcom/facebook/ads/redexgen/X/d1;)Lcom/facebook/ads/redexgen/X/Dr;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FE;->A00:Lcom/facebook/ads/redexgen/X/d1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/d1;->A03(Lcom/facebook/ads/redexgen/X/d1;)Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FE;->A01:Lcom/facebook/ads/redexgen/X/cs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cs;->A61()Ljava/lang/String;

    move-result-object v0

    .line 33192
    invoke-static {v2, v1, v0, v3, p2}, Lcom/facebook/ads/redexgen/X/0g;->A00(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v1

    .line 33193
    .local p1, "adAction":Lcom/facebook/ads/redexgen/X/0f;
    if-eqz v1, :cond_1

    .line 33194
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FE;->A00:Lcom/facebook/ads/redexgen/X/d1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/d1;->A02(Lcom/facebook/ads/redexgen/X/d1;)Lcom/facebook/ads/redexgen/X/Dr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dr;->A0I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dF;->A3T()V

    .line 33195
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/0f;->A0B()V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33196
    :catch_0
    move-exception v4

    .line 33197
    .local p2, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/d1;->A04()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33198
    .end local p2    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public final AAk()V
    .locals 2

    .line 33199
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FE;->A00:Lcom/facebook/ads/redexgen/X/d1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/d1;->A02(Lcom/facebook/ads/redexgen/X/d1;)Lcom/facebook/ads/redexgen/X/Dr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dr;->A0I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FE;->A00:Lcom/facebook/ads/redexgen/X/d1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/d1;->A01(Lcom/facebook/ads/redexgen/X/d1;)Lcom/facebook/ads/redexgen/X/cq;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/dF;->A3X(Z)V

    .line 33200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FE;->A00:Lcom/facebook/ads/redexgen/X/d1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/d1;->A01(Lcom/facebook/ads/redexgen/X/d1;)Lcom/facebook/ads/redexgen/X/cq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FE;->A00:Lcom/facebook/ads/redexgen/X/d1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/d1;->A01(Lcom/facebook/ads/redexgen/X/d1;)Lcom/facebook/ads/redexgen/X/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0p;->A02()V

    .line 33202
    :cond_0
    return-void

    .line 33203
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ABS()V
    .locals 1

    .line 33204
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FE;->A00:Lcom/facebook/ads/redexgen/X/d1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/d1;->A02(Lcom/facebook/ads/redexgen/X/d1;)Lcom/facebook/ads/redexgen/X/Dr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dr;->A0I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dF;->A3Z()V

    .line 33205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FE;->A00:Lcom/facebook/ads/redexgen/X/d1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/d1;->A01(Lcom/facebook/ads/redexgen/X/d1;)Lcom/facebook/ads/redexgen/X/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cq;->A07()V

    .line 33206
    return-void
.end method

.method public final ACd()V
    .locals 0

    .line 33207
    return-void
.end method
