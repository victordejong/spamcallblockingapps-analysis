.class public Le/a/i4/y/d;
.super Le/a/e/g1;
.source "SourceFile"


# static fields
.field public static final synthetic j:I


# instance fields
.field public e:Landroidx/recyclerview/widget/RecyclerView;

.field public f:Le/a/i4/y/e;

.field public g:Le/a/i/t/a;

.field public h:Le/a/i/t/e;

.field public i:Le/a/j4/b/a/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/e/g1;-><init>()V

    return-void
.end method

.method public static cB(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/ui/SingleActivity$FragmentSingle;->NOTIFICATIONS:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/truecaller/ui/SingleActivity;->va(Landroid/content/Context;Lcom/truecaller/ui/SingleActivity$FragmentSingle;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public PA()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/i4/y/d;->i:Le/a/j4/b/a/f;

    return-void
.end method

.method public final dB()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Le/a/e/x0;->li()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/i4/y/d;->i:Le/a/j4/b/a/f;

    invoke-virtual {v0}, Le/a/j4/b/a/f;->n()Ljava/util/Collection;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/a/i4/y/d;->f:Le/a/i4/y/e;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Le/a/i4/y/e;->b:Ljava/util/List;

    .line 7
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 8
    invoke-virtual {p0}, Le/a/i4/y/d;->eB()V

    .line 9
    check-cast v0, Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    .line 10
    invoke-virtual {v1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->q()Lcom/truecaller/network/notification/NotificationType;

    move-result-object v1

    sget-object v2, Lcom/truecaller/network/notification/NotificationType;->DEFAULT_SMS_PROMO:Lcom/truecaller/network/notification/NotificationType;

    if-ne v1, v2, :cond_1

    const-string v0, "Dsan2-View"

    .line 11
    invoke-static {v0}, Le/a/e/a2;->L(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public eB()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/i4/y/d;->f:Le/a/i4/y/e;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Le/a/i4/y/e;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 2
    :goto_1
    invoke-virtual {p0}, Le/a/e/g1;->WA()Landroid/widget/ImageView;

    move-result-object v2

    .line 3
    invoke-static {v2, v0, v1}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Le/a/e/g1;->YA()Landroid/widget/TextView;

    move-result-object v2

    .line 5
    invoke-static {v2, v0, v1}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Le/a/e/x0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Le/a/b0/g/a;

    .line 4
    move-object v1, v0

    check-cast v1, Le/a/w1;

    invoke-interface {v1}, Le/a/w1;->s()Le/a/j2;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Le/a/b0/g/a;->W()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Le/a/r/t/c;->ya()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 6
    :cond_0
    new-instance v0, Le/a/i4/y/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v3

    invoke-static {p0}, Le/a/m0/a1$k;->M1(Landroidx/fragment/app/Fragment;)Le/a/z3/e;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Le/a/i4/y/e;-><init>(Landroid/content/Context;Le/a/z3/e;)V

    iput-object v0, p0, Le/a/i4/y/d;->f:Le/a/i4/y/e;

    .line 7
    invoke-interface {v1}, Le/a/j2;->c4()Le/a/i/f0/j/c;

    move-result-object v0

    const-string v3, "notificationAdUnitId"

    invoke-interface {v0, v3}, Le/a/i/f0/j/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-interface {v1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "NOTIFICATIONS"

    .line 9
    invoke-static {v0, v4, v5, v3}, Le/a/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/u3/g;)Le/a/i/s$a;

    move-result-object v0

    const-string v3, "notificationsList"

    .line 10
    iput-object v3, v0, Le/a/i/s$a;->i:Ljava/lang/String;

    .line 11
    iput v2, v0, Le/a/i/s$a;->p:I

    const/4 v5, 0x1

    new-array v6, v5, [Lcom/truecaller/ads/CustomTemplate;

    .line 12
    sget-object v7, Lcom/truecaller/ads/CustomTemplate;->NATIVE_CONTENT_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

    aput-object v7, v6, v2

    .line 13
    invoke-virtual {v0, v6}, Le/a/i/s$a;->f([Lcom/truecaller/ads/CustomTemplate;)Le/a/i/s$a;

    .line 14
    iput v2, v0, Le/a/i/s$a;->e:I

    .line 15
    iput-boolean v5, v0, Le/a/i/s$a;->k:Z

    .line 16
    iput-boolean v5, v0, Le/a/i/s$a;->l:Z

    .line 17
    iput-boolean v5, v0, Le/a/i/s$a;->m:Z

    .line 18
    iput-boolean v2, v0, Le/a/i/s$a;->n:Z

    .line 19
    new-instance v2, Le/a/i/s;

    invoke-direct {v2, v0}, Le/a/i/s;-><init>(Le/a/i/s$a;)V

    .line 20
    new-instance v0, Le/a/i/t/f;

    invoke-interface {v1}, Le/a/j2;->h7()Le/a/i/f0/d;

    move-result-object v5

    .line 21
    invoke-interface {v1}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v6

    invoke-direct {v0, v5, v2, v6}, Le/a/i/t/f;-><init>(Le/a/i/f0/d;Le/a/i/s;Ls1/w/f;)V

    iput-object v0, p0, Le/a/i4/y/d;->h:Le/a/i/t/e;

    .line 22
    new-instance v5, Le/a/i/t/a;

    iget-object v6, p0, Le/a/i4/y/d;->f:Le/a/i4/y/e;

    sget-object v7, Lcom/truecaller/ads/AdLayoutTypeX;->MEGA_VIDEO:Lcom/truecaller/ads/AdLayoutTypeX;

    new-instance v8, Le/a/i/t/d;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Le/a/i/t/d;-><init>(I)V

    invoke-direct {v5, v6, v7, v8, v0}, Le/a/i/t/a;-><init>(Landroidx/recyclerview/widget/RecyclerView$g;Le/a/i/g;Le/a/i/t/b;Le/a/i/t/e;)V

    iput-object v5, p0, Le/a/i4/y/d;->g:Le/a/i/t/a;

    .line 23
    new-instance v0, Le/a/j4/b/a/f;

    invoke-direct {v0, p1}, Le/a/j4/b/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/a/i4/y/d;->i:Le/a/j4/b/a/f;

    .line 24
    invoke-static {}, Le/d/c/a/a;->m1()Le/a/q2/a;

    move-result-object p1

    invoke-static {v3}, Le/a/q2/y0/a/a;->b(Ljava/lang/String;)Le/a/q2/y0/a/a;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 25
    invoke-interface {v1}, Le/a/j2;->h7()Le/a/i/f0/d;

    move-result-object p1

    invoke-interface {p1, v2, v4}, Le/a/i/f0/d;->m(Le/a/i/s;Ljava/lang/String;)V

    return-void

    .line 26
    :cond_1
    :goto_0
    const-class v0, Lcom/truecaller/ui/WizardActivity;

    sget-object v1, Lcom/truecaller/wizard/framework/WizardStartContext;->NOTIFICATIONS_VIEW:Lcom/truecaller/wizard/framework/WizardStartContext;

    const-string v3, "widget"

    invoke-static {p1, v0, v3, v1}, Le/a/r/t/c;->Ca(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/truecaller/wizard/framework/WizardStartContext;)V

    .line 27
    invoke-virtual {p1, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/e/x0;->SA()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e0030

    .line 2
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x1

    .line 1
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    const p3, 0x7f0d04ec

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0e02

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Le/a/i4/y/d;->e:Landroidx/recyclerview/widget/RecyclerView;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Le/a/i4/y/d;->h:Le/a/i/t/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/i/t/e;->a()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a00d9

    if-ne p1, v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Le/a/e/g1;->f(Z)V

    .line 4
    new-instance p1, Le/a/i4/y/c;

    invoke-direct {p1, p0}, Le/a/i4/y/c;-><init>(Le/a/i4/y/d;)V

    return v1

    :cond_1
    const v0, 0x7f0a00c1

    if-ne p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Le/a/i4/y/d;->i:Le/a/j4/b/a/f;

    .line 6
    invoke-virtual {p1}, Le/a/j4/b/a/i;->e()Ljava/util/List;

    move-result-object v0

    .line 7
    sget-object v2, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;->VIEWED:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    invoke-virtual {p1, v0, v2}, Le/a/j4/b/a/f;->p(Ljava/util/Collection;Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;)V

    .line 8
    iget-object p1, p0, Le/a/i4/y/d;->f:Le/a/i4/y/e;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return v1

    :cond_2
    const v0, 0x7f0a00c2

    if-ne p1, v0, :cond_3

    .line 9
    iget-object p1, p0, Le/a/i4/y/d;->i:Le/a/j4/b/a/f;

    .line 10
    invoke-virtual {p1}, Le/a/j4/b/a/i;->e()Ljava/util/List;

    move-result-object v0

    .line 11
    sget-object v2, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;->NEW:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    invoke-virtual {p1, v0, v2}, Le/a/j4/b/a/f;->p(Ljava/util/Collection;Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;)V

    .line 12
    iget-object p1, p0, Le/a/i4/y/d;->f:Le/a/i4/y/e;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/e/x0;->onResume()V

    .line 2
    iget-object v0, p0, Le/a/i4/y/d;->f:Le/a/i4/y/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/i4/y/d;->dB()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Le/a/e/x0;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Le/a/i4/y/d;->f:Le/a/i4/y/e;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    const p2, 0x7f120774

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f120418

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const v0, 0x7f040455

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Le/a/e/g1;->bB(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p0}, Le/a/i4/y/d;->eB()V

    .line 7
    iget-object p1, p0, Le/a/i4/y/d;->e:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 8
    new-instance p1, Le/a/i4/y/b;

    invoke-direct {p1, p0}, Le/a/i4/y/b;-><init>(Le/a/i4/y/d;)V

    .line 9
    iget-object p2, p0, Le/a/i4/y/d;->f:Le/a/i4/y/e;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 10
    iget-object p1, p0, Le/a/i4/y/d;->f:Le/a/i4/y/e;

    new-instance p2, Le/a/i4/y/a;

    invoke-direct {p2, p0}, Le/a/i4/y/a;-><init>(Le/a/i4/y/d;)V

    .line 11
    iput-object p2, p1, Le/a/e/c2/t;->a:Le/a/e/c2/t$a;

    .line 12
    iget-object p1, p0, Le/a/i4/y/d;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Le/a/i4/y/d;->g:Le/a/i/t/a;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method
