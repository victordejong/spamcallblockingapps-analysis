.class public Lcom/hiya/stingray/ui/common/i;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field private f:Lcom/hiya/stingray/s/d/a;

.field public g:Li/c/b0/k/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/a<",
            "Lcom/trello/rxlifecycle4/d/b;",
            ">;"
        }
    .end annotation
.end field

.field public h:Li/c/b0/c/a;

.field private i:Lkotlin/w/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/l<",
            "-",
            "Landroidx/fragment/app/Fragment;",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/String;

.field private k:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/common/i;->k:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method protected final a1()Lcom/hiya/stingray/s/d/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/i;->f:Lcom/hiya/stingray/s/d/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final b1()Li/c/b0/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/i;->h:Li/c/b0/c/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "compositeDisposable"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public c1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/i;->j:Ljava/lang/String;

    return-object v0
.end method

.method public d1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/i;->f:Lcom/hiya/stingray/s/d/a;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-static {v0}, Lcom/hiya/stingray/s/a;->b(Landroid/content/Context;)Lcom/hiya/stingray/s/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/common/i;->f:Lcom/hiya/stingray/s/d/a;

    :cond_0
    return-void
.end method

.method public final e1(Lkotlin/w/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/l<",
            "-",
            "Landroidx/fragment/app/Fragment;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/common/i;->i:Lkotlin/w/b/l;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->d1()V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/i;->f:Lcom/hiya/stingray/s/d/a;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->g(Lcom/hiya/stingray/ui/common/i;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/i;->g:Li/c/b0/k/a;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/trello/rxlifecycle4/d/b;->ATTACH:Lcom/trello/rxlifecycle4/d/b;

    invoke-virtual {p1, v0}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/i;->i:Lkotlin/w/b/l;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/r;

    :cond_0
    return-void

    :cond_1
    const-string p1, "lifecycleSubject"

    .line 6
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/i;->g:Li/c/b0/k/a;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/trello/rxlifecycle4/d/b;->CREATE:Lcom/trello/rxlifecycle4/d/b;

    invoke-virtual {p1, v0}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "lifecycleSubject"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/i;->g:Li/c/b0/k/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/trello/rxlifecycle4/d/b;->DESTROY:Lcom/trello/rxlifecycle4/d/b;

    invoke-virtual {v0, v2}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/i;->h:Li/c/b0/c/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/c/b0/c/a;->dispose()V

    .line 3
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void

    :cond_0
    const-string v0, "compositeDisposable"

    .line 4
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "lifecycleSubject"

    .line 5
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/i;->g:Li/c/b0/k/a;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/trello/rxlifecycle4/d/b;->DESTROY_VIEW:Lcom/trello/rxlifecycle4/d/b;

    invoke-virtual {v0, v1}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->Z0()V

    return-void

    :cond_0
    const-string v0, "lifecycleSubject"

    .line 4
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onDetach()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/i;->g:Li/c/b0/k/a;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/trello/rxlifecycle4/d/b;->DETACH:Lcom/trello/rxlifecycle4/d/b;

    invoke-virtual {v0, v1}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void

    :cond_0
    const-string v0, "lifecycleSubject"

    .line 3
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/i;->g:Li/c/b0/k/a;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/trello/rxlifecycle4/d/b;->PAUSE:Lcom/trello/rxlifecycle4/d/b;

    invoke-virtual {v0, v1}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void

    :cond_0
    const-string v0, "lifecycleSubject"

    .line 3
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/i;->g:Li/c/b0/k/a;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/trello/rxlifecycle4/d/b;->RESUME:Lcom/trello/rxlifecycle4/d/b;

    invoke-virtual {v0, v1}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "lifecycleSubject"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/i;->g:Li/c/b0/k/a;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/trello/rxlifecycle4/d/b;->START:Lcom/trello/rxlifecycle4/d/b;

    invoke-virtual {v0, v1}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "lifecycleSubject"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/i;->g:Li/c/b0/k/a;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/trello/rxlifecycle4/d/b;->STOP:Lcom/trello/rxlifecycle4/d/b;

    invoke-virtual {v0, v1}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void

    :cond_0
    const-string v0, "lifecycleSubject"

    .line 3
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/i;->g:Li/c/b0/k/a;

    if-eqz p1, :cond_0

    sget-object p2, Lcom/trello/rxlifecycle4/d/b;->CREATE_VIEW:Lcom/trello/rxlifecycle4/d/b;

    invoke-virtual {p1, p2}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "lifecycleSubject"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final x()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Lcom/trello/rxlifecycle4/d/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/i;->g:Li/c/b0/k/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/c/b0/b/v;->hide()Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "lifecycleSubject.hide()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "lifecycleSubject"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
