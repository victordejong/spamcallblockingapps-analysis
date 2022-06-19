.class public final Le/a/h/c/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/c/p;


# instance fields
.field public final a:Ls1/g;

.field public final b:Le/a/o2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/o2/r<",
            "Le/a/h/c/i;",
            "Le/a/h/c/i;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/o2/f;


# direct methods
.method public constructor <init>(Le/a/h/c/k;Landroid/view/View;)V
    .locals 5

    const-string v0, "adapterPresenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0e02

    .line 2
    invoke-static {p2, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/h/c/u;->a:Ls1/g;

    .line 3
    new-instance v1, Le/a/o2/r;

    .line 4
    new-instance v2, Le/a/h/c/u$a;

    invoke-direct {v2, p0}, Le/a/h/c/u$a;-><init>(Le/a/h/c/u;)V

    .line 5
    sget-object v3, Le/a/h/c/u$b;->b:Le/a/h/c/u$b;

    const v4, 0x7f0d039b

    .line 6
    invoke-direct {v1, p1, v4, v2, v3}, Le/a/o2/r;-><init>(Le/a/o2/b;ILs1/z/b/l;Ls1/z/b/l;)V

    iput-object v1, p0, Le/a/h/c/u;->b:Le/a/o2/r;

    .line 7
    new-instance p1, Le/a/o2/f;

    invoke-direct {p1, v1}, Le/a/o2/f;-><init>(Le/a/o2/a;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$g;->setHasStableIds(Z)V

    iput-object p1, p0, Le/a/h/c/u;->c:Le/a/o2/f;

    .line 8
    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 10
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$l;

    move-result-object p1

    instance-of v1, p1, Ln3/b0/a/x;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Ln3/b0/a/x;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ln3/b0/a/x;->setSupportsChangeAnimations(Z)V

    .line 12
    :cond_1
    new-instance p1, Le/a/h/c/f;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "view.context"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Le/a/h/c/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/c/u;->c:Le/a/o2/f;

    iget-object v1, p0, Le/a/h/c/u;->b:Le/a/o2/r;

    .line 2
    iget-object v1, v1, Le/a/o2/r;->f:Le/a/o2/e;

    invoke-virtual {v1, p1}, Le/a/o2/e;->j(I)I

    move-result p1

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    return-void
.end method
