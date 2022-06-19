.class public final Lg/g/a/a/h/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/a/h/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lg/g/a/a/g/h/a;

.field private final c:Lg/g/a/b/j1/e;

.field private final d:Lg/g/a/d/a;

.field private final e:Lg/g/a/b/j1/k;

.field private final f:Lg/g/a/b/j1/a;

.field private final g:Lg/g/a/a/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/g/a/a/g/h/a;Lg/g/a/b/j1/e;Lg/g/a/d/a;Lg/g/a/b/j1/k;Lg/g/a/b/j1/a;Lg/g/a/a/l/b;Lg/g/a/a/f;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authApi"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiyaTokenProvider"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encSharedPref"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenProvider"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiInfoProvider"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenInfoMapper"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/a/a/h/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lg/g/a/a/h/b;->b:Lg/g/a/a/g/h/a;

    iput-object p3, p0, Lg/g/a/a/h/b;->c:Lg/g/a/b/j1/e;

    iput-object p4, p0, Lg/g/a/a/h/b;->d:Lg/g/a/d/a;

    iput-object p5, p0, Lg/g/a/a/h/b;->e:Lg/g/a/b/j1/k;

    iput-object p6, p0, Lg/g/a/a/h/b;->f:Lg/g/a/b/j1/a;

    iput-object p8, p0, Lg/g/a/a/h/b;->g:Lg/g/a/a/f;

    return-void
.end method

.method public static final synthetic e(Lg/g/a/a/h/b;)Lg/g/a/b/j1/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/h/b;->f:Lg/g/a/b/j1/a;

    return-object p0
.end method

.method public static final synthetic f(Lg/g/a/a/h/b;)Lg/g/a/a/g/h/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/h/b;->b:Lg/g/a/a/g/h/a;

    return-object p0
.end method

