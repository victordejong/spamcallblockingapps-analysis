.class public final Lcom/facebook/ads/redexgen/X/b1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/b2;
    }
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/5J;

.field public A01:Lcom/facebook/ads/redexgen/X/XT;

.field public final A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/b1;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5J;Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)V
    .locals 0

    .line 68430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68431
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b1;->A00:Lcom/facebook/ads/redexgen/X/5J;

    .line 68432
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/b1;->A01:Lcom/facebook/ads/redexgen/X/XT;

    .line 68433
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/b1;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 68434
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/b1;)Lcom/facebook/ads/redexgen/X/5J;
    .locals 0

    .line 68435
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/b1;->A00:Lcom/facebook/ads/redexgen/X/5J;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/b1;)Lcom/facebook/ads/redexgen/X/XT;
    .locals 0

    .line 68436
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/b1;->A01:Lcom/facebook/ads/redexgen/X/XT;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/b1;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x57

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/b1;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x3bt
        0x34t
        0x21t
        0x3ct
        0x23t
        0x30t
        0x64t
        0x7ft
        0x7at
        0x7ft
        0x7et
        0x66t
        0x7ft
    .end array-data
.end method


# virtual methods
.method public final AAW(Lcom/facebook/ads/redexgen/X/K3;)V
    .locals 1

    .line 68437
    new-instance v0, Lcom/facebook/ads/redexgen/X/b4;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/b4;-><init>(Lcom/facebook/ads/redexgen/X/b1;Lcom/facebook/ads/redexgen/X/K3;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Km;->A00(Lcom/facebook/ads/redexgen/X/Ki;)V

    .line 68438
    return-void
.end method

.method public final ABO(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/cy;",
            ">;)V"
        }
    .end annotation

    .line 68439
    .local v5, "nativeAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b1;->A01:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/7J;-><init>(Lcom/facebook/ads/redexgen/X/8J;)V

    .line 68440
    .local p0, "manager":Lcom/facebook/ads/redexgen/X/7J;
    const/4 v3, 0x6

    const/4 v2, 0x7

    const/16 v1, 0x46

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/b1;->A02(III)Ljava/lang/String;

    move-result-object v1

    .line 68441
    .local p1, "firstRequestId":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/cy;

    .line 68442
    .local v0, "nativeAdapter":Lcom/facebook/ads/redexgen/X/cy;
    const/4 v5, 0x6

    const/4 v4, 0x7

    const/16 v3, 0x46

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/b1;->A02(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68443
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/cy;->A0S()Ljava/lang/String;

    move-result-object v1

    .line 68444
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/b1;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    sget-object v3, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    invoke-virtual {v4, v3}, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68445
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/cy;->A0L()Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 68446
    new-instance v7, Lcom/facebook/ads/redexgen/X/7G;

    .line 68447
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/cy;->A0L()Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Jr;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 68448
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/cy;->A0L()Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Jr;->getHeight()I

    move-result v9

    .line 68449
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/cy;->A0L()Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Jr;->getWidth()I

    move-result v10

    .line 68450
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/cy;->A0S()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x2

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/b1;->A02(III)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/7G;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 68451
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/7J;->A0V(Lcom/facebook/ads/redexgen/X/7G;)V

    .line 68452
    :cond_2
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/cy;->A0K()Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 68453
    new-instance v7, Lcom/facebook/ads/redexgen/X/7G;

    .line 68454
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/cy;->A0K()Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Jr;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 68455
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/cy;->A0K()Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Jr;->getHeight()I

    move-result v9

    .line 68456
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/cy;->A0K()Lcom/facebook/ads/redexgen/X/Jr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Jr;->getWidth()I

    move-result v10

    .line 68457
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/cy;->A0S()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x2

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/b1;->A02(III)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/7G;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 68458
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/7J;->A0V(Lcom/facebook/ads/redexgen/X/7G;)V

    .line 68459
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/cy;->A0U()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 68460
    new-instance v7, Lcom/facebook/ads/redexgen/X/7I;

    .line 68461
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/cy;->A0U()Ljava/lang/String;

    move-result-object v8

    .line 68462
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/cy;->A0S()Ljava/lang/String;

    move-result-object v9

    .line 68463
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/cy;->A0O()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const/4 v4, 0x0

    const/4 v3, 0x6

    const/4 v2, 0x2

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/b1;->A02(III)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/7I;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 68464
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/7J;->A0a(Lcom/facebook/ads/redexgen/X/7I;)V

    goto/16 :goto_0

    .line 68465
    :cond_4
    new-instance v5, Lcom/facebook/ads/redexgen/X/b2;

    invoke-direct {v5, p0, p1}, Lcom/facebook/ads/redexgen/X/b2;-><init>(Lcom/facebook/ads/redexgen/X/b1;Ljava/util/List;)V

    const/4 v4, 0x0

    const/4 v3, 0x6

    const/4 v2, 0x2

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/b1;->A02(III)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/7C;

    invoke-direct {v2, v1, v3}, Lcom/facebook/ads/redexgen/X/7C;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v2}, Lcom/facebook/ads/redexgen/X/7J;->A0U(Lcom/facebook/ads/redexgen/X/7B;Lcom/facebook/ads/redexgen/X/7C;)V

    .line 68466
    return-void
.end method
