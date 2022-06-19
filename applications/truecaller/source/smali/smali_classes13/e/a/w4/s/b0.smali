.class public Le/a/w4/s/b0;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Le/a/w4/s/h0;


# static fields
.field public static final synthetic g:I


# instance fields
.field public a:Le/a/w4/s/e0;

.field public b:Le/a/w4/s/l0;

.field public c:Landroidx/recyclerview/widget/RecyclerView;

.field public d:Le/a/p5/c;

.field public e:Le/a/l4/c;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static OA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;Z)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/search/global/GlobalSearchResultActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ARG_SEARCH_TEXT"

    .line 2
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "ARG_SEARCH_COUNTRY"

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "ARG_FORCE_NUMBER_SEARCH"

    .line 4
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "ARG_SHOW_KEYBOARD"

    .line 5
    invoke-virtual {p0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "ARG_RESULT_ORDER"

    .line 6
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static PA(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;)V
    .locals 8

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 1
    invoke-static/range {v1 .. v7}, Le/a/w4/s/b0;->QA(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;ZLandroid/view/View;)V

    return-void
.end method

.method public static QA(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;ZLandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Le/a/w4/s/b0;->OA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;Z)Landroid/content/Intent;

    move-result-object p1

    if-eqz p6, :cond_0

    .line 2
    invoke-virtual {p6}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    sget-object p2, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {p6}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p0, p6, p2}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public Ke(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/s/b0;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public Or(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120eeb

    .line 2
    invoke-virtual {v0, v1}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    new-instance v1, Le/a/u4/q;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Le/a/u4/q;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance v2, Le/a/w4/s/b;

    invoke-direct {v2, p0, p1}, Le/a/w4/s/b;-><init>(Le/a/w4/s/b0;Ljava/util/List;)V

    .line 4
    iget-object p1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v1, p1, Landroidx/appcompat/app/AlertController$b;->r:Landroid/widget/ListAdapter;

    .line 5
    iput-object v2, p1, Landroidx/appcompat/app/AlertController$b;->s:Landroid/content/DialogInterface$OnClickListener;

    .line 6
    invoke-virtual {v0}, Ln3/b/a/g$a;->a()Ln3/b/a/g;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public Qz(Z)V
    .locals 3

    const-string v0, "TAG_HISTORY_FRAGMENT"

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Le/a/w4/s/c0;

    invoke-direct {p1}, Le/a/w4/s/c0;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 3
    new-instance v2, Ln3/r/a/a;

    invoke-direct {v2, v1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const v1, 0x7f0a0953

    .line 4
    invoke-virtual {v2, v1, p1, v0}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    invoke-virtual {v2}, Ln3/r/a/f0;->i()V

    .line 5
    iget-object v0, p0, Le/a/w4/s/b0;->a:Le/a/w4/s/e0;

    .line 6
    iput-object v0, p1, Le/a/w4/s/c0;->e:Le/a/w4/s/e0;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->K(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 9
    new-instance v1, Ln3/r/a/a;

    invoke-direct {v1, v0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 10
    invoke-virtual {v1, p1}, Ln3/r/a/a;->l(Landroidx/fragment/app/Fragment;)Ln3/r/a/f0;

    invoke-virtual {v1}, Ln3/r/a/f0;->i()V

    :cond_1
    :goto_0
    return-void
.end method

.method public T2(J)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    const-class v2, Lcom/truecaller/messaging/conversation/ConversationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "conversation_id"

    .line 2
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "launch_source"

    const-string p2, "globalSearch"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public Uz(Lcom/truecaller/data/entity/Contact;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "globalSearch"

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Le/a/h/s0/c;->SA(Ln3/r/a/l;Lcom/truecaller/data/entity/Contact;Ljava/util/List;ZZZZZLjava/lang/String;)V

    return-void
.end method

.method public We(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public X9(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/details_view/analytics/SourceType;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object p2

    sget-object v0, Lcom/truecaller/details_view/analytics/SourceType;->SearchResult:Lcom/truecaller/details_view/analytics/SourceType;

    const-string v1, "context"

    .line 2
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "contact"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "source"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/details_view/DetailsViewActivity;

    invoke-direct {v0, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "ARG_CONTACT"

    .line 4
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "ARG_SOURCE_TYPE"

    const/4 p2, 0x0

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "SHOULD_SAVE"

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "SHOULD_FETCH_MORE_IF_NEEDED"

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object p1

    .line 9
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "intentWithExtras"

    invoke-static {v0, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public Y9(JJI)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    const-class v2, Lcom/truecaller/messaging/conversation/ConversationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "conversation_id"

    .line 2
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "message_id"

    .line 3
    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "launch_source"

    const-string p2, "globalSearch"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "filter"

    .line 5
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/w4/s/b0;->f:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 2
    :cond_2
    iput-boolean v1, p0, Le/a/w4/s/b0;->f:Z

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-virtual {v0}, Ln3/r/a/l;->supportFinishAfterTransition()V

    return-void
.end method

.method public fz(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/details_view/analytics/SourceType;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object p2

    sget-object v0, Lcom/truecaller/details_view/analytics/SourceType;->SearchResult:Lcom/truecaller/details_view/analytics/SourceType;

    const-string v1, "context"

    .line 2
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "contact"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "source"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/details_view/DetailsViewActivity;

    invoke-direct {v0, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "ARG_CONTACT"

    .line 4
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "ARG_SOURCE_TYPE"

    const/4 p2, 0x0

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "SHOULD_SAVE"

    const/4 p2, 0x1

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "SHOULD_FETCH_MORE_IF_NEEDED"

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object p1

    .line 9
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "intentWithExtras"

    invoke-static {v0, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public l2()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/s/b0;->b:Le/a/w4/s/l0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public nd()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v1

    .line 2
    new-instance v5, Le/a/w4/s/a;

    invoke-direct {v5, p0}, Le/a/w4/s/a;-><init>(Le/a/w4/s/b0;)V

    .line 3
    new-instance v7, Le/a/b0/a/a/e;

    const v2, 0x7f120275

    const v3, 0x7f12060e

    const v4, 0x7f08024a

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Le/a/b0/a/a/e;-><init>(Landroid/content/Context;IIILandroid/widget/AdapterView$OnItemClickListener;Le/a/b0/a/a/e$a;)V

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Le/a/w4/s/b0;->a:Le/a/w4/s/e0;

    invoke-interface {v0, p1, p2, p3}, Le/a/w4/s/e0;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v0

    iput-object v0, p0, Le/a/w4/s/b0;->d:Le/a/p5/c;

    .line 4
    invoke-interface {p1}, Le/a/j2;->H2()Le/a/l4/c;

    move-result-object p1

    iput-object p1, p0, Le/a/w4/s/b0;->e:Le/a/l4/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x1

    .line 1
    invoke-static {p1, p3}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d04ce

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Le/a/w4/s/b0;->a:Le/a/w4/s/e0;

    invoke-interface {v0}, Le/a/u2/a/e;->c()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Le/a/w4/s/b0;->a:Le/a/w4/s/e0;

    invoke-interface {v0}, Le/a/w4/s/e0;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Le/a/w4/s/b0;->a:Le/a/w4/s/e0;

    invoke-interface {v0}, Le/a/w4/s/e0;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Le/a/w4/s/b0;->a:Le/a/w4/s/e0;

    invoke-interface {v0}, Le/a/w4/s/e0;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0e02

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Le/a/w4/s/b0;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance p1, Le/a/w4/s/l0;

    .line 4
    invoke-static {p0}, Le/a/m0/a1$k;->M1(Landroidx/fragment/app/Fragment;)Le/a/z3/e;

    move-result-object v1

    iget-object v2, p0, Le/a/w4/s/b0;->a:Le/a/w4/s/e0;

    iget-object v3, p0, Le/a/w4/s/b0;->e:Le/a/l4/c;

    iget-object v4, p0, Le/a/w4/s/b0;->d:Le/a/p5/c;

    new-instance v5, Le/a/w4/s/c;

    invoke-direct {v5, p0}, Le/a/w4/s/c;-><init>(Le/a/w4/s/b0;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/a/w4/s/l0;-><init>(Le/f/a/i;Le/a/w4/s/e0;Le/a/l4/c;Le/a/p5/c;Le/a/o2/l;)V

    iput-object p1, p0, Le/a/w4/s/b0;->b:Le/a/w4/s/l0;

    .line 5
    iget-object p1, p0, Le/a/w4/s/b0;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 6
    iget-object p1, p0, Le/a/w4/s/b0;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Le/a/w4/s/b0$a;

    invoke-direct {p2, p0}, Le/a/w4/s/b0$a;-><init>(Le/a/w4/s/b0;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 7
    new-instance p1, Le/a/e/z0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0d04df

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Le/a/e/z0;-><init>(Landroid/content/Context;II)V

    .line 8
    iput-boolean v1, p1, Le/a/e/z0;->g:Z

    .line 9
    invoke-virtual {p1, v1}, Le/a/e/z0;->e(I)V

    const p2, 0x7f0817cf

    .line 10
    iget-object v0, p1, Le/a/e/z0;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 11
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 12
    invoke-static {v0, p2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 13
    iput-object p2, p1, Le/a/e/z0;->b:Landroid/graphics/drawable/Drawable;

    .line 14
    iget-object p2, p0, Le/a/w4/s/b0;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 15
    iget-object p1, p0, Le/a/w4/s/b0;->b:Le/a/w4/s/l0;

    new-instance p2, Le/a/w4/s/d;

    invoke-direct {p2, p0}, Le/a/w4/s/d;-><init>(Le/a/w4/s/b0;)V

    .line 16
    iput-object p2, p1, Le/a/e/c2/t;->a:Le/a/e/c2/t$a;

    .line 17
    iget-object p2, p0, Le/a/w4/s/b0;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 18
    iget-object p1, p0, Le/a/w4/s/b0;->a:Le/a/w4/s/e0;

    invoke-interface {p1, p0}, Le/a/u2/a/e;->Y0(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 20
    iget-object p2, p0, Le/a/w4/s/b0;->a:Le/a/w4/s/e0;

    invoke-interface {p2, p1}, Le/a/w4/s/e0;->z6(Landroid/content/Intent;)V

    return-void
.end method

.method public pA()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/w4/s/b0;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public so()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;->SCAN_PHONE:Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;

    .line 2
    sget v2, Lcom/truecaller/scanner/NumberScannerActivity;->f:I

    .line 3
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/truecaller/scanner/NumberScannerActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "scan_type"

    .line 4
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v0, 0x64

    .line 5
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public wf(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    sget-object v1, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;->ORDER_CGMT:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, p1, v2, v3, v1}, Le/a/w4/s/b0;->PA(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;)V

    .line 2
    invoke-virtual {p0}, Le/a/w4/s/b0;->finish()V

    return-void
.end method
