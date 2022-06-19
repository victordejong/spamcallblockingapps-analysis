.class public final Lcom/hiya/stingray/ui/setting/f;
.super Landroidx/lifecycle/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/setting/f$a;
    }
.end annotation


# instance fields
.field public d:Lcom/hiya/stingray/manager/h4;

.field public e:Lcom/hiya/stingray/manager/l1;

.field public f:Lcom/hiya/stingray/manager/u3;

.field public g:Li/c/b0/c/a;

.field public h:Lcom/hiya/stingray/manager/o2;

.field private final i:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Lcom/hiya/stingray/ui/setting/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Ljava/lang/Boolean;",
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

    iput-object v0, p0, Lcom/hiya/stingray/ui/setting/f;->i:Landroidx/lifecycle/t;

    .line 3
    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0}, Landroidx/lifecycle/t;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/setting/f;->j:Landroidx/lifecycle/t;

    .line 4
    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0}, Landroidx/lifecycle/t;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/setting/f;->k:Landroidx/lifecycle/t;

    .line 5
    invoke-static {p1}, Lcom/hiya/stingray/s/a;->b(Landroid/content/Context;)Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->W(Lcom/hiya/stingray/ui/setting/f;)V

    return-void
.end method


# virtual methods
.method public final g()Landroidx/lifecycle/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/f;->k:Landroidx/lifecycle/t;

    return-object v0
.end method

.method public final h()Landroidx/lifecycle/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/t<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/f;->i:Landroidx/lifecycle/t;

    return-object v0
.end method

.method public final i()Landroidx/lifecycle/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/t<",
            "Lcom/hiya/stingray/ui/setting/f$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/f;->j:Landroidx/lifecycle/t;

    return-object v0
.end method

.method public final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/f;->i:Landroidx/lifecycle/t;

    iget-object v1, p0, Lcom/hiya/stingray/ui/setting/f;->h:Lcom/hiya/stingray/manager/o2;

    const/4 v2, 0x0

    const-string v3, "deviceUserInfoManager"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/o2;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hiya/stingray/ui/setting/f;->h:Lcom/hiya/stingray/manager/o2;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/o2;->r()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/hiya/stingray/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/f;->j:Landroidx/lifecycle/t;

    sget-object v1, Lcom/hiya/stingray/ui/setting/f$a;->DEFAULT:Lcom/hiya/stingray/ui/setting/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public final l()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/f;->k:Landroidx/lifecycle/t;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/f;->h:Lcom/hiya/stingray/manager/o2;

    const-string v1, "deviceUserInfoManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/manager/o2;->P(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/f;->h:Lcom/hiya/stingray/manager/o2;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/o2;->Q(Z)V

    .line 4
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->j()V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/f;->e:Lcom/hiya/stingray/manager/l1;

    if-eqz v0, :cond_1

    const/4 v3, 0x3

    .line 6
    invoke-static {v0, v1, v1, v3, v2}, Lcom/hiya/stingray/manager/l1;->c(Lcom/hiya/stingray/manager/l1;ZZILjava/lang/Object;)Li/c/b0/b/e;

    move-result-object v0

    const-wide/16 v3, 0x3

    .line 7
    invoke-virtual {v0, v3, v4}, Li/c/b0/b/e;->C(J)Li/c/b0/b/e;

    move-result-object v0

    .line 8
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v0

    .line 9
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->y(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/hiya/stingray/ui/setting/f$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/f$b;-><init>(Lcom/hiya/stingray/ui/setting/f;)V

    .line 11
    new-instance v3, Lcom/hiya/stingray/ui/setting/f$c;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/setting/f$c;-><init>(Lcom/hiya/stingray/ui/setting/f;)V

    .line 12
    invoke-virtual {v0, v1, v3}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/hiya/stingray/ui/setting/f;->g:Li/c/b0/c/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void

    :cond_0
    const-string v0, "compositeDisposable"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v0, "authenticationManager"

    .line 14
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_2
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 16
    :cond_3
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method
