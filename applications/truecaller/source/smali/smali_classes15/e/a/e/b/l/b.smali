.class public final Le/a/e/b/l/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e/b/l/a;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Locale;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ls1/w/d<",
            "-",
            "Le/a/j4/b/b/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Le/a/j4/b/a/c;->a(Ljava/util/Locale;)Le/a/j4/b/b/b;

    move-result-object p1

    const-string p2, "LanguageDao.getLanguage(locale)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Le/a/j4/b/b/b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Le/a/j4/b/a/c;->b(Z)Ljava/util/List;

    move-result-object p1

    const-string v0, "LanguageDao.getT9Languages()"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    const-string v0, "iso"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/w4/t/a/d;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Le/a/w4/t/a/c;->a()V

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "RefreshT9MappingService.extra.rebuild_all"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Ln3/m0/f;

    invoke-direct {v0, p1}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 6
    invoke-static {v0}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    const-string p1, "Data.Builder()\n         \u2026\n                .build()"

    .line 7
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object p1

    const-string v1, "TrueApp.getApp()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object p1

    invoke-interface {p1}, Le/a/j2;->D()Ln3/m0/y;

    move-result-object p1

    const-string v1, "TrueApp.getApp().objectsGraph.workManager()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v1, Ln3/m0/r$a;

    const-class v2, Lcom/truecaller/service/t9/RefreshT9MappingWorker;

    invoke-direct {v1, v2}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 10
    iget-object v2, v1, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v0, v2, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 11
    invoke-virtual {v1}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    const-string v1, "OneTimeWorkRequest.Build\u2026\n                .build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    check-cast v0, Ln3/m0/r;

    .line 13
    sget-object v1, Ln3/m0/h;->a:Ln3/m0/h;

    const-string v2, "com.truecaller.service.t9.RefreshT9MappingWorker"

    invoke-virtual {p1, v2, v1, v0}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    return-void
.end method

.method public d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/j4/b/b/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    invoke-static {p2}, Le/a/j4/b/a/c;->b(Z)Ljava/util/List;

    move-result-object p2

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/j4/b/b/b;

    .line 3
    iget-object v1, v0, Le/a/j4/b/b/b;->j:Le/a/b0/k/c;

    .line 4
    iget-object v1, v1, Le/a/b0/k/c;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Le/a/j4/b/a/c;->a:Le/a/j4/b/b/b;

    :goto_0
    const-string p1, "LanguageDao.getLanguage(iso)"

    .line 7
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Le/a/j4/b/b/b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Le/a/j4/b/a/c;->b(Z)Ljava/util/List;

    move-result-object p1

    const-string v0, "LanguageDao.getAllLanguages()"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
