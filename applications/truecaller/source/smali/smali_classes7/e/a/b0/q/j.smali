.class public final Le/a/b0/q/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/g;

.field public static final b:Ls1/g;

.field public static final c:Ls1/g;

.field public static final d:Le/a/b0/q/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/b0/q/j;

    invoke-direct {v0}, Le/a/b0/q/j;-><init>()V

    sput-object v0, Le/a/b0/q/j;->d:Le/a/b0/q/j;

    .line 2
    sget-object v0, Le/a/b0/q/j$b;->b:Le/a/b0/q/j$b;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    sput-object v0, Le/a/b0/q/j;->a:Ls1/g;

    .line 3
    sget-object v0, Le/a/b0/q/j$h;->b:Le/a/b0/q/j$h;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    sput-object v0, Le/a/b0/q/j;->b:Ls1/g;

    .line 4
    sget-object v0, Le/a/b0/q/j$a;->b:Le/a/b0/q/j$a;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    sput-object v0, Le/a/b0/q/j;->c:Ls1/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/common/network/country/CountryListDto$a;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/a/b0/q/j;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 2
    invoke-virtual {v0}, Le/a/u3/g;->v()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Le/a/b0/q/j;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/j/d;

    .line 4
    invoke-virtual {v0}, Le/a/b0/j/d;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Le/a/b0/q/j$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/b0/q/j$c;-><init>(Ls1/w/d;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public static final b(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;
    .locals 2

    .line 1
    sget-object v0, Le/a/b0/q/j;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 2
    invoke-virtual {v0}, Le/a/u3/g;->v()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Le/a/b0/q/j;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/j/d;

    .line 4
    invoke-virtual {v0, p0}, Le/a/b0/j/d;->c(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Le/a/b0/q/j$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/b0/q/j$d;-><init>(Ljava/lang/String;Ls1/w/d;)V

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/truecaller/common/network/country/CountryListDto$a;

    :goto_0
    return-object p0
.end method

.method public static final c(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;
    .locals 2

    .line 1
    sget-object v0, Le/a/b0/q/j;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 2
    invoke-virtual {v0}, Le/a/u3/g;->v()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Le/a/b0/q/j;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/j/d;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {v0}, Le/a/b0/j/d;->d()Le/a/b0/j/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Le/a/b0/j/a;->a(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Le/a/b0/q/j$e;

    invoke-direct {v0, p0, v1}, Le/a/b0/q/j$e;-><init>(Ljava/lang/String;Ls1/w/d;)V

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/truecaller/common/network/country/CountryListDto$a;

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static final d(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;
    .locals 2

    .line 1
    sget-object v0, Le/a/b0/q/j;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 2
    invoke-virtual {v0}, Le/a/u3/g;->v()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Le/a/b0/q/j;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/j/d;

    .line 4
    invoke-virtual {v0, p0}, Le/a/b0/j/d;->b(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Le/a/b0/q/j$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/b0/q/j$f;-><init>(Ljava/lang/String;Ls1/w/d;)V

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/truecaller/common/network/country/CountryListDto$a;

    :goto_0
    return-object p0
.end method

.method public static final g()Lcom/truecaller/common/network/country/CountryListDto$a;
    .locals 3

    .line 1
    sget-object v0, Le/a/b0/q/j;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 2
    invoke-virtual {v0}, Le/a/u3/g;->v()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Le/a/b0/q/j;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/j/d;

    .line 4
    invoke-virtual {v0}, Le/a/b0/j/d;->e()Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Le/a/b0/q/j$g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/b0/q/j$g;-><init>(Ls1/w/d;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/network/country/CountryListDto$a;

    :goto_0
    return-object v0
.end method

.method public static final h(Landroid/content/Context;)Lcom/truecaller/common/network/country/CountryListDto$a;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p0

    const-string v0, "ApplicationBase.getAppBase()"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object p0

    invoke-interface {p0}, Le/a/b0/c;->L()Le/a/b0/e/l;

    move-result-object p0

    invoke-interface {p0}, Le/a/b0/e/l;->g()Le/a/b0/e/b;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    iget-object p0, p0, Le/a/b0/e/b;->a:Ljava/lang/String;

    .line 3
    invoke-static {p0}, Le/a/b0/q/j;->c(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final e()Le/a/b0/j/d;
    .locals 1

    sget-object v0, Le/a/b0/q/j;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/j/d;

    return-object v0
.end method

.method public final f()Le/a/u3/g;
    .locals 1

    sget-object v0, Le/a/b0/q/j;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    return-object v0
.end method
