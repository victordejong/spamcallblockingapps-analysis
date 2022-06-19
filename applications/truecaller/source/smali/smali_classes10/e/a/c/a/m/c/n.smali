.class public final Le/a/c/a/m/c/n;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.qa.view.InsightsUpdatesClassViewer$setupSpinner$1"
    f = "InsightsUpdatesClassViewer.kt"
    l = {
        0x55
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/a/m/c/i;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/i;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/n;->f:Le/a/c/a/m/c/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/m/c/n;

    iget-object v0, p0, Le/a/c/a/m/c/n;->f:Le/a/c/a/m/c/i;

    invoke-direct {p1, v0, p2}, Le/a/c/a/m/c/n;-><init>(Le/a/c/a/m/c/i;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/m/c/n;

    iget-object v0, p0, Le/a/c/a/m/c/n;->f:Le/a/c/a/m/c/i;

    invoke-direct {p1, v0, p2}, Le/a/c/a/m/c/n;-><init>(Le/a/c/a/m/c/i;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/m/c/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/a/m/c/n;->e:I

    const-string v2, "items"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/a/m/c/n;->f:Le/a/c/a/m/c/i;

    new-instance v1, Le/a/c/a/m/b/t;

    iget-object v4, p0, Le/a/c/a/m/c/n;->f:Le/a/c/a/m/c/i;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "requireContext()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Le/a/c/a/m/b/t;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "<set-?>"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object v1, p1, Le/a/c/a/m/c/i;->c:Le/a/c/a/m/b/t;

    .line 7
    iget-object p1, p0, Le/a/c/a/m/c/n;->f:Le/a/c/a/m/c/i;

    invoke-virtual {p1}, Le/a/c/a/m/c/i;->RA()Le/a/c/a/m/b/t;

    move-result-object p1

    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v4, p1, Le/a/c/a/m/b/t;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 11
    iget-object v4, p1, Le/a/c/a/m/b/t;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 13
    iget-object p1, p0, Le/a/c/a/m/c/n;->f:Le/a/c/a/m/c/i;

    invoke-static {p1}, Le/a/c/a/m/c/i;->OA(Le/a/c/a/m/c/i;)Le/a/c/a/m/b/x;

    move-result-object p1

    iput v3, p0, Le/a/c/a/m/c/n;->e:I

    .line 14
    iget-object p1, p1, Le/a/c/a/m/b/x;->a:Le/a/c/b0/d;

    invoke-interface {p1, p0}, Le/a/c/b0/d;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 15
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 16
    iget-object v0, p0, Le/a/c/a/m/c/n;->f:Le/a/c/a/m/c/i;

    invoke-virtual {v0}, Le/a/c/a/m/c/i;->RA()Le/a/c/a/m/b/t;

    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v1, v0, Le/a/c/a/m/b/t;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 20
    iget-object v1, v0, Le/a/c/a/m/b/t;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 22
    iget-object p1, p0, Le/a/c/a/m/c/n;->f:Le/a/c/a/m/c/i;

    invoke-virtual {p1}, Le/a/c/a/m/c/i;->RA()Le/a/c/a/m/b/t;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 23
    iget-object p1, p0, Le/a/c/a/m/c/n;->f:Le/a/c/a/m/c/i;

    .line 24
    invoke-virtual {p1}, Le/a/c/a/m/c/i;->PA()Le/a/c/a/g/w1;

    move-result-object p1

    .line 25
    iget-object p1, p1, Le/a/c/a/g/w1;->a:Landroid/widget/Spinner;

    const-string v0, "binding.classSelector"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/c/a/m/c/n;->f:Le/a/c/a/m/c/i;

    invoke-virtual {v0}, Le/a/c/a/m/c/i;->RA()Le/a/c/a/m/b/t;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 26
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
