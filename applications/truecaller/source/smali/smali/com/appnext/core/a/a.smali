.class public final Lcom/appnext/core/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static eI:Lcom/appnext/core/a/a;


# instance fields
.field private eH:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/appnext/core/o;->az()Lcom/appnext/core/o;

    move-result-object v0

    new-instance v1, Lcom/appnext/core/a/a$1;

    invoke-direct {v1, p0, p1}, Lcom/appnext/core/a/a$1;-><init>(Lcom/appnext/core/a/a;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/appnext/core/o;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/appnext/core/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/a/a;->eH:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    const-string v1, "EN"

    if-eqz p0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    move-object p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 16
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "settings"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "active"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 17
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p3
.end method

.method public static declared-synchronized q(Landroid/content/Context;)Lcom/appnext/core/a/a;
    .locals 2

    const-class v0, Lcom/appnext/core/a/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/appnext/core/a/a;->eI:Lcom/appnext/core/a/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/appnext/core/a/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/appnext/core/a/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/appnext/core/a/a;->eI:Lcom/appnext/core/a/a;

    .line 3
    :cond_0
    sget-object p0, Lcom/appnext/core/a/a;->eI:Lcom/appnext/core/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "EN"

    const-string v1, "{\"EN\":{\"settings\":{\"active\":true,\"len\":12,\"font_size_px\":12,\"font_size_sp\":10},\"new\":{\"Install\":\"Install\",\"Download\":\"Download\",\"Shop\":\"Shop\",\"Sign up\":\"Sign up\",\"Watch\":\"Watch\",\"Join\":\"Join\",\"Start\":\"Start\",\"Subscribe\":\"Subscribe\",\"Add\":\"Add\",\"Search\":\"Search\",\"Share\":\"Share\",\"Get\":\"Get\",\"Book\":\"Book\",\"Play\":\"Play\"},\"existing\":{\"Install\":\"Install\",\"Use\":\"Use\",\"Play\":\"Play\",\"Reserve\":\"Reserve\",\"Buy\":\"Buy\",\"View\":\"View\",\"Log in\":\"Log in\",\"Listen\":\"Listen\",\"Read\":\"Read\",\"Watch\":\"Watch\",\"See more\":\"See more\",\"Find\":\"Find\",\"Book\":\"Book\",\"Chat\":\"Chat\",\"Park\":\"Park\",\"Open\":\"Open\",\"Exercise\":\"Exercise\",\"Optimize\":\"Optimize\"}},\"KO\":{\"settings\":{\"active\":true,\"len\":10,\"font_size_px\":12,\"font_size_sp\":10},\"new\":{\"Install\":\"\uc124\uce58\",\"Download\":\"\ub2e4\uc6b4\ub85c\ub4dc\",\"Shop\":\"\uac00\uac8c\uc5d0\uc11c \ubb3c\uac74\uc744 \uc0ac\ub2e4\",\"Sign up\":\"\ud68c\uc6d0\uac00\uc785\",\"Watch\":\"\ubcf4\ub2e4\",\"Join\":\"\uc785\ud68c\ud558\ub2e4\",\"Start\":\"\uc2dc\uc791\",\"Subscribe\":\"\uad6c\ub3c5\",\"Add\":\"\ucd94\uac00\",\"Search\":\"\uac80\uc0c9\",\"Share\":\"\uacf5\uc720\",\"Get\":\"\uc5bb\ub2e4\",\"Book\":\"\uc608\uc57d\",\"Play\":\"\uc7ac\uc0dd\"},\"existing\":{\"Install\":\"\uc124\uce58\",\"Use\":\"\uc124\uce58\",\"Play\":\"\uc7ac\uc0dd\",\"Reserve\":\"\uc608\uc57d\ud558\uae30\",\"Buy\":\"\uad6c\ub9e4\ud558\uae30\",\"View\":\"\ubc14\ub77c\ubcf4\ub2e4\",\"Log in\":\"\ub85c\uadf8\uc778\",\"Listen\":\"\ub4e3\uae30\",\"Read\":\"\uc77d\uae30\",\"Watch\":\"\ubcf4\uae30\",\"See more\":\"\ub354 \ubcf4\uae30\",\"Find\":\"\ucc3e\uae30\",\"Book\":\"\uc608\uc57d\",\"Chat\":\"\ucc44\ud305\",\"Park\":\"\uc77d\uae30\",\"Open\":\"\uac1c\uc7a5\",\"Exercise\":\"\uc5f0\uc2b5\ud558\ub2e4\",\"Optimize\":\"\ucd5c\uc801\ud654\ud558\uae30\"}}}"

    if-eqz p1, :cond_0

    const-string v2, ""

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/appnext/core/a/a;->eH:Ljava/lang/String;

    invoke-static {v2, p1, p2, p3}, Lcom/appnext/core/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :catchall_0
    :try_start_1
    invoke-static {v1, p1, p2, p3}, Lcom/appnext/core/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    const-string v3, "Translate$translate"

    .line 6
    invoke-static {v3, v2}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :try_start_2
    iget-object v4, p0, Lcom/appnext/core/a/a;->eH:Ljava/lang/String;

    invoke-static {v4, v0, p2, p3}, Lcom/appnext/core/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 8
    :catchall_2
    invoke-static {v3, v2}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :try_start_3
    invoke-static {v1, v0, p2, p3}, Lcom/appnext/core/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 10
    :catchall_3
    invoke-static {v3, v2}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, p3

    .line 11
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "translate language = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], type = ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], key = ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], return = ["

    const-string p2, "]"

    invoke-static {v1, p3, p1, v0, p2}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final aF()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/a/a;->eH:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "{\"EN\":{\"settings\":{\"active\":true,\"len\":12,\"font_size_px\":12,\"font_size_sp\":10},\"new\":{\"Install\":\"Install\",\"Download\":\"Download\",\"Shop\":\"Shop\",\"Sign up\":\"Sign up\",\"Watch\":\"Watch\",\"Join\":\"Join\",\"Start\":\"Start\",\"Subscribe\":\"Subscribe\",\"Add\":\"Add\",\"Search\":\"Search\",\"Share\":\"Share\",\"Get\":\"Get\",\"Book\":\"Book\",\"Play\":\"Play\"},\"existing\":{\"Install\":\"Install\",\"Use\":\"Use\",\"Play\":\"Play\",\"Reserve\":\"Reserve\",\"Buy\":\"Buy\",\"View\":\"View\",\"Log in\":\"Log in\",\"Listen\":\"Listen\",\"Read\":\"Read\",\"Watch\":\"Watch\",\"See more\":\"See more\",\"Find\":\"Find\",\"Book\":\"Book\",\"Chat\":\"Chat\",\"Park\":\"Park\",\"Open\":\"Open\",\"Exercise\":\"Exercise\",\"Optimize\":\"Optimize\"}},\"KO\":{\"settings\":{\"active\":true,\"len\":10,\"font_size_px\":12,\"font_size_sp\":10},\"new\":{\"Install\":\"\uc124\uce58\",\"Download\":\"\ub2e4\uc6b4\ub85c\ub4dc\",\"Shop\":\"\uac00\uac8c\uc5d0\uc11c \ubb3c\uac74\uc744 \uc0ac\ub2e4\",\"Sign up\":\"\ud68c\uc6d0\uac00\uc785\",\"Watch\":\"\ubcf4\ub2e4\",\"Join\":\"\uc785\ud68c\ud558\ub2e4\",\"Start\":\"\uc2dc\uc791\",\"Subscribe\":\"\uad6c\ub3c5\",\"Add\":\"\ucd94\uac00\",\"Search\":\"\uac80\uc0c9\",\"Share\":\"\uacf5\uc720\",\"Get\":\"\uc5bb\ub2e4\",\"Book\":\"\uc608\uc57d\",\"Play\":\"\uc7ac\uc0dd\"},\"existing\":{\"Install\":\"\uc124\uce58\",\"Use\":\"\uc124\uce58\",\"Play\":\"\uc7ac\uc0dd\",\"Reserve\":\"\uc608\uc57d\ud558\uae30\",\"Buy\":\"\uad6c\ub9e4\ud558\uae30\",\"View\":\"\ubc14\ub77c\ubcf4\ub2e4\",\"Log in\":\"\ub85c\uadf8\uc778\",\"Listen\":\"\ub4e3\uae30\",\"Read\":\"\uc77d\uae30\",\"Watch\":\"\ubcf4\uae30\",\"See more\":\"\ub354 \ubcf4\uae30\",\"Find\":\"\ucc3e\uae30\",\"Book\":\"\uc608\uc57d\",\"Chat\":\"\ucc44\ud305\",\"Park\":\"\uc77d\uae30\",\"Open\":\"\uac1c\uc7a5\",\"Exercise\":\"\uc5f0\uc2b5\ud558\ub2e4\",\"Optimize\":\"\ucd5c\uc801\ud654\ud558\uae30\"}}}"

    return-object v0
.end method
