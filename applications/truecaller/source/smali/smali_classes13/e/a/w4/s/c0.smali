.class public Le/a/w4/s/c0;
.super Le/a/e/g1;
.source "SourceFile"

# interfaces
.implements Le/a/e/n1;
.implements Le/a/q2/v0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/w4/s/c0$f;
    }
.end annotation


# static fields
.field public static final synthetic x:I


# instance fields
.field public e:Le/a/w4/s/e0;

.field public f:Landroidx/recyclerview/widget/RecyclerView;

.field public g:Landroid/widget/TextView;

.field public h:Le/a/e/c2/j0;

.field public i:Le/a/e/c2/f0;

.field public j:Le/a/i/t/e;

.field public k:Le/a/i/t/a;

.field public l:Landroidx/recyclerview/widget/RecyclerView$i;

.field public m:Landroidx/recyclerview/widget/RecyclerView$g;

.field public n:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;"
        }
    .end annotation
.end field

.field public o:Le/a/r2/l;

.field public p:Le/a/r2/a;

.field public q:Lcom/truecaller/settings/CallingSettings;

.field public r:Le/a/z4/a;

.field public s:Le/a/p5/c;

.field public t:Le/a/l4/c;

.field public u:Le/a/g5/p;

.field public v:Le/a/a0/v;

