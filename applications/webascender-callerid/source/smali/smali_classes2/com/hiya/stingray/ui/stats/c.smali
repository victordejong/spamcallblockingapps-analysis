.class public final Lcom/hiya/stingray/ui/stats/c;
.super Landroidx/lifecycle/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/stats/c$a;
    }
.end annotation


# instance fields
.field public d:Lcom/hiya/stingray/manager/o1;

.field public e:Lcom/hiya/stingray/manager/h4;

.field public f:Li/c/b0/c/a;

.field private final g:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Lcom/hiya/stingray/ui/stats/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0}, Landroidx/lifecycle/t;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/stats/c;->g:Landroidx/lifecycle/t;

    .line 3
    invoke-static {p1}, Lcom/hiya/stingray/s/a;->b(Landroid/content/Context;)Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->p(Lcom/hiya/stingray/ui/stats/c;)V

    return-void
.end method


# virtual methods
.method public final g()Landroidx/lifecycle/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/t<",
            "Lcom/hiya/stingray/ui/stats/c$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/c;->g:Landroidx/lifecycle/t;

    return-object v0
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/c;->d:Lcom/hiya/stingray/manager/o1;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v2, p0, Lcom/hiya/stingray/ui/stats/c;->e:Lcom/hiya/stingray/manager/h4;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/manager/o1;->o(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v2}, Li/c/b0/b/v;->takeLast(I)Li/c/b0/b/v;

    move-result-object v0

    .line 4
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v0, v2}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 5
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v0, v2}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 6
    sget-object v2, Lcom/hiya/stingray/ui/stats/c$b;->f:Lcom/hiya/stingray/ui/stats/c$b;

    invoke-virtual {v0, v2}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 7
    sget-object v2, Lcom/hiya/stingray/ui/stats/c$c;->f:Lcom/hiya/stingray/ui/stats/c$c;

    invoke-virtual {v0, v2}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 8
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v0, v2}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 9
    new-instance v2, Lcom/hiya/stingray/ui/stats/c$d;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/stats/c$d;-><init>(Lcom/hiya/stingray/ui/stats/c;)V

    .line 10
    sget-object v3, Lcom/hiya/stingray/ui/stats/c$e;->f:Lcom/hiya/stingray/ui/stats/c$e;

    .line 11
    invoke-virtual {v0, v2, v3}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/hiya/stingray/ui/stats/c;->f:Li/c/b0/c/a;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void

    :cond_0
    const-string v0, "compositeDisposable"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "userAccountManager"

    .line 13
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "callLogManager"

    .line 14
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method
