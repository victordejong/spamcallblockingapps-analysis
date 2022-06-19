.class public final Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;
.super Ln3/b/a/h;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008-\u0010\u0008J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u001d\u0010\u0017\u001a\u00020\u00128B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\"\u0010\'\u001a\u00020 8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001d\u0010,\u001a\u00020(8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010\u0014\u001a\u0004\u0008*\u0010+\u00a8\u0006."
    }
    d2 = {
        "Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onStart",
        "()V",
        "Landroid/view/Menu;",
        "menu",
        "",
        "onCreateOptionsMenu",
        "(Landroid/view/Menu;)Z",
        "Landroid/view/MenuItem;",
        "item",
        "onOptionsItemSelected",
        "(Landroid/view/MenuItem;)Z",
        "Le/a/c/a/g/c;",
        "d",
        "Ls1/g;",
        "pa",
        "()Le/a/c/a/g/c;",
        "binding",
        "Ln3/v/a1$b;",
        "a",
        "Ln3/v/a1$b;",
        "getViewModelFactory",
        "()Ln3/v/a1$b;",
        "setViewModelFactory",
        "(Ln3/v/a1$b;)V",
        "viewModelFactory",
        "Le/a/c/a/k/d/b;",
        "b",
        "Le/a/c/a/k/d/b;",
        "getListAdapter",
        "()Le/a/c/a/k/d/b;",
        "setListAdapter",
        "(Le/a/c/a/k/d/b;)V",
        "listAdapter",
        "Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;",
        "c",
        "qa",
        "()Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;",
        "viewModel",
        "<init>",
        "insights-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic e:I


# instance fields
.field public a:Ln3/v/a1$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/c/a/k/d/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final c:Ls1/g;

.field public final d:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    .line 2
    new-instance v0, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity$b;

    invoke-direct {v0, p0}, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity$b;-><init>(Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->c:Ls1/g;

    .line 3
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v1, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity$a;

    invoke-direct {v1, p0}, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity$a;-><init>(Ln3/b/a/h;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->d:Ls1/g;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    const-class v0, Le/a/c/h/k/a;

    const-class v1, Le/a/c/l/a/a;

    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Le/a/c/p/a;->E2(Landroid/app/Activity;)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->pa()Le/a/c/a/g/c;

    move-result-object p1

    const-string v2, "binding"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Le/a/c/a/g/c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "conversation_id"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v2, v5, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v4

    .line 7
    :goto_1
    new-instance v6, Le/a/c/a/k/a/b;

    invoke-direct {v6, p1}, Le/a/c/a/k/a/b;-><init>(Ljava/lang/Long;)V

    const-string p1, "EntryPointAccessors.from\u2026htsComponent::class.java)"

    .line 8
    invoke-static {v1, p1}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Le/a/c/l/a/a;

    const-string p1, "EntryPointAccessors.from\u2026onsComponent::class.java)"

    .line 9
    invoke-static {v0, p1}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Le/a/c/h/k/a;

    .line 10
    invoke-static {p0}, Le/a/n/g0;->q(Landroid/content/Context;)Le/a/b0/c;

    move-result-object v9

    .line 11
    const-class p1, Le/a/c/a/k/a/b;

    invoke-static {v6, p1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 12
    invoke-static {v7, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13
    invoke-static {v8, v0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 14
    const-class p1, Le/a/b0/c;

    invoke-static {v9, p1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 15
    new-instance p1, Le/a/c/a/k/a/a;

    const/4 v10, 0x0

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Le/a/c/a/k/a/a;-><init>(Le/a/c/a/k/a/b;Le/a/c/l/a/a;Le/a/c/h/k/a;Le/a/b0/c;Le/a/c/a/k/a/a$a;)V

    .line 16
    iget-object v0, p1, Le/a/c/a/k/a/a;->m:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/v/a1$b;

    .line 17
    iput-object v0, p0, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->a:Ln3/v/a1$b;

    .line 18
    iget-object p1, p1, Le/a/c/a/k/a/a;->o:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/a/k/d/b;

    .line 19
    iput-object p1, p0, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->b:Le/a/c/a/k/d/b;

    .line 20
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->pa()Le/a/c/a/g/c;

    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->b:Le/a/c/a/k/d/b;

    const-string v1, "listAdapter"

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->qa()Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    move-result-object v2

    const-string v5, "importantMessageMarker"

    .line 22
    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object v2, v0, Le/a/c/a/k/d/b;->a:Le/a/c/a/k/d/a;

    .line 24
    iget-object v0, p1, Le/a/c/a/g/c;->d:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "markedImportantList"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    if-nez v0, :cond_3

    .line 25
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 26
    iget-object v5, p1, Le/a/c/a/g/c;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->b:Le/a/c/a/k/d/b;

    if-eqz v6, :cond_2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 27
    iget-object p1, p1, Le/a/c/a/g/c;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    goto :goto_2

    .line 28
    :cond_2
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 29
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->pa()Le/a/c/a/g/c;

    move-result-object p1

    iget-object p1, p1, Le/a/c/a/g/c;->e:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 30
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 31
    invoke-virtual {p1, v3}, Ln3/b/a/a;->n(Z)V

    .line 32
    invoke-virtual {p1, v3}, Ln3/b/a/a;->o(Z)V

    .line 33
    :cond_4
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->qa()Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    move-result-object p1

    .line 34
    iget-object p1, p1, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->b:Ln3/v/k0;

    .line 35
    new-instance v0, Le/a/c/a/k/e/a;

    iget-object v2, p0, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->b:Le/a/c/a/k/d/b;

    if-eqz v2, :cond_5

    invoke-direct {v0, v2}, Le/a/c/a/k/e/a;-><init>(Le/a/c/a/k/d/b;)V

    new-instance v1, Le/a/c/a/k/e/c;

    invoke-direct {v1, v0}, Le/a/c/a/k/e/c;-><init>(Ls1/z/b/l;)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->f(Ln3/v/b0;Ln3/v/l0;)V

    .line 36
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->qa()Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    move-result-object p1

    .line 37
    iget-object p1, p1, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->c:Ln3/v/k0;

    .line 38
    new-instance v0, Le/a/c/a/k/e/b;

    invoke-direct {v0, p0}, Le/a/c/a/k/e/b;-><init>(Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;)V

    new-instance v1, Le/a/c/a/k/e/c;

    invoke-direct {v1, v0}, Le/a/c/a/k/e/c;-><init>(Ls1/z/b/l;)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->f(Ln3/v/b0;Ln3/v/l0;)V

    .line 39
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->qa()Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Ln3/v/u;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v1, p1, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->f:Le/a/c/a/i/h;

    invoke-virtual {v0, v1}, Ln3/v/u;->a(Ln3/v/a0;)V

    .line 42
    invoke-virtual {v0, p1}, Ln3/v/u;->a(Ln3/v/a0;)V

    return-void

    .line 43
    :cond_5
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 44
    :cond_6
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->qa()Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->a:Le/a/c/a/k/c/b;

    .line 3
    iget-object v0, v0, Le/a/c/a/k/c/b;->a:Le/a/c/a/k/c/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Le/a/c/a/k/c/d;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Ln3/b/a/h;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/truecaller/insights/ui/R$menu;->marked_important_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 7
    sget v0, Lcom/truecaller/insights/ui/R$id;->unMarkAllMenuItem:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v1, Lcom/truecaller/insights/ui/R$drawable;->ic_un_star:I

    sget v2, Lcom/truecaller/insights/ui/R$attr;->tcx_textPrimary:I

    invoke-static {p0, v1, v2}, Le/a/l4/k;->N(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_2
    if-eqz p1, :cond_3

    .line 8
    sget v0, Lcom/truecaller/insights/ui/R$id;->option:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    sget v1, Lcom/truecaller/insights/ui/R$drawable;->ic_overflow_menu_24dp:I

    sget v2, Lcom/truecaller/insights/ui/R$attr;->tcx_textSecondary:I

    invoke-static {p0, v1, v2}, Le/a/l4/k;->N(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 9
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 2
    sget v1, Lcom/truecaller/insights/ui/R$id;->unMarkAllMenuItem:I

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->qa()Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->a:Le/a/c/a/k/c/b;

    .line 5
    iget-object v1, v1, Le/a/c/a/k/c/b;->a:Le/a/c/a/k/c/d;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 6
    iget-object v1, v1, Le/a/c/a/k/c/d;->b:Ljava/util/List;

    .line 7
    invoke-static {v1}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->g(ZLjava/util/List;Ljava/util/List;)Lq3/a/p1;

    goto :goto_0

    :cond_0
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 9
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStart()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->qa()Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->e()Lq3/a/p1;

    return-void
.end method

.method public final pa()Le/a/c/a/g/c;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/a/g/c;

    return-object v0
.end method

.method public final qa()Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    return-object v0
.end method
