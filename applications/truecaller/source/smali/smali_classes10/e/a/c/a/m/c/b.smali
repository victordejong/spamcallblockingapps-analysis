.class public final Le/a/c/a/m/c/b;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\'\u0010(J-\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001d\u0010\u0014\u001a\u00020\u000f8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001d\u0010\u001a\u001a\u00020\u00158B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Le/a/c/a/m/c/b;",
        "Landroidx/fragment/app/Fragment;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "Ls1/s;",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Le/a/c/a/m/b/c;",
        "b",
        "Ls1/g;",
        "getViewModel",
        "()Le/a/c/a/m/b/c;",
        "viewModel",
        "Le/a/c/a/g/v1;",
        "c",
        "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;",
        "OA",
        "()Le/a/c/a/g/v1;",
        "binding",
        "Le/a/c/a/m/b/c$a;",
        "a",
        "Le/a/c/a/m/b/c$a;",
        "getViewModelFactory",
        "()Le/a/c/a/m/b/c$a;",
        "setViewModelFactory",
        "(Le/a/c/a/m/b/c$a;)V",
        "viewModelFactory",
        "Le/a/c/a/m/b/b;",
        "d",
        "Le/a/c/a/m/b/b;",
        "searchAdapter",
        "<init>",
        "()V",
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
.field public static final synthetic e:[Ls1/a/l;


# instance fields
.field public a:Le/a/c/a/m/b/c$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final b:Ls1/g;

.field public final c:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

.field public final d:Le/a/c/a/m/b/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/c/a/m/c/b;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/insights/ui/databinding/QaFtsTesterBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/c/a/m/c/b;->e:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Le/a/c/a/m/c/b$b;

    invoke-direct {v0, p0}, Le/a/c/a/m/c/b$b;-><init>(Le/a/c/a/m/c/b;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/c/a/m/c/b;->b:Ls1/g;

    .line 3
    sget v0, Le/a/c/a/m/a/a;->a:I

    .line 4
    sget-object v0, Le/a/c/a/m/a/a$a;->a:Le/a/c/a/m/a/a;

    if-eqz v0, :cond_0

    .line 5
    check-cast v0, Le/a/c/a/m/a/b;

    .line 6
    iget-object v0, v0, Le/a/c/a/m/a/b;->C:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/a/m/b/c$a;

    .line 7
    iput-object v0, p0, Le/a/c/a/m/c/b;->a:Le/a/c/a/m/b/c$a;

    .line 8
    new-instance v0, Le/a/p5/x0/a;

    new-instance v1, Le/a/c/a/m/c/b$a;

    invoke-direct {v1}, Le/a/c/a/m/c/b$a;-><init>()V

    invoke-direct {v0, v1}, Le/a/p5/x0/a;-><init>(Ls1/z/b/l;)V

    iput-object v0, p0, Le/a/c/a/m/c/b;->c:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    .line 9
    new-instance v0, Le/a/c/a/m/b/b;

    invoke-direct {v0}, Le/a/c/a/m/b/b;-><init>()V

    iput-object v0, p0, Le/a/c/a/m/c/b;->d:Le/a/c/a/m/b/b;

    return-void

    :cond_0
    const-string v0, "instance"

    .line 10
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public final OA()Le/a/c/a/g/v1;
    .locals 3

    iget-object v0, p0, Le/a/c/a/m/c/b;->c:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    sget-object v1, Le/a/c/a/m/c/b;->e:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->b(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v0

    check-cast v0, Le/a/c/a/g/v1;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/c/p/a;->d3(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/truecaller/insights/ui/R$layout;->qa_fts_tester:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p2, p0, Le/a/c/a/m/c/b;->b:Ls1/g;

    invoke-interface {p2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/c/a/m/b/c;

    .line 3
    iget-object p2, p2, Le/a/c/a/m/b/c;->b:Landroidx/lifecycle/LiveData;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Ln3/v/b0;

    move-result-object v0

    new-instance v1, Le/a/c/a/m/c/c;

    invoke-direct {v1, p0}, Le/a/c/a/m/c/c;-><init>(Le/a/c/a/m/c/b;)V

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->f(Ln3/v/b0;Ln3/v/l0;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "view.context"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Le/a/c/a/m/c/b;->OA()Le/a/c/a/g/v1;

    move-result-object p2

    iget-object p2, p2, Le/a/c/a/g/v1;->a:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "binding.ftsRV"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/c/a/m/c/b;->d:Le/a/c/a/m/b/b;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 7
    invoke-virtual {p0}, Le/a/c/a/m/c/b;->OA()Le/a/c/a/g/v1;

    move-result-object p2

    iget-object p2, p2, Le/a/c/a/g/v1;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 8
    invoke-virtual {p0}, Le/a/c/a/m/c/b;->OA()Le/a/c/a/g/v1;

    move-result-object p1

    iget-object p1, p1, Le/a/c/a/g/v1;->b:Landroid/widget/SearchView;

    new-instance p2, Le/a/c/a/m/c/d;

    invoke-direct {p2, p0}, Le/a/c/a/m/c/d;-><init>(Le/a/c/a/m/c/b;)V

    invoke-virtual {p1, p2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method
