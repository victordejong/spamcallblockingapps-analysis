.class public final Le/a/b0/j/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/w/f;

.field public final c:Landroid/content/Context;

.field public final d:Le/a/c3/a;

.field public final e:Le/a/p5/o;

.field public final f:Le/a/b0/b/i/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Landroid/content/Context;Le/a/c3/a;Le/a/p5/o;Le/a/b0/b/i/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonFileUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryListRestAdapter"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/j/d;->b:Ls1/w/f;

    iput-object p2, p0, Le/a/b0/j/d;->c:Landroid/content/Context;

    iput-object p3, p0, Le/a/b0/j/d;->d:Le/a/c3/a;

    iput-object p4, p0, Le/a/b0/j/d;->e:Le/a/p5/o;

    iput-object p5, p0, Le/a/b0/j/d;->f:Le/a/b0/b/i/a;

    .line 2
    new-instance p1, Le/a/b0/j/d$a;

    invoke-direct {p1, p0}, Le/a/b0/j/d$a;-><init>(Le/a/b0/j/d;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/b0/j/d;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/common/network/country/CountryListDto$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/b0/j/d;->d()Le/a/b0/j/a;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/a/b0/j/a;->d:Lcom/truecaller/common/network/country/CountryListDto;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/truecaller/common/network/country/CountryListDto;->countryList:Lcom/truecaller/common/network/country/CountryListDto$b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/truecaller/common/network/country/CountryListDto$b;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    :goto_0
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Le/a/b0/j/d;->d()Le/a/b0/j/a;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Le/a/b0/j/a;->b:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "Locale.ENGLISH"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/common/network/country/CountryListDto$a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final c(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;
    .locals 5

    if-eqz p1, :cond_5

    const-string v0, "+"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p1, v0, v1, v2}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    const-string v3, "(this as java.lang.String).substring(startIndex)"

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "00"

    .line 2
    invoke-static {p1, v0, v1, v2}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    const/4 v0, 0x6

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_2

    move v0, v2

    :cond_2
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_3

    move v2, v4

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    if-eqz v2, :cond_5

    .line 5
    invoke-virtual {p0}, Le/a/b0/j/d;->d()Le/a/b0/j/a;

    move-result-object v2

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "code"

    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v2, v2, Le/a/b0/j/a;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/common/network/country/CountryListDto$a;

    if-eqz v2, :cond_4

    return-object v2

    .line 8
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d()Le/a/b0/j/a;
    .locals 1

    iget-object v0, p0, Le/a/b0/j/d;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/j/a;

    return-object v0
.end method

.method public final e()Lcom/truecaller/common/network/country/CountryListDto$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/b0/j/d;->d()Le/a/b0/j/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b0/j/a;->c()Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v0

    return-object v0
.end method

.method public final f(Le/a/b0/j/a;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "HUAWEI_STORE"

    const-string v2, "OPPO_STORE"

    const-string v3, "MI_STORE"

    const-string v4, "VIVO_STORE"

    .line 2
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "tw"

    const-string v3, "hk"

    const-string v4, "mo"

    .line 3
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    iget-object v4, p0, Le/a/b0/j/d;->d:Le/a/c3/a;

    invoke-interface {v4}, Le/a/c3/a;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    :cond_1
    invoke-static {v0}, Lu3/p0/c;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "countryFilter"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    iget-object p1, p1, Le/a/b0/j/a;->d:Lcom/truecaller/common/network/country/CountryListDto;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/truecaller/common/network/country/CountryListDto;->countryList:Lcom/truecaller/common/network/country/CountryListDto$b;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/truecaller/common/network/country/CountryListDto$b;->b:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 11
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/common/network/country/CountryListDto$a;

    .line 13
    iget-object v1, v1, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/u/i;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
