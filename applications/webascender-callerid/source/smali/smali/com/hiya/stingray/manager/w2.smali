.class public Lcom/hiya/stingray/manager/w2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lg/g/b/a/b;

.field private final c:Lcom/hiya/stingray/manager/x3;

.field private final d:Lcom/hiya/stingray/manager/o1;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/hiya/stingray/util/a0;

.field private final g:Lcom/hiya/stingray/manager/v1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/g/b/a/b;Lcom/hiya/stingray/manager/x3;Lcom/hiya/stingray/manager/o1;Ljava/lang/String;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/manager/v1;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiyaCallerId"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfigManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callLogManager"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simIso"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdCache"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/w2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/manager/w2;->b:Lg/g/b/a/b;

    iput-object p3, p0, Lcom/hiya/stingray/manager/w2;->c:Lcom/hiya/stingray/manager/x3;

    iput-object p4, p0, Lcom/hiya/stingray/manager/w2;->d:Lcom/hiya/stingray/manager/o1;

    iput-object p5, p0, Lcom/hiya/stingray/manager/w2;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/hiya/stingray/manager/w2;->f:Lcom/hiya/stingray/util/a0;

    iput-object p7, p0, Lcom/hiya/stingray/manager/w2;->g:Lcom/hiya/stingray/manager/v1;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/manager/w2;Ljava/lang/String;)Li/c/b0/b/e;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/w2;->d(Ljava/lang/String;)Li/c/b0/b/e;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/hiya/stingray/manager/w2;)Lcom/hiya/stingray/manager/o1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/w2;->d:Lcom/hiya/stingray/manager/o1;

    return-object p0
.end method

.method public static final synthetic c(Lcom/hiya/stingray/manager/w2;)Lcom/hiya/stingray/util/a0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/w2;->f:Lcom/hiya/stingray/util/a0;

    return-object p0
.end method

