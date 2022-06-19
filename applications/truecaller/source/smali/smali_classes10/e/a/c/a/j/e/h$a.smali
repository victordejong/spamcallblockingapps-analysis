.class public final Le/a/c/a/j/e/h$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/j/e/h;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/util/List<",
        "+",
        "Le/a/c/a/j/b/j;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.filters.view.FilterBottomSheetDialog$populateRvData$1$1"
    f = "FilterBottomSheetDialog.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/c/a/j/e/h;


# direct methods
.method public constructor <init>(Le/a/c/a/j/e/h;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/j/e/h$a;->f:Le/a/c/a/j/e/h;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a/j/e/h$a;

    iget-object v1, p0, Le/a/c/a/j/e/h$a;->f:Le/a/c/a/j/e/h;

    invoke-direct {v0, v1, p2}, Le/a/c/a/j/e/h$a;-><init>(Le/a/c/a/j/e/h;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/j/e/h$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/c/a/j/e/h$a;->f:Le/a/c/a/j/e/h;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/List;

    .line 4
    iget-object p2, v1, Le/a/c/a/j/e/h;->f:Le/a/c/a/j/e/a;

    invoke-virtual {p2}, Le/a/c/a/j/e/a;->UA()Le/a/c/a/j/c/f;

    move-result-object p2

    invoke-virtual {p2}, Ln3/b0/a/p;->getCurrentList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    .line 5
    iget-object v2, v1, Le/a/c/a/j/e/h;->f:Le/a/c/a/j/e/a;

    invoke-virtual {v2}, Le/a/c/a/j/e/a;->UA()Le/a/c/a/j/c/f;

    move-result-object v2

    invoke-virtual {v2, p1}, Le/a/c/a/j/c/f;->submitList(Ljava/util/List;)V

    if-eqz p2, :cond_0

    .line 6
    iget-object p1, v1, Le/a/c/a/j/e/h;->f:Le/a/c/a/j/e/a;

    .line 7
    invoke-virtual {p1}, Le/a/c/a/j/e/a;->SA()Le/a/c/a/g/h;

    move-result-object p1

    .line 8
    iget-object p1, p1, Le/a/c/a/g/h;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->scheduleLayoutAnimation()V

    :cond_0
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/a/j/e/h$a;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Le/a/c/a/j/e/h$a;->f:Le/a/c/a/j/e/h;

    iget-object v0, v0, Le/a/c/a/j/e/h;->f:Le/a/c/a/j/e/a;

    invoke-virtual {v0}, Le/a/c/a/j/e/a;->UA()Le/a/c/a/j/c/f;

    move-result-object v0

    invoke-virtual {v0}, Ln3/b0/a/p;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 3
    iget-object v1, p0, Le/a/c/a/j/e/h$a;->f:Le/a/c/a/j/e/h;

    iget-object v1, v1, Le/a/c/a/j/e/h;->f:Le/a/c/a/j/e/a;

    invoke-virtual {v1}, Le/a/c/a/j/e/a;->UA()Le/a/c/a/j/c/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Le/a/c/a/j/c/f;->submitList(Ljava/util/List;)V

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Le/a/c/a/j/e/h$a;->f:Le/a/c/a/j/e/h;

    iget-object p1, p1, Le/a/c/a/j/e/h;->f:Le/a/c/a/j/e/a;

    .line 5
    invoke-virtual {p1}, Le/a/c/a/j/e/a;->SA()Le/a/c/a/g/h;

    move-result-object p1

    .line 6
    iget-object p1, p1, Le/a/c/a/g/h;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->scheduleLayoutAnimation()V

    .line 7
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
