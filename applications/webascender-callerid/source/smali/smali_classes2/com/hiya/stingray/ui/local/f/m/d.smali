.class public final Lcom/hiya/stingray/ui/local/f/m/d;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/local/f/m/e;
.implements Lcom/hiya/stingray/ui/local/f/m/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/local/f/n/k;",
        ">;",
        "Lcom/hiya/stingray/ui/local/f/m/e;",
        "Lcom/hiya/stingray/ui/local/f/m/f;"
    }
.end annotation


# instance fields
.field private final b:Lkotlin/g;

.field private final c:Lkotlin/g;

.field private final d:Lkotlin/g;

.field private final e:Lkotlin/g;

.field private final f:Lkotlin/g;

.field private final g:Lcom/hiya/stingray/manager/o4/a;

.field private final h:Li/c/b0/c/a;

.field private final i:Lcom/hiya/stingray/util/a0;

.field private final j:Lcom/hiya/stingray/ui/local/f/m/a;

.field private final k:Lcom/hiya/stingray/ui/local/f/m/g;

.field private final l:Lcom/hiya/stingray/ui/local/f/m/i;

.field private final m:Lcom/hiya/stingray/ui/local/f/m/b;

.field private final n:Lcom/hiya/stingray/ui/local/f/m/c;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/o4/a;Li/c/b0/c/a;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/ui/local/f/m/a;Lcom/hiya/stingray/ui/local/f/m/g;Lcom/hiya/stingray/ui/local/f/m/i;Lcom/hiya/stingray/ui/local/f/m/b;Lcom/hiya/stingray/ui/local/f/m/c;)V
    .locals 1

    const-string v0, "localManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactInfoViewPresenter"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ratingInfoViewPresenter"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceViewPresenter"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "couponViewPresenter"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailInfoViewPresenter"

    invoke-static {p8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/d;->g:Lcom/hiya/stingray/manager/o4/a;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/f/m/d;->h:Li/c/b0/c/a;

    iput-object p3, p0, Lcom/hiya/stingray/ui/local/f/m/d;->i:Lcom/hiya/stingray/util/a0;

    iput-object p4, p0, Lcom/hiya/stingray/ui/local/f/m/d;->j:Lcom/hiya/stingray/ui/local/f/m/a;

    iput-object p5, p0, Lcom/hiya/stingray/ui/local/f/m/d;->k:Lcom/hiya/stingray/ui/local/f/m/g;

    iput-object p6, p0, Lcom/hiya/stingray/ui/local/f/m/d;->l:Lcom/hiya/stingray/ui/local/f/m/i;

    iput-object p7, p0, Lcom/hiya/stingray/ui/local/f/m/d;->m:Lcom/hiya/stingray/ui/local/f/m/b;

    iput-object p8, p0, Lcom/hiya/stingray/ui/local/f/m/d;->n:Lcom/hiya/stingray/ui/local/f/m/c;

    .line 2
    new-instance p1, Lcom/hiya/stingray/ui/local/f/m/d$a;

    invoke-direct {p1, p0}, Lcom/hiya/stingray/ui/local/f/m/d$a;-><init>(Lcom/hiya/stingray/ui/local/f/m/d;)V

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/w/b/a;)Lkotlin/g;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/d;->b:Lkotlin/g;

    .line 3
    new-instance p1, Lcom/hiya/stingray/ui/local/f/m/d$b;

    invoke-direct {p1, p0}, Lcom/hiya/stingray/ui/local/f/m/d$b;-><init>(Lcom/hiya/stingray/ui/local/f/m/d;)V

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/w/b/a;)Lkotlin/g;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/d;->c:Lkotlin/g;

    .line 4
    new-instance p1, Lcom/hiya/stingray/ui/local/f/m/d$c;

    invoke-direct {p1, p0}, Lcom/hiya/stingray/ui/local/f/m/d$c;-><init>(Lcom/hiya/stingray/ui/local/f/m/d;)V

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/w/b/a;)Lkotlin/g;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/d;->d:Lkotlin/g;

    .line 5
    new-instance p1, Lcom/hiya/stingray/ui/local/f/m/d$f;

    invoke-direct {p1, p0}, Lcom/hiya/stingray/ui/local/f/m/d$f;-><init>(Lcom/hiya/stingray/ui/local/f/m/d;)V

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/w/b/a;)Lkotlin/g;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/d;->e:Lkotlin/g;

    .line 6
    new-instance p1, Lcom/hiya/stingray/ui/local/f/m/d$g;

    invoke-direct {p1, p0}, Lcom/hiya/stingray/ui/local/f/m/d$g;-><init>(Lcom/hiya/stingray/ui/local/f/m/d;)V

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/w/b/a;)Lkotlin/g;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/d;->f:Lkotlin/g;

    return-void
