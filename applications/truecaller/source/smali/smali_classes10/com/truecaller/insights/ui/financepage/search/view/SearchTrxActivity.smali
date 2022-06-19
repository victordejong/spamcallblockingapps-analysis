.class public final Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;
.super Le/a/c/a/d/f/e/b;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\"\u0010\u0008J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u000f\u0010\n\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0008R\u001d\u0010\u0010\u001a\u00020\u000b8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001d\u0010!\u001a\u00020\u001d8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\r\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006#"
    }
    d2 = {
        "Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onResume",
        "()V",
        "onDestroy",
        "ra",
        "Le/a/c/a/g/f;",
        "f",
        "Ls1/g;",
        "pa",
        "()Le/a/c/a/g/f;",
        "binding",
        "Le/a/c/a/d/f/d/a;",
        "g",
        "Le/a/c/a/d/f/d/a;",
        "debouncedTextWatcher",
        "Le/a/c/a/d/f/c/a;",
        "d",
        "Le/a/c/a/d/f/c/a;",
        "getTrxAdapter",
        "()Le/a/c/a/d/f/c/a;",
        "setTrxAdapter",
        "(Le/a/c/a/d/f/c/a;)V",
        "trxAdapter",
        "Lcom/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel;",
        "e",
        "qa",
        "()Lcom/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel;",
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
.field public static final synthetic h:I


# instance fields
.field public d:Le/a/c/a/d/f/c/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final e:Ls1/g;

.field public final f:Ls1/g;

.field public final g:Le/a/c/a/d/f/d/a;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Le/a/c/a/d/f/e/b;-><init>()V

    .line 2
    new-instance v0, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity$b;

    invoke-direct {v0, p0}, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity$b;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 3
    new-instance v1, Ln3/v/z0;

    const-class v2, Lcom/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    new-instance v3, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity$c;

    invoke-direct {v3, p0}, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity$c;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0}, Ln3/v/z0;-><init>(Ls1/a/c;Ls1/z/b/a;Ls1/z/b/a;)V

    iput-object v1, p0, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->e:Ls1/g;

    .line 4
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v1, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity$a;

    invoke-direct {v1, p0}, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity$a;-><init>(Ln3/b/a/h;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->f:Ls1/g;

    .line 6
    new-instance v0, Le/a/c/a/d/f/d/a;

    invoke-static {p0}, Ln3/v/r;->b(Ln3/v/b0;)Ln3/v/w;

    move-result-object v1

    new-instance v2, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity$d;

    invoke-direct {v2, p0}, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity$d;-><init>(Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;)V

    invoke-direct {v0, v1, v2}, Le/a/c/a/d/f/d/a;-><init>(Lq3/a/i0;Ls1/z/b/l;)V

    iput-object v0, p0, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->g:Le/a/c/a/d/f/d/a;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Le/a/c/p/a;->E2(Landroid/app/Activity;)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->pa()Le/a/c/a/g/f;

    move-result-object p1

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Le/a/c/a/g/f;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->qa()Lcom/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Ln3/v/u;

    move-result-object v0

    const-string v1, "this.lifecycle"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v1, p1, Lcom/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel;->g:Le/a/c/a/i/h;

    invoke-virtual {v0, v1}, Ln3/v/u;->a(Ln3/v/a0;)V

    .line 9
    invoke-virtual {v0, p1}, Ln3/v/u;->a(Ln3/v/a0;)V

    .line 10
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->pa()Le/a/c/a/g/f;

    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->pa()Le/a/c/a/g/f;

    move-result-object v0

    .line 12
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 13
    iget-object v2, v0, Le/a/c/a/g/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "trxRv"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->d:Le/a/c/a/d/f/c/a;

    if-eqz v4, :cond_0

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 14
    iget-object v2, v0, Le/a/c/a/g/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 15
    iget-object v2, v0, Le/a/c/a/g/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Le/a/c/a/g/f;->d:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string v3, "scrollUp"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Le/a/c/a/d/f/e/c;->b:Le/a/c/a/d/f/e/c;

    invoke-static {v2, v1, v0, v3}, Le/a/c/p/a;->I2(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/LinearLayoutManager;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Ls1/z/b/l;)V

    .line 16
    iget-object v0, p1, Le/a/c/a/g/f;->e:Le/a/c/a/g/b1;

    iget-object v0, v0, Le/a/c/a/g/b1;->b:Lcom/truecaller/insights/ui/widget/SearchEditText;

    const-string v1, "searchCon.searchBar"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Le/a/p5/s0/f;->X(Landroid/view/View;ZJ)V

    .line 17
    iget-object v0, p1, Le/a/c/a/g/f;->e:Le/a/c/a/g/b1;

    iget-object v0, v0, Le/a/c/a/g/b1;->a:Lcom/truecaller/ui/view/TintedImageView;

    new-instance v1, Le/a/c/a/d/f/e/d;

    invoke-direct {v1, p1, p0}, Le/a/c/a/d/f/e/d;-><init>(Le/a/c/a/g/f;Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->ra()V

    .line 19
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->pa()Le/a/c/a/g/f;

    move-result-object p1

    iget-object p1, p1, Le/a/c/a/g/f;->e:Le/a/c/a/g/b1;

    iget-object p1, p1, Le/a/c/a/g/b1;->b:Lcom/truecaller/insights/ui/widget/SearchEditText;

    iget-object v0, p0, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->g:Le/a/c/a/d/f/d/a;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 20
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->qa()Lcom/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel;

    move-result-object p1

    .line 21
    iget-object p1, p1, Lcom/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel;->b:Ln3/v/i0;

    .line 22
    new-instance v0, Le/a/c/a/d/f/e/f;

    invoke-direct {v0, p0}, Le/a/c/a/d/f/e/f;-><init>(Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->f(Ln3/v/b0;Ln3/v/l0;)V

    return-void

    :cond_0
    const-string p1, "trxAdapter"

    .line 23
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->pa()Le/a/c/a/g/f;

    move-result-object v0

    iget-object v0, v0, Le/a/c/a/g/f;->e:Le/a/c/a/g/b1;

    iget-object v0, v0, Le/a/c/a/g/b1;->b:Lcom/truecaller/insights/ui/widget/SearchEditText;

    iget-object v1, p0, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->g:Le/a/c/a/d/f/d/a;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->ra()V

    return-void
.end method

.method public final pa()Le/a/c/a/g/f;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->f:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/a/g/f;

    return-object v0
.end method

.method public final qa()Lcom/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel;

    return-object v0
.end method

.method public final ra()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->pa()Le/a/c/a/g/f;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->d:Le/a/c/a/d/f/c/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ln3/z/w1;->getItemCount()I

    move-result v1

    const-string v2, "itemStateGroup"

    const-string v3, "emptyStateGroup"

    if-lez v1, :cond_0

    .line 3
    iget-object v1, v0, Le/a/c/a/g/f;->b:Landroidx/constraintlayout/widget/Group;

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 4
    iget-object v0, v0, Le/a/c/a/g/f;->c:Landroidx/constraintlayout/widget/Group;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Le/a/c/a/g/f;->b:Landroidx/constraintlayout/widget/Group;

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 6
    iget-object v1, v0, Le/a/c/a/g/f;->c:Landroidx/constraintlayout/widget/Group;

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 7
    iget-object v0, v0, Le/a/c/a/g/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "trxAdapter"

    .line 8
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
