.class public final Lcom/hiya/client/callerid/ui/incallui/j;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/client/callerid/ui/incallui/j$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/hiya/client/callerid/ui/incallui/j$a;


# instance fields
.field public f:Lcom/hiya/client/callerid/ui/incallui/b;

.field private g:Lcom/hiya/client/callerid/ui/incallui/l;

.field private h:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/client/callerid/ui/incallui/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/client/callerid/ui/incallui/j$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/client/callerid/ui/incallui/j;->i:Lcom/hiya/client/callerid/ui/incallui/j$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic b1(Lcom/hiya/client/callerid/ui/incallui/j;)Lcom/hiya/client/callerid/ui/incallui/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/incallui/j;->g:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "model"

    invoke-static {p0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic c1(Lcom/hiya/client/callerid/ui/incallui/j;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/j;->e1(I)V

    return-void
.end method

.method private final e1(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v2, "requireActivity().window"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 3
    sget v0, Lcom/hiya/client/callerid/ui/p;->h:I

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/j;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/j;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public a1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/j;->h:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/j;->h:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/j;->h:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/incallui/j;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final d1()Lcom/hiya/client/callerid/ui/incallui/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/j;->f:Lcom/hiya/client/callerid/ui/incallui/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "callerIdView"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lcom/hiya/client/callerid/ui/z/a;->a:Lcom/hiya/client/callerid/ui/z/a$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "requireActivity().applicationContext"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/hiya/client/callerid/ui/z/a$a;->a(Landroid/content/Context;)Lcom/hiya/client/callerid/ui/z/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/client/callerid/ui/z/a;->d(Lcom/hiya/client/callerid/ui/incallui/j;)V

    .line 3
    new-instance p1, Landroidx/lifecycle/d0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/d0;-><init>(Landroidx/lifecycle/g0;)V

    const-class v0, Lcom/hiya/client/callerid/ui/incallui/l;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/d0;->a(Ljava/lang/Class;)Landroidx/lifecycle/b0;

    move-result-object p1

    const-string v0, "ViewModelProvider(this).\u2026allViewModel::class.java)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/hiya/client/callerid/ui/incallui/l;

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/j;->g:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/hiya/client/callerid/ui/incallui/l;->I(Landroid/content/Context;)V

    return-void

    :cond_0
    const-string p1, "model"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p3, Lcom/hiya/client/callerid/ui/r;->g:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/incallui/j;->Z0()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/j;->f:Lcom/hiya/client/callerid/ui/incallui/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/b;->y()V

    return-void

    :cond_0
    const-string v0, "callerIdView"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/j;->f:Lcom/hiya/client/callerid/ui/incallui/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/b;->z()V

    return-void

    :cond_0
    const-string v0, "callerIdView"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/hiya/client/callerid/ui/m;->d:I

    invoke-static {p1, p2}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/j;->e1(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object p1

    const-string p2, "requireActivity()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/hiya/client/callerid/ui/e0/j;->d(Landroid/app/Activity;Z)V

    .line 4
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/j;->f:Lcom/hiya/client/callerid/ui/incallui/b;

    const/4 p2, 0x0

    const-string v0, "callerIdView"

    if-eqz p1, :cond_7

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/hiya/client/callerid/ui/incallui/c;->m(Ljava/lang/Integer;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/j;->f:Lcom/hiya/client/callerid/ui/incallui/b;

    if-eqz p1, :cond_6

    sget v1, Lcom/hiya/client/callerid/ui/p;->A:I

    invoke-virtual {p0, v1}, Lcom/hiya/client/callerid/ui/incallui/j;->a1(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "callerId"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/hiya/client/callerid/ui/incallui/b;->B(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/j;->f:Lcom/hiya/client/callerid/ui/incallui/b;

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/hiya/client/callerid/ui/incallui/b;->A(Z)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "EXTRA_CALL_IDENTIFIER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/j;->g:Lcom/hiya/client/callerid/ui/incallui/l;

    const-string v1, "model"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/l;->o()Landroidx/lifecycle/t;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v2

    new-instance v3, Lcom/hiya/client/callerid/ui/incallui/j$b;

    invoke-direct {v3, p0}, Lcom/hiya/client/callerid/ui/incallui/j$b;-><init>(Lcom/hiya/client/callerid/ui/incallui/j;)V

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 9
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/j;->g:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/l;->q()Landroidx/lifecycle/t;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v2

    new-instance v3, Lcom/hiya/client/callerid/ui/incallui/j$c;

    invoke-direct {v3, p0}, Lcom/hiya/client/callerid/ui/incallui/j$c;-><init>(Lcom/hiya/client/callerid/ui/incallui/j;)V

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 10
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/j;->g:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/ui/incallui/l;->K(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/j;->g:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/ui/incallui/l;->B(Ljava/lang/String;)V

    .line 12
    sget p1, Lcom/hiya/client/callerid/ui/p;->E:I

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/j;->a1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/hiya/client/callerid/ui/incallui/j$d;

    invoke-direct {p2, p0}, Lcom/hiya/client/callerid/ui/incallui/j$d;-><init>(Lcom/hiya/client/callerid/ui/incallui/j;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 13
    sget p1, Lcom/hiya/client/callerid/ui/p;->a:I

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/j;->a1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/hiya/client/callerid/ui/incallui/j$e;

    invoke-direct {p2, p0}, Lcom/hiya/client/callerid/ui/incallui/j$e;-><init>(Lcom/hiya/client/callerid/ui/incallui/j;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    .line 14
    :cond_1
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 15
    :cond_2
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 16
    :cond_3
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 17
    :cond_4
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 18
    :cond_5
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 19
    :cond_6
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 20
    :cond_7
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2
.end method
