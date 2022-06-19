.class public final Lcom/hiya/api/zipkin/util/RequestBuilderUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final REQUEST_HEADER_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final REQUEST_HEADER_HIYA_ACCOUNT_USER_ID:Ljava/lang/String; = "X-Hiya-Account-User-ID"

.field private static final REQUEST_HEADER_HIYA_COUNTRY_CODE:Ljava/lang/String; = "X-Hiya-Country-Code"

.field private static final REQUEST_HEADER_HIYA_CURRENT_CARRIER_ID:Ljava/lang/String; = "X-Hiya-Current-Carrier-ID"

.field private static final REQUEST_HEADER_HIYA_DATE:Ljava/lang/String; = "X-Hiya-Date"

.field private static final REQUEST_HEADER_HIYA_DEVICE_INFO:Ljava/lang/String; = "X-Hiya-Device-Info"

.field private static final REQUEST_HEADER_HIYA_DEVICE_LOCALE:Ljava/lang/String; = "X-Hiya-Device-Locale"

.field private static final REQUEST_HEADER_HIYA_DEVICE_USER_ID:Ljava/lang/String; = "X-Hiya-Device-User-ID"

.field private static final REQUEST_HEADER_HIYA_ID:Ljava/lang/String; = "X-Hiya-Request-Id"

.field private static final REQUEST_HEADER_HIYA_INSTALLATION_USER_ID:Ljava/lang/String; = "X-Hiya-Installation-User-ID"

.field private static final REQUEST_HEADER_HIYA_OS_INFO:Ljava/lang/String; = "X-Hiya-Os-Info"

.field private static final REQUEST_HEADER_HIYA_PRODUCT_NAME:Ljava/lang/String; = "X-Hiya-Product-Name"

.field private static final REQUEST_HEADER_HIYA_PRODUCT_VERSION:Ljava/lang/String; = "X-Hiya-Product-Version"

.field private static final REQUEST_HEADER_HIYA_SIM_CARRIER_ID:Ljava/lang/String; = "X-Hiya-Sim-Carrier-ID"

.field private static final REQUEST_HEADER_HIYA_SUB_PRODUCT_NAME:Ljava/lang/String; = "X-Hiya-Subproduct-Name"

.field private static final REQUEST_HEADER_HIYA_USER_PHONE_NUMBER:Ljava/lang/String; = "X-Hiya-User-Phone-Number"


