.class public final Lcom/hiya/stingray/ui/premium/upsell/g;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/premium/upsell/h;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Z

.field private final c:Li/c/b0/c/a;

.field private final d:Lcom/hiya/stingray/manager/u3;

.field private final e:Lcom/hiya/stingray/manager/o1;

.field private final f:Li/c/b0/c/a;

.field private final g:Lcom/hiya/stingray/manager/g3;

.field private final h:Lcom/hiya/stingray/manager/e1;

.field private final i:Lcom/hiya/stingray/manager/k1;

.field private final j:Lcom/hiya/stingray/manager/s1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/manager/o1;Li/c/b0/c/a;Lcom/hiya/stingray/manager/g3;Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/manager/k1;Lcom/hiya/stingray/manager/s1;Lcom/hiya/stingray/manager/s2;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "premiumManager"

    invoke-static {p2, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callLogManager"

    invoke-static {p3, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "compositeDisposable"

    invoke-static {p4, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "paywallManager"

    invoke-static {p5, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "analyticsManager"

    invoke-static {p6, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "appsFlyerManager"

    invoke-static {p7, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callScreeningServiceManager"

    invoke-static {p8, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "experimentManager"

    invoke-static {p9, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    iput-object p2, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->d:Lcom/hiya/stingray/manager/u3;

    iput-object p3, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->e:Lcom/hiya/stingray/manager/o1;

    iput-object p4, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->f:Li/c/b0/c/a;

    iput-object p5, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->g:Lcom/hiya/stingray/manager/g3;

    iput-object p6, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->h:Lcom/hiya/stingray/manager/e1;

    iput-object p7, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->i:Lcom/hiya/stingray/manager/k1;

    iput-object p8, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->j:Lcom/hiya/stingray/manager/s1;

    .line 2
    new-instance p1, Li/c/b0/c/a;

    invoke-direct {p1}, Li/c/b0/c/a;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->c:Li/c/b0/c/a;

    return-void
.end method

.method private final A()Lcom/hiya/stingray/manager/u3$p;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/manager/u3$p;->MONTHLY_PRICE_INC_TRIAL_PERIOD_EXP:Lcom/hiya/stingray/manager/u3$p;

    return-object v0
.end method

.method private final F()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/ui/premium/upsell/g;->S()V

    return-void
.end method

.method private final I(Lcom/hiya/stingray/manager/u3$d;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/premium/upsell/g;->w(Lcom/hiya/stingray/manager/u3$d;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/premium/upsell/g;->w(Lcom/hiya/stingray/manager/u3$d;)V

    :goto_0
    return-void
.end method

.method private final J(Lcom/hiya/stingray/manager/u3$d;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->d:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/premium/upsell/h;

    invoke-interface {p1}, Lcom/hiya/stingray/ui/premium/upsell/h;->W0()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/premium/upsell/h;

    invoke-interface {p1}, Lcom/hiya/stingray/ui/premium/upsell/h;->c()V

    .line 5
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/premium/upsell/h;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/hiya/stingray/ui/premium/upsell/h;->b(Z)V

    :goto_0
    return-void
.end method

.method public static synthetic M(Lcom/hiya/stingray/ui/premium/upsell/g;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/upsell/g;->L(Z)V

    return-void
.end method

.method private final N(Lcom/hiya/stingray/manager/u3$p;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3$p;->isMonthly()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "subscribe_monthly"

    goto :goto_0

    :cond_0
    const-string v0, "subscribe_yearly"

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3$p;->isWithTrial()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "trial"

    goto :goto_1

    :cond_1
    const-string p1, "subscribe"

    .line 3
    :goto_1
    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->h:Lcom/hiya/stingray/manager/e1;

    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v2

    .line 4
    invoke-virtual {v2, v0}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 5
    invoke-virtual {v2, p1}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 6
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hiya/stingray/ui/premium/upsell/h;

    invoke-interface {v3}, Lcom/hiya/stingray/ui/premium/upsell/h;->y0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 7
    invoke-virtual {v2}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v2

    const-string v3, "user_action"

    .line 8
    invoke-virtual {v1, v3, v2}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 9
    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->i:Lcom/hiya/stingray/manager/k1;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/ui/premium/upsell/h;

    invoke-interface {v2}, Lcom/hiya/stingray/ui/premium/upsell/h;->y0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/hiya/stingray/manager/k1;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final P(Lcom/hiya/stingray/manager/u3$p;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->d:Lcom/hiya/stingray/manager/u3;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/manager/u3;->b0(Z)V

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/premium/upsell/g;->I(Lcom/hiya/stingray/manager/u3$d;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/premium/upsell/g;->N(Lcom/hiya/stingray/manager/u3$p;)V

    .line 4
    iget-object p2, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->d:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/upsell/h;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/premium/upsell/h;->U()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/hiya/stingray/manager/u3;->f0(Landroid/app/Activity;Lcom/hiya/stingray/manager/u3$p;)Li/c/b0/b/e;

    move-result-object p1

    .line 5
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object p2

    invoke-virtual {p1, p2}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object p1

    .line 6
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object p2

    invoke-virtual {p1, p2}, Li/c/b0/b/e;->y(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/hiya/stingray/ui/premium/upsell/g$g;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/premium/upsell/g$g;-><init>(Lcom/hiya/stingray/ui/premium/upsell/g;)V

    .line 8
    new-instance v0, Lcom/hiya/stingray/ui/premium/upsell/g$h;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/premium/upsell/g$h;-><init>(Lcom/hiya/stingray/ui/premium/upsell/g;)V

    .line 9
    invoke-virtual {p1, p2, v0}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->f:Li/c/b0/c/a;

    invoke-virtual {p2, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    :goto_0
    return-void
.end method

.method private final S()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->d:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->K()Lcom/hiya/stingray/t/d1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/d1;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/premium/upsell/g;->z()Lcom/hiya/stingray/manager/u3$p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3$p;->isWithTrial()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/premium/upsell/g;->x()Lcom/hiya/stingray/manager/u3$p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3$p;->isWithTrial()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->d:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/premium/upsell/g;->z()Lcom/hiya/stingray/manager/u3$p;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/manager/u3;->W(Lcom/hiya/stingray/manager/u3$p;)Lcom/hiya/stingray/manager/u3$i;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->d:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/premium/upsell/g;->x()Lcom/hiya/stingray/manager/u3$p;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/hiya/stingray/manager/u3;->W(Lcom/hiya/stingray/manager/u3$p;)Lcom/hiya/stingray/manager/u3$i;

    move-result-object v3

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/premium/upsell/h;

    invoke-interface {v1, v2, v3, v0}, Lcom/hiya/stingray/ui/premium/upsell/h;->W(Lcom/hiya/stingray/manager/u3$i;Lcom/hiya/stingray/manager/u3$i;Z)V

    goto :goto_1

    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Premium manager returned null for prices."

    .line 5
    invoke-static {v1, v0}, Lr/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public static final synthetic t(Lcom/hiya/stingray/ui/premium/upsell/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/premium/upsell/g;->F()V

    return-void
.end method

.method public static final synthetic u(Lcom/hiya/stingray/ui/premium/upsell/g;Lcom/hiya/stingray/manager/u3$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/premium/upsell/g;->I(Lcom/hiya/stingray/manager/u3$d;)V

    return-void
.end method

.method public static final synthetic v(Lcom/hiya/stingray/ui/premium/upsell/g;Lcom/hiya/stingray/manager/u3$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/premium/upsell/g;->J(Lcom/hiya/stingray/manager/u3$d;)V

    return-void
.end method

.method private final w(Lcom/hiya/stingray/manager/u3$d;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/upsell/h;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/premium/upsell/h;->b(Z)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/premium/upsell/h;

    invoke-interface {p1}, Lcom/hiya/stingray/ui/premium/upsell/h;->W0()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3$d;->b()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/premium/upsell/h;

    invoke-interface {p1}, Lcom/hiya/stingray/ui/premium/upsell/h;->i()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final y()Lcom/hiya/stingray/manager/u3$p;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/manager/u3$p;->ANNUAL_PRICE_INC_TRIAL_PERIOD_EXP:Lcom/hiya/stingray/manager/u3$p;

    return-object v0
.end method


# virtual methods
.method public final B()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/upsell/h;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/premium/upsell/h;->b(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->e:Lcom/hiya/stingray/manager/o1;

    .line 3
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/o1;->q(Z)Li/c/b0/b/v;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/hiya/stingray/ui/premium/upsell/g$a;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/premium/upsell/g$a;-><init>(Lcom/hiya/stingray/ui/premium/upsell/g;)V

    .line 6
    new-instance v2, Lcom/hiya/stingray/ui/premium/upsell/g$b;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/premium/upsell/g$b;-><init>(Lcom/hiya/stingray/ui/premium/upsell/g;)V

    .line 7
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->f:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public final C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->d:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->K()Lcom/hiya/stingray/t/d1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/d1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/premium/upsell/g;->K()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/upsell/h;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/premium/upsell/h;->g()V

    :goto_0
    return-void
.end method

.method public final D()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/g;->w(Lcom/hiya/stingray/manager/u3$d;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->j:Lcom/hiya/stingray/manager/s1;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/s1;->e()V

    return-void
.end method

.method public final E()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/upsell/h;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/premium/upsell/h;->l()V

    return-void
.end method

.method public final G()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/upsell/h;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/premium/upsell/h;->W0()V

    return-void
.end method

.method public final H()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->g:Lcom/hiya/stingray/manager/g3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/g3;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->j:Lcom/hiya/stingray/manager/s1;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/s1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->j:Lcom/hiya/stingray/manager/s1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/s1;->f(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/upsell/h;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/premium/upsell/h;->g0()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/g;->w(Lcom/hiya/stingray/manager/u3$d;)V

    :goto_0
    return-void
.end method

.method public final K()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/g;->w(Lcom/hiya/stingray/manager/u3$d;)V

    return-void
.end method

.method public final L(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/upsell/h;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/premium/upsell/h;->b(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->d:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {p1, v1}, Lcom/hiya/stingray/manager/u3;->b0(Z)V

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/premium/upsell/g;->J(Lcom/hiya/stingray/manager/u3$d;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->d:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3;->Y()Li/c/b0/b/e;

    move-result-object p1

    .line 5
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object p1

    .line 6
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/e;->y(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/hiya/stingray/ui/premium/upsell/g$e;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/premium/upsell/g$e;-><init>(Lcom/hiya/stingray/ui/premium/upsell/g;)V

    .line 8
    new-instance v1, Lcom/hiya/stingray/ui/premium/upsell/g$f;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/premium/upsell/g$f;-><init>(Lcom/hiya/stingray/ui/premium/upsell/g;)V

    .line 9
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->f:Li/c/b0/c/a;

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    :goto_0
    return-void
.end method

.method public final O(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->b:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->f:Li/c/b0/c/a;

    invoke-virtual {p1}, Li/c/b0/c/a;->d()V

    :cond_0
    return-void
.end method

.method public final Q(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/upsell/h;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/premium/upsell/h;->b(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/premium/upsell/g;->x()Lcom/hiya/stingray/manager/u3$p;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/hiya/stingray/ui/premium/upsell/g;->P(Lcom/hiya/stingray/manager/u3$p;Z)V

    return-void
.end method

.method public final R(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/upsell/h;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/premium/upsell/h;->b(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/premium/upsell/g;->z()Lcom/hiya/stingray/manager/u3$p;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/hiya/stingray/ui/premium/upsell/g;->P(Lcom/hiya/stingray/manager/u3$p;Z)V

    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->c:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->d()V

    return-void
.end method

.method public p()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/upsell/h;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/premium/upsell/h;->b(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [Li/c/b0/b/i;

    .line 2
    iget-object v2, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->d:Lcom/hiya/stingray/manager/u3;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lcom/hiya/stingray/manager/u3;->j0(Lcom/hiya/stingray/manager/u3;ZILjava/lang/Object;)Li/c/b0/b/e;

    move-result-object v2

    aput-object v2, v0, v3

    .line 3
    iget-object v2, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->d:Lcom/hiya/stingray/manager/u3;

    .line 4
    invoke-virtual {v2}, Lcom/hiya/stingray/manager/u3;->h0()Li/c/b0/b/e;

    move-result-object v2

    const-wide/16 v3, 0x2

    .line 5
    invoke-virtual {v2, v3, v4}, Li/c/b0/b/e;->C(J)Li/c/b0/b/e;

    move-result-object v2

    aput-object v2, v0, v1

    .line 6
    invoke-static {v0}, Li/c/b0/b/e;->x([Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object v0

    .line 7
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v2, v3, v1}, Li/c/b0/b/e;->I(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/e;

    move-result-object v0

    .line 8
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->y(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v0

    .line 9
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/hiya/stingray/ui/premium/upsell/g$c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/premium/upsell/g$c;-><init>(Lcom/hiya/stingray/ui/premium/upsell/g;)V

    .line 11
    new-instance v2, Lcom/hiya/stingray/ui/premium/upsell/g$d;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/premium/upsell/g$d;-><init>(Lcom/hiya/stingray/ui/premium/upsell/g;)V

    .line 12
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/upsell/g;->c:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public final x()Lcom/hiya/stingray/manager/u3$p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/upsell/h;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/premium/upsell/h;->B()Lcom/hiya/stingray/ui/premium/upsell/h$b;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/ui/premium/upsell/f;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/hiya/stingray/manager/u3$p;->ANNUAL_NO_TRIAL_PRICE_INC:Lcom/hiya/stingray/manager/u3$p;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/premium/upsell/g;->y()Lcom/hiya/stingray/manager/u3$p;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/premium/upsell/g;->y()Lcom/hiya/stingray/manager/u3$p;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lcom/hiya/stingray/manager/u3$p;->ANNUAL_NO_TRIAL_PRICE_INC:Lcom/hiya/stingray/manager/u3$p;

    goto :goto_0

    .line 6
    :cond_4
    sget-object v0, Lcom/hiya/stingray/manager/u3$p;->ANNUAL_NO_TRIAL_PRICE_INC:Lcom/hiya/stingray/manager/u3$p;

    :goto_0
    return-object v0
.end method

.method public final z()Lcom/hiya/stingray/manager/u3$p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/upsell/h;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/premium/upsell/h;->B()Lcom/hiya/stingray/ui/premium/upsell/h$b;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/ui/premium/upsell/f;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/hiya/stingray/manager/u3$p;->MONTHLY_PROMO:Lcom/hiya/stingray/manager/u3$p;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/premium/upsell/g;->A()Lcom/hiya/stingray/manager/u3$p;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/premium/upsell/g;->A()Lcom/hiya/stingray/manager/u3$p;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lcom/hiya/stingray/manager/u3$p;->MONTHLY_NO_TRIAL_PRICE_INC:Lcom/hiya/stingray/manager/u3$p;

    goto :goto_0

    .line 6
    :cond_4
    sget-object v0, Lcom/hiya/stingray/manager/u3$p;->MONTHLY_NO_TRIAL_PRICE_INC:Lcom/hiya/stingray/manager/u3$p;

    :goto_0
    return-object v0
.end method
