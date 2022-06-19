.class public Le/a/h0/v/f;
.super Le/a/h0/g;
.source "SourceFile"

# interfaces
.implements Le/a/h0/v/j;


# instance fields
.field public b:Le/a/h0/v/h;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Landroidx/recyclerview/widget/RecyclerView;

.field public d:Landroid/view/View;

.field public e:Le/a/h0/v/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/h0/g;-><init>()V

    return-void
.end method


# virtual methods
.method public Be()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h0/v/f;->d:Landroid/view/View;

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1, v1}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    .line 3
    iget-object v0, p0, Le/a/h0/v/f;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2, v1}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    return-void
.end method

.method public Cj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h0/v/f;->d:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v1, v2}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    .line 3
    iget-object v0, p0, Le/a/h0/v/f;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-static {v0, v2, v2}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    return-void
.end method

.method public Rn()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h0/v/f;->e:Le/a/h0/v/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public jz(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v1, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    const p1, 0x7f120745

    .line 3
    new-instance v1, Le/a/h0/v/b;

    invoke-direct {v1, p0}, Le/a/h0/v/b;-><init>(Le/a/h0/v/f;)V

    .line 4
    invoke-virtual {v0, p1, v1}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const p1, 0x7f12071f

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, p1, v1}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 6
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v0, Le/a/j2;

    invoke-static {p1, v0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    invoke-interface {p1}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v2

    const-string v0, "Cannot return null from a non-@Nullable component method"

    .line 6
    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-interface {p1}, Le/a/j2;->G6()Le/a/o5/z;

    move-result-object v3

    .line 8
    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-interface {p1}, Le/a/j2;->I5()Le/a/r2/f;

    move-result-object v4

    .line 10
    invoke-static {v4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-interface {p1}, Le/a/j2;->m()Le/a/b0/q/z;

    move-result-object v5

    .line 12
    invoke-static {v5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    invoke-interface {p1}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v6

    .line 14
    invoke-static {v6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    invoke-interface {p1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v7

    .line 16
    invoke-static {v7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    new-instance p1, Le/a/h0/v/i;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Le/a/h0/v/i;-><init>(Le/a/r2/l;Le/a/o5/z;Le/a/r2/f;Le/a/b0/q/z;Le/a/p5/c0;Le/a/q2/a;)V

    .line 18
    iput-object p1, p0, Le/a/h0/v/f;->b:Le/a/h0/v/h;

    .line 19
    new-instance v0, Le/a/h0/v/e;

    invoke-direct {v0, p1}, Le/a/h0/v/e;-><init>(Le/a/h0/v/h;)V

    iput-object v0, p0, Le/a/h0/v/f;->e:Le/a/h0/v/e;

    .line 20
    new-instance p1, Le/a/h0/v/a;

    invoke-direct {p1, p0}, Le/a/h0/v/a;-><init>(Le/a/h0/v/f;)V

    .line 21
    iput-object p1, v0, Le/a/e/c2/t;->a:Le/a/e/c2/t$a;

    const/4 p1, 0x1

    .line 22
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x1

    .line 1
    invoke-static {p1, p3}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d018d

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
    iget-object v0, p0, Le/a/h0/v/f;->b:Le/a/h0/v/h;

    invoke-virtual {v0}, Le/a/u2/a/b;->c()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 2
    iget-object p1, p0, Le/a/h0/v/f;->b:Le/a/h0/v/h;

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 4
    check-cast p1, Le/a/h0/i;

    invoke-interface {p1}, Le/a/h0/i;->d0()V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Le/a/h0/v/f;->b:Le/a/h0/v/h;

    invoke-virtual {v0}, Le/a/h0/h;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Le/a/h0/g;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a06bb

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Le/a/h0/v/f;->d:Landroid/view/View;

    const p2, 0x7f0a0e06

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Le/a/h0/v/f;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 5
    iget-object p1, p0, Le/a/h0/v/f;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 6
    iget-object p1, p0, Le/a/h0/v/f;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Le/a/h0/v/f;->e:Le/a/h0/v/e;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    const p1, 0x7f12006a

    .line 7
    invoke-virtual {p0, p1}, Le/a/h0/g;->OA(I)V

    .line 8
    iget-object p1, p0, Le/a/h0/v/f;->b:Le/a/h0/v/h;

    invoke-virtual {p1, p0}, Le/a/u2/a/b;->Y0(Ljava/lang/Object;)V

    return-void
.end method

.method public wi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/truecaller/details_view/analytics/SourceType;->SpammersList:Lcom/truecaller/details_view/analytics/SourceType;

    const-string v2, "context"

    .line 2
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "source"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/truecaller/details_view/DetailsViewActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "ARG_TC_ID"

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "NAME"

    .line 5
    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "NORMALIZED_NUMBER"

    .line 6
    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "RAW_NUMBER"

    .line 7
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "COUNTRY_CODE"

    .line 8
    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string p2, "ARG_SOURCE_TYPE"

    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "SHOULD_SAVE"

    const/4 p2, 0x1

    .line 10
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "SHOULD_FETCH_MORE_IF_NEEDED"

    .line 11
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "SEARCH_TYPE"

    const/16 p2, 0xa

    .line 12
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    .line 14
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "intentWithExtras"

    invoke-static {v3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
