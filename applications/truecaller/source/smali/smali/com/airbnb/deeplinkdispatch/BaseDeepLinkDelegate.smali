.class public Lcom/airbnb/deeplinkdispatch/BaseDeepLinkDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "DeepLinkDelegate"


# instance fields
.field public final loaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/deeplinkdispatch/Parser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/deeplinkdispatch/Parser;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/airbnb/deeplinkdispatch/BaseDeepLinkDelegate;->loaders:Ljava/util/List;

    return-void
.end method

.method private static createResultAndNotify(Landroid/content/Context;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/deeplinkdispatch/DeepLinkResult;
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 1
    invoke-static {p0, v0, p2, p3, p4}, Lcom/airbnb/deeplinkdispatch/BaseDeepLinkDelegate;->notifyListener(Landroid/content/Context;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/airbnb/deeplinkdispatch/DeepLinkResult;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p4}, Lcom/airbnb/deeplinkdispatch/DeepLinkResult;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private findEntry(Ljava/lang/String;)Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/deeplinkdispatch/BaseDeepLinkDelegate;->loaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/deeplinkdispatch/Parser;

    .line 2
    invoke-interface {v1, p1}, Lcom/airbnb/deeplinkdispatch/Parser;->parseUri(Ljava/lang/String;)Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static notifyListener(Landroid/content/Context;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.airbnb.deeplinkdispatch.DEEPLINK_ACTION"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ""

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    const-string v2, "com.airbnb.deeplinkdispatch.EXTRA_URI"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, v1

    :goto_1
    const-string p2, "com.airbnb.deeplinkdispatch.EXTRA_URI_TEMPLATE"

    .line 4
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    xor-int/lit8 p2, p1, 0x1

    const-string p3, "com.airbnb.deeplinkdispatch.EXTRA_SUCCESSFUL"

    .line 5
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_2

    const-string p1, "com.airbnb.deeplinkdispatch.EXTRA_ERROR_MESSAGE"

    .line 6
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    :cond_2
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object p0

    invoke-virtual {p0, v0}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public dispatchFrom(Landroid/app/Activity;)Lcom/airbnb/deeplinkdispatch/DeepLinkResult;
    .locals 1

    const-string v0, "activity == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/deeplinkdispatch/BaseDeepLinkDelegate;->dispatchFrom(Landroid/app/Activity;Landroid/content/Intent;)Lcom/airbnb/deeplinkdispatch/DeepLinkResult;

    move-result-object p1

    return-object p1
.end method

.method public dispatchFrom(Landroid/app/Activity;Landroid/content/Intent;)Lcom/airbnb/deeplinkdispatch/DeepLinkResult;
    .locals 13

    const-string v0, " intents length == 0"

    const-string v1, "Could not deep link to method: "

    const-string v2, "activity == null"

    .line 3
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "sourceIntent == null"

    .line 4
    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const-string p2, "No Uri in given activity\'s intent."

    .line 6
    invoke-static {p1, v4, v3, v3, p2}, Lcom/airbnb/deeplinkdispatch/BaseDeepLinkDelegate;->createResultAndNotify(Landroid/content/Context;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/deeplinkdispatch/DeepLinkResult;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-direct {p0, v5}, Lcom/airbnb/deeplinkdispatch/BaseDeepLinkDelegate;->findEntry(Ljava/lang/String;)Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 9
    invoke-static {v5}, Lcom/airbnb/deeplinkdispatch/DeepLinkUri;->parse(Ljava/lang/String;)Lcom/airbnb/deeplinkdispatch/DeepLinkUri;

    move-result-object v7

    .line 10
    invoke-virtual {v6, v5}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->getParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 11
    invoke-virtual {v7}, Lcom/airbnb/deeplinkdispatch/DeepLinkUri;->queryParameterNames()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 12
    invoke-virtual {v7, v9}, Lcom/airbnb/deeplinkdispatch/DeepLinkUri;->queryParameterValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 13
    invoke-interface {v5, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {v5, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "deep_link_uri"

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 17
    new-instance v7, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    .line 18
    :cond_3
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 19
    :goto_1
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 21
    :cond_4
    :try_start_0
    invoke-virtual {v6}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->getActivityClass()Ljava/lang/Class;

    move-result-object v5

    .line 22
    invoke-virtual {v6}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->getType()Lcom/airbnb/deeplinkdispatch/DeepLinkEntry$Type;

    move-result-object v8

    sget-object v9, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry$Type;->CLASS:Lcom/airbnb/deeplinkdispatch/DeepLinkEntry$Type;

    const/4 v10, 0x1

    if-ne v8, v9, :cond_5

    .line 23
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_3

    .line 24
    :cond_5
    :try_start_1
    invoke-virtual {v6}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->getMethod()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v4

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 25
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    const-class v11, Ln3/k/a/c0;

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    new-array v9, v10, [Ljava/lang/Object;

    aput-object p1, v9, v4

    .line 26
    invoke-virtual {v8, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ln3/k/a/c0;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 27
    :try_start_2
    invoke-virtual {v8}, Ln3/k/a/c0;->c()I

    move-result v3

    if-nez v3, :cond_6

    .line 28
    invoke-virtual {v6}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->getUriTemplate()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v6}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->getMethod()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 30
    invoke-static {p1, v4, v2, v3, v9}, Lcom/airbnb/deeplinkdispatch/BaseDeepLinkDelegate;->createResultAndNotify(Landroid/content/Context;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/deeplinkdispatch/DeepLinkResult;

    move-result-object p1

    return-object p1

    .line 31
    :cond_6
    invoke-virtual {v8}, Ln3/k/a/c0;->c()I

    move-result v3

    sub-int/2addr v3, v10

    .line 32
    iget-object v9, v8, Ln3/k/a/c0;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_5

    :catch_0
    move-object v3, v8

    goto :goto_4

    :cond_7
    :try_start_3
    new-array v9, v10, [Ljava/lang/Object;

    aput-object p1, v9, v4

    .line 33
    invoke-virtual {v8, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v8

    :goto_3
    move-object v8, v3

    move-object v3, v0

    goto :goto_5

    .line 34
    :catch_1
    :goto_4
    :try_start_4
    invoke-virtual {v6}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->getMethod()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v11, v9, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    aput-object v12, v11, v4

    const-class v12, Landroid/os/Bundle;

    aput-object v12, v11, v10

    invoke-virtual {v5, v8, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 35
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Ln3/k/a/c0;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    new-array v3, v9, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v7, v3, v10

    .line 36
    invoke-virtual {v8, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/k/a/c0;

    .line 37
    invoke-virtual {v3}, Ln3/k/a/c0;->c()I

    move-result v5

    if-nez v5, :cond_8

    .line 38
    invoke-virtual {v6}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->getUriTemplate()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v6}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {p1, v4, v2, p2, v0}, Lcom/airbnb/deeplinkdispatch/BaseDeepLinkDelegate;->createResultAndNotify(Landroid/content/Context;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/deeplinkdispatch/DeepLinkResult;

    move-result-object p1

    return-object p1

    .line 41
    :cond_8
    invoke-virtual {v3}, Ln3/k/a/c0;->c()I

    move-result v0

    sub-int/2addr v0, v10

    .line 42
    iget-object v5, v3, Ln3/k/a/c0;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_3

    :cond_9
    new-array v0, v9, [Ljava/lang/Object;

    aput-object p1, v0, v4

    aput-object v7, v0, v10

    .line 43
    invoke-virtual {v8, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_3

    .line 44
    :goto_5
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    :cond_a
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_b

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 48
    :cond_b
    invoke-virtual {v3, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p2, "is_deep_link_flag"

    .line 49
    invoke-virtual {v3, p2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "android.intent.extra.REFERRER"

    .line 50
    invoke-virtual {v3, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p1}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_c

    const/high16 p2, 0x2000000

    .line 52
    invoke-virtual {v3, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_c
    if-eqz v8, :cond_d

    .line 53
    invoke-virtual {v8}, Ln3/k/a/c0;->e()V

    goto :goto_6

    .line 54
    :cond_d
    invoke-virtual {p1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 55
    :goto_6
    invoke-virtual {v6}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->getUriTemplate()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, v10, v2, p2, v0}, Lcom/airbnb/deeplinkdispatch/BaseDeepLinkDelegate;->createResultAndNotify(Landroid/content/Context;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/deeplinkdispatch/DeepLinkResult;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_2

    return-object p1

    .line 56
    :catch_2
    invoke-virtual {v6}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->getUriTemplate()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {p1, v4, v2, p2, v0}, Lcom/airbnb/deeplinkdispatch/BaseDeepLinkDelegate;->createResultAndNotify(Landroid/content/Context;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/deeplinkdispatch/DeepLinkResult;

    move-result-object p1

    return-object p1

    .line 58
    :catch_3
    invoke-virtual {v6}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->getUriTemplate()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {p1, v4, v2, p2, v0}, Lcom/airbnb/deeplinkdispatch/BaseDeepLinkDelegate;->createResultAndNotify(Landroid/content/Context;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/deeplinkdispatch/DeepLinkResult;

    move-result-object p1

    return-object p1

    .line 60
    :catch_4
    invoke-virtual {v6}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->getUriTemplate()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Deep link to non-existent method: "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {p1, v4, v2, p2, v0}, Lcom/airbnb/deeplinkdispatch/BaseDeepLinkDelegate;->createResultAndNotify(Landroid/content/Context;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/deeplinkdispatch/DeepLinkResult;

    move-result-object p1

    return-object p1

    :cond_e
    const-string p2, "No registered entity to handle deep link: "

    .line 62
    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 63
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 64
    invoke-static {p1, v4, v2, v0, p2}, Lcom/airbnb/deeplinkdispatch/BaseDeepLinkDelegate;->createResultAndNotify(Landroid/content/Context;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/deeplinkdispatch/DeepLinkResult;

    move-result-object p1

    return-object p1
.end method

.method public supportsUri(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/airbnb/deeplinkdispatch/BaseDeepLinkDelegate;->findEntry(Ljava/lang/String;)Lcom/airbnb/deeplinkdispatch/DeepLinkEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
