.class public final Le/a/t3/c/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/t3/c/p;


# instance fields
.field public final a:Landroidx/appcompat/widget/Toolbar;

.field public final b:Landroidx/recyclerview/widget/RecyclerView;

.field public final c:Le/a/t3/c/o;

.field public final d:Le/a/t3/c/p$a;


# direct methods
.method public constructor <init>(Le/a/t3/c/p$a;Landroid/view/View;Le/a/v0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/t3/c/p$a;",
            "Landroid/view/View;",
            "Le/a/v0<",
            "Le/a/t3/c/f;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterPresenter"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/t3/c/q;->d:Le/a/t3/c/p$a;

    const p1, 0x7f0a1270

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.toolbar)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Le/a/t3/c/q;->a:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0a073e

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.features_recycler)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Le/a/t3/c/q;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    new-instance v1, Le/a/t3/c/o;

    invoke-direct {v1, p3}, Le/a/t3/c/o;-><init>(Le/a/v0;)V

    iput-object v1, p0, Le/a/t3/c/q;->c:Le/a/t3/c/o;

    const/4 p3, 0x1

    .line 5
    invoke-virtual {v1, p3}, Landroidx/recyclerview/widget/RecyclerView$g;->setHasStableIds(Z)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 7
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 8
    new-instance p3, Le/a/e/z0;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f0d0161

    const/4 v2, 0x0

    invoke-direct {p3, p2, v1, v2}, Le/a/e/z0;-><init>(Landroid/content/Context;II)V

    .line 9
    iput-boolean v2, p3, Le/a/e/z0;->g:Z

    .line 10
    invoke-virtual {p3, v2}, Le/a/e/z0;->e(I)V

    .line 11
    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    const p2, 0x7f0e0014

    .line 12
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->n(I)V

    .line 13
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 15
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040729

    invoke-static {v0, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    .line 16
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 17
    invoke-virtual {p3, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 18
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 19
    new-instance p2, Le/a/t3/c/q$a;

    invoke-direct {p2, p0}, Le/a/t3/c/q$a;-><init>(Le/a/t3/c/q;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    new-instance p2, Le/a/t3/c/q$b;

    invoke-direct {p2, p0}, Le/a/t3/c/q$b;-><init>(Le/a/t3/c/q;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$f;)V

    .line 21
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p2

    const p3, 0x7f0a0bad

    invoke-interface {p2, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    .line 22
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p3

    const v0, 0x7f0a0bae

    invoke-interface {p3, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    .line 23
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v0, 0x7f0a0eb8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 24
    new-instance v0, Le/a/t3/c/q$c;

    invoke-direct {v0, p2, p3}, Le/a/t3/c/q$c;-><init>(Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    const-string p2, "menuSearch"

    .line 25
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type androidx.appcompat.widget.SearchView"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    .line 26
    new-instance p2, Le/a/t3/c/q$d;

    invoke-direct {p2, p0}, Le/a/t3/c/q$d;-><init>(Le/a/t3/c/q;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$l;)V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t3/c/q;->c:Le/a/t3/c/o;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method
