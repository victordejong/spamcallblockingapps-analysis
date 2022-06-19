.class public final Lcom/facebook/appevents/m0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/m0/i$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\u0018B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0002J.\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\rH\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0007J\u0008\u0010\u0010\u001a\u00020\u0011H\u0007J\u001a\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J \u0010\u0016\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u000fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;",
        "",
        "()V",
        "APP_EVENTS_IF_AUTO_LOG_SUBS",
        "",
        "TAG",
        "internalAppEventsLogger",
        "Lcom/facebook/appevents/InternalAppEventsLogger;",
        "getPurchaseLoggingParameters",
        "Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;",
        "purchase",
        "skuDetails",
        "extraParameter",
        "",
        "isImplicitPurchaseLoggingEnabled",
        "",
        "logActivateAppEvent",
        "",
        "logActivityTimeSpentEvent",
        "activityName",
        "timeSpentInSeconds",
        "",
        "logPurchase",
        "isSubscription",
        "PurchaseLoggingParameters",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/facebook/appevents/m0/i;

.field public static final b:Lcom/facebook/appevents/d0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/appevents/d0;

    sget-object v1, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/appevents/d0;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/appevents/m0/i;->b:Lcom/facebook/appevents/d0;

    return-void
.end method

.method public static final a()Z
    .locals 2

    .line 1
    sget-object v0, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/facebook/internal/d0;->a:Lcom/facebook/internal/d0;

    invoke-static {v0}, Lcom/facebook/internal/d0;->b(Ljava/lang/String;)Lcom/facebook/internal/c0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Le/j/f0;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-boolean v0, v0, Lcom/facebook/internal/c0;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    const-string v0, "freeTrialPeriod"

    const-string v1, "purchase"

    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "skuDetails"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/facebook/appevents/m0/i;->a()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "introductoryPriceCycles"

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v4}, Landroid/os/Bundle;-><init>(I)V

    const-string v7, "fb_iap_product_id"

    const-string v8, "productId"

    .line 6
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v7, "fb_iap_purchase_time"

    const-string v8, "purchaseTime"

    .line 7
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v7, "fb_iap_purchase_token"

    const-string v8, "purchaseToken"

    .line 8
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v7, "fb_iap_package_name"

    const-string v8, "packageName"

    .line 9
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v7, "fb_iap_product_title"

    const-string v8, "title"

    .line 10
    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v7, "fb_iap_product_description"

    const-string v8, "description"

    .line 11
    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v7, "type"

    .line 13
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "fb_iap_product_type"

    .line 14
    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v8, "subs"

    .line 15
    invoke-static {v7, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "fb_iap_subs_auto_renewing"

    const-string v8, "autoRenewing"

    .line 16
    invoke-virtual {v5, v8, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v5, "fb_iap_subs_period"

    const-string v7, "subscriptionPeriod"

    .line 18
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 19
    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v5, "fb_free_trial_period"

    .line 20
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 21
    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-nez v2, :cond_2

    const-string v2, "fb_intro_price_amount_micros"

    const-string v7, "introductoryPriceAmountMicros"

    .line 24
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 25
    invoke-virtual {v6, v2, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v2, "fb_intro_price_cycles"

    .line 26
    invoke-virtual {v6, v2, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 27
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v5, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 29
    :cond_3
    new-instance v1, Lcom/facebook/appevents/m0/i$a;

    .line 30
    new-instance v2, Ljava/math/BigDecimal;

    const-string v5, "price_amount_micros"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    long-to-double v7, v7

    const-wide v9, 0x412e848000000000L    # 1000000.0

    div-double/2addr v7, v9

    invoke-direct {v2, v7, v8}, Ljava/math/BigDecimal;-><init>(D)V

    const-string v5, "price_currency_code"

    .line 31
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0

    const-string v5, "getInstance(skuDetailsJSON.getString(\"price_currency_code\"))"

    invoke-static {p0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {v1, v2, p0, v6}, Lcom/facebook/appevents/m0/i$a;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_4

    return-void

    :cond_4
    if-eqz p2, :cond_5

    .line 33
    sget-object p0, Lcom/facebook/internal/b0;->a:Lcom/facebook/internal/b0;

    sget-object p0, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->b()Ljava/lang/String;

    move-result-object p0

    const-string p2, "app_events_if_auto_log_subs"

    invoke-static {p2, p0, v3}, Lcom/facebook/internal/b0;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_5

    move p0, v4

    goto :goto_3

    :cond_5
    move p0, v3

    :goto_3
    if-eqz p0, :cond_e

    .line 34
    sget-object p0, Lcom/facebook/appevents/k0/k;->a:Lcom/facebook/appevents/k0/k;

    .line 35
    invoke-static {p0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_5

    :cond_6
    :try_start_1
    const-string p2, "skuDetail"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :try_start_2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez p0, :cond_7

    move p0, v4

    goto :goto_4

    :cond_7
    move p0, v3

    :goto_4
    if-eqz p0, :cond_8

    move v3, v4

    goto :goto_5

    :catchall_0
    move-exception p1

    .line 39
    invoke-static {p1, p0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_1
    :cond_8
    :goto_5
    if-eqz v3, :cond_9

    const-string p0, "StartTrial"

    goto :goto_6

    :cond_9
    const-string p0, "Subscribe"

    :goto_6
    move-object v3, p0

    .line 40
    sget-object p0, Lcom/facebook/appevents/m0/i;->b:Lcom/facebook/appevents/d0;

    .line 41
    iget-object p1, v1, Lcom/facebook/appevents/m0/i$a;->a:Ljava/math/BigDecimal;

    .line 42
    iget-object p2, v1, Lcom/facebook/appevents/m0/i$a;->b:Ljava/util/Currency;

    .line 43
    iget-object v0, v1, Lcom/facebook/appevents/m0/i$a;->c:Landroid/os/Bundle;

    .line 44
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v1, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->c()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 46
    iget-object p0, p0, Lcom/facebook/appevents/d0;->a:Lcom/facebook/appevents/x;

    .line 47
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_8

    :cond_a
    if-eqz p1, :cond_d

    if-nez p2, :cond_b

    goto :goto_7

    :cond_b
    if-nez v0, :cond_c

    .line 48
    :try_start_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_c
    move-object v5, v0

    const-string v0, "fb_currency"

    .line 49
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v6, 0x1

    sget-object p1, Lcom/facebook/appevents/m0/f;->a:Lcom/facebook/appevents/m0/f;

    invoke-static {}, Lcom/facebook/appevents/m0/f;->b()Ljava/util/UUID;

    move-result-object v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/appevents/x;->f(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    goto :goto_8

    .line 51
    :cond_d
    :goto_7
    sget-boolean p0, Le/j/f0;->i:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception p1

    .line 52
    invoke-static {p1, p0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    goto :goto_8

    .line 53
    :cond_e
    sget-object p0, Lcom/facebook/appevents/m0/i;->b:Lcom/facebook/appevents/d0;

    .line 54
    iget-object p1, v1, Lcom/facebook/appevents/m0/i$a;->a:Ljava/math/BigDecimal;

    .line 55
    iget-object p2, v1, Lcom/facebook/appevents/m0/i$a;->b:Ljava/util/Currency;

    .line 56
    iget-object v0, v1, Lcom/facebook/appevents/m0/i$a;->c:Landroid/os/Bundle;

    .line 57
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->c()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 59
    iget-object p0, p0, Lcom/facebook/appevents/d0;->a:Lcom/facebook/appevents/x;

    .line 60
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_8

    .line 61
    :cond_f
    :try_start_4
    invoke-virtual {p0, p1, p2, v0, v4}, Lcom/facebook/appevents/x;->h(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception p1

    .line 62
    invoke-static {p1, p0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_10
    :goto_8
    return-void
.end method