# direct methods
.method public static final headers(Lm/e0$a;Lcom/hiya/api/zipkin/interceptor/HeadersInfo;)V
    .locals 11

    const-string v0, "$this$headers"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headersInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/api/zipkin/util/RequestBuilderUtilsKt$headers$1;

    invoke-direct {v0, p0}, Lcom/hiya/api/zipkin/util/RequestBuilderUtilsKt$headers$1;-><init>(Lm/e0$a;)V

    .line 2
    new-instance v1, Lcom/hiya/api/zipkin/util/RequestBuilderUtilsKt$headers$2;

    invoke-direct {v1, p0}, Lcom/hiya/api/zipkin/util/RequestBuilderUtilsKt$headers$2;-><init>(Lm/e0$a;)V

    .line 3
    invoke-interface {p1}, Lcom/hiya/api/zipkin/interceptor/HeadersInfo;->getClientInfoProvider()Lg/g/a/b/j1/c;

    move-result-object v2

    invoke-interface {v2}, Lg/g/a/b/j1/c;->a()Lg/g/a/b/j1/m;

    move-result-object v2

    .line 4
    invoke-interface {p1}, Lcom/hiya/api/zipkin/interceptor/HeadersInfo;->getClientInfoProvider()Lg/g/a/b/j1/c;

    move-result-object v3

    invoke-interface {v3}, Lg/g/a/b/j1/c;->b()Lg/g/a/b/j1/i;

    move-result-object v3

    const-string v4, "headersInfo.getClientInf\u2026().productionInfoProvider"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Lcom/hiya/api/zipkin/interceptor/HeadersInfo;->getClientInfoProvider()Lg/g/a/b/j1/c;

    move-result-object v4

    invoke-interface {v4}, Lg/g/a/b/j1/c;->g()Lg/g/a/b/j1/g;

    move-result-object v4

    .line 6
    invoke-interface {p1}, Lcom/hiya/api/zipkin/interceptor/HeadersInfo;->getNetworkCarrierId()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-interface {p1}, Lcom/hiya/api/zipkin/interceptor/HeadersInfo;->getSimCarrierId()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UUID.randomUUID().toString()"

    invoke-static {v6, v7}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "X-Hiya-Request-Id"

    invoke-virtual {p0, v7, v6}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    const-string v6, "userInfoProvider"

    .line 9
    invoke-static {v2, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lg/g/a/b/j1/m;->b()Ljava/lang/String;

    move-result-object v6

    const-string v7, "userInfoProvider.userLanguageTag"

    invoke-static {v6, v7}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    .line 10
    invoke-interface {v2}, Lg/g/a/b/j1/m;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "Accept-Language"

    invoke-virtual {p0, v7, v6}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 11
    :cond_1
    invoke-static {}, Lg/g/a/e/a;->a()Ljava/util/Locale;

    move-result-object v6

    .line 12
    invoke-static {}, Lcom/google/common/base/d;->c()Lcom/google/common/base/d;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/google/common/base/d;->i(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 13
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lg/g/a/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    const-string v10, "if (CharMatcher.ascii().\u2026tsToAscii(locale.country)"

    .line 14
    invoke-static {v7, v10}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "X-Hiya-Country-Code"

    .line 15
    invoke-virtual {p0, v10, v7}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 16
    invoke-virtual {v0}, Lcom/hiya/api/zipkin/util/RequestBuilderUtilsKt$headers$1;->invoke()V

    .line 17
    invoke-virtual {v1}, Lcom/hiya/api/zipkin/util/RequestBuilderUtilsKt$headers$2;->invoke()V

    .line 18
    invoke-static {}, Lcom/google/common/base/d;->c()Lcom/google/common/base/d;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/d;->i(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/g/a/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string v1, "if (CharMatcher.ascii().\u2026sToAscii(locale.language)"

    .line 20
    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "X-Hiya-Device-Locale"

    .line 21
    invoke-virtual {p0, v1, v0}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-Hiya-Date"

    invoke-virtual {p0, v1, v0}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 23
    invoke-interface {v3}, Lg/g/a/b/j1/i;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "productInfoProvider.productName"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_5

    .line 24
    invoke-interface {v3}, Lg/g/a/b/j1/i;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "X-Hiya-Product-Name"

    invoke-virtual {p0, v1, v0}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 25
    :cond_5
    invoke-interface {v3}, Lg/g/a/b/j1/i;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "productInfoProvider.productVersionCode"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_7

    .line 26
    invoke-interface {v3}, Lg/g/a/b/j1/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "X-Hiya-Product-Version"

    invoke-virtual {p0, v1, v0}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 27
    :cond_7
    invoke-interface {v3}, Lg/g/a/b/j1/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "productInfoProvider.subProductName"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_9

    .line 28
    invoke-interface {v3}, Lg/g/a/b/j1/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "X-Hiya-Subproduct-Name"

    invoke-virtual {p0, v1, v0}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    :cond_9
    const-string v0, "idProvider"

    .line 29
    invoke-static {v4, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lg/g/a/b/j1/g;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v0, 0x1

    :goto_7
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 30
    invoke-interface {v4}, Lg/g/a/b/j1/g;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v3, "idProvider.firebaseAccountId!!"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "X-Hiya-Account-User-ID"

    invoke-virtual {p0, v3, v0}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    goto :goto_8

    :cond_c
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 31
    :cond_d
    :goto_8
    invoke-interface {v4}, Lg/g/a/b/j1/g;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_9

    :cond_e
    const/4 v0, 0x0

    goto :goto_a

    :cond_f
    :goto_9
    const/4 v0, 0x1

    :goto_a
    if-nez v0, :cond_10

    .line 32
    invoke-interface {v4}, Lg/g/a/b/j1/g;->d()Ljava/lang/String;

    move-result-object v0

    const-string v3, "idProvider.installationId"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "X-Hiya-Installation-User-ID"

    invoke-virtual {p0, v3, v0}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 33
    :cond_10
    invoke-interface {v4}, Lg/g/a/b/j1/g;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_b

    :cond_11
    const/4 v0, 0x0

    goto :goto_c

    :cond_12
    :goto_b
    const/4 v0, 0x1

    :goto_c
    if-nez v0, :cond_14

    .line 34
    invoke-interface {v4}, Lg/g/a/b/j1/g;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v3, "idProvider.deviceUserId!!"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "X-Hiya-Device-User-ID"

    invoke-virtual {p0, v3, v0}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    goto :goto_d

    :cond_13
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 35
    :cond_14
    :goto_d
    invoke-interface {v2}, Lg/g/a/b/j1/m;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_e

    :cond_15
    const/4 v0, 0x0

    goto :goto_f

    :cond_16
    :goto_e
    const/4 v0, 0x1

    :goto_f
    if-nez v0, :cond_18

    .line 36
    invoke-interface {v2}, Lg/g/a/b/j1/m;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v1, "userInfoProvider.userNumber!!"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "X-Hiya-User-Phone-Number"

    invoke-virtual {p0, v1, v0}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    goto :goto_10

    :cond_17
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 37
    :cond_18
    :goto_10
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_11

    :cond_19
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_1a

    const-string v0, "X-Hiya-Current-Carrier-ID"

    .line 38
    invoke-virtual {p0, v0, v5}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 39
    :cond_1a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1b

    goto :goto_12

    :cond_1b
    const/4 v8, 0x0

    :goto_12
    if-eqz v8, :cond_1c

    const-string v0, "X-Hiya-Sim-Carrier-ID"

    .line 40
    invoke-virtual {p0, v0, p1}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    :cond_1c
    return-void
.end method
