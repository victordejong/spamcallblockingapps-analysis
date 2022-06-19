.class public Lcom/hiya/stingray/ui/common/g;
.super Landroidx/fragment/app/d;
.source "SourceFile"


# instance fields
.field private v:Lcom/hiya/stingray/s/d/a;

.field w:Li/c/b0/k/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/a<",
            "Lcom/trello/rxlifecycle4/d/b;",
            ">;"
        }
    .end annotation
.end field

.field x:Li/c/b0/c/a;

.field private y:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/g;->r1()V

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/g;->q1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->T(Lcom/hiya/stingray/ui/common/g;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/g;->w:Li/c/b0/k/a;

    sget-object v0, Lcom/trello/rxlifecycle4/d/b;->ATTACH:Lcom/trello/rxlifecycle4/d/b;

    invoke-virtual {p1, v0}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/g;->w:Li/c/b0/k/a;

    sget-object v0, Lcom/trello/rxlifecycle4/d/b;->CREATE:Lcom/trello/rxlifecycle4/d/b;

    invoke-virtual {p1, v0}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/g;->w:Li/c/b0/k/a;

    sget-object v1, Lcom/trello/rxlifecycle4/d/b;->DESTROY:Lcom/trello/rxlifecycle4/d/b;

    invoke-virtual {v0, v1}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/g;->x:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->dispose()V

    .line 3
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/g;->w:Li/c/b0/k/a;

    sget-object v1, Lcom/trello/rxlifecycle4/d/b;->DESTROY_VIEW:Lcom/trello/rxlifecycle4/d/b;

    invoke-virtual {v0, v1}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/d;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/g;->w:Li/c/b0/k/a;

    sget-object v1, Lcom/trello/rxlifecycle4/d/b;->DETACH:Lcom/trello/rxlifecycle4/d/b;

    invoke-virtual {v0, v1}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/d;->onDetach()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/g;->y:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/g;->w:Li/c/b0/k/a;

    sget-object v1, Lcom/trello/rxlifecycle4/d/b;->PAUSE:Lcom/trello/rxlifecycle4/d/b;

    invoke-virtual {v0, v1}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/g;->w:Li/c/b0/k/a;

    sget-object v1, Lcom/trello/rxlifecycle4/d/b;->RESUME:Lcom/trello/rxlifecycle4/d/b;

    invoke-virtual {v0, v1}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/g;->w:Li/c/b0/k/a;

    sget-object v1, Lcom/trello/rxlifecycle4/d/b;->START:Lcom/trello/rxlifecycle4/d/b;

    invoke-virtual {v0, v1}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/g;->w:Li/c/b0/k/a;

    sget-object v1, Lcom/trello/rxlifecycle4/d/b;->STOP:Lcom/trello/rxlifecycle4/d/b;

    invoke-virtual {v0, v1}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/d;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/g;->w:Li/c/b0/k/a;

    sget-object p2, Lcom/trello/rxlifecycle4/d/b;->CREATE_VIEW:Lcom/trello/rxlifecycle4/d/b;

    invoke-virtual {p1, p2}, Li/c/b0/k/a;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method protected q1()Lcom/hiya/stingray/s/d/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/g;->v:Lcom/hiya/stingray/s/d/a;

    return-object v0
.end method

.method public r1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/g;->v:Lcom/hiya/stingray/s/d/a;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hiya/stingray/s/a;->b(Landroid/content/Context;)Lcom/hiya/stingray/s/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/common/g;->v:Lcom/hiya/stingray/s/d/a;

    :cond_0
    return-void
.end method

.method public s1(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/common/g;->y:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method
