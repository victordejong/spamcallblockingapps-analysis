.class public Lcom/hiya/stingray/ui/local/search/c;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/local/search/b;",
        ">;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:J

.field private final d:Lcom/hiya/stingray/manager/o4/a;

.field private final e:Lcom/hiya/stingray/manager/o4/b;

.field private final f:Li/c/b0/c/a;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/o4/a;Lcom/hiya/stingray/manager/o4/b;Li/c/b0/c/a;Lcom/hiya/stingray/manager/x3;)V
    .locals 1

    const-string v0, "localManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfigManager"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/search/c;->d:Lcom/hiya/stingray/manager/o4/a;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/search/c;->e:Lcom/hiya/stingray/manager/o4/b;

    iput-object p3, p0, Lcom/hiya/stingray/ui/local/search/c;->f:Li/c/b0/c/a;

    const-string p1, "local_search_min_req_length"

    .line 2
    invoke-virtual {p4, p1}, Lcom/hiya/stingray/manager/x3;->l(Ljava/lang/String;)J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lcom/hiya/stingray/ui/local/search/c;->b:I

    const-string p1, "local_throttle_search_time_in_millis"

    .line 3
    invoke-virtual {p4, p1}, Lcom/hiya/stingray/manager/x3;->l(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/hiya/stingray/ui/local/search/c;->c:J

    return-void
.end method

.method public static final synthetic t(Lcom/hiya/stingray/ui/local/search/c;)Lcom/hiya/stingray/manager/o4/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/search/c;->d:Lcom/hiya/stingray/manager/o4/a;

    return-object p0
.end method

.method public static final synthetic u(Lcom/hiya/stingray/ui/local/search/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hiya/stingray/ui/local/search/c;->b:I

    return p0
.end method

.method private final v()Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Lkotlin/l<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/h1/i;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/c;->w()Li/c/b0/b/v;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/local/search/b;

    invoke-interface {v1}, Lcom/hiya/stingray/ui/local/search/b;->v()Li/c/b0/b/v;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/hiya/stingray/ui/local/search/c$a;->a:Lcom/hiya/stingray/ui/local/search/c$a;

    .line 4
    invoke-static {v0, v1, v2}, Li/c/b0/b/v;->combineLatest(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/c;)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "Observable\n             \u2026Place)\n                })"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final w()Li/c/b0/b/v;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/search/b;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/local/search/b;->O0()Li/c/b0/b/v;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lcom/hiya/stingray/ui/local/search/c;->c:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Li/c/b0/b/v;->debounce(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/hiya/stingray/ui/local/search/c$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/search/c$b;-><init>(Lcom/hiya/stingray/ui/local/search/c;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->filter(Li/c/b0/d/p;)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "view.userSearchObservabl\u2026 it.length >= searchMin }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final x()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/c;->v()Li/c/b0/b/v;

    move-result-object v0

    .line 2
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/hiya/stingray/ui/local/search/c$c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/search/c$c;-><init>(Lcom/hiya/stingray/ui/local/search/c;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->switchMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/hiya/stingray/ui/local/search/c$d;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/search/c$d;-><init>(Lcom/hiya/stingray/ui/local/search/c;)V

    .line 6
    sget-object v2, Lcom/hiya/stingray/ui/local/search/c$e;->f:Lcom/hiya/stingray/ui/local/search/c$e;

    .line 7
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/search/c;->f:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public final y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/c;->e:Lcom/hiya/stingray/manager/o4/b;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/o4/b;->m()Li/c/b0/b/v;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/hiya/stingray/ui/local/search/c$f;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/search/c$f;-><init>(Lcom/hiya/stingray/ui/local/search/c;)V

    .line 4
    new-instance v2, Lcom/hiya/stingray/ui/local/search/c$g;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/local/search/c$g;-><init>(Lcom/hiya/stingray/ui/local/search/c;)V

    .line 5
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/search/c;->f:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method
