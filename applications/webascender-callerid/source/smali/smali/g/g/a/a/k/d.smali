.class public Lg/g/a/a/k/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/z;


# instance fields
.field private final a:Lg/g/a/b/j1/d;


# direct methods
.method public constructor <init>(Lg/g/a/b/j1/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/a/k/d;->a:Lg/g/a/b/j1/d;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public intercept(Lm/z$a;)Lm/g0;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lm/z$a;->request()Lm/e0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lm/e0;->i()Lm/e0$a;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Hiya-Request-Id"

    invoke-virtual {v0, v2, v1}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 4
    invoke-static {}, Lg/g/a/e/a;->a()Ljava/util/Locale;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/google/common/base/d;->c()Lcom/google/common/base/d;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/d;->i(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/g/a/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "Accept-Language"

    .line 8
    invoke-virtual {v0, v3, v2}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 9
    invoke-static {}, Lcom/google/common/base/d;->c()Lcom/google/common/base/d;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/d;->i(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/g/a/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v3, "X-Hiya-Country-Code"

    .line 12
    invoke-virtual {v0, v3, v1}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 13
    invoke-direct {p0}, Lg/g/a/a/k/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 14
    invoke-direct {p0}, Lg/g/a/a/k/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "X-Hiya-Device-Info"

    invoke-virtual {v0, v3, v1}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 15
    :cond_2
    invoke-direct {p0}, Lg/g/a/a/k/d;->b()Ljava/lang/String;

    move-result-object v1

    const-string v3, "X-Hiya-Os-Info"

    invoke-virtual {v0, v3, v1}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    const-string v1, "X-Hiya-Device-Locale"

    .line 16
    invoke-virtual {v0, v1, v2}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 17
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-seq_id"

    invoke-virtual {v0, v2, v1}, Lm/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Hiya-Date"

    invoke-virtual {v0, v2, v1}, Lm/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 19
    iget-object v1, p0, Lg/g/a/a/k/d;->a:Lg/g/a/b/j1/d;

    invoke-interface {v1}, Lg/g/a/b/j1/d;->a()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 20
    iget-object v1, p0, Lg/g/a/a/k/d;->a:Lg/g/a/b/j1/d;

    invoke-interface {v1}, Lg/g/a/b/j1/d;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    goto :goto_2

    .line 22
    :cond_3
    invoke-virtual {v0}, Lm/e0$a;->b()Lm/e0;

    move-result-object v0

    invoke-interface {p1, v0}, Lm/z$a;->a(Lm/e0;)Lm/g0;

    move-result-object p1

    return-object p1
.end method
