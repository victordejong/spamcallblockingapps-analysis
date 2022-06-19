.class public final Lcom/hiya/client/callerid/ui/incallui/h;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/client/callerid/ui/incallui/h$a;
    }
.end annotation


# static fields
.field public static final m:Lcom/hiya/client/callerid/ui/incallui/h$a;


# instance fields
.field public f:Lcom/hiya/client/callerid/ui/incallui/b;

.field private g:Lcom/hiya/client/callerid/ui/incallui/l;

.field private h:J

.field private i:Z

.field private final j:Landroid/os/Handler;

.field private k:Z

.field private l:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/client/callerid/ui/incallui/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/client/callerid/ui/incallui/h$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/client/callerid/ui/incallui/h;->m:Lcom/hiya/client/callerid/ui/incallui/h$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h;->j:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic b1(Lcom/hiya/client/callerid/ui/incallui/h;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hiya/client/callerid/ui/incallui/h;->h:J

    return-wide v0
.end method

.method public static final synthetic c1(Lcom/hiya/client/callerid/ui/incallui/h;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/incallui/h;->j:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic d1(Lcom/hiya/client/callerid/ui/incallui/h;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hiya/client/callerid/ui/incallui/h;->i:Z

    return p0
.end method

.method public static final synthetic e1(Lcom/hiya/client/callerid/ui/incallui/h;)Lcom/hiya/client/callerid/ui/incallui/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/incallui/h;->g:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "model"

    invoke-static {p0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic f1(Lcom/hiya/client/callerid/ui/incallui/h;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/client/callerid/ui/incallui/h;->i:Z

    return-void
.end method

.method public static final synthetic g1(Lcom/hiya/client/callerid/ui/incallui/h;Landroid/widget/Button;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/client/callerid/ui/incallui/h;->i1(Landroid/widget/Button;Z)V

    return-void
.end method

.method private final i1(Landroid/widget/Button;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2
    sget v0, Lcom/hiya/client/callerid/ui/p;->h0:I

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget v0, Lcom/hiya/client/callerid/ui/p;->i:I

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f000000    # 0.5f

    .line 4
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x4

    .line 5
    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_3
    return-void
.end method


# virtual methods
.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h;->l:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public a1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h;->l:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h;->l:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h;->l:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/incallui/h;->l:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final h1()Lcom/hiya/client/callerid/ui/incallui/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h;->f:Lcom/hiya/client/callerid/ui/incallui/b;

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

    invoke-interface {p1, p0}, Lcom/hiya/client/callerid/ui/z/a;->e(Lcom/hiya/client/callerid/ui/incallui/h;)V

    .line 3
    new-instance p1, Landroidx/lifecycle/d0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/d0;-><init>(Landroidx/lifecycle/g0;)V

    const-class v0, Lcom/hiya/client/callerid/ui/incallui/l;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/d0;->a(Ljava/lang/Class;)Landroidx/lifecycle/b0;

    move-result-object p1

    const-string v0, "ViewModelProvider(this).\u2026allViewModel::class.java)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/hiya/client/callerid/ui/incallui/l;

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/h;->g:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/hiya/client/callerid/ui/incallui/l;->I(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/hiya/client/callerid/ui/q;->a:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/hiya/client/callerid/ui/incallui/h;->h:J

    return-void

    :cond_0
    const-string p1, "model"

    .line 6
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p3, Lcom/hiya/client/callerid/ui/r;->f:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/incallui/h;->Z0()V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/incallui/h;->k:Z

    if-nez v0, :cond_0

    .line 2
    sget v0, Lcom/hiya/client/callerid/ui/p;->L:I

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const-string v2, "dismissProgress"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    sget v2, Lcom/hiya/client/callerid/ui/p;->J:I

    invoke-virtual {p0, v2}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const-string v4, "dismiss"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/Button;->getWidth()I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    invoke-virtual {p0, v2}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-static {v2, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/Button;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/hiya/client/callerid/ui/incallui/h;->k:Z

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h;->f:Lcom/hiya/client/callerid/ui/incallui/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/b;->y()V

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "callerIdView"

    .line 4
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h;->f:Lcom/hiya/client/callerid/ui/incallui/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/b;->z()V

    .line 3
    sget v0, Lcom/hiya/client/callerid/ui/p;->J:I

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v2, "dismiss"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/Button;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_0
    const-string v0, "callerIdView"

    .line 5
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object p1

    const-string p2, "requireActivity()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "requireActivity().window"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/hiya/client/callerid/ui/m;->h:I

    invoke-static {v1, v2}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/hiya/client/callerid/ui/e0/j;->d(Landroid/app/Activity;Z)V

    .line 5
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/h;->f:Lcom/hiya/client/callerid/ui/incallui/b;

    const/4 p2, 0x0

    const-string v0, "callerIdView"

    if-eqz p1, :cond_7

    sget v1, Lcom/hiya/client/callerid/ui/p;->A:I

    invoke-virtual {p0, v1}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "callerId"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/hiya/client/callerid/ui/incallui/b;->B(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/h;->f:Lcom/hiya/client/callerid/ui/incallui/b;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/hiya/client/callerid/ui/n;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/hiya/client/callerid/ui/incallui/c;->k(I)V

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
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h;->g:Lcom/hiya/client/callerid/ui/incallui/l;

    const-string v1, "model"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/l;->o()Landroidx/lifecycle/t;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v2

    new-instance v3, Lcom/hiya/client/callerid/ui/incallui/h$c;

    invoke-direct {v3, p0}, Lcom/hiya/client/callerid/ui/incallui/h$c;-><init>(Lcom/hiya/client/callerid/ui/incallui/h;)V

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 9
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h;->g:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/l;->v()Landroidx/lifecycle/t;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v2

    new-instance v3, Lcom/hiya/client/callerid/ui/incallui/h$d;

    invoke-direct {v3, p0}, Lcom/hiya/client/callerid/ui/incallui/h$d;-><init>(Lcom/hiya/client/callerid/ui/incallui/h;)V

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 10
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h;->g:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/l;->u()Landroidx/lifecycle/t;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v2

    new-instance v3, Lcom/hiya/client/callerid/ui/incallui/h$e;

    invoke-direct {v3, p0}, Lcom/hiya/client/callerid/ui/incallui/h$e;-><init>(Lcom/hiya/client/callerid/ui/incallui/h;)V

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 11
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h;->g:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/ui/incallui/l;->K(Ljava/lang/String;)V

    .line 12
    sget v0, Lcom/hiya/client/callerid/ui/p;->g0:I

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/hiya/client/callerid/ui/incallui/h$f;

    invoke-direct {v2, p0}, Lcom/hiya/client/callerid/ui/incallui/h$f;-><init>(Lcom/hiya/client/callerid/ui/incallui/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    sget v0, Lcom/hiya/client/callerid/ui/p;->W:I

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/hiya/client/callerid/ui/incallui/h$g;

    invoke-direct {v2, p0}, Lcom/hiya/client/callerid/ui/incallui/h$g;-><init>(Lcom/hiya/client/callerid/ui/incallui/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    sget v0, Lcom/hiya/client/callerid/ui/p;->c:I

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/hiya/client/callerid/ui/incallui/h$h;

    invoke-direct {v2, p0}, Lcom/hiya/client/callerid/ui/incallui/h$h;-><init>(Lcom/hiya/client/callerid/ui/incallui/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    sget v0, Lcom/hiya/client/callerid/ui/p;->h0:I

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/hiya/client/callerid/ui/incallui/h$i;

    invoke-direct {v2, p0}, Lcom/hiya/client/callerid/ui/incallui/h$i;-><init>(Lcom/hiya/client/callerid/ui/incallui/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    sget v0, Lcom/hiya/client/callerid/ui/p;->i:I

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/hiya/client/callerid/ui/incallui/h$j;

    invoke-direct {v2, p0}, Lcom/hiya/client/callerid/ui/incallui/h$j;-><init>(Lcom/hiya/client/callerid/ui/incallui/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    sget v0, Lcom/hiya/client/callerid/ui/p;->J:I

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/hiya/client/callerid/ui/incallui/h$k;

    invoke-direct {v3, p0}, Lcom/hiya/client/callerid/ui/incallui/h$k;-><init>(Lcom/hiya/client/callerid/ui/incallui/h;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/hiya/client/callerid/ui/incallui/h$b;

    invoke-direct {v3, p0}, Lcom/hiya/client/callerid/ui/incallui/h$b;-><init>(Lcom/hiya/client/callerid/ui/incallui/h;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/incallui/h;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestLayout()V

    .line 20
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h;->g:Lcom/hiya/client/callerid/ui/incallui/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/ui/incallui/l;->C(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 21
    :cond_2
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 22
    :cond_3
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 23
    :cond_4
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 24
    :cond_5
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 25
    :cond_6
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 26
    :cond_7
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2
.end method
