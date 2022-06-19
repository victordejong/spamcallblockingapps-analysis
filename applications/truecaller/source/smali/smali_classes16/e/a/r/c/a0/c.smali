.class public final Le/a/r/c/a0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/c/a0/a;


# instance fields
.field public final a:Le/a/b0/e/l;

.field public final b:Le/a/r/c/a0/a;


# direct methods
.method public constructor <init>(Le/a/b0/e/l;Le/a/r/c/a0/a;)V
    .locals 1
    .param p2    # Le/a/r/c/a0/a;
        .annotation runtime Ljavax/inject/Named;
            value = "primaryNumberCountriesHelper"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "truecallerAccountManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "helper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/c/a0/c;->a:Le/a/b0/e/l;

    iput-object p2, p0, Le/a/r/c/a0/c;->b:Le/a/r/c/a0/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/common/network/country/CountryListDto$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/r/c/a0/c;->b:Le/a/r/c/a0/a;

    invoke-interface {v0}, Le/a/r/c/a0/a;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/common/network/country/CountryListDto$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/r/c/a0/c$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/r/c/a0/c$a;

    iget v1, v0, Le/a/r/c/a0/c$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/r/c/a0/c$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/r/c/a0/c$a;

    invoke-direct {v0, p0, p1}, Le/a/r/c/a0/c$a;-><init>(Le/a/r/c/a0/c;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/r/c/a0/c$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/r/c/a0/c$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/r/c/a0/c;->a:Le/a/b0/e/l;

    invoke-interface {p1}, Le/a/b0/e/l;->e()Le/a/b0/e/b;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p1, Le/a/b0/e/b;->a:Ljava/lang/String;

    if-eqz p1, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    iget-object p1, p0, Le/a/r/c/a0/c;->a:Le/a/b0/e/l;

    invoke-interface {p1}, Le/a/b0/e/l;->g()Le/a/b0/e/b;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p1, Le/a/b0/e/b;->a:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    .line 8
    invoke-virtual {p0, p1}, Le/a/r/c/a0/c;->e(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    iget-object p1, p0, Le/a/r/c/a0/c;->b:Le/a/r/c/a0/a;

    iput v3, v0, Le/a/r/c/a0/c$a;->e:I

    invoke-interface {p1, v0}, Le/a/r/c/a0/a;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    check-cast p1, Lcom/truecaller/common/network/country/CountryListDto$a;

    :goto_3
    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/r/c/a0/c;->b:Le/a/r/c/a0/a;

    invoke-interface {v0}, Le/a/r/c/a0/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/r/c/a0/c;->b:Le/a/r/c/a0/a;

    invoke-interface {v0, p1}, Le/a/r/c/a0/a;->d(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;
    .locals 1

    const-string v0, "countryIso"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/r/c/a0/c;->b:Le/a/r/c/a0/a;

    invoke-interface {v0, p1}, Le/a/r/c/a0/a;->e(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object p1

    return-object p1
.end method
