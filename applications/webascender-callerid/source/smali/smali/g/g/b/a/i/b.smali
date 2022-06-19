.class public final Lg/g/b/a/i/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/b/a/i/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/b/a/i/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/client/callerid/prefs/e;

.field private final b:Lg/g/a/a/g/i/a;

.field private final c:Lg/g/a/a/g/c;

.field private final d:Lcom/hiya/client/callerid/dao/v;

.field private final e:Lg/g/b/a/k/h;

.field private final f:Lcom/hiya/client/callerid/dao/c;

.field private final g:Lcom/hiya/client/callerid/dao/a0;

.field private final h:Lg/g/b/a/g/a/i/j;

.field private final i:Lg/g/b/a/g/a/i/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/hiya/client/callerid/prefs/e;Lg/g/a/a/g/i/a;Lg/g/a/a/g/c;Lcom/hiya/client/callerid/dao/v;Lg/g/b/a/k/h;Lcom/hiya/client/callerid/dao/c;Lcom/hiya/client/callerid/dao/a0;Lg/g/b/a/g/a/i/j;Lg/g/b/a/g/a/i/a;)V
    .locals 1

    const-string v0, "prefs"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerProfileApi"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheApi"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileCacheHeaderHandler"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileIOHelper"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdDao"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "translationDao"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "translatedStringMapper"

    invoke-static {p8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdMapper"

    invoke-static {p9, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/b/a/i/b;->a:Lcom/hiya/client/callerid/prefs/e;

    iput-object p2, p0, Lg/g/b/a/i/b;->b:Lg/g/a/a/g/i/a;

    iput-object p3, p0, Lg/g/b/a/i/b;->c:Lg/g/a/a/g/c;

    iput-object p4, p0, Lg/g/b/a/i/b;->d:Lcom/hiya/client/callerid/dao/v;

    iput-object p5, p0, Lg/g/b/a/i/b;->e:Lg/g/b/a/k/h;

    iput-object p6, p0, Lg/g/b/a/i/b;->f:Lcom/hiya/client/callerid/dao/c;

    iput-object p7, p0, Lg/g/b/a/i/b;->g:Lcom/hiya/client/callerid/dao/a0;

    iput-object p8, p0, Lg/g/b/a/i/b;->h:Lg/g/b/a/g/a/i/j;

    iput-object p9, p0, Lg/g/b/a/i/b;->i:Lg/g/b/a/g/a/i/a;

    return-void
.end method

.method public static final synthetic d(Lg/g/b/a/i/b;)Li/c/b0/b/e;
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/g/b/a/i/b;->n()Li/c/b0/b/e;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lg/g/b/a/i/b;)Lcom/hiya/client/callerid/dao/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/b/a/i/b;->f:Lcom/hiya/client/callerid/dao/c;

    return-object p0
.end method

.method public static final synthetic f(Lg/g/b/a/i/b;)Lg/g/b/a/g/a/i/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/b/a/i/b;->i:Lg/g/b/a/g/a/i/a;

    return-object p0
.end method

.method public static final synthetic g(Lg/g/b/a/i/b;)Lg/g/b/a/k/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/b/a/i/b;->e:Lg/g/b/a/k/h;

    return-object p0
.end method

.method public static final synthetic h(Lg/g/b/a/i/b;)Lcom/hiya/client/callerid/prefs/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/b/a/i/b;->a:Lcom/hiya/client/callerid/prefs/e;

    return-object p0
.end method

.method public static final synthetic i(Lg/g/b/a/i/b;)Lcom/hiya/client/callerid/dao/v;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/b/a/i/b;->d:Lcom/hiya/client/callerid/dao/v;

    return-object p0
.end method

.method public static final synthetic j(Lg/g/b/a/i/b;)Lg/g/b/a/g/a/i/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/b/a/i/b;->h:Lg/g/b/a/g/a/i/j;

    return-object p0
.end method

.method public static final synthetic k(Lg/g/b/a/i/b;)Lcom/hiya/client/callerid/dao/a0;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/b/a/i/b;->g:Lcom/hiya/client/callerid/dao/a0;

    return-object p0
.end method

.method public static final synthetic l(Lg/g/b/a/i/b;Lg/g/b/a/i/b$a;J)Li/c/b0/b/e;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lg/g/b/a/i/b;->p(Lg/g/b/a/i/b$a;J)Li/c/b0/b/e;

    move-result-object p0

    return-object p0
.end method

.method private final n()Li/c/b0/b/e;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lg/g/b/a/i/b;->a()Li/c/b0/b/e;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lg/g/b/a/i/b;->b()Li/c/b0/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->d(Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "deleteAllProfileCache()\n\u2026(deleteAllTranslations())"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final o(Lg/g/b/a/i/a$a;Li/c/b0/b/v;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/b/a/i/a$a;",
            "Li/c/b0/b/v<",
            "Lm/h0;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lg/g/b/a/i/a$a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/b/a/i/b$d;

    invoke-direct {v0, p0, p1}, Lg/g/b/a/i/b$d;-><init>(Lg/g/b/a/i/b;Lg/g/b/a/i/a$a;)V

    invoke-virtual {p2, v0}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    const-string p2, "responseBodyObservable.m\u2026cacheSourceType\n        }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final p(Lg/g/b/a/i/b$a;J)Li/c/b0/b/e;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lg/g/b/a/i/b$a;->a()Lg/g/b/a/i/a$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lg/g/b/a/i/b;->c:Lg/g/a/a/g/c;

    invoke-virtual {p1}, Lg/g/b/a/i/b$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lg/g/a/a/g/c;->a(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v1

    const-string v2, "cacheApi.downloadFile(cacheSource.url)"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, v0, v1}, Lg/g/b/a/i/b;->o(Lg/g/b/a/i/a$a;Li/c/b0/b/v;)Li/c/b0/b/v;

    move-result-object v0

    .line 4
    new-instance v1, Lg/g/b/a/i/b$e;

    invoke-direct {v1, p0}, Lg/g/b/a/i/b$e;-><init>(Lg/g/b/a/i/b;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMapCompletable(Li/c/b0/d/o;)Li/c/b0/b/e;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lg/g/b/a/i/b$a;->a()Lg/g/b/a/i/a$a;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lg/g/b/a/i/b;->e:Lg/g/b/a/k/h;

    invoke-virtual {p1}, Lg/g/b/a/i/b$a;->a()Lg/g/b/a/i/a$a;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg/g/b/a/k/h;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lg/g/b/a/k/k;->b(Ljava/io/File;)Lg/g/b/a/k/k;

    move-result-object v2

    const-string v3, "TabSeparatedFile.openFro\u2026ce.cacheSourceType.name))"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, v1, v2, p2, p3}, Lg/g/b/a/i/b;->q(Lg/g/b/a/i/a$a;Lg/g/b/a/k/k;J)Li/c/b0/b/e;

    move-result-object p2

    .line 8
    invoke-virtual {v0, p2}, Li/c/b0/b/e;->d(Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object p2

    .line 9
    new-instance p3, Lg/g/b/a/i/b$f;

    invoke-direct {p3, p0, p1}, Lg/g/b/a/i/b$f;-><init>(Lg/g/b/a/i/b;Lg/g/b/a/i/b$a;)V

    invoke-virtual {p2, p3}, Li/c/b0/b/e;->m(Li/c/b0/d/a;)Li/c/b0/b/e;

    move-result-object p1

    const-string p2, "download(\n              \u2026elete()\n                }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final q(Lg/g/b/a/i/a$a;Lg/g/b/a/k/k;J)Li/c/b0/b/e;
    .locals 1

    .line 1
    new-instance v0, Lg/g/b/a/i/b$g;

    invoke-direct {v0, p2}, Lg/g/b/a/i/b$g;-><init>(Lg/g/b/a/k/k;)V

    invoke-static {v0}, Li/c/b0/b/v;->create(Li/c/b0/b/y;)Li/c/b0/b/v;

    move-result-object p2

    .line 2
    new-instance v0, Lg/g/b/a/i/b$h;

    invoke-direct {v0, p0, p1, p3, p4}, Lg/g/b/a/i/b$h;-><init>(Lg/g/b/a/i/b;Lg/g/b/a/i/a$a;J)V

    invoke-virtual {p2, v0}, Li/c/b0/b/v;->flatMapCompletable(Li/c/b0/d/o;)Li/c/b0/b/e;

    move-result-object p2

    .line 3
    new-instance p3, Lg/g/b/a/i/b$i;

    invoke-direct {p3, p0, p1}, Lg/g/b/a/i/b$i;-><init>(Lg/g/b/a/i/b;Lg/g/b/a/i/a$a;)V

    invoke-virtual {p2, p3}, Li/c/b0/b/e;->n(Li/c/b0/d/a;)Li/c/b0/b/e;

    move-result-object p1

    const-string p2, "Observable.create(Observ\u2026)\n            }\n        }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public a()Li/c/b0/b/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/a/i/b;->f:Lcom/hiya/client/callerid/dao/c;

    invoke-interface {v0}, Lcom/hiya/client/callerid/dao/c;->a()Li/c/b0/b/e;

    move-result-object v0

    invoke-virtual {v0}, Li/c/b0/b/e;->z()Li/c/b0/b/e;

    move-result-object v0

    .line 2
    new-instance v1, Lg/g/b/a/i/b$b;

    invoke-direct {v1, p0}, Lg/g/b/a/i/b$b;-><init>(Lg/g/b/a/i/b;)V

    invoke-static {v1}, Li/c/b0/b/e;->s(Li/c/b0/d/a;)Li/c/b0/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->d(Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "callerIdDao.deleteAllPro\u2026me = 0\n                })"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Li/c/b0/b/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/a/i/b;->g:Lcom/hiya/client/callerid/dao/a0;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/dao/a0;->c()Li/c/b0/b/e;

    move-result-object v0

    invoke-virtual {v0}, Li/c/b0/b/e;->z()Li/c/b0/b/e;

    move-result-object v0

    .line 2
    new-instance v1, Lg/g/b/a/i/b$c;

    invoke-direct {v1, p0}, Lg/g/b/a/i/b$c;-><init>(Lg/g/b/a/i/b;)V

    invoke-static {v1}, Li/c/b0/b/e;->s(Li/c/b0/d/a;)Li/c/b0/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->d(Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "translationDao.deleteAll\u2026me = 0\n                })"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public c()Li/c/b0/b/e;
    .locals 8

    .line 1
    iget-object v0, p0, Lg/g/b/a/i/b;->a:Lcom/hiya/client/callerid/prefs/e;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/prefs/e;->b()Lcom/hiya/client/callerid/prefs/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/prefs/c;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "Completable.complete()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lg/g/b/a/i/b;->a:Lcom/hiya/client/callerid/prefs/e;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/prefs/e;->a()Lcom/hiya/client/callerid/prefs/Cache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/prefs/Cache;->e()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lg/g/b/a/i/b;->a:Lcom/hiya/client/callerid/prefs/e;

    invoke-virtual {v1}, Lcom/hiya/client/callerid/prefs/e;->a()Lcom/hiya/client/callerid/prefs/Cache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hiya/client/callerid/prefs/Cache;->d()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lg/g/b/a/i/b;->a:Lcom/hiya/client/callerid/prefs/e;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/prefs/e;->b()Lcom/hiya/client/callerid/prefs/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hiya/client/callerid/prefs/c;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "reputation,identity"

    goto :goto_0

    :cond_1
    const-string v2, "reputation"

    .line 6
    :goto_0
    iget-object v3, p0, Lg/g/b/a/i/b;->b:Lg/g/a/a/g/i/a;

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    const/4 v7, 0x0

    if-eqz v4, :cond_3

    move-object v0, v7

    .line 8
    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_5

    move-object v1, v7

    :cond_5
    const-string v4, "spam"

    .line 9
    invoke-interface {v3, v2, v4, v0, v1}, Lg/g/a/a/g/i/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v0

    .line 10
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 11
    new-instance v1, Lg/g/b/a/i/b$j;

    invoke-direct {v1, p0}, Lg/g/b/a/i/b$j;-><init>(Lg/g/b/a/i/b;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMapCompletable(Li/c/b0/d/o;)Li/c/b0/b/e;

    move-result-object v0

    .line 12
    new-instance v1, Lg/g/b/a/i/b$k;

    invoke-direct {v1, p0}, Lg/g/b/a/i/b$k;-><init>(Lg/g/b/a/i/b;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->B(Li/c/b0/d/o;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "callerProfileApi.getProf\u2026mmerCache()\n            }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public m(Lg/g/a/a/i/i;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/a/i/i;",
            ")",
            "Ljava/util/List<",
            "Lg/g/b/a/i/b$a;",
            ">;"
        }
    .end annotation

    const-string v0, "profileCacheInfoDTO"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/google/common/collect/Lists;->g()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lg/g/a/a/i/i;->getLanguageCache()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lg/g/b/a/i/b$a;

    .line 4
    invoke-virtual {p1}, Lg/g/a/a/i/i;->getLanguageCache()Ljava/lang/String;

    move-result-object v2

    const-string v3, "profileCacheInfoDTO.languageCache"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v3, Lg/g/b/a/i/a$a;->TRANSLATION:Lg/g/b/a/i/a$a;

    .line 6
    invoke-direct {v1, v2, v3}, Lg/g/b/a/i/b$a;-><init>(Ljava/lang/String;Lg/g/b/a/i/a$a;)V

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    invoke-virtual {p1}, Lg/g/a/a/i/i;->getProfileCache()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    new-instance v1, Lg/g/b/a/i/b$a;

    .line 10
    invoke-virtual {p1}, Lg/g/a/a/i/i;->getProfileCache()Ljava/lang/String;

    move-result-object p1

    const-string v2, "profileCacheInfoDTO.profileCache"

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v2, Lg/g/b/a/i/a$a;->CALLER_PROFILE:Lg/g/b/a/i/a$a;

    .line 12
    invoke-direct {v1, p1, v2}, Lg/g/b/a/i/b$a;-><init>(Ljava/lang/String;Lg/g/b/a/i/a$a;)V

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string p1, "sources"

    .line 14
    invoke-static {v0, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
