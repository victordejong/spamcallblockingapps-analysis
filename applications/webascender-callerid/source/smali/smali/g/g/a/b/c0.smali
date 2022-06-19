.class public Lg/g/a/b/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)Lm/c0$a;
    .locals 2

    .line 1
    new-instance v0, Lm/c0$a;

    invoke-direct {v0}, Lm/c0$a;-><init>()V

    new-instance v1, Lg/d/a/a/a;

    invoke-direct {v1, p1}, Lg/d/a/a/a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, v1}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    return-object v0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.hiya.axolotl.hiyaevents"

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method A(Lm/c0;Lg/g/a/b/j1/a;)Lretrofit2/Retrofit;
    .locals 2

    .line 1
    invoke-interface {p2}, Lg/g/a/b/j1/a;->a()Ljava/util/Map;

    move-result-object p2

    sget-object v0, Lg/g/a/b/j1/n/b;->CALLER_PROFILE:Lg/g/a/b/j1/n/b;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/g/a/b/j1/n/c;

    .line 2
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 3
    invoke-static {}, Lg/g/a/a/i/n/j;->create()Lretrofit2/CallAdapter$Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 4
    invoke-static {}, Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;->create()Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 5
    invoke-static {p2}, Lg/g/a/b/j1/n/a;->a(Lg/g/a/b/j1/n/c;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Lretrofit2/Retrofit$Builder;->client(Lm/c0;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    return-object p1
.end method

.method B(Lcom/google/gson/f;Lm/c0;Lg/g/a/b/j1/a;)Lretrofit2/Retrofit;
    .locals 1

    .line 1
    invoke-interface {p3}, Lg/g/a/b/j1/a;->a()Ljava/util/Map;

    move-result-object p3

    sget-object v0, Lg/g/a/b/j1/n/b;->NOTIFICATIONS:Lg/g/a/b/j1/n/b;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/g/a/b/j1/n/c;

    .line 2
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 3
    invoke-static {p1}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/f;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p1

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 4
    invoke-static {}, Lg/g/a/a/i/n/j;->create()Lretrofit2/CallAdapter$Factory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 5
    invoke-static {}, Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;->create()Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 6
    invoke-static {p3}, Lg/g/a/b/j1/n/a;->a(Lg/g/a/b/j1/n/c;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    invoke-virtual {p1, p3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->client(Lm/c0;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    return-object p1
.end method

.method C(Lcom/google/gson/f;Lm/c0;Lg/g/a/b/j1/a;)Lretrofit2/Retrofit;
    .locals 1

    .line 1
    invoke-interface {p3}, Lg/g/a/b/j1/a;->a()Ljava/util/Map;

    move-result-object p3

    sget-object v0, Lg/g/a/b/j1/n/b;->PHONES:Lg/g/a/b/j1/n/b;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/g/a/b/j1/n/c;

    .line 2
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 3
    invoke-static {p1}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/f;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p1

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 4
    invoke-static {}, Lg/g/a/a/i/n/j;->create()Lretrofit2/CallAdapter$Factory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 5
    invoke-static {}, Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;->create()Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 6
    invoke-static {p3}, Lg/g/a/b/j1/n/a;->a(Lg/g/a/b/j1/n/c;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    invoke-virtual {p1, p3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->client(Lm/c0;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    return-object p1
.end method

.method D(Lcom/google/gson/f;Lm/c0;Lg/g/a/b/j1/a;)Lretrofit2/Retrofit;
    .locals 1

    .line 1
    invoke-interface {p3}, Lg/g/a/b/j1/a;->a()Ljava/util/Map;

    move-result-object p3

    sget-object v0, Lg/g/a/b/j1/n/b;->REPORTS:Lg/g/a/b/j1/n/b;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/g/a/b/j1/n/c;

    .line 2
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 3
    invoke-static {p1}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/f;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p1

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 4
    invoke-static {}, Lg/g/a/a/i/n/j;->create()Lretrofit2/CallAdapter$Factory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 5
    invoke-static {}, Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;->create()Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 6
    invoke-static {p3}, Lg/g/a/b/j1/n/a;->a(Lg/g/a/b/j1/n/c;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    invoke-virtual {p1, p3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->client(Lm/c0;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    return-object p1
.end method

.method c(Landroid/content/Context;)Lg/g/a/a/k/a;
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/a/k/a;

    invoke-direct {v0, p1}, Lg/g/a/a/k/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method d(Landroid/content/Context;Lg/g/a/b/j1/m;Lg/g/a/b/j1/i;Lg/g/a/b/j1/g;Lg/g/a/a/h/g;)Lg/g/a/b/j1/d;
    .locals 7

    .line 1
    new-instance v6, Lg/g/a/a/k/b;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lg/g/a/a/k/b;-><init>(Landroid/content/Context;Lg/g/a/b/j1/m;Lg/g/a/b/j1/i;Lg/g/a/b/j1/g;Lg/g/a/a/h/g;)V

    return-object v6
.end method

.method e(Landroid/content/Context;)Lg/g/a/a/h/c;
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/a/h/d;

    invoke-direct {v0, p1}, Lg/g/a/a/h/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method f()Lcom/google/gson/f;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/gson/g;

    invoke-direct {v0}, Lcom/google/gson/g;-><init>()V

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/gson/g;->g(Ljava/lang/String;)Lcom/google/gson/g;

    new-instance v1, Lg/g/a/a/i/n/f;

    invoke-direct {v1}, Lg/g/a/a/i/n/f;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/gson/g;->e(Lcom/google/gson/u;)Lcom/google/gson/g;

    .line 4
    invoke-virtual {v0}, Lcom/google/gson/g;->b()Lcom/google/gson/f;

    move-result-object v0

    return-object v0
.end method

.method g()Lcom/google/gson/f;
    .locals 4

    .line 1
    const-class v0, Lg/g/a/a/i/l/p;

    const-string v1, "type"

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v1, v2}, Lg/g/a/a/i/n/i;->of(Ljava/lang/Class;Ljava/lang/String;Z)Lg/g/a/a/i/n/i;

    move-result-object v0

    const-class v1, Lg/g/a/a/i/l/r;

    const-string v2, "WordResult"

    .line 3
    invoke-virtual {v0, v1, v2}, Lg/g/a/a/i/n/i;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lg/g/a/a/i/n/i;

    move-result-object v0

    const-class v1, Lg/g/a/a/i/l/o;

    const-string v2, "BusinessResult"

    .line 4
    invoke-virtual {v0, v1, v2}, Lg/g/a/a/i/n/i;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lg/g/a/a/i/n/i;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/gson/g;

    invoke-direct {v1}, Lcom/google/gson/g;-><init>()V

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/gson/g;->g(Ljava/lang/String;)Lcom/google/gson/g;

    const-class v2, Lg/g/a/a/i/o/n;

    new-instance v3, Lg/g/a/a/i/n/k;

    invoke-direct {v3}, Lg/g/a/a/i/n/k;-><init>()V

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/g;->d(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/g;

    const-class v2, Lg/g/a/a/i/o/m;

    new-instance v3, Lg/g/a/a/i/n/h;

    invoke-direct {v3}, Lg/g/a/a/i/n/h;-><init>()V

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/g;->d(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/g;

    const-class v2, Lg/g/a/a/i/o/i;

    new-instance v3, Lg/g/a/a/i/n/g;

    invoke-direct {v3}, Lg/g/a/a/i/n/g;-><init>()V

    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/g;->f(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/g;

    new-instance v2, Lg/g/a/a/i/n/f;

    invoke-direct {v2}, Lg/g/a/a/i/n/f;-><init>()V

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/gson/g;->e(Lcom/google/gson/u;)Lcom/google/gson/g;

    .line 11
    invoke-virtual {v1, v0}, Lcom/google/gson/g;->e(Lcom/google/gson/u;)Lcom/google/gson/g;

    .line 12
    invoke-virtual {v1}, Lcom/google/gson/g;->b()Lcom/google/gson/f;

    move-result-object v0

    return-object v0
.end method

.method h(Lg/g/a/a/h/a;Lg/g/a/b/j1/i;Lg/g/a/d/a;Lg/g/a/b/j1/a;Lg/g/a/b/j1/k;)Lg/g/a/a/k/c;
    .locals 1

    .line 1
    invoke-interface {p4}, Lg/g/a/b/j1/a;->a()Ljava/util/Map;

    move-result-object p4

    sget-object v0, Lg/g/a/b/j1/n/b;->AUTH:Lg/g/a/b/j1/n/b;

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lg/g/a/b/j1/n/c;

    if-eqz p4, :cond_1

    .line 2
    invoke-virtual {p4}, Lg/g/a/b/j1/n/c;->b()Ljava/lang/String;

    move-result-object p4

    const-string v0, "v1"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "V1 Auth is no longer supported.  Use V2 instead."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-interface {p2}, Lg/g/a/b/j1/i;->d()Ljava/lang/String;

    move-result-object p2

    const-string p4, "Hiya-Aegis-Android"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    new-instance p1, Lg/g/a/a/k/i;

    invoke-direct {p1, p3, p5}, Lg/g/a/a/k/i;-><init>(Lg/g/a/d/a;Lg/g/a/b/j1/k;)V

    return-object p1

    .line 6
    :cond_2
    new-instance p2, Lg/g/a/a/k/k/a;

    invoke-direct {p2, p1}, Lg/g/a/a/k/k/a;-><init>(Lg/g/a/a/h/a;)V

    return-object p2
.end method

.method i(Lg/g/a/b/j1/d;)Lg/g/a/a/k/d;
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/a/k/d;

    invoke-direct {v0, p1}, Lg/g/a/a/k/d;-><init>(Lg/g/a/b/j1/d;)V

    return-object v0
.end method

.method j(Lcom/google/gson/f;)Lg/g/a/c/a;
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/c/a;

    invoke-direct {v0, p1}, Lg/g/a/c/a;-><init>(Lcom/google/gson/f;)V

    return-object v0
.end method

.method k(Landroid/content/Context;Lg/g/a/c/a;)Lg/g/a/c/c/a;
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/c/c/a;

    invoke-direct {v0, p1, p2}, Lg/g/a/c/c/a;-><init>(Landroid/content/Context;Lg/g/a/c/a;)V

    return-object v0
.end method

.method l(Landroid/content/SharedPreferences;)Lg/g/a/a/k/h;
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/a/k/h;

    invoke-direct {v0, p1}, Lg/g/a/a/k/h;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method m(Lg/g/a/b/j1/a;)Lg/g/a/a/k/j;
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/a/k/j;

    invoke-direct {v0, p1}, Lg/g/a/a/k/j;-><init>(Lg/g/a/b/j1/a;)V

    return-object v0
.end method

.method n()Lm/l0/a;
    .locals 2

    .line 1
    new-instance v0, Lm/l0/a;

    invoke-direct {v0}, Lm/l0/a;-><init>()V

    .line 2
    sget-object v1, Lm/l0/a$a;->BODY:Lm/l0/a$a;

    invoke-virtual {v0, v1}, Lm/l0/a;->c(Lm/l0/a$a;)Lm/l0/a;

    return-object v0
.end method

.method o(Lg/g/a/a/k/d;Lg/g/a/a/k/c;Lg/g/a/a/k/j;Lg/g/a/a/k/h;Lm/l0/a;Lg/g/a/a/k/e;Lg/g/a/a/k/a;Lg/g/a/a/k/k/b;Lg/g/a/a/k/k/c;Lg/g/a/c/c/a;Landroid/content/SharedPreferences;Lg/g/a/b/j1/j;Landroid/content/Context;)Lm/c0;
    .locals 2

    .line 1
    invoke-direct {p0, p13}, Lg/g/a/b/c0;->a(Landroid/content/Context;)Lm/c0$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lm/c0$a;->k(Z)Lm/c0$a;

    invoke-virtual {v0, v1}, Lm/c0$a;->j(Z)Lm/c0$a;

    .line 2
    invoke-virtual {v0, p7}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 3
    invoke-virtual {v0, p8}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 4
    invoke-virtual {v0, p9}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 5
    invoke-virtual {v0, p1}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    new-instance p1, Lg/g/a/a/k/g;

    invoke-direct {p1, p11}, Lg/g/a/a/k/g;-><init>(Landroid/content/SharedPreferences;)V

    .line 6
    invoke-virtual {v0, p1}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 7
    invoke-virtual {v0, p3}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 8
    invoke-virtual {v0, p2}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 9
    invoke-virtual {v0, p4}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    new-instance p1, Lg/g/a/e/e/e;

    invoke-direct {p1}, Lg/g/a/e/e/e;-><init>()V

    .line 10
    invoke-virtual {v0, p1}, Lm/c0$a;->i(Lm/u;)Lm/c0$a;

    .line 11
    invoke-interface {p12}, Lg/g/a/b/j1/j;->b()I

    move-result p1

    int-to-long p1, p1

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Lm/c0$a;->e(JLjava/util/concurrent/TimeUnit;)Lm/c0$a;

    .line 12
    invoke-interface {p12}, Lg/g/a/b/j1/j;->a()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2, p3}, Lm/c0$a;->f(JLjava/util/concurrent/TimeUnit;)Lm/c0$a;

    .line 13
    invoke-interface {p12}, Lg/g/a/b/j1/j;->c()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2, p3}, Lm/c0$a;->R(JLjava/util/concurrent/TimeUnit;)Lm/c0$a;

    .line 14
    invoke-interface {p12}, Lg/g/a/b/j1/j;->d()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2, p3}, Lm/c0$a;->P(JLjava/util/concurrent/TimeUnit;)Lm/c0$a;

    .line 15
    sget-object p1, Lcom/hiya/client/support/logging/a;->c:Lcom/hiya/client/support/logging/a;

    invoke-virtual {p1}, Lcom/hiya/client/support/logging/a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {v0, p5}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 17
    invoke-virtual {v0, p6}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 18
    :cond_0
    invoke-direct {p0, p13}, Lg/g/a/b/c0;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {v0, p10}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 20
    :cond_1
    invoke-virtual {v0}, Lm/c0$a;->c()Lm/c0;

    move-result-object p1

    return-object p1
.end method

.method p(Lg/g/a/a/k/d;Lg/g/a/a/k/j;Lm/l0/a;Lg/g/a/a/k/a;Landroid/content/SharedPreferences;Lg/g/a/a/k/h;Landroid/content/Context;)Lm/c0;
    .locals 1

    .line 1
    invoke-direct {p0, p7}, Lg/g/a/b/c0;->a(Landroid/content/Context;)Lm/c0$a;

    move-result-object p7

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p7, v0}, Lm/c0$a;->j(Z)Lm/c0$a;

    invoke-virtual {p7, v0}, Lm/c0$a;->k(Z)Lm/c0$a;

    .line 3
    invoke-virtual {p7, p4}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 4
    invoke-virtual {p7, p1}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    new-instance p1, Lg/g/a/a/k/g;

    invoke-direct {p1, p5}, Lg/g/a/a/k/g;-><init>(Landroid/content/SharedPreferences;)V

    .line 5
    invoke-virtual {p7, p1}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 6
    invoke-virtual {p7, p2}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 7
    invoke-virtual {p7, p6}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p4, 0xa

    .line 8
    invoke-virtual {p7, p4, p5, p1}, Lm/c0$a;->f(JLjava/util/concurrent/TimeUnit;)Lm/c0$a;

    .line 9
    invoke-virtual {p7, p4, p5, p1}, Lm/c0$a;->R(JLjava/util/concurrent/TimeUnit;)Lm/c0$a;

    .line 10
    invoke-virtual {p7, p4, p5, p1}, Lm/c0$a;->P(JLjava/util/concurrent/TimeUnit;)Lm/c0$a;

    .line 11
    sget-object p1, Lcom/hiya/client/support/logging/a;->c:Lcom/hiya/client/support/logging/a;

    invoke-virtual {p1}, Lcom/hiya/client/support/logging/a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p7, p3}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 13
    :cond_0
    invoke-virtual {p7}, Lm/c0$a;->c()Lm/c0;

    move-result-object p1

    return-object p1
.end method

.method q(Lm/l0/a;Landroid/content/Context;)Lm/c0;
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lg/g/a/b/c0;->a(Landroid/content/Context;)Lm/c0$a;

    move-result-object p2

    .line 2
    sget-object v0, Lcom/hiya/client/support/logging/a;->c:Lcom/hiya/client/support/logging/a;

    invoke-virtual {v0}, Lcom/hiya/client/support/logging/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2, p1}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 4
    :cond_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x3c

    invoke-virtual {p2, v0, v1, p1}, Lm/c0$a;->f(JLjava/util/concurrent/TimeUnit;)Lm/c0$a;

    .line 5
    invoke-virtual {p2, v0, v1, p1}, Lm/c0$a;->R(JLjava/util/concurrent/TimeUnit;)Lm/c0$a;

    .line 6
    invoke-virtual {p2, v0, v1, p1}, Lm/c0$a;->P(JLjava/util/concurrent/TimeUnit;)Lm/c0$a;

    new-instance p1, Lg/g/a/e/e/i;

    invoke-direct {p1}, Lg/g/a/e/e/i;-><init>()V

    .line 7
    invoke-virtual {p2, p1}, Lm/c0$a;->i(Lm/u;)Lm/c0$a;

    .line 8
    invoke-virtual {p2}, Lm/c0$a;->c()Lm/c0;

    move-result-object p1

    return-object p1
.end method

.method r(Lm/l0/a;Landroid/content/Context;)Lm/c0;
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lg/g/a/b/c0;->a(Landroid/content/Context;)Lm/c0$a;

    move-result-object p2

    .line 2
    sget-object v0, Lcom/hiya/client/support/logging/a;->c:Lcom/hiya/client/support/logging/a;

    invoke-virtual {v0}, Lcom/hiya/client/support/logging/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2, p1}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 4
    :cond_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x3c

    invoke-virtual {p2, v0, v1, p1}, Lm/c0$a;->f(JLjava/util/concurrent/TimeUnit;)Lm/c0$a;

    .line 5
    invoke-virtual {p2, v0, v1, p1}, Lm/c0$a;->R(JLjava/util/concurrent/TimeUnit;)Lm/c0$a;

    .line 6
    invoke-virtual {p2, v0, v1, p1}, Lm/c0$a;->P(JLjava/util/concurrent/TimeUnit;)Lm/c0$a;

    .line 7
    invoke-virtual {p2}, Lm/c0$a;->c()Lm/c0;

    move-result-object p1

    return-object p1
.end method

.method s(Lcom/google/gson/f;Lm/c0;Lg/g/a/b/j1/a;)Lretrofit2/Retrofit;
    .locals 1

    .line 1
    invoke-interface {p3}, Lg/g/a/b/j1/a;->a()Ljava/util/Map;

    move-result-object p3

    sget-object v0, Lg/g/a/b/j1/n/b;->DIRECTORY:Lg/g/a/b/j1/n/b;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/g/a/b/j1/n/c;

    .line 2
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 3
    invoke-static {p1}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/f;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p1

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 4
    invoke-static {}, Lg/g/a/a/i/n/j;->create()Lretrofit2/CallAdapter$Factory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 5
    invoke-static {}, Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;->create()Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 6
    invoke-static {p3}, Lg/g/a/b/j1/n/a;->a(Lg/g/a/b/j1/n/c;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    invoke-virtual {p1, p3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->client(Lm/c0;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    return-object p1
.end method

.method t(Lcom/google/gson/f;Lm/c0;Lg/g/a/b/j1/a;)Lretrofit2/Retrofit;
    .locals 1

    .line 1
    invoke-interface {p3}, Lg/g/a/b/j1/a;->a()Ljava/util/Map;

    move-result-object p3

    sget-object v0, Lg/g/a/b/j1/n/b;->INGESTION:Lg/g/a/b/j1/n/b;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/g/a/b/j1/n/c;

    .line 2
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 3
    invoke-static {p1}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/f;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p1

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 4
    invoke-static {}, Lg/g/a/a/i/n/j;->create()Lretrofit2/CallAdapter$Factory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 5
    invoke-static {}, Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;->create()Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 6
    invoke-static {p3}, Lg/g/a/b/j1/n/a;->a(Lg/g/a/b/j1/n/c;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    invoke-virtual {p1, p3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->client(Lm/c0;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    return-object p1
.end method

.method u(Landroid/content/SharedPreferences;)Lg/g/a/a/k/k/b;
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/a/k/k/b;

    invoke-direct {v0, p1}, Lg/g/a/a/k/k/b;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method v(Landroid/content/SharedPreferences;)Lg/g/a/a/k/k/c;
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/a/k/k/c;

    invoke-direct {v0, p1}, Lg/g/a/a/k/k/c;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method w(Lcom/google/gson/f;Lm/c0;Lg/g/a/b/j1/a;)Lretrofit2/Retrofit;
    .locals 1

    .line 1
    invoke-interface {p3}, Lg/g/a/b/j1/a;->a()Ljava/util/Map;

    move-result-object p3

    sget-object v0, Lg/g/a/b/j1/n/b;->ACCOUNTS:Lg/g/a/b/j1/n/b;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/g/a/b/j1/n/c;

    .line 2
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 3
    invoke-static {p1}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/f;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p1

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 4
    invoke-static {}, Lg/g/a/a/i/n/j;->create()Lretrofit2/CallAdapter$Factory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 5
    invoke-static {}, Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;->create()Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 6
    invoke-static {p3}, Lg/g/a/b/j1/n/a;->a(Lg/g/a/b/j1/n/c;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    invoke-virtual {p1, p3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->client(Lm/c0;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    return-object p1
.end method

.method x(Lcom/google/gson/f;Lm/c0;Lg/g/a/b/j1/a;)Lretrofit2/Retrofit;
    .locals 1

    .line 1
    invoke-interface {p3}, Lg/g/a/b/j1/a;->a()Ljava/util/Map;

    move-result-object p3

    sget-object v0, Lg/g/a/b/j1/n/b;->AUTH:Lg/g/a/b/j1/n/b;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/g/a/b/j1/n/c;

    .line 2
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 3
    invoke-static {p1}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/f;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p1

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 4
    invoke-static {}, Lg/g/a/a/i/n/j;->create()Lretrofit2/CallAdapter$Factory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 5
    invoke-static {}, Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;->create()Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 6
    invoke-static {p3}, Lg/g/a/b/j1/n/a;->a(Lg/g/a/b/j1/n/c;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    invoke-virtual {p1, p3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->client(Lm/c0;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    return-object p1
.end method

.method y(Lm/c0;Lg/g/a/b/j1/a;)Lretrofit2/Retrofit;
    .locals 2

    .line 1
    invoke-interface {p2}, Lg/g/a/b/j1/a;->a()Ljava/util/Map;

    move-result-object p2

    sget-object v0, Lg/g/a/b/j1/n/b;->CALLER_PROFILE:Lg/g/a/b/j1/n/b;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/g/a/b/j1/n/c;

    .line 2
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 3
    invoke-static {}, Lg/g/a/a/i/n/j;->create()Lretrofit2/CallAdapter$Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 4
    invoke-static {}, Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;->create()Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 5
    invoke-static {p2}, Lg/g/a/b/j1/n/a;->a(Lg/g/a/b/j1/n/c;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Lretrofit2/Retrofit$Builder;->client(Lm/c0;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    return-object p1
.end method

.method z(Lcom/google/gson/f;Lm/c0;Lg/g/a/b/j1/a;)Lretrofit2/Retrofit;
    .locals 1

    .line 1
    invoke-interface {p3}, Lg/g/a/b/j1/a;->a()Ljava/util/Map;

    move-result-object p3

    sget-object v0, Lg/g/a/b/j1/n/b;->CALLER_PROFILE:Lg/g/a/b/j1/n/b;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/g/a/b/j1/n/c;

    .line 2
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 3
    invoke-static {p1}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/f;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p1

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 4
    invoke-static {}, Lg/g/a/a/i/n/j;->create()Lretrofit2/CallAdapter$Factory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 5
    invoke-static {}, Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;->create()Lretrofit2/adapter/rxjava3/RxJava3CallAdapterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 6
    invoke-static {p3}, Lg/g/a/b/j1/n/a;->a(Lg/g/a/b/j1/n/c;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    invoke-virtual {p1, p3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->client(Lm/c0;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    return-object p1
.end method