.method private final d(Ljava/lang/String;)Li/c/b0/b/e;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 1
    iget-object v2, p0, Lcom/hiya/stingray/manager/w2;->e:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Lcom/hiya/stingray/util/y;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/hiya/stingray/t/u0;

    move-result-object p1

    const-string v1, "PhoneNumberUtil.formatPhoneNumber(number, simIso)"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/u0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/w2;->n(Lcom/hiya/stingray/t/u0;)Li/c/b0/b/e;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object p1

    const-string v0, "Completable.complete()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method private final f()Li/c/b0/b/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/w2$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/w2$a;-><init>(Lcom/hiya/stingray/manager/w2;)V

    invoke-static {v0}, Li/c/b0/b/e;->t(Ljava/util/concurrent/Callable;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "Completable.fromCallable\u2026ailEvent())\n            }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic m(Lcom/hiya/stingray/manager/w2;Ljava/lang/String;Lg/g/b/c/m;Ljava/lang/String;ILjava/lang/Object;)Li/c/b0/b/e;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/hiya/stingray/manager/w2;->l(Ljava/lang/String;Lg/g/b/c/m;Ljava/lang/String;)Li/c/b0/b/e;

    move-result-object p0

    return-object p0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: saveLocalOverride"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final n(Lcom/hiya/stingray/t/u0;)Li/c/b0/b/e;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/w2;->b:Lg/g/b/a/b;

    .line 2
    new-instance v10, Lg/g/b/c/j;

    .line 3
    sget-object v3, Lg/g/b/c/l;->PHONE_CALL:Lg/g/b/c/l;

    .line 4
    sget-object v1, Lcom/hiya/stingray/util/i$a;->INCOMING:Lcom/hiya/stingray/util/i$a;

    invoke-static {v1}, Lcom/hiya/stingray/t/i1/h0;->a(Lcom/hiya/stingray/util/i$a;)Lg/g/b/c/k;

    move-result-object v4

    .line 5
    invoke-virtual {p1}, Lcom/hiya/stingray/t/u0;->b()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {p1}, Lcom/hiya/stingray/t/u0;->a()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v2, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    .line 8
    invoke-direct/range {v1 .. v9}, Lg/g/b/c/j;-><init>(ZLg/g/b/c/l;Lg/g/b/c/k;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/t;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v10, v1, v2}, Lg/g/b/a/b;->k(Lg/g/b/c/j;ZZ)Li/c/b0/b/e0;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/hiya/stingray/manager/w2$h;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/manager/w2$h;-><init>(Lcom/hiya/stingray/manager/w2;Lcom/hiya/stingray/t/u0;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->n(Li/c/b0/d/o;)Li/c/b0/b/e;

    move-result-object p1

    const-string v0, "hiyaCallerId.getEventCal\u2026ne.formatted, callerId) }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final e()Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/e0<",
            "Ljava/util/List<",
            "Lg/g/b/c/m;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/w2;->b:Lg/g/b/a/b;

    invoke-virtual {v0}, Lg/g/b/a/b;->h()Li/c/b0/b/e0;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/w2;->c:Lcom/hiya/stingray/manager/x3;

    const-string v1, "local_overrides"

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/x3;->j(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final h()V
    .locals 3

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    iget-object v1, p0, Lcom/hiya/stingray/manager/w2;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/w2;->g()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hiya/client/callerid/ui/e;->f(Landroid/content/Context;Z)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/w2;->j()Li/c/b0/b/e;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/hiya/stingray/s/c;->a()Li/c/b0/b/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->j(Li/c/b0/b/j;)Li/c/b0/b/e;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/hiya/stingray/manager/w2$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/w2$b;-><init>(Lcom/hiya/stingray/manager/w2;)V

    .line 5
    sget-object v2, Lcom/hiya/stingray/manager/w2$c;->f:Lcom/hiya/stingray/manager/w2$c;

    .line 6
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    return-void
.end method

.method public final i()Li/c/b0/b/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/w2;->g:Lcom/hiya/stingray/manager/v1;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/v1;->a()V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/w2;->e()Li/c/b0/b/e0;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Li/c/b0/b/e0;->K()Li/c/b0/b/v;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/hiya/stingray/manager/w2$d;->f:Lcom/hiya/stingray/manager/w2$d;

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMapIterable(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/hiya/stingray/manager/w2$e;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/w2$e;-><init>(Lcom/hiya/stingray/manager/w2;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMapCompletable(Li/c/b0/d/o;)Li/c/b0/b/e;

    move-result-object v0

    .line 6
    invoke-direct {p0}, Lcom/hiya/stingray/manager/w2;->f()Li/c/b0/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->d(Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "allLocalOverrides\n      \u2026n(completableForUIUpdate)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final j()Li/c/b0/b/e;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/w2;->g:Lcom/hiya/stingray/manager/v1;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/v1;->a()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/w2;->c:Lcom/hiya/stingray/manager/x3;

    const-string v1, "ttl_local_overrides_hrs"

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/x3;->l(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sub-long/2addr v2, v0

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/manager/w2;->b:Lg/g/b/a/b;

    invoke-virtual {v0, v2, v3}, Lg/g/b/a/b;->m(J)Li/c/b0/b/e0;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Li/c/b0/b/e0;->K()Li/c/b0/b/v;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/hiya/stingray/manager/w2$f;->f:Lcom/hiya/stingray/manager/w2$f;

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMapIterable(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/hiya/stingray/manager/w2$g;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/w2$g;-><init>(Lcom/hiya/stingray/manager/w2;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMapCompletable(Li/c/b0/d/o;)Li/c/b0/b/e;

    move-result-object v0

    .line 8
    invoke-direct {p0}, Lcom/hiya/stingray/manager/w2;->f()Li/c/b0/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->d(Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "hiyaCallerId.getLocalOve\u2026n(completableForUIUpdate)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final k(Ljava/lang/String;)Li/c/b0/b/e;
    .locals 3

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/w2;->g:Lcom/hiya/stingray/manager/v1;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/v1;->a()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/w2;->b:Lg/g/b/a/b;

    invoke-static {}, Lcom/hiya/stingray/util/p;->n()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataUtil.getDefaultLocaleCountry()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lg/g/b/a/b;->o(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/e;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/w2;->d(Ljava/lang/String;)Li/c/b0/b/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Li/c/b0/b/e;->d(Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object p1

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/manager/w2;->f()Li/c/b0/b/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/e;->d(Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object p1

    const-string v0, "hiyaCallerId.removeLocal\u2026n(completableForUIUpdate)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public l(Ljava/lang/String;Lg/g/b/c/m;Ljava/lang/String;)Li/c/b0/b/e;
    .locals 2

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localOverride"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/w2;->g:Lcom/hiya/stingray/manager/v1;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/v1;->a()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/w2;->b:Lg/g/b/a/b;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/hiya/stingray/util/p;->n()Ljava/lang/String;

    move-result-object p3

    const-string v1, "DataUtil.getDefaultLocaleCountry()"

    invoke-static {p3, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :goto_0
    invoke-virtual {v0, p1, p3, p2}, Lg/g/b/a/b;->A(Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/m;)Li/c/b0/b/e;

    move-result-object p2

    .line 5
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/w2;->d(Ljava/lang/String;)Li/c/b0/b/e;

    move-result-object p1

    invoke-virtual {p2, p1}, Li/c/b0/b/e;->d(Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object p1

    .line 6
    invoke-direct {p0}, Lcom/hiya/stingray/manager/w2;->f()Li/c/b0/b/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Li/c/b0/b/e;->d(Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object p1

    const-string p2, "hiyaCallerId.setLocalOve\u2026n(completableForUIUpdate)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
