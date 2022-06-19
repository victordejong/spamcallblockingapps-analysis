.class public final Lg/g/b/d/g/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/b/d/g/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lg/g/b/d/c/j;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lg/g/b/d/d/a;


# direct methods
.method public constructor <init>(Lg/g/b/d/d/a;Lg/g/b/d/c/i;Lg/g/b/d/c/g;Lg/g/b/d/c/c;Lg/g/b/d/c/e;)V
    .locals 1

    const-string v0, "requestDao"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reputationApiAdapter"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placesApiAdapter"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataCollectionApiAdapter"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "performanceEventApiAdapter"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/b/d/g/e;->b:Lg/g/b/d/d/a;

    const/4 p1, 0x4

    new-array p1, p1, [Lg/g/b/d/c/j;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x1

    aput-object p3, p1, p2

    const/4 p2, 0x2

    aput-object p4, p1, p2

    const/4 p2, 0x3

    aput-object p5, p1, p2

    .line 2
    invoke-static {p1}, Lkotlin/s/h0;->c([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lg/g/b/d/g/e;->a:Ljava/util/HashSet;

    return-void
.end method

.method public static final synthetic a(Lg/g/b/d/g/e;)Lg/g/b/d/d/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/b/d/g/e;->b:Lg/g/b/d/d/a;

    return-object p0
.end method

.method public static final synthetic b(Lg/g/b/d/g/e;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Li/c/b0/b/e;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lg/g/b/d/g/e;->d(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Li/c/b0/b/e;

    move-result-object p0

    return-object p0
.end method

.method private final d(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Li/c/b0/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/b/d/e/a;",
            ">;",
            "Ljava/util/List<",
            "Lg/g/b/d/e/a;",
            ">;",
            "Ljava/util/List<",
            "Lg/g/b/d/e/a;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/b/d/g/e;->a:Ljava/util/HashSet;

    invoke-static {v0}, Li/c/b0/b/v;->fromIterable(Ljava/lang/Iterable;)Li/c/b0/b/v;

    move-result-object v0

    .line 2
    new-instance v1, Lg/g/b/d/g/e$g;

    invoke-direct {v1, p1, p2, p3}, Lg/g/b/d/g/e$g;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    .line 3
    invoke-static {p1}, Li/c/b0/b/e;->u(Li/c/b0/b/a0;)Li/c/b0/b/e;

    move-result-object p1

    const-string p2, "Completable.fromObservable(observable)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final c()Li/c/b0/b/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/d/g/e;->b:Lg/g/b/d/d/a;

    invoke-virtual {v0}, Lg/g/b/d/d/a;->d()Li/c/b0/b/e0;

    move-result-object v0

    .line 2
    sget-object v1, Lg/g/b/d/g/e$b;->f:Lg/g/b/d/g/e$b;

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object v0

    .line 3
    new-instance v1, Lg/g/b/d/g/e$c;

    invoke-direct {v1, p0}, Lg/g/b/d/g/e$c;-><init>(Lg/g/b/d/g/e;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->n(Li/c/b0/d/o;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "requestDao.getAllStoredR\u2026ests(stale)\n            }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final e()Li/c/b0/b/e;
    .locals 2

    .line 1
    new-instance v0, Lg/g/b/d/g/e$a;

    invoke-direct {v0}, Lg/g/b/d/g/e$a;-><init>()V

    invoke-static {v0}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    .line 2
    new-instance v1, Lg/g/b/d/g/e$d;

    invoke-direct {v1, p0}, Lg/g/b/d/g/e$d;-><init>(Lg/g/b/d/g/e;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMapSingle(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    new-instance v1, Lg/g/b/d/g/e$e;

    invoke-direct {v1, p0}, Lg/g/b/d/g/e$e;-><init>(Lg/g/b/d/g/e;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMapSingle(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 4
    new-instance v1, Lg/g/b/d/g/e$f;

    invoke-direct {v1, p0}, Lg/g/b/d/g/e$f;-><init>(Lg/g/b/d/g/e;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMapCompletable(Li/c/b0/d/o;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "Observable.just(UploadRe\u2026ryCount(results.failed) }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
