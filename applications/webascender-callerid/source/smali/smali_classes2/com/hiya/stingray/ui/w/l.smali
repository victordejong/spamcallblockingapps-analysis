.class public final Lcom/hiya/stingray/ui/w/l;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/w/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/w/o;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Li/c/b0/k/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/a<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n0;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lcom/hiya/stingray/t/h1/i;

.field private i:Li/c/b0/b/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/v<",
            "Lcom/hiya/stingray/ui/w/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Li/c/b0/c/a;

.field private k:Z

.field private final l:Landroid/content/Context;

.field private final m:Li/c/b0/c/a;

.field private final n:Lcom/hiya/stingray/manager/o1;

.field private final o:Lcom/hiya/stingray/manager/h4;

.field private final p:Lcom/hiya/stingray/manager/z3;

.field private final q:Lcom/hiya/stingray/manager/o4/a;

.field private final r:Lcom/hiya/stingray/manager/o4/b;

.field private final s:Lcom/hiya/stingray/ui/local/search/f;

.field private final t:Lcom/hiya/stingray/ui/login/o;

.field private final u:Lcom/hiya/stingray/manager/y2;

.field private final v:Lcom/hiya/stingray/ui/w/f;

.field private final w:Lcom/hiya/stingray/manager/x3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Li/c/b0/c/a;Lcom/hiya/stingray/manager/o1;Lcom/hiya/stingray/manager/h4;Lcom/hiya/stingray/manager/z3;Lcom/hiya/stingray/manager/o4/a;Lcom/hiya/stingray/manager/o4/b;Lcom/hiya/stingray/ui/local/search/f;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/manager/y2;Lcom/hiya/stingray/ui/w/f;Lcom/hiya/stingray/manager/x3;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callLogManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAccountManager"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchManager"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localManager"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationManager"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchAnalytics"

    invoke-static {p8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionHandler"

    invoke-static {p9, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lookupManager"

    invoke-static {p10, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searcherCallLogsFilter"

    invoke-static {p11, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfigManager"

    invoke-static {p12, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/l;->l:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/ui/w/l;->m:Li/c/b0/c/a;

    iput-object p3, p0, Lcom/hiya/stingray/ui/w/l;->n:Lcom/hiya/stingray/manager/o1;

    iput-object p4, p0, Lcom/hiya/stingray/ui/w/l;->o:Lcom/hiya/stingray/manager/h4;

    iput-object p5, p0, Lcom/hiya/stingray/ui/w/l;->p:Lcom/hiya/stingray/manager/z3;

    iput-object p6, p0, Lcom/hiya/stingray/ui/w/l;->q:Lcom/hiya/stingray/manager/o4/a;

    iput-object p7, p0, Lcom/hiya/stingray/ui/w/l;->r:Lcom/hiya/stingray/manager/o4/b;

    iput-object p8, p0, Lcom/hiya/stingray/ui/w/l;->s:Lcom/hiya/stingray/ui/local/search/f;

    iput-object p9, p0, Lcom/hiya/stingray/ui/w/l;->t:Lcom/hiya/stingray/ui/login/o;

    iput-object p10, p0, Lcom/hiya/stingray/ui/w/l;->u:Lcom/hiya/stingray/manager/y2;

    iput-object p11, p0, Lcom/hiya/stingray/ui/w/l;->v:Lcom/hiya/stingray/ui/w/f;

    iput-object p12, p0, Lcom/hiya/stingray/ui/w/l;->w:Lcom/hiya/stingray/manager/x3;

    .line 2
    invoke-static {}, Li/c/b0/k/a;->c()Li/c/b0/k/a;

    move-result-object p1

    const-string p2, "BehaviorSubject.create()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/l;->b:Li/c/b0/k/a;

    const-string p1, "local_throttle_search_time_in_millis"

    .line 3
    invoke-virtual {p12, p1}, Lcom/hiya/stingray/manager/x3;->l(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/hiya/stingray/ui/w/l;->c:J

    const-string p1, "local_search_min_req_length"

    .line 4
    invoke-virtual {p12, p1}, Lcom/hiya/stingray/manager/x3;->l(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/hiya/stingray/ui/w/l;->d:J

    .line 5
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/l;->g:Ljava/lang/String;

    .line 6
    new-instance p1, Li/c/b0/c/a;

    invoke-direct {p1}, Li/c/b0/c/a;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/l;->j:Li/c/b0/c/a;

    return-void
.end method

.method public static final synthetic A(Lcom/hiya/stingray/ui/w/l;)Lcom/hiya/stingray/ui/w/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/w/l;->v:Lcom/hiya/stingray/ui/w/f;

    return-object p0
.end method

.method public static final synthetic B(Lcom/hiya/stingray/ui/w/l;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/w/l;->K(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic C(Lcom/hiya/stingray/ui/w/l;Ljava/util/List;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/w/l;->L(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic D(Lcom/hiya/stingray/ui/w/l;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/w/l;->f:Z

    return-void
.end method

.method public static final synthetic E(Lcom/hiya/stingray/ui/w/l;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/w/l;->e:Z

    return-void
.end method

.method public static final synthetic F(Lcom/hiya/stingray/ui/w/l;Lcom/hiya/stingray/t/h1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/w/l;->h:Lcom/hiya/stingray/t/h1/i;

    return-void
.end method

.method public static final synthetic G(Lcom/hiya/stingray/ui/w/l;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/w/l;->g:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic H(Lcom/hiya/stingray/ui/w/l;Lcom/hiya/stingray/t/h1/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/w/l;->X(Lcom/hiya/stingray/t/h1/i;)V

    return-void
.end method

.method private final I(Ljava/lang/String;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l;->g:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v0, v2, :cond_1

    .line 3
    iget-object v4, p0, Lcom/hiya/stingray/ui/w/l;->g:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v6, ""

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lkotlin/c0/m;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/util/c0;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 4
    :cond_1
    iget-object v5, p0, Lcom/hiya/stingray/ui/w/l;->g:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v6, ""

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lkotlin/c0/m;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/util/c0;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private final J()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l;->t:Lcom/hiya/stingray/ui/login/o;

    iget-object v1, p0, Lcom/hiya/stingray/ui/w/l;->l:Landroid/content/Context;

    sget-object v2, Lcom/hiya/stingray/util/n;->e:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final K(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v0, p1

    iget-wide v2, p0, Lcom/hiya/stingray/ui/w/l;->d:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final L(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/n0;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/w/o;

    invoke-interface {p1}, Lcom/hiya/stingray/ui/w/o;->H()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/w/o;

    invoke-interface {p1}, Lcom/hiya/stingray/ui/w/o;->H()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/util/c0;->e(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final M()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l;->n:Lcom/hiya/stingray/manager/o1;

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/w/l;->o:Lcom/hiya/stingray/manager/h4;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/o1;->j(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/hiya/stingray/ui/w/l$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/w/l$b;-><init>(Lcom/hiya/stingray/ui/w/l;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/hiya/stingray/ui/w/l$c;->f:Lcom/hiya/stingray/ui/w/l$c;

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/hiya/stingray/ui/w/l$d;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/w/l$d;-><init>(Lcom/hiya/stingray/ui/w/l;)V

    .line 6
    new-instance v2, Lcom/hiya/stingray/ui/w/l$e;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/w/l$e;-><init>(Lcom/hiya/stingray/ui/w/l;)V

    .line 7
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/hiya/stingray/ui/w/l;->m:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method private final W()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/w/o;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/w/o;->n()Li/c/b0/k/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/w/o;

    invoke-interface {v1}, Lcom/hiya/stingray/ui/w/o;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private final X(Lcom/hiya/stingray/t/h1/i;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/w/o;

    invoke-direct {p0}, Lcom/hiya/stingray/ui/w/l;->J()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/hiya/stingray/ui/w/o;->v0(Lcom/hiya/stingray/t/h1/i;Z)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/w/o;

    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l;->l:Landroid/content/Context;

    const v1, 0x7f110323

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/hiya/stingray/ui/w/o;->K0(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/w/o;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    invoke-interface {p1, v0}, Lcom/hiya/stingray/ui/w/o;->K0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final synthetic t(Lcom/hiya/stingray/ui/w/l;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/w/l;->I(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic u(Lcom/hiya/stingray/ui/w/l;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/w/l;->l:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic v(Lcom/hiya/stingray/ui/w/l;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/w/l;->J()Z

    move-result p0

    return p0
.end method

.method public static final synthetic w(Lcom/hiya/stingray/ui/w/l;)Li/c/b0/k/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/w/l;->b:Li/c/b0/k/a;

    return-object p0
.end method

.method public static final synthetic x(Lcom/hiya/stingray/ui/w/l;)Lcom/hiya/stingray/manager/o4/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/w/l;->q:Lcom/hiya/stingray/manager/o4/a;

    return-object p0
.end method

.method public static final synthetic y(Lcom/hiya/stingray/ui/w/l;)Lcom/hiya/stingray/t/h1/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/w/l;->h:Lcom/hiya/stingray/t/h1/i;

    return-object p0
.end method

.method public static final synthetic z(Lcom/hiya/stingray/ui/w/l;)Lcom/hiya/stingray/manager/z3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/w/l;->p:Lcom/hiya/stingray/manager/z3;

    return-object p0
.end method


# virtual methods
.method public final N(Lcom/hiya/stingray/t/h1/d;)V
    .locals 1

    const-string v0, "directoryItem"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l;->s:Lcom/hiya/stingray/ui/local/search/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/search/f;->f()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l;->l:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/h1/d;->j()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/s/k;->J(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/hiya/stingray/util/u;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final O(Lcom/hiya/stingray/t/h1/d;)V
    .locals 4

    const-string v0, "directoryItem"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l;->s:Lcom/hiya/stingray/ui/local/search/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/search/f;->j()V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/w/o;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/w/o;->j()Landroidx/fragment/app/e;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/w/o;

    invoke-interface {v1}, Lcom/hiya/stingray/ui/w/o;->j()Landroidx/fragment/app/e;

    move-result-object v1

    .line 4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "directory_item"

    .line 5
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    const-class p1, Lcom/hiya/stingray/ui/local/f/k;

    .line 7
    invoke-static {v1, v2, p1}, Lcom/hiya/stingray/ui/common/SinglePanelFragmentActivity;->O(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final P()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l;->t:Lcom/hiya/stingray/ui/login/o;

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/w/o;

    invoke-interface {v1}, Lcom/hiya/stingray/ui/w/o;->j()Landroidx/fragment/app/e;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 4
    sget-object v3, Lcom/hiya/stingray/util/n;->f:[Ljava/lang/String;

    const/16 v4, 0x1775

    .line 5
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hiya/stingray/ui/login/o;->g(Landroid/app/Activity;Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)Z

    return-void

    .line 6
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.fragment.app.Fragment"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final Q(Lcom/hiya/stingray/t/n0;)V
    .locals 3

    const-string v0, "identityItem"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/hiya/stingray/ui/CallPickerDialog;->C:Lcom/hiya/stingray/ui/CallPickerDialog$a;

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/w/o;

    invoke-interface {v1}, Lcom/hiya/stingray/ui/w/o;->j()Landroidx/fragment/app/e;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/hiya/stingray/ui/local/search/f;->b:Lcom/hiya/stingray/ui/local/search/f$a;

    invoke-virtual {v2, p1}, Lcom/hiya/stingray/ui/local/search/f$a;->a(Lcom/hiya/stingray/t/n0;)Lcom/hiya/stingray/util/g0/c;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, p1, v2}, Lcom/hiya/stingray/ui/CallPickerDialog$a;->a(Landroid/content/Context;Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/util/g0/c;)Lcom/hiya/stingray/ui/CallPickerDialog;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l;->s:Lcom/hiya/stingray/ui/local/search/f;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/local/search/f;->e(Lcom/hiya/stingray/t/n0;)V

    .line 7
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/w/o;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/w/o;->j()Landroidx/fragment/app/e;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->i()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lkotlin/s/k;->I(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 9
    invoke-static {v0, p1}, Lcom/hiya/stingray/util/u;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final R(Lcom/hiya/stingray/t/n0;)V
    .locals 2

    const-string v0, "identityItem"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l;->s:Lcom/hiya/stingray/ui/local/search/f;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/local/search/f;->i(Lcom/hiya/stingray/t/n0;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l;->p:Lcom/hiya/stingray/manager/z3;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/z3;->d(Lcom/hiya/stingray/t/n0;)Li/c/b0/b/v;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/hiya/stingray/s/b;

    invoke-direct {v0}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/hiya/stingray/ui/w/l$f;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/w/l$f;-><init>(Lcom/hiya/stingray/ui/w/l;)V

    .line 5
    sget-object v1, Lcom/hiya/stingray/ui/w/l$g;->f:Lcom/hiya/stingray/ui/w/l$g;

    .line 6
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l;->m:Li/c/b0/c/a;

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public final S()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l;->t:Lcom/hiya/stingray/ui/login/o;

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/w/o;

    invoke-interface {v1}, Lcom/hiya/stingray/ui/w/o;->j()Landroidx/fragment/app/e;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 4
    sget-object v3, Lcom/hiya/stingray/util/n;->e:[Ljava/lang/String;

    const/16 v4, 0x1774

    .line 5
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hiya/stingray/ui/login/o;->g(Landroid/app/Activity;Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)Z

    return-void

    .line 6
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.fragment.app.Fragment"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final T()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l;->s:Lcom/hiya/stingray/ui/local/search/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/search/f;->g()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l;->u:Lcom/hiya/stingray/manager/y2;

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/w/o;

    invoke-interface {v1}, Lcom/hiya/stingray/ui/w/o;->H()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hiya/stingray/util/c0;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/y2;->m(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/hiya/stingray/ui/w/l$h;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/w/l$h;-><init>(Lcom/hiya/stingray/ui/w/l;)V

    .line 6
    new-instance v2, Lcom/hiya/stingray/ui/w/l$i;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/w/l$i;-><init>(Lcom/hiya/stingray/ui/w/l;)V

    .line 7
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/hiya/stingray/ui/w/l;->m:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public final U()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/hiya/stingray/ui/w/l;->k:Z

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/w/o;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/w/o;->j()Landroidx/fragment/app/e;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/hiya/stingray/ui/w/l;->l:Landroid/content/Context;

    const-class v3, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l;->s:Lcom/hiya/stingray/ui/local/search/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/search/f;->b()V

    return-void
.end method

.method public final V(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "grantResults"

    invoke-static {p3, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x1775

    if-eq p1, p2, :cond_0

    const/16 p2, 0x1774

    if-ne p1, p2, :cond_1

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/ui/w/l;->W()V

    :cond_1
    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/k;->o()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l;->m:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->d()V

    return-void
.end method

.method public p()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/k;->p()V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/w/l;->M()V

    .line 3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/w/l;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/w/l;->X(Lcom/hiya/stingray/t/h1/i;)V

    .line 5
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/w/o;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/w/o;->n()Li/c/b0/k/a;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/hiya/stingray/ui/w/l$o;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/w/l$o;-><init>(Lcom/hiya/stingray/ui/w/l;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->doOnNext(Li/c/b0/d/g;)Li/c/b0/b/v;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/hiya/stingray/ui/w/l;->b:Li/c/b0/k/a;

    new-instance v2, Lcom/hiya/stingray/s/b;

    invoke-direct {v2}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {v1, v2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v1

    .line 8
    sget-object v2, Lcom/hiya/stingray/ui/w/l$p;->a:Lcom/hiya/stingray/ui/w/l$p;

    .line 9
    invoke-static {v0, v1, v2}, Li/c/b0/b/v;->combineLatest(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/c;)Li/c/b0/b/v;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/hiya/stingray/ui/w/l$q;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/w/l$q;-><init>(Lcom/hiya/stingray/ui/w/l;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/hiya/stingray/ui/w/l$r;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/w/l$r;-><init>(Lcom/hiya/stingray/ui/w/l;)V

    .line 13
    new-instance v2, Lcom/hiya/stingray/ui/w/l$s;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/w/l$s;-><init>(Lcom/hiya/stingray/ui/w/l;)V

    .line 14
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/hiya/stingray/ui/w/l;->m:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 16
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l;->i:Li/c/b0/b/v;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/hiya/stingray/ui/w/l;->k:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lcom/hiya/stingray/ui/w/l;->k:Z

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l;->j:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->d()V

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/w/o;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/w/o;->n()Li/c/b0/k/a;

    move-result-object v0

    .line 20
    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 21
    sget-object v1, Lcom/hiya/stingray/ui/w/l$t;->f:Lcom/hiya/stingray/ui/w/l$t;

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->switchMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 22
    new-instance v1, Lcom/hiya/stingray/ui/w/l$u;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/w/l$u;-><init>(Lcom/hiya/stingray/ui/w/l;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->doOnNext(Li/c/b0/d/g;)Li/c/b0/b/v;

    move-result-object v0

    .line 23
    iget-wide v1, p0, Lcom/hiya/stingray/ui/w/l;->c:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Li/c/b0/b/v;->debounce(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/hiya/stingray/ui/w/l;->r:Lcom/hiya/stingray/manager/o4/b;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/o4/b;->m()Li/c/b0/b/v;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/s/b;

    invoke-direct {v2}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {v1, v2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v1

    .line 25
    new-instance v2, Lcom/hiya/stingray/ui/w/l$v;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/w/l$v;-><init>(Lcom/hiya/stingray/ui/w/l;)V

    invoke-virtual {v1, v2}, Li/c/b0/b/v;->doOnNext(Li/c/b0/d/g;)Li/c/b0/b/v;

    move-result-object v1

    .line 26
    new-instance v2, Lcom/hiya/stingray/ui/w/l$j;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/w/l$j;-><init>(Lcom/hiya/stingray/ui/w/l;)V

    invoke-virtual {v1, v2}, Li/c/b0/b/v;->doOnError(Li/c/b0/d/g;)Li/c/b0/b/v;

    move-result-object v1

    .line 27
    sget-object v2, Lcom/hiya/stingray/ui/w/l$k;->a:Lcom/hiya/stingray/ui/w/l$k;

    .line 28
    invoke-static {v0, v1, v2}, Li/c/b0/b/v;->combineLatest(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/c;)Li/c/b0/b/v;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 30
    new-instance v1, Lcom/hiya/stingray/ui/w/l$l;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/w/l$l;-><init>(Lcom/hiya/stingray/ui/w/l;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->switchMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Li/c/b0/b/v;->cache()Li/c/b0/b/v;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/w/l;->i:Li/c/b0/b/v;

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l;->i:Li/c/b0/b/v;

    if-eqz v0, :cond_3

    .line 33
    new-instance v1, Lcom/hiya/stingray/ui/w/l$m;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/w/l$m;-><init>(Lcom/hiya/stingray/ui/w/l;)V

    .line 34
    new-instance v2, Lcom/hiya/stingray/ui/w/l$n;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/w/l$n;-><init>(Lcom/hiya/stingray/ui/w/l;)V

    .line 35
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 36
    iget-object v1, p0, Lcom/hiya/stingray/ui/w/l;->j:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    :cond_3
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/k;->q()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l;->m:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->d()V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l;->j:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->d()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/hiya/stingray/ui/w/l;->i:Li/c/b0/b/v;

    return-void
.end method