.end method

.method private final A()Lcom/hiya/stingray/ui/local/f/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hiya/stingray/ui/local/f/h<",
            "Lkotlin/l<",
            "Lcom/hiya/stingray/t/h1/d;",
            "Lcom/hiya/stingray/t/h1/c;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/d;->c:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/f/h;

    return-object v0
.end method

.method private final B()Lcom/hiya/stingray/ui/local/f/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hiya/stingray/ui/local/f/h<",
            "Lkotlin/l<",
            "Lcom/hiya/stingray/t/h1/d;",
            "Lcom/hiya/stingray/t/h1/c;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/d;->d:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/f/h;

    return-object v0
.end method

.method private final C()Lcom/hiya/stingray/ui/local/f/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hiya/stingray/ui/local/f/h<",
            "Lkotlin/l<",
            "Lcom/hiya/stingray/t/h1/d;",
            "Lcom/hiya/stingray/t/h1/c;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/d;->e:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/f/h;

    return-object v0
.end method

.method private final D()Lcom/hiya/stingray/ui/local/f/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hiya/stingray/ui/local/f/h<",
            "Lcom/hiya/stingray/t/h1/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/d;->f:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/f/h;

    return-object v0
.end method

.method public static final synthetic t(Lcom/hiya/stingray/ui/local/f/m/d;)Lcom/hiya/stingray/ui/local/f/m/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/f/m/d;->j:Lcom/hiya/stingray/ui/local/f/m/a;

    return-object p0
.end method

.method public static final synthetic u(Lcom/hiya/stingray/ui/local/f/m/d;)Lcom/hiya/stingray/ui/local/f/m/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/f/m/d;->m:Lcom/hiya/stingray/ui/local/f/m/b;

    return-object p0
.end method

.method public static final synthetic v(Lcom/hiya/stingray/ui/local/f/m/d;)Lcom/hiya/stingray/ui/local/f/m/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/f/m/d;->n:Lcom/hiya/stingray/ui/local/f/m/c;

    return-object p0
.end method

.method public static final synthetic w(Lcom/hiya/stingray/ui/local/f/m/d;)Lcom/hiya/stingray/ui/local/f/m/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/f/m/d;->k:Lcom/hiya/stingray/ui/local/f/m/g;

    return-object p0
.end method

.method public static final synthetic x(Lcom/hiya/stingray/ui/local/f/m/d;)Lcom/hiya/stingray/util/a0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/f/m/d;->i:Lcom/hiya/stingray/util/a0;

    return-object p0
.end method

.method public static final synthetic y(Lcom/hiya/stingray/ui/local/f/m/d;)Lcom/hiya/stingray/ui/local/f/m/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/f/m/d;->l:Lcom/hiya/stingray/ui/local/f/m/i;

    return-object p0
.end method

.method private final z()Lcom/hiya/stingray/ui/local/f/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hiya/stingray/ui/local/f/h<",
            "Lcom/hiya/stingray/t/h1/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/d;->b:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/f/h;

    return-object v0
.end method