.field public final w:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Le/a/e/g1;-><init>()V

    .line 2
    new-instance v0, Le/a/w4/s/c0$a;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Le/a/w4/s/c0$a;-><init>(Le/a/w4/s/c0;Landroid/os/Handler;)V

    iput-object v0, p0, Le/a/w4/s/c0;->w:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public Cc(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public LA()Le/a/b0/a/n;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public PA()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/w4/s/c0;->h:Le/a/e/c2/j0;

    iget-object v1, p0, Le/a/w4/s/c0;->l:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$g;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 2
    iget-object v0, p0, Le/a/w4/s/c0;->j:Le/a/i/t/e;

    invoke-interface {v0}, Le/a/i/t/e;->a()V

    .line 3
    iget-object v0, p0, Le/a/w4/s/c0;->h:Le/a/e/c2/j0;

    .line 4
    iget-object v0, v0, Le/a/e/c2/x;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Le/a/w4/s/c0;->w:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/w4/s/c0;->h:Le/a/e/c2/j0;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Le/a/e/c2/x;->b:Landroid/database/Cursor;

    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 10
    iput-object v1, p0, Le/a/w4/s/c0;->l:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 11
    iput-object v1, p0, Le/a/w4/s/c0;->h:Le/a/e/c2/j0;

    .line 12
    iput-object v1, p0, Le/a/w4/s/c0;->k:Le/a/i/t/a;

    .line 13
    iput-object v1, p0, Le/a/w4/s/c0;->j:Le/a/i/t/e;

    .line 14
    iget-object v0, p0, Le/a/w4/s/c0;->p:Le/a/r2/a;

    if-eqz v0, :cond_1

    .line 15
    invoke-interface {v0}, Le/a/r2/a;->b()V

    .line 16
    iput-object v1, p0, Le/a/w4/s/c0;->p:Le/a/r2/a;

    :cond_1
    return-void
.end method

.method public Wy()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/s/c0;->e:Le/a/w4/s/e0;

    invoke-interface {v0}, Le/a/w4/s/e0;->t9()I

    move-result v0

    return v0
.end method

.method public YA()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/s/c0;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method public Zn(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Le/d/c/a/a;->m1()Le/a/q2/a;

    move-result-object p1

    const-string v0, "globalSearchHistory"

    invoke-static {v0}, Le/a/q2/y0/a/a;->b(Ljava/lang/String;)Le/a/q2/y0/a/a;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method

.method public bx(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/w4/s/c0;->j:Le/a/i/t/e;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Le/a/i/t/e;->b(Z)V

    .line 3
    :cond_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Le/a/w4/s/c0;->r:Le/a/z4/a;

    const-string v1, "adFeatureRetentionTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Le/a/z4/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Le/a/w4/s/c0;->j:Le/a/i/t/e;

    invoke-interface {p1}, Le/a/i/t/e;->f()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/w4/s/c0;->j:Le/a/i/t/e;

    invoke-interface {p1, v0, v1}, Le/a/i/t/e;->c(J)V

    :goto_0
    return-void
.end method

.method public cB(Le/a/e/c2/i0;)V
    .locals 12

    .line 1
    instance-of v0, p1, Le/a/e/d2/g;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Le/a/e/d2/g;

    .line 3
    iget-object p1, p1, Le/a/e/d2/g;->k:Lcom/truecaller/data/entity/HistoryEvent;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v1

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Entity;->getTcId()Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, p1, Lcom/truecaller/data/entity/HistoryEvent;->e:Ljava/lang/String;

    .line 7
    iget-object v4, p1, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 8
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->d:Ljava/lang/String;

    .line 9
    sget-object v5, Lcom/truecaller/details_view/analytics/SourceType;->SearchHistory:Lcom/truecaller/details_view/analytics/SourceType;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0xa

    const-string v9, "context"

    .line 10
    invoke-static {v1, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "source"

    invoke-static {v5, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/truecaller/details_view/DetailsViewActivity;

    invoke-direct {v10, v1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ARG_TC_ID"

    .line 12
    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NAME"

    .line 13
    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NORMALIZED_NUMBER"

    .line 14
    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "RAW_NUMBER"

    .line 15
    invoke-virtual {v10, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "COUNTRY_CODE"

    .line 16
    invoke-virtual {v10, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v0, "ARG_SOURCE_TYPE"

    invoke-virtual {v10, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "SHOULD_SAVE"

    .line 18
    invoke-virtual {v10, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "SHOULD_FETCH_MORE_IF_NEEDED"

    .line 19
    invoke-virtual {v10, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "SEARCH_TYPE"

    .line 20
    invoke-virtual {v10, p1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object p1

    .line 22
    invoke-static {p1, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intentWithExtras"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final dB()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/w4/s/c0;->p:Le/a/r2/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/a/r2/a;->b()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/a/w4/s/c0;->eB()V

    .line 4
    iget-object v0, p0, Le/a/w4/s/c0;->n:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l0/c;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Le/a/l0/c;->q(I)Le/a/r2/x;

    move-result-object v0

    iget-object v1, p0, Le/a/w4/s/c0;->o:Le/a/r2/l;

    invoke-interface {v1}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v1

    new-instance v2, Le/a/w4/s/e;

    invoke-direct {v2, p0}, Le/a/w4/s/e;-><init>(Le/a/w4/s/c0;)V

    invoke-virtual {v0, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    move-result-object v0

    iput-object v0, p0, Le/a/w4/s/c0;->p:Le/a/r2/a;

    .line 5
    iget-object v0, p0, Le/a/w4/s/c0;->i:Le/a/e/c2/f0;

    invoke-virtual {p0, v0}, Le/a/e/g1;->ZA(Le/a/e/c2/f0;)V

    return-void
.end method

.method public eB()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/e/x0;->li()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Le/a/e/g1;->f(Z)V

    .line 3
    iget-object v1, p0, Le/a/w4/s/c0;->g:Landroid/widget/TextView;

    const/4 v2, 0x1

    .line 4
    invoke-static {v1, v0, v2}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    .line 5
    invoke-virtual {p0}, Le/a/e/g1;->XA()Landroid/widget/TextView;

    move-result-object v1

    .line 6
    invoke-static {v1, v0, v2}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    .line 7
    invoke-virtual {p0}, Le/a/e/g1;->WA()Landroid/widget/ImageView;

    move-result-object v1

    .line 8
    invoke-static {v1, v0, v2}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    .line 9
    iget-object v0, p0, Le/a/w4/s/c0;->p:Le/a/r2/a;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0, v2}, Le/a/e/g1;->f(Z)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Le/a/w4/s/c0;->h:Le/a/e/c2/j0;

    invoke-virtual {v0}, Le/a/e/c2/j0;->getItemCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Le/a/w4/s/c0;->q:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "initialCallLogSyncComplete"

    invoke-interface {v0, v1}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Le/a/w4/s/c0;->g:Landroid/widget/TextView;

    .line 14
    invoke-static {v0, v2, v2}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    .line 15
    invoke-virtual {p0}, Le/a/e/g1;->XA()Landroid/widget/TextView;

    move-result-object v0

    .line 16
    invoke-static {v0, v2, v2}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    .line 17
    invoke-virtual {p0}, Le/a/e/g1;->WA()Landroid/widget/ImageView;

    move-result-object v0

    .line 18
    invoke-static {v0, v2, v2}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0, v2}, Le/a/e/g1;->f(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/w4/s/c0;->j:Le/a/i/t/e;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/i/t/e;->b(Z)V

    .line 3
    iget-object v0, p0, Le/a/w4/s/c0;->j:Le/a/i/t/e;

    invoke-interface {v0}, Le/a/i/t/e;->d()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v0

    iput-object v0, p0, Le/a/w4/s/c0;->o:Le/a/r2/l;

    .line 4
    invoke-interface {p1}, Le/a/j2;->Z0()Le/a/r2/f;

    move-result-object v0

    iput-object v0, p0, Le/a/w4/s/c0;->n:Le/a/r2/f;

    .line 5
    invoke-interface {p1}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v0

    iput-object v0, p0, Le/a/w4/s/c0;->q:Lcom/truecaller/settings/CallingSettings;

    .line 6
    invoke-interface {p1}, Le/a/j2;->u5()Le/a/z4/a;

    move-result-object v0

    iput-object v0, p0, Le/a/w4/s/c0;->r:Le/a/z4/a;

    .line 7
    invoke-interface {p1}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v0

    iput-object v0, p0, Le/a/w4/s/c0;->s:Le/a/p5/c;

    .line 8
    invoke-interface {p1}, Le/a/j2;->H2()Le/a/l4/c;

    move-result-object v0

    iput-object v0, p0, Le/a/w4/s/c0;->t:Le/a/l4/c;

    .line 9
    invoke-interface {p1}, Le/a/j2;->O()Le/a/g5/p;

    move-result-object v0

    iput-object v0, p0, Le/a/w4/s/c0;->u:Le/a/g5/p;

    .line 10
    invoke-interface {p1}, Le/a/j2;->j4()Le/a/a0/v;

    move-result-object p1

    iput-object p1, p0, Le/a/w4/s/c0;->v:Le/a/a0/v;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Le/a/e/x0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Le/a/w4/s/d0;

    const-string v2, "ARG_RESULT_ORDER"

    .line 6
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v2

    .line 7
    invoke-interface {v0}, Le/a/j2;->L0()Le/a/u4/k;

    move-result-object v3

    invoke-virtual {v3}, Le/a/u4/k;->a()Z

    move-result v3

    const/4 v4, 0x3

    invoke-direct {v1, v4, p1, v2, v3}, Le/a/w4/s/d0;-><init>(ILcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;Landroid/content/Context;Z)V

    .line 8
    const-class p1, Le/a/w4/s/d0;

    invoke-static {v1, p1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 9
    const-class p1, Le/a/j2;

    invoke-static {v0, p1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 10
    new-instance p1, Le/a/w4/s/a0;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, v2}, Le/a/w4/s/a0;-><init>(Le/a/w4/s/d0;Le/a/j2;Le/a/w4/s/a0$a;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Le/a/w1;

    invoke-interface {v1}, Le/a/w1;->s()Le/a/j2;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v3, p1

    .line 2
    invoke-static {v3, v2}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d04cd

    const/4 v5, 0x0

    move-object/from16 v6, p2

    invoke-virtual {v3, v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 3
    new-instance v4, Le/a/e/c2/j0;

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    iget-object v9, v0, Le/a/w4/s/c0;->u:Le/a/g5/p;

    iget-object v10, v0, Le/a/w4/s/c0;->t:Le/a/l4/c;

    iget-object v11, v0, Le/a/w4/s/c0;->s:Le/a/p5/c;

    .line 5
    invoke-interface {v1}, Le/a/j2;->J3()Le/a/z2/a;

    move-result-object v12

    .line 6
    invoke-static/range {p0 .. p0}, Le/a/m0/a1$k;->M1(Landroidx/fragment/app/Fragment;)Le/a/z3/e;

    move-result-object v13

    new-instance v14, Le/a/w4/s/i;

    invoke-direct {v14, v0}, Le/a/w4/s/i;-><init>(Le/a/w4/s/c0;)V

    .line 7
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v6

    invoke-interface {v6}, Le/a/j2;->J1()Le/a/a0/p;

    move-result-object v15

    .line 8
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v6

    invoke-interface {v6}, Le/a/j2;->o5()Z

    move-result v16

    iget-object v8, v0, Le/a/w4/s/c0;->v:Le/a/a0/v;

    const/16 v17, 0x0

    move-object v6, v4

    move-object/from16 v18, v8

    move-object/from16 v8, v17

    move-object/from16 v17, v18

    invoke-direct/range {v6 .. v17}, Le/a/e/c2/j0;-><init>(Landroid/content/Context;Le/a/l0/u/d/b;Le/a/g5/p;Le/a/l4/c;Le/a/p5/c;Le/a/z2/a;Le/f/a/i;Le/a/o2/l;Le/a/a0/p;ZLe/a/a0/v;)V

    iput-object v4, v0, Le/a/w4/s/c0;->h:Le/a/e/c2/j0;

    .line 9
    new-instance v6, Le/a/e/c2/f0;

    invoke-direct {v6, v4}, Le/a/e/c2/f0;-><init>(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iput-object v6, v0, Le/a/w4/s/c0;->i:Le/a/e/c2/f0;

    .line 10
    new-instance v13, Le/a/i/t/f;

    .line 11
    invoke-interface {v1}, Le/a/j2;->h7()Le/a/i/f0/d;

    move-result-object v4

    .line 12
    invoke-interface {v1}, Le/a/j2;->c4()Le/a/i/f0/j/c;

    move-result-object v6

    const-string v7, "historyAdUnitId"

    invoke-interface {v6, v7}, Le/a/i/f0/j/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-interface {v1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "HISTORY"

    .line 14
    invoke-static {v6, v8, v9, v7}, Le/a/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/u3/g;)Le/a/i/s$a;

    move-result-object v6

    const-string v7, "searchHistory"

    .line 15
    iput-object v7, v6, Le/a/i/s$a;->i:Ljava/lang/String;

    new-array v7, v2, [Lcom/truecaller/ads/CustomTemplate;

    .line 16
    sget-object v8, Lcom/truecaller/ads/CustomTemplate;->NATIVE_CONTENT_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

    aput-object v8, v7, v5

    .line 17
    invoke-virtual {v6, v7}, Le/a/i/s$a;->f([Lcom/truecaller/ads/CustomTemplate;)Le/a/i/s$a;

    .line 18
    new-instance v5, Le/a/i/s;

    invoke-direct {v5, v6}, Le/a/i/s;-><init>(Le/a/i/s$a;)V

    .line 19
    invoke-interface {v1}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v1

    invoke-direct {v13, v4, v5, v1}, Le/a/i/t/f;-><init>(Le/a/i/f0/d;Le/a/i/s;Ls1/w/f;)V

    iput-object v13, v0, Le/a/w4/s/c0;->j:Le/a/i/t/e;

    .line 20
    new-instance v1, Le/a/i/t/g;

    iget-object v10, v0, Le/a/w4/s/c0;->i:Le/a/e/c2/f0;

    sget-object v11, Lcom/truecaller/ads/AdLayoutTypeX;->SMALL:Lcom/truecaller/ads/AdLayoutTypeX;

    new-instance v12, Le/a/i/t/d;

    invoke-direct {v12, v2}, Le/a/i/t/d;-><init>(I)V

    const v8, 0x7f0d0070

    const v9, 0x7f0a046c

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Le/a/i/t/g;-><init>(IILandroidx/recyclerview/widget/RecyclerView$g;Le/a/i/g;Le/a/i/t/b;Le/a/i/t/e;)V

    iput-object v1, v0, Le/a/w4/s/c0;->k:Le/a/i/t/a;

    .line 21
    new-instance v2, Le/a/w4/s/c0$f;

    invoke-direct {v2, v1}, Le/a/w4/s/c0$f;-><init>(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 22
    new-instance v1, Le/a/w4/s/g;

    invoke-direct {v1, v0}, Le/a/w4/s/g;-><init>(Le/a/w4/s/c0;)V

    .line 23
    iput-object v1, v2, Le/a/w4/s/c0$f;->b:Landroid/view/View$OnClickListener;

    const v1, 0x7f0a0e02

    .line 24
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, v0, Le/a/w4/s/c0;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    new-instance v4, Le/a/w4/s/c0$b;

    invoke-direct {v4, v0}, Le/a/w4/s/c0$b;-><init>(Le/a/w4/s/c0;)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    const v1, 0x7f0a0b1d

    .line 26
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Le/a/w4/s/c0;->g:Landroid/widget/TextView;

    .line 27
    iput-object v2, v0, Le/a/w4/s/c0;->m:Landroidx/recyclerview/widget/RecyclerView$g;

    .line 28
    iget-object v1, v0, Le/a/w4/s/c0;->i:Le/a/e/c2/f0;

    new-instance v2, Le/a/w4/s/c0$c;

    invoke-direct {v2, v0}, Le/a/w4/s/c0$c;-><init>(Le/a/w4/s/c0;)V

    .line 29
    iput-object v2, v1, Le/a/e/c2/f0;->b:Le/a/e/c2/f0$b;

    return-object v3
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    iget-object v0, p0, Le/a/w4/s/c0;->j:Le/a/i/t/e;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Le/a/i/t/e;->b(Z)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Le/a/w4/s/c0;->j:Le/a/i/t/e;

    invoke-interface {p1}, Le/a/i/t/e;->d()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Le/a/e/x0;->onResume()V

    .line 2
    invoke-virtual {p0}, Le/a/w4/s/c0;->dB()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Le/a/w4/s/c0;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/w4/s/c0;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "STATE_LAYOUT_MANAGER"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Le/a/e/x0;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f1202d3

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f1202d4

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Le/a/e/g1;->bB(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 3
    iget-object p1, p0, Le/a/w4/s/c0;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Le/a/w4/s/c0$d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    invoke-direct {p2, p0, v1}, Le/a/w4/s/c0$d;-><init>(Le/a/w4/s/c0;Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 4
    iget-object p1, p0, Le/a/w4/s/c0;->f:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 5
    new-instance p1, Le/a/w4/s/c0$e;

    invoke-direct {p1, p0}, Le/a/w4/s/c0$e;-><init>(Le/a/w4/s/c0;)V

    iput-object p1, p0, Le/a/w4/s/c0;->l:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 6
    iget-object p2, p0, Le/a/w4/s/c0;->h:Le/a/e/c2/j0;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 7
    iget-object p1, p0, Le/a/w4/s/c0;->h:Le/a/e/c2/j0;

    new-instance p2, Le/a/w4/s/h;

    invoke-direct {p2, p0}, Le/a/w4/s/h;-><init>(Le/a/w4/s/c0;)V

    .line 8
    iput-object p2, p1, Le/a/e/c2/t;->a:Le/a/e/c2/t$a;

    .line 9
    new-instance p1, Le/a/e/z0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f0406f4

    .line 10
    invoke-static {p2, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f0d04df

    invoke-direct {p1, p2, v2, v1}, Le/a/e/z0;-><init>(Landroid/content/Context;II)V

    .line 11
    iput-boolean v0, p1, Le/a/e/z0;->g:Z

    .line 12
    invoke-virtual {p1, v0}, Le/a/e/z0;->e(I)V

    .line 13
    iget-object p2, p0, Le/a/w4/s/c0;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 14
    invoke-virtual {p0}, Le/a/w4/s/c0;->eB()V

    return-void
.end method

.method public y0()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/w4/s/c0;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method
