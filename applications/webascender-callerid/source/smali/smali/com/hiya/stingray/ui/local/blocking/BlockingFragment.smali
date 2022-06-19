.class public final Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/customblock/i;
.implements Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$ScrollAwareFab;
    }
.end annotation


# instance fields
.field public l:Lcom/hiya/stingray/ui/local/blocking/a;

.field public m:Lcom/hiya/stingray/ui/customblock/f;

.field public n:Lcom/hiya/stingray/ui/customblock/h;

.field public o:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/hiya/stingray/manager/h4;

.field public q:Lcom/hiya/stingray/ui/login/o;

.field public r:Lcom/hiya/stingray/manager/u2;

.field public s:Lcom/hiya/stingray/ui/customblock/d;

.field private final t:Ljava/lang/String;

.field private u:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    const-string v0, "block_list"

    .line 2
    iput-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->t:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic g1(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->s1(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;III)V

    return-void
.end method

.method public static final synthetic h1(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->u1(Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;)V

    return-void
.end method

.method public static final synthetic i1(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->v1(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;)V

    return-void
.end method

.method public static final synthetic j1(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->w1()V

    return-void
.end method

.method private final k1(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->n:Lcom/hiya/stingray/ui/customblock/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->p:Lcom/hiya/stingray/manager/h4;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;->FULL_NUMBER:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/hiya/stingray/ui/customblock/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;)V

    return-void

    :cond_0
    const-string p1, "userAccountManager"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "blockListPresenter"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private final q1(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 3
    new-instance v0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$a;-><init>(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method private final r1()V
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->T0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;

    new-instance v1, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$f;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$f;-><init>(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    sget v0, Lcom/hiya/stingray/o;->c1:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;

    new-instance v1, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$g;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$g;-><init>(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    sget v0, Lcom/hiya/stingray/o;->Z0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;

    new-instance v1, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$h;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$h;-><init>(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    sget v0, Lcom/hiya/stingray/o;->b1:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;

    new-instance v1, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$i;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$i;-><init>(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final s1(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;III)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->setAddButtonColorNormal(I)V

    .line 2
    invoke-virtual {p1, p3}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->setAddButtonColorPressed(I)V

    .line 3
    invoke-virtual {p1, p4}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->setAddButtonPlusColor(I)V

    return-void
.end method

.method private final t1()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->m:Lcom/hiya/stingray/ui/customblock/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/hiya/stingray/ui/customblock/f;->getItemCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "block_list_count"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->l:Lcom/hiya/stingray/ui/local/blocking/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/local/blocking/a;->e(Ljava/util/Map;)V

    return-void

    :cond_0
    const-string v0, "blockingAnalytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v0, "blockListAdapter"

    .line 4
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private final u1(Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/hiya/stingray/ui/customblock/BlockFromActivity;->O(Landroid/content/Context;Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x1f43

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method

.method private final v1(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->o:Lh/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;

    .line 2
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog;->y1(Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;)V

    const-string p1, "manualBlock"

    .line 3
    invoke-static {v0, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "manual_block_dialog_tag"

    invoke-static {p0, p1, v0}, Lcom/hiya/stingray/util/e0;->w(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroidx/fragment/app/d;)V

    return-void

    :cond_0
    const-string p1, "manualBlockDialog"

    .line 4
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final w1()V
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->w:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "blockListTextView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->m:Lcom/hiya/stingray/ui/customblock/f;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/hiya/stingray/ui/customblock/f;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    const-string v0, "blockListAdapter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final x1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v3

    if-eqz v3, :cond_3

    const v1, 0x7f090159

    invoke-virtual {v3, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    const-class v3, Landroid/widget/ActionMenuView;

    invoke-static {v1, v3}, Lcom/hiya/stingray/util/e0;->d(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ActionMenuView;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const v1, 0x7f0900a5

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    sget v1, Lcom/hiya/stingray/o;->w:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "blockListTextView"

    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f0900a6

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const v1, 0x7f0901ae

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, v0}, Lcom/hiya/stingray/util/e0;->o(Ljava/util/List;Landroid/view/ViewGroup;)V

    return-void

    .line 12
    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_4
    :goto_0
    return-void

    .line 13
    :cond_5
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1
.end method


# virtual methods
.method public C(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget v0, Lcom/hiya/stingray/o;->v:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f110022

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v4}, Lcom/google/android/material/snackbar/Snackbar;->Y(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->N()V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method

.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->u:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/c0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->m:Lcom/hiya/stingray/ui/customblock/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/customblock/f;->n(Ljava/util/List;)V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->t1()V

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->w1()V

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->x1()V

    return-void

    :cond_0
    const-string p1, "blockListAdapter"

    .line 5
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public c1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->t:Ljava/lang/String;

    return-object v0
.end method

.method public f1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->u:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->u:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->u:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final l1()Lcom/hiya/stingray/ui/customblock/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->m:Lcom/hiya/stingray/ui/customblock/f;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "blockListAdapter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final m1()Lcom/hiya/stingray/ui/customblock/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->n:Lcom/hiya/stingray/ui/customblock/h;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "blockListPresenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final n1()Lcom/hiya/stingray/ui/local/blocking/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->l:Lcom/hiya/stingray/ui/local/blocking/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "blockingAnalytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final o1()Lcom/hiya/stingray/ui/login/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->q:Lcom/hiya/stingray/ui/login/o;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "permissionHandler"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/hiya/stingray/o;->v:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "blockListRecyclerView"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->b1()Li/c/b0/c/a;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->m:Lcom/hiya/stingray/ui/customblock/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/customblock/f;->j()Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$b;-><init>(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 6
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->x1()V

    return-void

    :cond_0
    const-string p1, "blockListAdapter"

    .line 7
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x2329

    if-ne p2, v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v2, "userAccountManager"

    const-string v3, "blockListPresenter"

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    const/16 v5, 0x1f41

    if-ne p1, v5, :cond_3

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->n:Lcom/hiya/stingray/ui/customblock/h;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->p:Lcom/hiya/stingray/manager/h4;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/hiya/stingray/ui/customblock/h;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v4

    :cond_3
    if-eqz p2, :cond_9

    const/16 p2, 0x1f43

    if-ne p1, p2, :cond_9

    if-eqz p3, :cond_8

    const-string p1, "block_from_source"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object p2, Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;->CALLLOG:Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p1, "block_call_log_item"

    .line 4
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/t/d0;

    .line 5
    iget-object p2, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->n:Lcom/hiya/stingray/ui/customblock/h;

    if-eqz p2, :cond_5

    iget-object p3, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->p:Lcom/hiya/stingray/manager/h4;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lcom/hiya/stingray/ui/customblock/h;->g(Ljava/lang/String;Lcom/hiya/stingray/t/d0;)V

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v4

    :cond_5
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v4

    .line 6
    :cond_6
    sget-object p2, Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;->CONTACTS:Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p1, "block_contact_name_item"

    .line 7
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "block_contact_phone_list_item"

    .line 8
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    const-string p3, "contactName"

    .line 9
    invoke-static {p1, p3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "phones"

    invoke-static {p2, p3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->k1(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 10
    :cond_7
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Invalid block source"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string p1, "Block Source: %s"

    invoke-static {p2, p1, p3}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_8
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v4

    :cond_9
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->j(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c0034

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->Z0()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->q:Lcom/hiya/stingray/ui/login/o;

    if-eqz v1, :cond_0

    .line 2
    new-instance v6, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$c;

    invoke-direct {v6, p0, p1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$c;-><init>(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;I)V

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 3
    invoke-virtual/range {v1 .. v6}, Lcom/hiya/stingray/ui/login/o;->e(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;[ILcom/hiya/stingray/ui/login/o$a;)V

    return-void

    :cond_0
    const-string p1, "permissionHandler"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->n:Lcom/hiya/stingray/ui/customblock/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->p:Lcom/hiya/stingray/manager/h4;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/customblock/h;->c(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->q1(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v0, "userAccountManager"

    .line 4
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "blockListPresenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->s:Lcom/hiya/stingray/ui/customblock/d;

    const-string p2, "basicBlockListPresenter"

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->n:Lcom/hiya/stingray/ui/customblock/h;

    if-eqz p1, :cond_6

    .line 3
    invoke-interface {p1, p0}, Lcom/hiya/stingray/ui/customblock/h;->e(Lcom/hiya/stingray/ui/customblock/i;)V

    .line 4
    sget p1, Lcom/hiya/stingray/o;->l:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "appBar"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/hiya/stingray/o;->z4:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    const-string v1, "appBar.toolBar"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f110060

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 5
    sget p1, Lcom/hiya/stingray/o;->v:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "blockListRecyclerView"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->m:Lcom/hiya/stingray/ui/customblock/f;

    const-string v3, "blockListAdapter"

    if-eqz v2, :cond_5

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 6
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->m:Lcom/hiya/stingray/ui/customblock/f;

    if-eqz v1, :cond_4

    new-instance v2, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$d;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$d;-><init>(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;)V

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/ui/customblock/f;->m(Lkotlin/w/b/l;)V

    .line 7
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->m:Lcom/hiya/stingray/ui/customblock/f;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->s:Lcom/hiya/stingray/ui/customblock/d;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/hiya/stingray/ui/customblock/d;->v()Z

    move-result p2

    invoke-virtual {v1, p2}, Lcom/hiya/stingray/ui/customblock/f;->l(Z)V

    .line 8
    sget p2, Lcom/hiya/stingray/o;->s:I

    invoke-virtual {p0, p2}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    const-string v2, "blockFabMenu"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    const v3, 0x7f11004f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    new-instance v1, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;-><init>(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;)V

    invoke-virtual {p2, v1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->setOnFloatingActionsMenuUpdateListener(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$e;)V

    .line 10
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->r1()V

    .line 11
    new-instance v2, Lcom/hiya/stingray/ui/premium/t;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string p2, "context!!"

    invoke-static {v3, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v5, 0x0

    sget p1, Lcom/hiya/stingray/o;->T3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x14

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/hiya/stingray/ui/premium/t;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ScrollView;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;ILkotlin/w/c/g;)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    .line 12
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    .line 13
    :cond_2
    invoke-static {p2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_4
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_5
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string p1, "blockListPresenter"

    .line 16
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_7
    invoke-static {p2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0
.end method

.method public final p1()Lcom/hiya/stingray/manager/h4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->p:Lcom/hiya/stingray/manager/h4;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "userAccountManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public s(Ljava/lang/String;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->n:Lcom/hiya/stingray/ui/customblock/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->p:Lcom/hiya/stingray/manager/h4;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_2

    invoke-static {p1}, Lkotlin/s/k;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, v2, v1, p1, p2}, Lcom/hiya/stingray/ui/customblock/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->r:Lcom/hiya/stingray/manager/u2;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "activity!!"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/hiya/stingray/manager/u2$b;->BLOCK:Lcom/hiya/stingray/manager/u2$b;

    invoke-virtual {p1, p2, v0}, Lcom/hiya/stingray/manager/u2;->k(Landroid/content/Context;Lcom/hiya/stingray/manager/u2$b;)Z

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_1
    const-string p1, "feedbackManager"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_3
    const-string p1, "userAccountManager"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string p1, "blockListPresenter"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method
