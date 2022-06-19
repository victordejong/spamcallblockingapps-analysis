.class public final Lcom/hiya/stingray/ui/premium/d;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/premium/e;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Z

.field private final c:Lcom/hiya/stingray/manager/u3;

.field private final d:Li/c/b0/c/a;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/u3;Li/c/b0/c/a;)V
    .locals 1

    const-string v0, "premiumManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/d;->c:Lcom/hiya/stingray/manager/u3;

    iput-object p2, p0, Lcom/hiya/stingray/ui/premium/d;->d:Li/c/b0/c/a;

    return-void
.end method

.method public static final synthetic t(Lcom/hiya/stingray/ui/premium/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/premium/d;->w()V

    return-void
.end method

.method public static final synthetic u(Lcom/hiya/stingray/ui/premium/d;Lcom/hiya/stingray/manager/u3$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/premium/d;->x(Lcom/hiya/stingray/manager/u3$d;)V

    return-void
.end method

.method private final w()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/premium/d;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/d;->c:Lcom/hiya/stingray/manager/u3;

    .line 3
    sget-object v1, Lcom/hiya/stingray/manager/u3$p;->MONTHLY_PRICE_INC:Lcom/hiya/stingray/manager/u3$p;

    .line 4
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/u3;->W(Lcom/hiya/stingray/manager/u3$p;)Lcom/hiya/stingray/manager/u3$i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/premium/e;

    invoke-interface {v1, v0}, Lcom/hiya/stingray/ui/premium/e;->r(Lcom/hiya/stingray/manager/u3$i;)V

    :cond_1
    return-void
.end method

.method private final x(Lcom/hiya/stingray/manager/u3$d;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/premium/d;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/e;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/premium/e;->b(Z)V

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/d;->c:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/premium/e;

    invoke-interface {p1}, Lcom/hiya/stingray/ui/premium/e;->c()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final v()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/d;->c:Lcom/hiya/stingray/manager/u3;

    .line 2
    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->h0()Li/c/b0/b/e;

    move-result-object v0

    const-wide/16 v1, 0x2

    .line 3
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/e;->C(J)Li/c/b0/b/e;

    move-result-object v0

    .line 4
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v2, v3, v1}, Li/c/b0/b/e;->I(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/e;

    move-result-object v0

    .line 5
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->y(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v0

    .line 6
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/hiya/stingray/ui/premium/d$a;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/premium/d$a;-><init>(Lcom/hiya/stingray/ui/premium/d;)V

    .line 8
    new-instance v2, Lcom/hiya/stingray/ui/premium/d$b;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/premium/d$b;-><init>(Lcom/hiya/stingray/ui/premium/d;)V

    .line 9
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/d;->d:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public final y()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/premium/e;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/premium/e;->b(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/d;->c:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->Y()Li/c/b0/b/e;

    move-result-object v0

    .line 3
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v0

    .line 4
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->y(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/hiya/stingray/ui/premium/d$c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/premium/d$c;-><init>(Lcom/hiya/stingray/ui/premium/d;)V

    .line 6
    new-instance v2, Lcom/hiya/stingray/ui/premium/d$d;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/premium/d$d;-><init>(Lcom/hiya/stingray/ui/premium/d;)V

    .line 7
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/d;->d:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public final z(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/premium/d;->b:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/d;->d:Li/c/b0/c/a;

    invoke-virtual {p1}, Li/c/b0/c/a;->d()V

    :cond_0
    return-void
.end method
