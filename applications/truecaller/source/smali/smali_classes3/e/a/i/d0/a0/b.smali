.class public final Le/a/i/d0/a0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/DTBAdCallback;


# instance fields
.field public final synthetic a:Lq3/a/n;

.field public final synthetic b:Le/a/i/d0/a0/c;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lq3/a/n;Le/a/i/d0/a0/c;Lcom/amazon/device/ads/DTBAdRequest;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/a0/b;->a:Lq3/a/n;

    iput-object p2, p0, Le/a/i/d0/a0/b;->b:Le/a/i/d0/a0/c;

    iput-object p4, p0, Le/a/i/d0/a0/b;->c:Ljava/lang/String;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/amazon/device/ads/AdError;)V
    .locals 4

    const-string v0, "adError"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/d0/a0/b;->a:Lq3/a/n;

    new-instance v1, Le/a/i/d0/i;

    new-instance v2, Le/a/i/d0/l;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Amazon"

    invoke-direct {v2, p1, v3}, Le/a/i/d0/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Le/a/i/d0/i;-><init>(Le/a/i/c/b/a;)V

    invoke-static {v0, v1}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/amazon/device/ads/DTBAdResponse;)V
    .locals 12

    const-string v0, "dtbAdResponse"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/d0/a0/b;->a:Lq3/a/n;

    new-instance v1, Le/a/i/d0/k;

    iget-object v2, p0, Le/a/i/d0/a0/b;->b:Le/a/i/d0/a0/c;

    iget-object v3, p0, Le/a/i/d0/a0/b;->c:Ljava/lang/String;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v4, Le/a/i/d0/h0/e;

    invoke-direct {v4}, Le/a/i/d0/h0/e;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdResponse;->getCrid()Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdResponse;->getImpressionUrl()Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdResponse;->getDTBAds()Ljava/util/List;

    move-result-object v5

    const-string v6, "dtbAds"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "<set-?>"

    .line 7
    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object v5, v4, Le/a/i/d0/h0/e;->j:Ljava/util/List;

    .line 9
    sget-object v5, Lcom/truecaller/ads/mediation/model/AdPartner;->AMAZON:Lcom/truecaller/ads/mediation/model/AdPartner;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object v5, v4, Le/a/i/d0/h0/b;->f:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdResponse;->getDTBAds()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/device/ads/DTBAdSize;

    const/4 v8, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/amazon/device/ads/DTBAdSize;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v8

    .line 13
    :goto_0
    iput-object v5, v4, Le/a/i/d0/h0/b;->h:Ljava/lang/Integer;

    .line 14
    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdResponse;->getDTBAds()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/device/ads/DTBAdSize;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/amazon/device/ads/DTBAdSize;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v8

    .line 15
    :goto_1
    iput-object v5, v4, Le/a/i/d0/h0/b;->i:Ljava/lang/Integer;

    const/16 v5, 0xa

    .line 16
    iput v5, v4, Le/a/i/d0/h0/a;->c:I

    .line 17
    invoke-static {p1}, Lcom/amazon/device/ads/SDKUtilities;->getBidInfo(Lcom/amazon/device/ads/DTBAdResponse;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SDKUtilities.getBidInfo(\u2026s@toAdRouterBannerMapper)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object v5, v4, Le/a/i/d0/h0/b;->e:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lcom/amazon/device/ads/SDKUtilities;->getPricePoint(Lcom/amazon/device/ads/DTBAdResponse;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "SDKUtilities.getPricePoi\u2026s@toAdRouterBannerMapper)"

    invoke-static {p1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, v4, Le/a/i/d0/h0/e;->k:Ljava/lang/String;

    .line 23
    iget-object p1, v2, Le/a/i/d0/a0/c;->b:Le/a/u3/g;

    .line 24
    iget-object v5, p1, Le/a/u3/g;->U3:Le/a/u3/g$a;

    sget-object v6, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v9, 0x101

    aget-object v6, v6, v9

    invoke-virtual {v5, p1, v6}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    check-cast p1, Le/a/u3/i;

    .line 25
    invoke-interface {p1}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    const/4 v9, 0x0

    if-lez v5, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    move v5, v9

    :goto_2
    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move-object p1, v8

    :goto_3
    if-eqz p1, :cond_9

    .line 27
    :try_start_0
    iget-object v2, v2, Le/a/i/d0/a0/c;->a:Le/m/e/k;

    .line 28
    new-instance v5, Le/a/i/d0/a0/a;

    invoke-direct {v5}, Le/a/i/d0/a0/a;-><init>()V

    invoke-virtual {v5}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    const-string v10, "object : TypeToken<T>() {}.type"

    invoke-static {v5, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2, p1, v5}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "this.fromJson(json, typeToken<T>())"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/truecaller/ads/mediation/model/AmazonPriceConfig;

    invoke-virtual {p1}, Lcom/truecaller/ads/mediation/model/AmazonPriceConfig;->getConfig()Ljava/util/List;

    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/truecaller/ads/mediation/model/AmazonPriceData;

    invoke-virtual {v5}, Lcom/truecaller/ads/mediation/model/AmazonPriceData;->getPricePoints()Ljava/lang/String;

    move-result-object v10

    .line 31
    iget-object v11, v4, Le/a/i/d0/h0/e;->k:Ljava/lang/String;

    .line 32
    invoke-static {v10, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v5}, Lcom/truecaller/ads/mediation/model/AmazonPriceData;->getSlotSize()Ljava/lang/String;

    move-result-object v5

    .line 33
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    iget-object v11, v4, Le/a/i/d0/h0/b;->h:Ljava/lang/Integer;

    .line 35
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v11, 0x78

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    iget-object v11, v4, Le/a/i/d0/h0/b;->i:Ljava/lang/Integer;

    .line 37
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 38
    invoke-static {v5, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    goto :goto_4

    :cond_5
    move v5, v9

    :goto_4
    if-eqz v5, :cond_4

    goto :goto_5

    :cond_6
    move-object v2, v8

    :goto_5
    check-cast v2, Lcom/truecaller/ads/mediation/model/AmazonPriceData;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/truecaller/ads/mediation/model/AmazonPriceData;->getCpm()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :cond_7
    move-object p1, v8

    goto :goto_6

    :catchall_0
    move-exception p1

    .line 39
    invoke-static {p1}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 40
    :goto_6
    instance-of v2, p1, Ls1/l$a;

    if-eqz v2, :cond_8

    move-object p1, v8

    .line 41
    :cond_8
    check-cast p1, Ljava/lang/Double;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    goto :goto_7

    :cond_9
    const-wide/16 v5, 0x0

    .line 42
    :goto_7
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Le/a/i/d0/h0/a;->b(Ljava/lang/String;)V

    .line 43
    iget-object p1, v4, Le/a/i/d0/h0/a;->b:Ljava/lang/String;

    .line 44
    invoke-virtual {v4, p1}, Le/a/i/d0/h0/a;->a(Ljava/lang/String;)V

    .line 45
    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object v3, v4, Le/a/i/d0/h0/b;->g:Ljava/lang/String;

    .line 47
    iget-object p1, v4, Le/a/i/d0/h0/a;->a:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 49
    iput-wide v2, v4, Le/a/i/d0/h0/a;->d:D

    const/4 p1, 0x2

    .line 50
    invoke-direct {v1, v4, v8, p1}, Le/a/i/d0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-static {v0, v1}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    return-void
.end method
