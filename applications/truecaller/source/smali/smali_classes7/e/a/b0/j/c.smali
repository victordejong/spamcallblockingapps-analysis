.class public final Le/a/b0/j/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/j/b;


# instance fields
.field public final a:Le/a/b0/j/d;


# direct methods
.method public constructor <init>(Le/a/b0/j/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "countryRepositoryDelegate"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/j/c;->a:Le/a/b0/j/d;

    return-void
.end method


# virtual methods
.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
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

    .line 1
    sget-object v0, Lq3/a/t0;->d:Lq3/a/g0;

    .line 2
    new-instance v1, Le/a/b0/j/c$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/b0/j/c$e;-><init>(Le/a/b0/j/c;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/common/network/country/CountryListDto$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lq3/a/t0;->d:Lq3/a/g0;

    .line 2
    new-instance v1, Le/a/b0/j/c$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/b0/j/c$d;-><init>(Le/a/b0/j/c;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/common/network/country/CountryListDto$a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lq3/a/t0;->d:Lq3/a/g0;

    .line 2
    new-instance v1, Le/a/b0/j/c$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/b0/j/c$a;-><init>(Le/a/b0/j/c;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    iget-object v1, p0, Le/a/b0/j/c;->a:Le/a/b0/j/d;

    .line 2
    iget-object v2, v1, Le/a/b0/j/d;->b:Ls1/w/f;

    new-instance v3, Le/a/b0/j/f;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Le/a/b0/j/f;-><init>(Le/a/b0/j/d;Ls1/w/d;)V

    invoke-static {v2, v3, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-ne p1, v1, :cond_1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public f(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/common/network/country/CountryListDto$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lq3/a/t0;->d:Lq3/a/g0;

    .line 2
    new-instance v1, Le/a/b0/j/c$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/b0/j/c$b;-><init>(Le/a/b0/j/c;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/common/network/country/CountryListDto$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lq3/a/t0;->d:Lq3/a/g0;

    .line 2
    new-instance v1, Le/a/b0/j/c$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/b0/j/c$c;-><init>(Le/a/b0/j/c;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
