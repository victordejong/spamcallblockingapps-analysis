.class public final Le/a/d/d/a/a/d/c;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Le/a/o2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/o2/r<",
            "Le/a/d/d/a/a/d/e;",
            "Le/a/d/d/a/a/d/g;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/o2/f;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/p5/c;Le/a/l4/c;Le/a/d/d/a/a/d/d;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suggestedContactsPresenter"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0e06

    .line 2
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/d/d/a/a/d/c;->a:Ls1/g;

    const v1, 0x7f0a0939

    .line 3
    invoke-static {p1, v1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Le/a/d/d/a/a/d/c;->b:Ls1/g;

    .line 4
    new-instance v1, Le/a/o2/r;

    .line 5
    new-instance v2, Le/a/d/d/a/a/d/c$a;

    invoke-direct {v2, p0, p3, p2}, Le/a/d/d/a/a/d/c$a;-><init>(Le/a/d/d/a/a/d/c;Le/a/l4/c;Le/a/p5/c;)V

    .line 6
    sget-object p2, Le/a/d/d/a/a/d/c$b;->b:Le/a/d/d/a/a/d/c$b;

    const p3, 0x7f0d02d7

    .line 7
    invoke-direct {v1, p4, p3, v2, p2}, Le/a/o2/r;-><init>(Le/a/o2/b;ILs1/z/b/l;Ls1/z/b/l;)V

    iput-object v1, p0, Le/a/d/d/a/a/d/c;->c:Le/a/o2/r;

    .line 8
    new-instance p2, Le/a/o2/f;

    invoke-direct {p2, v1}, Le/a/o2/f;-><init>(Le/a/o2/a;)V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$g;->setHasStableIds(Z)V

    iput-object p2, p0, Le/a/d/d/a/a/d/c;->d:Le/a/o2/f;

    .line 9
    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    const/4 p4, 0x0

    .line 10
    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    const/4 p4, 0x0

    .line 11
    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 12
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p4, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 13
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method
