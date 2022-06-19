.class public final Lcom/hiya/stingray/ui/setting/d;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"


# instance fields
.field private l:Lcom/hiya/stingray/ui/setting/f;

.field public m:Lcom/hiya/stingray/ui/setting/b;

.field public n:Lcom/hiya/stingray/q/d/f;

.field public o:Lcom/hiya/stingray/manager/a4;

.field private p:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    return-void
.end method

.method public static final synthetic g1(Lcom/hiya/stingray/ui/setting/d;)Lcom/hiya/stingray/ui/setting/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/setting/d;->l:Lcom/hiya/stingray/ui/setting/f;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "myNumberViewModel"

    invoke-static {p0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final j1()V
    .locals 7

    .line 1
    sget v0, Lcom/hiya/stingray/o;->z4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/setting/d;->f1(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    const-string v0, "toolBar"

    invoke-static {v1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "activity!!"

    invoke-static {v2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f11026e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "getString(R.string.phone_my_phone_number)"

    invoke-static {v3, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/hiya/stingray/util/e0;->s(Landroidx/appcompat/widget/Toolbar;Landroid/app/Activity;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/d;->p:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public f1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/d;->p:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/setting/d;->p:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/d;->p:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/setting/d;->p:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final h1()Lcom/hiya/stingray/ui/setting/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/d;->m:Lcom/hiya/stingray/ui/setting/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final i1()Lcom/hiya/stingray/manager/a4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/d;->o:Lcom/hiya/stingray/manager/a4;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "selectManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/setting/d;->j1()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->m(Lcom/hiya/stingray/ui/setting/d;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/lifecycle/e0;->a(Landroidx/fragment/app/e;)Landroidx/lifecycle/d0;

    move-result-object p1

    const-class v0, Lcom/hiya/stingray/ui/setting/f;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/d0;->a(Ljava/lang/Class;)Landroidx/lifecycle/b0;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(th\u2026berViewModel::class.java)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/hiya/stingray/ui/setting/f;

    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/d;->l:Lcom/hiya/stingray/ui/setting/f;

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c0131

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/setting/d;->Z0()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/d;->m:Lcom/hiya/stingray/ui/setting/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/setting/b;->d()V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/d;->l:Lcom/hiya/stingray/ui/setting/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/setting/f;->j()V

    return-void

    :cond_0
    const-string v0, "myNumberViewModel"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "analytics"

    .line 4
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/hiya/stingray/o;->o3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/setting/d;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/hiya/stingray/ui/setting/d$a;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/setting/d$a;-><init>(Lcom/hiya/stingray/ui/setting/d;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/d;->l:Lcom/hiya/stingray/ui/setting/f;

    const/4 p2, 0x0

    const-string v0, "myNumberViewModel"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/setting/f;->h()Landroidx/lifecycle/t;

    move-result-object p1

    new-instance v1, Lcom/hiya/stingray/ui/setting/d$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/d$b;-><init>(Lcom/hiya/stingray/ui/setting/d;)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/d;->l:Lcom/hiya/stingray/ui/setting/f;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/setting/f;->g()Landroidx/lifecycle/t;

    move-result-object p1

    new-instance v1, Lcom/hiya/stingray/ui/setting/d$c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/d$c;-><init>(Lcom/hiya/stingray/ui/setting/d;)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/d;->l:Lcom/hiya/stingray/ui/setting/f;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/setting/f;->i()Landroidx/lifecycle/t;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/ui/setting/d$d;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/setting/d$d;-><init>(Lcom/hiya/stingray/ui/setting/d;)V

    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    return-void

    :cond_0
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_1
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_2
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2
.end method