# virtual methods
.method public final E(Lcom/hiya/stingray/t/h1/d;)V
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/f/m/d;->g:Lcom/hiya/stingray/manager/o4/a;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/h1/d;->h()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/hiya/stingray/manager/o4/a;->h(Ljava/lang/String;DD)Li/c/b0/b/e0;

    move-result-object p1

    .line 2
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/e0;->D(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object p1

    .line 3
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/e0;->u(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/hiya/stingray/ui/local/f/m/d$d;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/f/m/d$d;-><init>(Lcom/hiya/stingray/ui/local/f/m/d;)V

    .line 5
    new-instance v1, Lcom/hiya/stingray/ui/local/f/m/d$e;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/f/m/d$e;-><init>(Lcom/hiya/stingray/ui/local/f/m/d;)V

    .line 6
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/e0;->B(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/d;->h:Li/c/b0/c/a;

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public a()Lcom/hiya/stingray/ui/local/f/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hiya/stingray/ui/local/f/h<",
            "Lkotlin/l<",
            "Lcom/hiya/stingray/t/h1/d;",
            "Lcom/hiya/stingray/t/h1/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/f/m/d;->C()Lcom/hiya/stingray/ui/local/f/h;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/hiya/stingray/ui/local/f/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hiya/stingray/ui/local/f/h<",
            "Lkotlin/l<",
            "Lcom/hiya/stingray/t/h1/d;",
            "Lcom/hiya/stingray/t/h1/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/f/m/d;->A()Lcom/hiya/stingray/ui/local/f/h;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/hiya/stingray/ui/local/f/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hiya/stingray/ui/local/f/h<",
            "Lcom/hiya/stingray/t/h1/d;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/f/m/d;->D()Lcom/hiya/stingray/ui/local/f/h;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/hiya/stingray/ui/local/f/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hiya/stingray/ui/local/f/h<",
            "Lkotlin/l<",
            "Lcom/hiya/stingray/t/h1/d;",
            "Lcom/hiya/stingray/t/h1/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/f/m/d;->B()Lcom/hiya/stingray/ui/local/f/h;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/hiya/stingray/ui/local/f/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hiya/stingray/ui/local/f/h<",
            "Lcom/hiya/stingray/t/h1/d;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/f/m/d;->z()Lcom/hiya/stingray/ui/local/f/h;

    move-result-object v0

    return-object v0
.end method

.method public l()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/f/m/d;->C()Lcom/hiya/stingray/ui/local/f/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/hiya/stingray/ui/local/f/h;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/hiya/stingray/ui/local/f/f;->RATING:Lcom/hiya/stingray/ui/local/f/f;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/f/m/d;->D()Lcom/hiya/stingray/ui/local/f/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/hiya/stingray/ui/local/f/h;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    sget-object v1, Lcom/hiya/stingray/ui/local/f/f;->DIR_SERVICE:Lcom/hiya/stingray/ui/local/f/f;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/f/m/d;->A()Lcom/hiya/stingray/ui/local/f/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/hiya/stingray/ui/local/f/h;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    sget-object v1, Lcom/hiya/stingray/ui/local/f/f;->COUPONS:Lcom/hiya/stingray/ui/local/f/f;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/f/m/d;->z()Lcom/hiya/stingray/ui/local/f/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/hiya/stingray/ui/local/f/h;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    sget-object v1, Lcom/hiya/stingray/ui/local/f/f;->CONTACT_INFO:Lcom/hiya/stingray/ui/local/f/f;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/f/m/d;->B()Lcom/hiya/stingray/ui/local/f/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/hiya/stingray/ui/local/f/h;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    sget-object v1, Lcom/hiya/stingray/ui/local/f/f;->DETAIL_INFO:Lcom/hiya/stingray/ui/local/f/f;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/local/f/n/k;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/hiya/stingray/ui/local/f/f;

    .line 13
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Lcom/hiya/stingray/ui/local/f/f;

    .line 14
    invoke-interface {v1, v0}, Lcom/hiya/stingray/ui/local/f/n/k;->X([Lcom/hiya/stingray/ui/local/f/f;)V

    return-void
.end method
