.class public final Le/a/h/s0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/s0/m;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Le/a/o2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/o2/r<",
            "Le/a/h/s0/i;",
            "Le/a/h/s0/f;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/o2/f;

.field public final e:Landroid/view/View;

.field public final f:Le/a/h/s0/m$a;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/h/s0/m$a;Le/a/h/s0/h;Z)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presenter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemPresenter"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/s0/p;->e:Landroid/view/View;

    iput-object p2, p0, Le/a/h/s0/p;->f:Le/a/h/s0/m$a;

    const p2, 0x7f0a0e06

    .line 2
    invoke-static {p1, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/h/s0/p;->a:Ls1/g;

    const v0, 0x7f0a0f35

    .line 3
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/h/s0/p;->b:Ls1/g;

    .line 4
    new-instance v1, Le/a/o2/r;

    .line 5
    new-instance v2, Le/a/h/s0/p$b;

    invoke-direct {v2, p0}, Le/a/h/s0/p$b;-><init>(Le/a/h/s0/p;)V

    .line 6
    sget-object v3, Le/a/h/s0/p$c;->b:Le/a/h/s0/p$c;

    const v4, 0x7f0d0390

    .line 7
    invoke-direct {v1, p3, v4, v2, v3}, Le/a/o2/r;-><init>(Le/a/o2/b;ILs1/z/b/l;Ls1/z/b/l;)V

    iput-object v1, p0, Le/a/h/s0/p;->c:Le/a/o2/r;

    .line 8
    new-instance p3, Le/a/o2/f;

    invoke-direct {p3, v1}, Le/a/o2/f;-><init>(Le/a/o2/a;)V

    iput-object p3, p0, Le/a/h/s0/p;->d:Le/a/o2/f;

    .line 9
    invoke-interface {p2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 11
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 13
    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 14
    invoke-static {p1, p4}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 15
    new-instance p2, Le/a/h/s0/p$a;

    invoke-direct {p2, p0, p4}, Le/a/h/s0/p$a;-><init>(Le/a/h/s0/p;Z)V

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/s0/p;->d:Le/a/o2/f;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemInserted(I)V

    return-void
.end method
