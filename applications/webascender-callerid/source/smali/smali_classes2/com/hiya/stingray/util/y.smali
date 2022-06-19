.class public final Lcom/hiya/stingray/util/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs a(Ljava/lang/String;[Ljava/lang/String;)Lcom/hiya/stingray/t/u0;
    .locals 11

    .line 1
    invoke-static {p0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 2
    array-length v0, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v5, p1, v4

    const/4 v6, 0x1

    .line 3
    :try_start_0
    invoke-static {p0, v5}, Lcom/hiya/stingray/util/y;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/hiya/common/phone/parser/PhoneParser$b;

    move-result-object v7

    .line 4
    iget-boolean v8, v7, Lcom/hiya/common/phone/parser/PhoneParser$b;->g:Z

    if-eqz v8, :cond_1

    .line 5
    new-instance v8, Lcom/hiya/stingray/t/u0;

    iget-object v9, v7, Lcom/hiya/common/phone/parser/PhoneParser$b;->f:Lg/g/c/a/a/a/h;

    invoke-virtual {v9}, Lg/g/c/a/a/a/h;->b()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v7, Lcom/hiya/common/phone/parser/PhoneParser$b;->i:Lcom/google/common/base/j;

    .line 6
    invoke-virtual {v10}, Lcom/google/common/base/j;->d()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, v7, Lcom/hiya/common/phone/parser/PhoneParser$b;->i:Lcom/google/common/base/j;

    invoke-virtual {v10}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/g/c/a/a/a/c;

    iget-object v10, v10, Lg/g/c/a/a/a/c;->f:Ljava/lang/String;

    goto :goto_1

    :cond_0
    move-object v10, v5

    :goto_1
    iget-object v7, v7, Lcom/hiya/common/phone/parser/PhoneParser$b;->f:Lg/g/c/a/a/a/h;

    iget-object v7, v7, Lg/g/c/a/a/a/h;->g:Ljava/lang/String;

    invoke-direct {v8, v9, v10, v7, v6}, Lcom/hiya/stingray/t/u0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/hiya/common/phone/parser/PhoneParser$Failure; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p0, v5, v3

    const-string v6, "Failed to parse rawPhoneNumber %s"

    .line 7
    invoke-static {v6, v5}, Lr/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catch_1
    move-exception v7

    goto :goto_2

    :catch_2
    move-exception v7

    :goto_2
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v3

    const-string v5, "countryCode is either null or invalid: %s"

    .line 8
    invoke-static {v7, v5, v6}, Lr/a/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_2
    new-instance v0, Lcom/hiya/stingray/t/u0;

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    array-length v4, p1

    if-nez v4, :cond_3

    goto :goto_4

    :cond_3
    aget-object v2, p1, v3

    :goto_4
    invoke-direct {v0, p0, v2, v1, v3}, Lcom/hiya/stingray/t/u0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    .line 10
    :cond_4
    new-instance p0, Lcom/hiya/stingray/t/u0;

    invoke-direct {p0, v2, v2, v1, v3}, Lcom/hiya/stingray/t/u0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/hiya/stingray/util/p;->w(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".*[a-zA-Z].*"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/hiya/common/phone/parser/PhoneParser$c;->a()Lcom/hiya/common/phone/parser/PhoneParser;

    move-result-object v1

    .line 4
    new-instance v2, Lg/g/c/a/a/a/j;

    new-array v3, v0, [Lg/g/c/a/a/a/i;

    invoke-direct {v2, p0, v3}, Lg/g/c/a/a/a/j;-><init>(Ljava/lang/String;[Lg/g/c/a/a/a/i;)V

    invoke-interface {v1, v2}, Lcom/hiya/common/phone/parser/PhoneParser;->f(Lg/g/c/a/a/a/j;)Lcom/hiya/common/phone/parser/PhoneParser$a;

    move-result-object v1

    .line 5
    iget-object v2, v1, Lcom/hiya/common/phone/parser/PhoneParser$a;->f:Lcom/hiya/common/phone/parser/PhoneParser$b;

    iget-object v2, v2, Lcom/hiya/common/phone/parser/PhoneParser$b;->i:Lcom/google/common/base/j;

    .line 6
    invoke-virtual {v2}, Lcom/google/common/base/j;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/g/c/a/a/a/c;

    iget-object v2, v2, Lg/g/c/a/a/a/c;->f:Ljava/lang/String;

    invoke-static {}, Lcom/hiya/stingray/util/p;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, v1, Lcom/hiya/common/phone/parser/PhoneParser$a;->g:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, v1, Lcom/hiya/common/phone/parser/PhoneParser$a;->h:Ljava/lang/String;
    :try_end_0
    .catch Lcom/hiya/common/phone/parser/PhoneParser$Failure; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string v0, "Failed to parse rawPhoneNumber (%s)"

    .line 7
    invoke-static {v0, v1}, Lr/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hiya/stingray/util/y;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/hiya/stingray/t/u0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hiya/stingray/t/u0;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/q;->g(Ljava/lang/Iterable;)Lcom/google/common/collect/q;

    move-result-object p0

    sget-object v0, Lcom/hiya/stingray/util/c;->a:Lcom/hiya/stingray/util/c;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/collect/q;->d(Lcom/google/common/base/n;)Lcom/google/common/collect/q;

    move-result-object p0

    new-instance v0, Lcom/hiya/stingray/util/d;

    invoke-direct {v0, p1}, Lcom/hiya/stingray/util/d;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/collect/q;->k(Lcom/google/common/base/g;)Lcom/google/common/collect/q;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/q;->j()Lcom/google/common/collect/z;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/stingray/q/b/x;)Lg/g/c/a/c/a/b;
    .locals 4

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/hiya/common/phone/parser/PhoneParser$c;->a()Lcom/hiya/common/phone/parser/PhoneParser;

    move-result-object v1

    invoke-static {v1}, Lcom/hiya/common/phone/java/PhoneNormalizer;->j(Lcom/hiya/common/phone/parser/PhoneParser;)Lcom/hiya/common/phone/java/PhoneNormalizer;

    move-result-object v1

    .line 2
    new-instance v2, Lg/g/c/a/a/a/j;

    new-array v3, v0, [Lg/g/c/a/a/a/i;

    invoke-direct {v2, p0, v3}, Lg/g/c/a/a/a/j;-><init>(Ljava/lang/String;[Lg/g/c/a/a/a/i;)V

    new-instance v3, Lg/g/c/a/a/a/c;

    invoke-direct {v3, p1}, Lg/g/c/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/hiya/common/phone/java/PhoneNormalizer;->e(Lg/g/c/a/a/a/j;Lg/g/c/a/a/a/c;)Lg/g/c/a/c/a/b;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p0, "Failed to convert to PhoneWithMeta: %s"

    .line 3
    invoke-static {p1, p0, p2}, Lr/a/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "countryCode is either null or invalid: %s"

    .line 4
    invoke-static {p0, p1, p2}, Lr/a/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/hiya/common/phone/parser/PhoneParser$c;->a()Lcom/hiya/common/phone/parser/PhoneParser;

    move-result-object v2

    .line 2
    new-instance v3, Lg/g/c/a/a/a/j;

    new-array v4, v1, [Lg/g/c/a/a/a/i;

    new-instance v5, Lg/g/c/a/a/a/i$e;

    invoke-direct {v5, p1}, Lg/g/c/a/a/a/i$e;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v0

    invoke-direct {v3, p0, v4}, Lg/g/c/a/a/a/j;-><init>(Ljava/lang/String;[Lg/g/c/a/a/a/i;)V

    invoke-interface {v2, v3}, Lcom/hiya/common/phone/parser/PhoneParser;->h(Lg/g/c/a/a/a/j;)Lcom/hiya/common/phone/parser/PhoneParser$b;

    move-result-object p1

    .line 3
    iget-boolean p0, p1, Lcom/hiya/common/phone/parser/PhoneParser$b;->g:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/hiya/common/phone/parser/PhoneParser$Failure; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v0

    const-string p0, "Failed to parse rawPhoneNumber: %s"

    .line 4
    invoke-static {p0, p1}, Lr/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "countryCode is either null or invalid: %s"

    .line 5
    invoke-static {p1, p0, v1}, Lr/a/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return v0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xf

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic h(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1
    invoke-static {p1, v0}, Lcom/hiya/stingray/util/y;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lg/g/c/a/c/a/b;)Lg/g/a/a/i/h;
    .locals 4

    .line 1
    new-instance v0, Lg/g/a/a/i/h;

    iget-object v1, p0, Lg/g/c/a/c/a/b;->f:Lg/g/c/a/a/a/g;

    iget-object v1, v1, Lg/g/c/a/a/a/g;->f:Ljava/lang/String;

    invoke-static {}, Lg/g/a/a/i/f;->newBuilder()Lg/g/a/a/i/f$b;

    move-result-object v2

    iget-object v3, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    iget-object v3, v3, Lg/g/c/a/c/a/a;->j:Lcom/google/common/base/j;

    .line 2
    invoke-virtual {v3}, Lcom/google/common/base/j;->g()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lg/g/a/a/i/f$b;->withAreaCode(Ljava/lang/String;)Lg/g/a/a/i/f$b;

    move-result-object v2

    iget-object v3, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    iget-object v3, v3, Lg/g/c/a/c/a/a;->i:Lcom/google/common/base/j;

    .line 3
    invoke-virtual {v3}, Lcom/google/common/base/j;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    iget-object v3, v3, Lg/g/c/a/c/a/a;->i:Lcom/google/common/base/j;

    invoke-virtual {v3}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/g/c/a/a/a/c;

    iget-object v3, v3, Lg/g/c/a/a/a/c;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lg/g/a/a/i/f$b;->withCountryCode(Ljava/lang/String;)Lg/g/a/a/i/f$b;

    move-result-object v2

    iget-object v3, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    iget-boolean v3, v3, Lg/g/c/a/c/a/a;->h:Z

    .line 4
    invoke-virtual {v2, v3}, Lg/g/a/a/i/f$b;->withIsShortCode(Z)Lg/g/a/a/i/f$b;

    move-result-object v2

    iget-object v3, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    iget-boolean v3, v3, Lg/g/c/a/c/a/a;->g:Z

    .line 5
    invoke-virtual {v2, v3}, Lg/g/a/a/i/f$b;->withIsValid(Z)Lg/g/a/a/i/f$b;

    move-result-object v2

    iget-object v3, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    iget-object v3, v3, Lg/g/c/a/c/a/a;->f:Ljava/lang/String;

    .line 6
    invoke-virtual {v2, v3}, Lg/g/a/a/i/f$b;->withParserVersion(Ljava/lang/String;)Lg/g/a/a/i/f$b;

    move-result-object v2

    iget-object p0, p0, Lg/g/c/a/c/a/b;->g:Lg/g/c/a/c/a/a;

    iget-object p0, p0, Lg/g/c/a/c/a/a;->l:Lcom/google/common/base/j;

    .line 7
    invoke-virtual {p0}, Lcom/google/common/base/j;->g()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Lg/g/a/a/i/f$b;->withRawPhone(Ljava/lang/String;)Lg/g/a/a/i/f$b;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lg/g/a/a/i/f$b;->build()Lg/g/a/a/i/f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lg/g/a/a/i/h;-><init>(Ljava/lang/String;Lg/g/a/a/i/f;)V

    return-object v0
.end method

.method private static k(Ljava/lang/String;Ljava/lang/String;)Lcom/hiya/common/phone/parser/PhoneParser$b;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hiya/common/phone/parser/PhoneParser$Failure;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/hiya/common/phone/parser/PhoneParser$c;->a()Lcom/hiya/common/phone/parser/PhoneParser;

    move-result-object v0

    .line 2
    new-instance v1, Lg/g/c/a/a/a/j;

    const/4 v2, 0x1

    new-array v3, v2, [Lg/g/c/a/a/a/i;

    new-instance v4, Lg/g/c/a/a/a/i$e;

    invoke-direct {v4, p1}, Lg/g/c/a/a/a/i$e;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v1, p0, v3}, Lg/g/c/a/a/a/j;-><init>(Ljava/lang/String;[Lg/g/c/a/a/a/i;)V

    invoke-interface {v0, v1}, Lcom/hiya/common/phone/parser/PhoneParser;->h(Lg/g/c/a/a/a/j;)Lcom/hiya/common/phone/parser/PhoneParser$b;

    move-result-object v1

    .line 3
    iget-boolean v3, v1, Lcom/hiya/common/phone/parser/PhoneParser$b;->g:Z

    if-nez v3, :cond_0

    const-string v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4
    new-instance v4, Lg/g/c/a/a/a/j;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Lg/g/c/a/a/a/i;

    new-instance v3, Lg/g/c/a/a/a/i$e;

    invoke-direct {v3, p1}, Lg/g/c/a/a/a/i$e;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    invoke-direct {v4, p0, v2}, Lg/g/c/a/a/a/j;-><init>(Ljava/lang/String;[Lg/g/c/a/a/a/i;)V

    invoke-interface {v0, v4}, Lcom/hiya/common/phone/parser/PhoneParser;->h(Lg/g/c/a/a/a/j;)Lcom/hiya/common/phone/parser/PhoneParser$b;

    move-result-object p0

    .line 5
    iget-boolean p1, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->g:Z

    if-eqz p1, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1
.end method
