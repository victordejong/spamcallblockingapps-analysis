.class public Lcom/hiya/stingray/ui/callergrid/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/hiya/stingray/q/b/k;

.field private final e:Lcom/hiya/stingray/q/d/a;

.field private final f:Lcom/hiya/stingray/q/b/p;

.field private final g:Lcom/hiya/stingray/q/b/u;

.field private final h:Lcom/hiya/stingray/t/i1/k;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/q/b/k;Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/q/b/p;Lcom/hiya/stingray/q/b/u;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/t/i1/k;)V
    .locals 1

    const-string v0, "callLogContentProvider"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdProvider"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactContentProvider"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionHandler"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "callerGridMapper"

    invoke-static {p6, p5}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/callergrid/j;->d:Lcom/hiya/stingray/q/b/k;

    iput-object p2, p0, Lcom/hiya/stingray/ui/callergrid/j;->e:Lcom/hiya/stingray/q/d/a;

    iput-object p3, p0, Lcom/hiya/stingray/ui/callergrid/j;->f:Lcom/hiya/stingray/q/b/p;

    iput-object p4, p0, Lcom/hiya/stingray/ui/callergrid/j;->g:Lcom/hiya/stingray/q/b/u;

    iput-object p6, p0, Lcom/hiya/stingray/ui/callergrid/j;->h:Lcom/hiya/stingray/t/i1/k;

    const/4 p1, 0x2

    new-array p2, p1, [Ljava/lang/String;

    .line 2
    sget-object p3, Lcom/hiya/stingray/t/z0;->SPAM:Lcom/hiya/stingray/t/z0;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p2, p4

    sget-object p3, Lcom/hiya/stingray/t/z0;->FRAUD:Lcom/hiya/stingray/t/z0;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    const/4 p5, 0x1

    aput-object p3, p2, p5

    invoke-static {p2}, Lkotlin/s/k;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/hiya/stingray/ui/callergrid/j;->a:Ljava/util/List;

    new-array p1, p1, [Ljava/lang/Integer;

    const/4 p2, 0x6

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p4

    const/4 p2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p5

    invoke-static {p1}, Lkotlin/s/k;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/callergrid/j;->b:Ljava/util/List;

    const-string p1, "PERSON"

    const-string p2, "CONTACT"

    const-string p3, "UNCATEGORIZED"

    .line 4
    filled-new-array {p1, p2, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/s/k;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/callergrid/j;->c:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/ui/callergrid/j;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/callergrid/j;->b:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic b(Lcom/hiya/stingray/ui/callergrid/j;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/callergrid/j;->a:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic c(Lcom/hiya/stingray/ui/callergrid/j;Ljava/util/List;)Li/c/b0/b/v;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/callergrid/j;->n(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/hiya/stingray/ui/callergrid/j;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Li/c/b0/b/v;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/stingray/ui/callergrid/j;->o(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method private final f()Li/c/b0/b/v;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/a;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/j;->d:Lcom/hiya/stingray/q/b/k;

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/callergrid/j;->e:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v1}, Lcom/hiya/stingray/q/d/a;->n()J

    move-result-wide v1

    const/16 v3, 0x1f4

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Lcom/hiya/stingray/q/b/k;->e(IJ)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "callLogContentProvider.g\u2026es.lastDeleteCallRequest)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final m(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/b;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Lcom/hiya/stingray/q/c/b;

    .line 4
    invoke-virtual {v2}, Lcom/hiya/stingray/q/c/b;->c()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lkotlin/s/k;->i0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p2, v1}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Lcom/hiya/stingray/q/c/b;

    .line 8
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/b;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlin/s/k;->i0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/hiya/stingray/ui/callergrid/j;->e:Lcom/hiya/stingray/q/d/a;

    new-instance v1, Lcom/hiya/stingray/q/c/c;

    invoke-direct {v1, v0, p1}, Lcom/hiya/stingray/q/c/c;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p2, v1}, Lcom/hiya/stingray/q/d/a;->P(Lcom/hiya/stingray/q/c/c;)Z

    move-result p1

    return p1
.end method

.method private final n(Ljava/util/List;)Li/c/b0/b/v;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/q/c/a;",
            ">;)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/b;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lcom/hiya/stingray/q/c/a;

    .line 4
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/a;->c()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    check-cast v3, Ljava/util/List;

    .line 9
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lkotlin/s/k;->i0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/callergrid/j;->i(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    .line 11
    new-instance v1, Lcom/hiya/stingray/ui/callergrid/j$d;

    invoke-direct {v1, p0, v0}, Lcom/hiya/stingray/ui/callergrid/j$d;-><init>(Lcom/hiya/stingray/ui/callergrid/j;Ljava/util/Map;)V

    invoke-virtual {p1, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    const-string v0, "getContactsForPhones(num\u2026ogsMap)\n                }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final o(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/e;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/q/c/a;",
            ">;>;)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/b;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/hiya/stingray/ui/callergrid/j;->k(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p2

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/callergrid/j$e;

    invoke-direct {v0, p0, p1, p3}, Lcom/hiya/stingray/ui/callergrid/j$e;-><init>(Lcom/hiya/stingray/ui/callergrid/j;Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {p2, v0}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    const-string p2, "getRealmIdsForPhones(non\u2026gsMap))\n                }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final q(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/b;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/callergrid/j$f;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/callergrid/j$f;-><init>()V

    invoke-static {p1, v0}, Lkotlin/s/k;->d0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final e(Lkotlin/w/b/l;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/hiya/stingray/q/c/b;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;>;"
        }
    .end annotation

    const-string v0, "filterPredicate"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/callergrid/j;->g()Li/c/b0/b/v;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/ui/callergrid/j$a;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/ui/callergrid/j$a;-><init>(Lcom/hiya/stingray/ui/callergrid/j;Lkotlin/w/b/l;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    const-string v0, "getCallerGridData()\n    \u2026(data))\n                }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final g()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/b;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/callergrid/j;->f()Li/c/b0/b/v;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/ui/callergrid/j$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/callergrid/j$b;-><init>(Lcom/hiya/stingray/ui/callergrid/j;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "getCallLogsObservable()\n\u2026llLogs)\n                }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final h()Lcom/hiya/stingray/t/i1/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/j;->h:Lcom/hiya/stingray/t/i1/k;

    return-object v0
.end method

.method public i(Ljava/util/List;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/e;",
            ">;>;"
        }
    .end annotation

    const-string v0, "phoneNumbers"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/j;->g:Lcom/hiya/stingray/q/b/u;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/b/u;->e(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    const-string v0, "contactContentProvider.g\u2026actByPhones(phoneNumbers)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/j;->c:Ljava/util/List;

    return-object v0
.end method

.method public k(Ljava/util/List;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Li/c/b0/b/v<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/q/c/i/c;",
            ">;>;"
        }
    .end annotation

    const-string v0, "phoneNumbers"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/j;->f:Lcom/hiya/stingray/q/b/p;

    invoke-static {p1}, Lkotlin/s/k;->m0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/b/p;->d(Ljava/util/Set;)Li/c/b0/b/v;

    move-result-object p1

    const-string v0, "callerIdProvider.findCal\u2026ble(phoneNumbers.toSet())"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final l()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/callergrid/j;->g()Li/c/b0/b/v;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/ui/callergrid/j$c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/callergrid/j$c;-><init>(Lcom/hiya/stingray/ui/callergrid/j;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "getCallerGridData()\n    \u2026st(it))\n                }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final p(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/b;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "masterList"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/hiya/stingray/q/c/b;

    .line 3
    iget-object v4, p0, Lcom/hiya/stingray/ui/callergrid/j;->c:Ljava/util/List;

    invoke-virtual {v3}, Lcom/hiya/stingray/q/c/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/callergrid/j;->q(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/hiya/stingray/q/c/b;

    .line 6
    invoke-virtual {v3}, Lcom/hiya/stingray/q/c/b;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BUSINESS"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lcom/hiya/stingray/ui/callergrid/j;->q(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/16 v1, 0xa

    .line 7
    invoke-static {v0, v1}, Lkotlin/s/k;->f0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v1}, Lkotlin/s/k;->f0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/hiya/stingray/ui/callergrid/j;->m(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method
