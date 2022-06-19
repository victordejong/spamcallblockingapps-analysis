.class public final Le/a/o/b/a/a/a;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "SourceFile"


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    iput-object p1, p0, Le/a/o/b/a/a/a;->c:Landroid/content/Context;

    .line 2
    sget-object p1, Ls1/h;->c:Ls1/h;

    new-instance v0, Le/a/o/b/a/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Le/a/o/b/a/a/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v0}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/o/b/a/a/a;->a:Ls1/g;

    .line 3
    new-instance v0, Le/a/o/b/a/a/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Le/a/o/b/a/a/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v0}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/o/b/a/a/a;->b:Ls1/g;

    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    iget-object v0, p0, Le/a/o/b/a/a/a;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 1

    const-string v0, "outRect"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V

    .line 2
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result p4

    if-gtz p4, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_2

    .line 4
    invoke-static {}, Le/a/b0/k/h;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    iget-object p2, p0, Le/a/o/b/a/a/a;->b:Ls1/g;

    invoke-interface {p2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 6
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 7
    invoke-virtual {p0}, Le/a/o/b/a/a/a;->d()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 8
    :cond_1
    iget-object p2, p0, Le/a/o/b/a/a/a;->b:Ls1/g;

    invoke-interface {p2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 9
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 10
    invoke-virtual {p0}, Le/a/o/b/a/a/a;->d()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    return-void

    .line 11
    :cond_2
    invoke-static {}, Le/a/b0/k/h;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 12
    invoke-virtual {p0}, Le/a/o/b/a/a/a;->d()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p0}, Le/a/o/b/a/a/a;->d()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :goto_1
    return-void
.end method