.method public static final synthetic g(Lg/g/a/a/h/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/h/b;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic h(Lg/g/a/a/h/b;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lg/g/a/a/h/b;->l(ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic i(Lg/g/a/a/h/b;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/g/a/a/h/b;->m(Ljava/util/List;)V

    return-void
.end method

.method private final k()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Lg/g/a/a/i/o/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/a/a/h/b;->e:Lg/g/a/b/j1/k;

    invoke-interface {v0}, Lg/g/a/b/j1/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/g/a/a/h/b;->e:Lg/g/a/b/j1/k;

    invoke-interface {v0}, Lg/g/a/b/j1/k;->b()Li/c/b0/b/v;

    move-result-object v0

    sget-object v1, Lg/g/a/a/h/b$d;->f:Lg/g/a/a/h/b$d;

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "tokenProvider.accessToke\u2026rebaseTokenGrantDTO(it) }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lg/g/a/a/h/b;->c:Lg/g/a/b/j1/e;

    invoke-virtual {v0}, Lg/g/a/b/j1/e;->j()Li/c/b0/b/e0;

    move-result-object v0

    sget-object v1, Lg/g/a/a/h/b$e;->f:Lg/g/a/a/h/b$e;

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object v0

    invoke-virtual {v0}, Li/c/b0/b/e0;->K()Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "hiyaTokenProvider.token.\u2026GrantDTO }.toObservable()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :goto_0
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 5
    new-instance v1, Lg/g/a/a/h/b$a;

    invoke-direct {v1, p0}, Lg/g/a/a/h/b$a;-><init>(Lg/g/a/a/h/b;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 6
    new-instance v1, Lg/g/a/a/h/b$b;

    invoke-direct {v1, p0}, Lg/g/a/a/h/b$b;-><init>(Lg/g/a/a/h/b;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 7
    new-instance v1, Lg/g/a/a/h/b$c;

    invoke-direct {v1, p0}, Lg/g/a/a/h/b$c;-><init>(Lg/g/a/a/h/b;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->doOnNext(Li/c/b0/d/g;)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "grantDto.observeOn(Sched\u2026grantInfos)\n            }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final l(ILjava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 2
    iget-object p1, p0, Lg/g/a/a/h/b;->d:Lg/g/a/d/a;

    invoke-virtual {p1, v0, v1}, Lg/g/a/d/a;->g(J)V

    .line 3
    iget-object p1, p0, Lg/g/a/a/h/b;->d:Lg/g/a/d/a;

    invoke-virtual {p1, p2}, Lg/g/a/d/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method private final m(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lg/g/a/a/i/o/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lg/g/a/a/i/o/i;

    .line 2
    instance-of v5, v4, Lg/g/a/a/i/o/m;

    if-nez v5, :cond_1

    move-object v4, v3

    :cond_1
    check-cast v4, Lg/g/a/a/i/o/m;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_0

    goto :goto_1

    :cond_3
    move-object v0, v3

    .line 3
    :goto_1
    instance-of p1, v0, Lg/g/a/a/i/o/m;

    if-nez p1, :cond_4

    move-object v0, v3

    :cond_4
    check-cast v0, Lg/g/a/a/i/o/m;

    .line 4
    iget-object p1, p0, Lg/g/a/a/h/b;->g:Lg/g/a/a/f;

    if-eqz p1, :cond_a

    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lg/g/a/a/i/o/m;->getHiyaSelectInfoDTO()Lg/g/a/a/i/o/n;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lg/g/a/a/i/o/n;->getPartnerId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 6
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-ne v4, v2, :cond_9

    invoke-virtual {v0}, Lg/g/a/a/i/o/m;->getHiyaSelectInfoDTO()Lg/g/a/a/i/o/n;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lg/g/a/a/i/o/n;->getPartnerDisplayName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 7
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_6

    const/4 v1, 0x1

    :cond_6
    if-ne v1, v2, :cond_9

    .line 8
    new-instance v1, Lg/g/a/a/m/c;

    invoke-virtual {v0}, Lg/g/a/a/i/o/m;->getHiyaSelectInfoDTO()Lg/g/a/a/i/o/n;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lg/g/a/a/i/o/n;->getPartnerDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lg/g/a/a/i/o/m;->getHiyaSelectInfoDTO()Lg/g/a/a/i/o/n;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lg/g/a/a/i/o/n;->getPartnerId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lg/g/a/a/m/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_3

    :cond_7
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3

    :cond_8
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3

    .line 9
    :cond_9
    :goto_3
    invoke-interface {p1, v3}, Lg/g/a/a/f;->a(Lg/g/a/a/m/c;)V

    :cond_a
    return-void
.end method


# virtual methods
.method public a(Lg/g/a/a/i/o/j;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/a/i/o/j;",
            ")",
            "Li/c/b0/b/v<",
            "Lg/g/a/a/i/o/a;",
            ">;"
        }
    .end annotation

    const-string v0, "grants"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/a/a/h/b;->b:Lg/g/a/a/g/h/a;

    invoke-interface {v0, p1}, Lg/g/a/a/g/h/a;->a(Lg/g/a/a/i/o/j;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public b(ZZ)Li/c/b0/b/v;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Li/c/b0/b/v<",
            "Lg/g/a/a/i/o/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/a/a/h/b;->d:Lg/g/a/d/a;

    invoke-virtual {v0}, Lg/g/a/d/a;->c()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p2, p0, Lg/g/a/a/h/b;->d:Lg/g/a/d/a;

    invoke-virtual {p2}, Lg/g/a/d/a;->d()Ljava/lang/Long;

    move-result-object p2

    const-string v3, "encSharedPref.expTTL"

    invoke-static {p2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p2, v1, v3

    if-gez p2, :cond_1

    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lg/g/a/a/i/o/a;

    invoke-direct {p1}, Lg/g/a/a/i/o/a;-><init>()V

    const-string p2, "savedToken"

    .line 4
    invoke-static {v0, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lg/g/a/a/i/o/a;->setAccessToken(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/g/a/a/i/o/a;->setGrantInfos(Ljava/util/List;)V

    .line 6
    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    const-string p2, "Observable.just(Authenti\u2026List()\n                })"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lg/g/a/a/h/b;->d:Lg/g/a/d/a;

    invoke-virtual {p1}, Lg/g/a/d/a;->a()V

    .line 8
    :cond_2
    invoke-direct {p0}, Lg/g/a/a/h/b;->k()Li/c/b0/b/v;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lg/g/a/a/h/b;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lg/g/a/a/h/b;->j()Li/c/b0/b/v;

    move-result-object v1

    invoke-virtual {v1}, Li/c/b0/b/v;->blockingFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/g/a/a/i/o/a;

    invoke-virtual {v1}, Lg/g/a/a/i/o/a;->getAccessToken()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/h/b;->d:Lg/g/a/d/a;

    invoke-virtual {v0}, Lg/g/a/d/a;->a()V

    return-void
.end method

.method public j()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Lg/g/a/a/i/o/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lg/g/a/a/h/b;->b(ZZ)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method
