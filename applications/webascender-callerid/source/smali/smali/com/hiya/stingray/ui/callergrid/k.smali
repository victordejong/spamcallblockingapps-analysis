.class public final Lcom/hiya/stingray/ui/callergrid/k;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/callergrid/l;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Li/c/b0/c/c;

.field private final c:Lcom/hiya/stingray/manager/u1;

.field private final d:Li/c/b0/c/a;

.field private final e:Lcom/hiya/stingray/util/a0;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/u1;Li/c/b0/c/a;Lcom/hiya/stingray/util/a0;)V
    .locals 1

    const-string v0, "callerGridManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/callergrid/k;->c:Lcom/hiya/stingray/manager/u1;

    iput-object p2, p0, Lcom/hiya/stingray/ui/callergrid/k;->d:Li/c/b0/c/a;

    iput-object p3, p0, Lcom/hiya/stingray/ui/callergrid/k;->e:Lcom/hiya/stingray/util/a0;

    return-void
.end method

.method public static final synthetic t(Lcom/hiya/stingray/ui/callergrid/k;)Lcom/hiya/stingray/manager/u1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/callergrid/k;->c:Lcom/hiya/stingray/manager/u1;

    return-object p0
.end method

.method public static final synthetic u(Lcom/hiya/stingray/ui/callergrid/k;)Li/c/b0/c/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/callergrid/k;->b:Li/c/b0/c/c;

    return-object p0
.end method

.method public static final synthetic v(Lcom/hiya/stingray/ui/callergrid/k;)Lcom/hiya/stingray/util/a0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/callergrid/k;->e:Lcom/hiya/stingray/util/a0;

    return-object p0
.end method

.method private final x()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Lkotlin/l<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/k;->e:Lcom/hiya/stingray/util/a0;

    const-class v1, Lcom/hiya/stingray/util/i0/a;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/ui/callergrid/k$a;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/callergrid/k$a;-><init>(Lcom/hiya/stingray/ui/callergrid/k;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/hiya/stingray/ui/callergrid/k$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/callergrid/k$b;-><init>(Lcom/hiya/stingray/ui/callergrid/k;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "rxEventBus.filteredObser\u2026      }\n                }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final y(Lcom/hiya/stingray/q/c/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/k;->c:Lcom/hiya/stingray/manager/u1;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/u1;->l(Lcom/hiya/stingray/q/c/c;)Li/c/b0/b/v;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/hiya/stingray/s/b;

    invoke-direct {v0}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/hiya/stingray/ui/callergrid/k$c;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/callergrid/k$c;-><init>(Lcom/hiya/stingray/ui/callergrid/k;)V

    .line 4
    sget-object v1, Lcom/hiya/stingray/ui/callergrid/k$d;->f:Lcom/hiya/stingray/ui/callergrid/k$d;

    .line 5
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/k;->d:Li/c/b0/c/a;

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method private final z()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/callergrid/k;->x()Li/c/b0/b/v;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/hiya/stingray/ui/callergrid/k$e;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/callergrid/k$e;-><init>(Lcom/hiya/stingray/ui/callergrid/k;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/callergrid/k;->b:Li/c/b0/c/c;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/k;->c:Lcom/hiya/stingray/manager/u1;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u1;->m()Li/c/b0/b/v;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/hiya/stingray/ui/callergrid/k$f;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/callergrid/k$f;-><init>(Lcom/hiya/stingray/ui/callergrid/k;)V

    .line 4
    sget-object v2, Lcom/hiya/stingray/ui/callergrid/k$g;->f:Lcom/hiya/stingray/ui/callergrid/k$g;

    .line 5
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/hiya/stingray/ui/callergrid/k;->d:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public final w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/k;->c:Lcom/hiya/stingray/manager/u1;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u1;->i()Lcom/hiya/stingray/q/c/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/callergrid/k;->y(Lcom/hiya/stingray/q/c/c;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/ui/callergrid/k;->z()V

    :goto_0
    return-void
.end method
