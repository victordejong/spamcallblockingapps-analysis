.class public final Le/a/a/c/j8/b;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/j8/c;


# instance fields
.field public final a:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0987

    .line 2
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/j8/b;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public final N4()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Le/a/a/c/j8/b;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public P1(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/j8/b;->N4()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "imageView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/z3/e;->A(Ljava/lang/Integer;)Le/a/z3/d;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Le/a/a/c/j8/b;->N4()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    return-void
.end method

.method public setOnClickListener(Ls1/z/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/j8/b;->N4()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Le/a/a/c/j8/b$a;

    invoke-direct {v1, p1}, Le/a/a/c/j8/b$a;-><init>(Ls1/z/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
