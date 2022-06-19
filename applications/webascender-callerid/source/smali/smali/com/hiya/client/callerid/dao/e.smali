.class public final Lcom/hiya/client/callerid/dao/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/client/callerid/dao/c;


# instance fields
.field private final a:Lg/g/a/a/g/i/a;

.field private final b:Lg/g/b/b/d/c;

.field private final c:Lcom/hiya/client/callerid/dao/i;

.field private final d:Lcom/hiya/client/callerid/dao/g;

.field private final e:Lg/g/b/a/g/a/i/d;

.field private final f:Lg/g/b/a/g/a/i/a;

.field private final g:Lcom/hiya/client/callerid/dao/a0;

.field private final h:Lcom/hiya/client/callerid/prefs/e;

.field private final i:Lg/g/a/a/h/g;


# direct methods
.method public constructor <init>(Lg/g/a/a/g/i/a;Lg/g/b/b/d/c;Lcom/hiya/client/callerid/dao/i;Lcom/hiya/client/callerid/dao/g;Lg/g/b/a/g/a/i/d;Lg/g/b/a/g/a/i/a;Lcom/hiya/client/callerid/dao/a0;Lcom/hiya/client/callerid/prefs/e;Lg/g/a/a/h/g;Lg/g/b/a/g/a/i/h;)V
    .locals 1

    const-string v0, "callerProfileApi"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdDbOp"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hashingCountriesDao"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emptyHashingInputCallback"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventProfileRequestMapper"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdMapper"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "translationDao"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefs"

    invoke-static {p8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userInfoDao"

    invoke-static {p9, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneProfileRequestMapper"

    invoke-static {p10, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/e;->a:Lg/g/a/a/g/i/a;

    iput-object p2, p0, Lcom/hiya/client/callerid/dao/e;->b:Lg/g/b/b/d/c;

    iput-object p3, p0, Lcom/hiya/client/callerid/dao/e;->c:Lcom/hiya/client/callerid/dao/i;

    iput-object p4, p0, Lcom/hiya/client/callerid/dao/e;->d:Lcom/hiya/client/callerid/dao/g;

    iput-object p5, p0, Lcom/hiya/client/callerid/dao/e;->e:Lg/g/b/a/g/a/i/d;

    iput-object p6, p0, Lcom/hiya/client/callerid/dao/e;->f:Lg/g/b/a/g/a/i/a;

    iput-object p7, p0, Lcom/hiya/client/callerid/dao/e;->g:Lcom/hiya/client/callerid/dao/a0;

    iput-object p8, p0, Lcom/hiya/client/callerid/dao/e;->h:Lcom/hiya/client/callerid/prefs/e;

    iput-object p9, p0, Lcom/hiya/client/callerid/dao/e;->i:Lg/g/a/a/h/g;

    return-void
.end method

.method public static final synthetic j(Lcom/hiya/client/callerid/dao/e;)Lg/g/b/b/d/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/dao/e;->b:Lg/g/b/b/d/c;

    return-object p0
.end method

.method public static final synthetic k(Lcom/hiya/client/callerid/dao/e;)Lg/g/b/a/g/a/i/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/dao/e;->f:Lg/g/b/a/g/a/i/a;

    return-object p0
.end method

.method public static final synthetic l(Lcom/hiya/client/callerid/dao/e;)Lg/g/a/a/g/i/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/dao/e;->a:Lg/g/a/a/g/i/a;

    return-object p0
.end method

.method public static final synthetic m(Lcom/hiya/client/callerid/dao/e;)Lcom/hiya/client/callerid/dao/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/dao/e;->d:Lcom/hiya/client/callerid/dao/g;

    return-object p0
.end method

.method public static final synthetic n(Lcom/hiya/client/callerid/dao/e;)Lg/g/b/a/g/a/i/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/dao/e;->e:Lg/g/b/a/g/a/i/d;

    return-object p0
.end method

.method public static final synthetic o(Lcom/hiya/client/callerid/dao/e;)Lcom/hiya/client/callerid/prefs/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/dao/e;->h:Lcom/hiya/client/callerid/prefs/e;

    return-object p0
.end method

.method public static final synthetic p(Lcom/hiya/client/callerid/dao/e;)Lcom/hiya/client/callerid/dao/a0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/dao/e;->g:Lcom/hiya/client/callerid/dao/a0;

    return-object p0
.end method

.method public static final synthetic q(Lcom/hiya/client/callerid/dao/e;)Lg/g/a/a/h/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/dao/e;->i:Lg/g/a/a/h/g;

    return-object p0
.end method

.method public static final synthetic r(Lcom/hiya/client/callerid/dao/e;Lg/g/b/c/f;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/dao/e;->u(Lg/g/b/c/f;)Z

    move-result p0

    return p0
.end method

.method private final u(Lg/g/b/c/f;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lg/g/b/c/f;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "~"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/c0/m;->I(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lg/g/b/c/f;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/c0/m;->I(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lg/g/b/c/f;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/c0/m;->I(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lg/g/b/c/f;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/c0/m;->I(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lg/g/b/c/f;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/c0/m;->I(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lg/g/b/c/f;->j()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/c0/m;->I(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method


# virtual methods
.method public a()Li/c/b0/b/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/e$b;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/dao/e$b;-><init>(Lcom/hiya/client/callerid/dao/e;)V

    invoke-static {v0}, Li/c/b0/b/e;->k(Li/c/b0/b/h;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "Completable.create {\n   \u2026)\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Li/c/b0/b/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/e$e;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/dao/e$e;-><init>(Lcom/hiya/client/callerid/dao/e;)V

    invoke-static {v0}, Li/c/b0/b/e;->k(Li/c/b0/b/h;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "Completable.create { emi\u2026)\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(Ljava/util/List;)Li/c/b0/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/b/c/f;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const-string v0, "callerIds"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/e$m;

    invoke-direct {v0, p0, p1}, Lcom/hiya/client/callerid/dao/e$m;-><init>(Lcom/hiya/client/callerid/dao/e;Ljava/util/List;)V

    invoke-static {v0}, Li/c/b0/b/e;->k(Li/c/b0/b/h;)Li/c/b0/b/e;

    move-result-object p1

    const-string v0, "Completable.create {\n   \u2026)\n            }\n        }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/p<",
            "Lg/g/b/c/f;",
            ">;"
        }
    .end annotation

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryHint"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/b/a/g/b/d;

    invoke-direct {v0, p1, p2}, Lg/g/b/a/g/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/s/k;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/dao/e;->s(Ljava/util/List;)Li/c/b0/b/e0;

    move-result-object p1

    .line 2
    sget-object p2, Lcom/hiya/client/callerid/dao/e$f;->f:Lcom/hiya/client/callerid/dao/e$f;

    invoke-virtual {p1, p2}, Li/c/b0/b/e0;->o(Li/c/b0/d/o;)Li/c/b0/b/p;

    move-result-object p1

    const-string p2, "getCallerIds(listOf(RawP\u2026      }\n                }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public e(Ljava/lang/String;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/e0<",
            "Lg/g/b/c/f;",
            ">;"
        }
    .end annotation

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/e;->f:Lg/g/b/a/g/a/i/a;

    invoke-virtual {v0, p1}, Lg/g/b/a/g/a/i/a;->e(Ljava/lang/String;)Lg/g/b/c/f;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/e0;->s(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object p1

    const-string v0, "Single.just(callerIdMapp\u2026omEventData(phoneNumber))"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public f(Lg/g/b/c/j;Z)Li/c/b0/b/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/b/c/j;",
            "Z)",
            "Li/c/b0/b/e0<",
            "Lg/g/b/c/f;",
            ">;"
        }
    .end annotation

    const-string v0, "eventData"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/e;->c:Lcom/hiya/client/callerid/dao/i;

    invoke-interface {v0}, Lcom/hiya/client/callerid/dao/i;->a()Li/c/b0/b/e0;

    move-result-object v0

    new-instance v1, Lcom/hiya/client/callerid/dao/e$j;

    invoke-direct {v1, p0, p1}, Lcom/hiya/client/callerid/dao/e$j;-><init>(Lcom/hiya/client/callerid/dao/e;Lg/g/b/c/j;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/hiya/client/callerid/dao/e$k;->f:Lcom/hiya/client/callerid/dao/e$k;

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->l(Li/c/b0/d/p;)Li/c/b0/b/p;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Li/c/b0/b/p;->y()Li/c/b0/b/e0;

    move-result-object v0

    new-instance v1, Lcom/hiya/client/callerid/dao/e$l;

    invoke-direct {v1, p0, p1, p2}, Lcom/hiya/client/callerid/dao/e$l;-><init>(Lcom/hiya/client/callerid/dao/e;Lg/g/b/c/j;Z)V

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->m(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    const-string p2, "hashingCountriesDao.hash\u2026}\n            }\n        }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public g()Li/c/b0/b/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/e$d;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/dao/e$d;-><init>(Lcom/hiya/client/callerid/dao/e;)V

    invoke-static {v0}, Li/c/b0/b/e;->k(Li/c/b0/b/h;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "Completable.create { emi\u2026)\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public h()Li/c/b0/b/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/e$a;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/dao/e$a;-><init>(Lcom/hiya/client/callerid/dao/e;)V

    invoke-static {v0}, Li/c/b0/b/e;->k(Li/c/b0/b/h;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "Completable.create {\n   \u2026)\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public i()Li/c/b0/b/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/e$c;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/dao/e$c;-><init>(Lcom/hiya/client/callerid/dao/e;)V

    invoke-static {v0}, Li/c/b0/b/e;->k(Li/c/b0/b/h;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "Completable.create {\n   \u2026)\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public s(Ljava/util/List;)Li/c/b0/b/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/b/a/g/b/d;",
            ">;)",
            "Li/c/b0/b/e0<",
            "Ljava/util/Map<",
            "Lg/g/b/a/g/b/d;",
            "Lg/g/b/c/f;",
            ">;>;"
        }
    .end annotation

    const-string v0, "phoneNumbers"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/e;->c:Lcom/hiya/client/callerid/dao/i;

    invoke-interface {v0}, Lcom/hiya/client/callerid/dao/i;->a()Li/c/b0/b/e0;

    move-result-object v0

    new-instance v1, Lcom/hiya/client/callerid/dao/e$g;

    invoke-direct {v1, p0, p1}, Lcom/hiya/client/callerid/dao/e$g;-><init>(Lcom/hiya/client/callerid/dao/e;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/hiya/client/callerid/dao/e$h;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/dao/e$h;-><init>(Lcom/hiya/client/callerid/dao/e;)V

    invoke-virtual {p1, v0}, Li/c/b0/b/e0;->m(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    const-string v0, "hashingCountriesDao.hash\u2026formattedPhone)\n        }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public t(Ljava/util/Map;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lg/g/b/a/g/b/d;",
            ">;)",
            "Li/c/b0/b/e0<",
            "Ljava/util/Map<",
            "Lg/g/b/a/g/b/d;",
            "Lg/g/b/c/f;",
            ">;>;"
        }
    .end annotation

    const-string v0, "formatted"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/e$i;

    invoke-direct {v0, p0, p1}, Lcom/hiya/client/callerid/dao/e$i;-><init>(Lcom/hiya/client/callerid/dao/e;Ljava/util/Map;)V

    invoke-static {v0}, Li/c/b0/b/e0;->p(Ljava/util/concurrent/Callable;)Li/c/b0/b/e0;

    move-result-object p1

    const-string v0, "Single.fromCallable {\n  \u2026)\n            }\n        }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
