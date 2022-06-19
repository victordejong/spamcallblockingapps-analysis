.class public Lcom/hiya/stingray/ui/common/e;
.super Landroidx/appcompat/app/c;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/h$a;


# static fields
.field private static q:I


# instance fields
.field private f:Lcom/hiya/stingray/s/d/a;

.field private g:Landroidx/appcompat/app/b;

.field h:Li/c/b0/k/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/a<",
            "Lcom/trello/rxlifecycle4/d/a;",
            ">;"
        }
    .end annotation
.end field

.field i:Li/c/b0/c/a;

.field j:Lcom/hiya/stingray/manager/i1;

.field k:Lcom/hiya/stingray/h;

.field l:Lcom/hiya/stingray/manager/o1;

.field m:Lcom/hiya/stingray/util/a0;

.field n:Lcom/hiya/stingray/manager/e1;

.field o:Lcom/hiya/stingray/manager/y1;

.field p:Lcom/hiya/stingray/manager/p4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/c;-><init>()V

    return-void
.end method

.method static synthetic E(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result stats: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->z1()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lr/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic F()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/e;->m:Lcom/hiya/stingray/util/a0;

    new-instance v1, Lcom/hiya/stingray/util/i0/f;

    invoke-direct {v1}, Lcom/hiya/stingray/util/i0/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Successfully logged out"

    .line 2
    invoke-static {v1, v0}, Lr/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic H(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/e;->m:Lcom/hiya/stingray/util/a0;

    new-instance v1, Lcom/hiya/stingray/util/i0/f;

    invoke-direct {v1}, Lcom/hiya/stingray/util/i0/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Log out failed"

    .line 2
    invoke-static {p1, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic J(Lkotlin/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/e;->m:Lcom/hiya/stingray/util/a0;

    new-instance v0, Lcom/hiya/stingray/util/i0/d;

    sget-object v1, Lcom/hiya/stingray/util/i0/d$a;->FULL_REFRESH:Lcom/hiya/stingray/util/i0/d$a;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/util/i0/d;-><init>(Lcom/hiya/stingray/util/i0/d$a;)V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/a0;->d(Ljava/lang/Object;)V

    return-void
.end method

.method private M(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic y(Lcom/hiya/stingray/ui/common/e;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/common/e;->M(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A()Li/c/b0/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/e;->i:Li/c/b0/c/a;

    return-object v0
.end method

.method public B(Lcom/hiya/stingray/exception/a;Lcom/hiya/stingray/manager/h4;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 3
    sget-object v0, Lcom/hiya/stingray/exception/a;->FORBIDDEN:Lcom/hiya/stingray/exception/a;

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Lcom/hiya/stingray/manager/h4;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    sget-object p1, Lcom/hiya/stingray/ui/common/d;->a:Lcom/hiya/stingray/ui/common/d;

    invoke-virtual {p2, p1}, Lcom/hiya/stingray/manager/h4;->e(Lcom/google/android/gms/common/api/j;)Li/c/b0/b/e;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/ui/common/b;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/common/b;-><init>(Lcom/hiya/stingray/ui/common/e;)V

    new-instance v0, Lcom/hiya/stingray/ui/common/a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/common/a;-><init>(Lcom/hiya/stingray/ui/common/e;)V

    .line 5
    invoke-virtual {p1, p2, v0}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    :cond_2
    return-void
.end method

.method public C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/e;->f:Lcom/hiya/stingray/s/d/a;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/hiya/stingray/s/a;->b(Landroid/content/Context;)Lcom/hiya/stingray/s/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/common/e;->f:Lcom/hiya/stingray/s/d/a;

    :cond_0
    return-void
.end method

.method public D()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public synthetic G()V
    .locals 0

    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/e;->F()V

    return-void
.end method

.method public synthetic I(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/common/e;->H(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic K(Lkotlin/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/common/e;->J(Lkotlin/r;)V

    return-void
.end method

.method public final L()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Lcom/trello/rxlifecycle4/d/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/e;->h:Li/c/b0/k/a;

    invoke-virtual {v0}, Li/c/b0/b/v;->hide()Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public N()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->C()V

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->z()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->c(Lcom/hiya/stingray/ui/common/e;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/e;->h:Li/c/b0/k/a;

    sget-object v0, Lcom/trello/rxlifecycle4/d/a;->CREATE:Lcom/trello/rxlifecycle4/d/a;

    invoke-virtual {p1, v0}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->D()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/e;->p:Lcom/hiya/stingray/manager/p4/a;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/p4/a;->d()V

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/HiyaApplication;

    invoke-virtual {p1, p0}, Lcom/hiya/stingray/HiyaApplication;->r(Lcom/hiya/stingray/ui/common/e;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/e;->h:Li/c/b0/k/a;

    sget-object v1, Lcom/trello/rxlifecycle4/d/a;->DESTROY:Lcom/trello/rxlifecycle4/d/a;

    invoke-virtual {v0, v1}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/e;->k:Lcom/hiya/stingray/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/h;->c(Lcom/hiya/stingray/h$a;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/e;->i:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->dispose()V

    .line 4
    invoke-super {p0}, Landroidx/appcompat/app/c;->onDestroy()V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/e;->g:Landroidx/appcompat/app/b;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/app/g;->dismiss()V

    .line 7
    iput-object v1, p0, Lcom/hiya/stingray/ui/common/e;->g:Landroidx/appcompat/app/b;

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/e;->h:Li/c/b0/k/a;

    sget-object v1, Lcom/trello/rxlifecycle4/d/a;->PAUSE:Lcom/trello/rxlifecycle4/d/a;

    invoke-virtual {v0, v1}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/e;->onPause()V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Lcom/hiya/stingray/util/x;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->N()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p0}, Lcom/hiya/stingray/util/x;->d(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/e;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/e;->h:Li/c/b0/k/a;

    sget-object v1, Lcom/trello/rxlifecycle4/d/a;->RESUME:Lcom/trello/rxlifecycle4/d/a;

    invoke-virtual {v0, v1}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/e;->k:Lcom/hiya/stingray/h;

    invoke-virtual {v0, p0}, Lcom/hiya/stingray/h;->c(Lcom/hiya/stingray/h$a;)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/e;->k:Lcom/hiya/stingray/h;

    iget-object v1, p0, Lcom/hiya/stingray/ui/common/e;->j:Lcom/hiya/stingray/manager/i1;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/i1;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/h;->a(J)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/c;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/e;->h:Li/c/b0/k/a;

    sget-object v1, Lcom/trello/rxlifecycle4/d/a;->START:Lcom/trello/rxlifecycle4/d/a;

    invoke-virtual {v0, v1}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    .line 3
    sget v0, Lcom/hiya/stingray/ui/common/e;->q:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/hiya/stingray/ui/common/e;->q:I

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/e;->o:Lcom/hiya/stingray/manager/y1;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/y1;->b()Li/c/b0/b/l;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/ui/common/c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/common/c;-><init>(Lcom/hiya/stingray/ui/common/e;)V

    .line 5
    invoke-virtual {v0, v1}, Li/c/b0/b/l;->r(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/hiya/stingray/ui/common/e;->i:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/e;->h:Li/c/b0/k/a;

    sget-object v1, Lcom/trello/rxlifecycle4/d/a;->STOP:Lcom/trello/rxlifecycle4/d/a;

    invoke-virtual {v0, v1}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroidx/appcompat/app/c;->onStop()V

    .line 3
    sget v0, Lcom/hiya/stingray/ui/common/e;->q:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 4
    sput v0, Lcom/hiya/stingray/ui/common/e;->q:I

    :cond_0
    return-void
.end method

.method public p(Ljava/lang/String;ZJ)V
    .locals 5

    .line 1
    new-instance v0, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v0}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string v1, "update_prompt"

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 2
    new-instance v2, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v2}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    invoke-virtual {v2, v1}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 3
    new-instance v1, Landroidx/appcompat/app/b$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    const v3, 0x7f11011d

    .line 4
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/b$a;->q(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    const v3, 0x7f110119

    .line 5
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/hiya/stingray/ui/common/e$a;

    invoke-direct {v4, p0, v2, p1}, Lcom/hiya/stingray/ui/common/e$a;-><init>(Lcom/hiya/stingray/ui/common/e;Lcom/hiya/stingray/util/g0/c$a;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/app/b$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    if-eqz p2, :cond_0

    const-string p1, "required_update"

    .line 6
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string p1, "required_update_action"

    .line 7
    invoke-virtual {v2, p1}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const p1, 0x7f11011b

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/b$a;->h(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    goto :goto_0

    :cond_0
    const-string p1, "recommended_update"

    .line 9
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string p1, "recommended_update_action"

    .line 10
    invoke-virtual {v2, p1}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const p1, 0x7f11011c

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/b$a;->h(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    const p1, 0x7f110218

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/ui/common/e$b;

    invoke-direct {p2, p0, v2, p3, p4}, Lcom/hiya/stingray/ui/common/e$b;-><init>(Lcom/hiya/stingray/ui/common/e;Lcom/hiya/stingray/util/g0/c$a;J)V

    invoke-virtual {v1, p1, p2}, Landroidx/appcompat/app/b$a;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    :goto_0
    const/4 p1, 0x0

    .line 13
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/b$a;->d(Z)Landroidx/appcompat/app/b$a;

    .line 14
    invoke-virtual {v1}, Landroidx/appcompat/app/b$a;->a()Landroidx/appcompat/app/b;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/common/e;->g:Landroidx/appcompat/app/b;

    .line 15
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 16
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/e;->g:Landroidx/appcompat/app/b;

    new-instance p2, Lcom/hiya/stingray/ui/common/e$c;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/common/e$c;-><init>(Lcom/hiya/stingray/ui/common/e;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 17
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/e;->n:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p2

    const-string p3, "user_prompt_view"

    invoke-virtual {p1, p3, p2}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method protected z()Lcom/hiya/stingray/s/d/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/e;->f:Lcom/hiya/stingray/s/d/a;

    return-object v0
.end method
