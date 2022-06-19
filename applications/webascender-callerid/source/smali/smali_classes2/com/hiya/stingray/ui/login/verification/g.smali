.class public final Lcom/hiya/stingray/ui/login/verification/g;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/login/verification/g$a;
    }
.end annotation


# static fields
.field public static final q:Lcom/hiya/stingray/ui/login/verification/g$a;


# instance fields
.field public l:Lcom/hiya/stingray/manager/u3;

.field public m:Lcom/hiya/stingray/ui/login/verification/i;

.field private n:Lcom/hiya/stingray/ui/login/verification/e;

.field private o:Z

.field private p:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/stingray/ui/login/verification/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/ui/login/verification/g$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/ui/login/verification/g;->q:Lcom/hiya/stingray/ui/login/verification/g$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    return-void
.end method

.method public static final synthetic g1(Lcom/hiya/stingray/ui/login/verification/g;)Lcom/hiya/stingray/ui/login/verification/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/login/verification/g;->n:Lcom/hiya/stingray/ui/login/verification/e;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "vm"

    invoke-static {p0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic h1(Lcom/hiya/stingray/ui/login/verification/g;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/login/verification/g;->o:Z

    return-void
.end method


# virtual methods
.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/g;->p:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public f1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/g;->p:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/login/verification/g;->p:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/g;->p:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/hiya/stingray/ui/login/verification/g;->p:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final i1()Lcom/hiya/stingray/ui/login/verification/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/g;->m:Lcom/hiya/stingray/ui/login/verification/i;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "verificationAnalytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->j0(Lcom/hiya/stingray/ui/login/verification/g;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c0120

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/login/verification/g;->Z0()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/login/verification/g;->o:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/g;->m:Lcom/hiya/stingray/ui/login/verification/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/login/verification/i;->i()V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/g;->n:Lcom/hiya/stingray/ui/login/verification/e;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/login/verification/e;->j()V

    return-void

    :cond_2
    const-string v0, "vm"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "verificationAnalytics"

    .line 7
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroidx/lifecycle/e0;->a(Landroidx/fragment/app/e;)Landroidx/lifecycle/d0;

    move-result-object p1

    .line 3
    const-class v0, Lcom/hiya/stingray/ui/login/verification/e;

    .line 4
    invoke-virtual {p1, v0}, Landroidx/lifecycle/d0;->a(Ljava/lang/Class;)Landroidx/lifecycle/b0;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(th\u2026del::class.java\n        )"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/hiya/stingray/ui/login/verification/e;

    iput-object p1, p0, Lcom/hiya/stingray/ui/login/verification/g;->n:Lcom/hiya/stingray/ui/login/verification/e;

    .line 5
    sget p1, Lcom/hiya/stingray/o;->h4:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/login/verification/g;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "subscriptionProvidedById"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f110272

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hiya/stingray/ui/login/verification/g;->n:Lcom/hiya/stingray/ui/login/verification/e;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/hiya/stingray/ui/login/verification/e;->l()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    sget p1, Lcom/hiya/stingray/o;->l2:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/login/verification/g;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/hiya/stingray/ui/login/verification/g$b;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/login/verification/g$b;-><init>(Lcom/hiya/stingray/ui/login/verification/g;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    sget p1, Lcom/hiya/stingray/o;->W3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/login/verification/g;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/hiya/stingray/ui/login/verification/g$c;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/login/verification/g$c;-><init>(Lcom/hiya/stingray/ui/login/verification/g;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string p1, "vm"

    .line 8
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 9
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw p2
.end method
