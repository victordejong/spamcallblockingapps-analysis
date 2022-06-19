.class public Lg/g/a/a/h/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lg/g/a/a/h/c;

.field private final b:Lg/g/a/d/c;


# direct methods
.method public constructor <init>(Lg/g/a/a/h/c;Lg/g/a/d/c;)V
    .locals 1

    const-string v0, "countryIsoDao"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userInfoSharedPreferences"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/a/a/h/g;->a:Lg/g/a/a/h/c;

    iput-object p2, p0, Lg/g/a/a/h/g;->b:Lg/g/a/d/c;

    return-void
.end method

.method private final c(Lg/g/a/a/h/e;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lg/g/a/a/h/g;->e(Lg/g/a/a/h/e;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    invoke-direct {p0, p1, v0}, Lg/g/a/a/h/g;->f(Lg/g/a/a/h/e;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {}, Lg/g/a/e/a;->a()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getCurrentLocale().country"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string p1, "(this as java.lang.String).toUpperCase()"

    invoke-static {v0, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final d(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 3
    :goto_1
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, ""

    :goto_2
    return-object v0
.end method

.method private final e(Lg/g/a/a/h/e;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lg/g/a/a/h/f;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    new-array p1, v1, [Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lg/g/a/a/h/g;->a:Lg/g/a/a/h/c;

    invoke-interface {v1}, Lg/g/a/a/h/c;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 3
    iget-object v0, p0, Lg/g/a/a/h/g;->b:Lg/g/a/d/c;

    invoke-virtual {v0}, Lg/g/a/d/c;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    .line 4
    invoke-static {p1}, Lkotlin/s/k;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lg/g/a/a/h/g;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lg/g/a/a/h/g;->a:Lg/g/a/a/h/c;

    invoke-interface {v3}, Lg/g/a/a/h/c;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v0

    .line 6
    iget-object v0, p0, Lg/g/a/a/h/g;->a:Lg/g/a/a/h/c;

    invoke-interface {v0}, Lg/g/a/a/h/c;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    .line 7
    iget-object v0, p0, Lg/g/a/a/h/g;->b:Lg/g/a/d/c;

    invoke-virtual {v0}, Lg/g/a/d/c;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    .line 8
    invoke-static {p1}, Lkotlin/s/k;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lg/g/a/a/h/g;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final f(Lg/g/a/a/h/e;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lg/g/a/a/h/e;->COUNTRY_CODE:Lg/g/a/a/h/e;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lg/g/a/a/h/g;->b:Lg/g/a/d/c;

    invoke-virtual {p1, p2}, Lg/g/a/d/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lg/g/a/a/h/g;->b:Lg/g/a/d/c;

    invoke-virtual {p1, p2}, Lg/g/a/d/c;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lg/g/a/a/h/e;->COUNTRY_CODE:Lg/g/a/a/h/e;

    invoke-direct {p0, v0}, Lg/g/a/a/h/g;->c(Lg/g/a/a/h/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "originalHint"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lg/g/a/a/h/g;->a()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method
