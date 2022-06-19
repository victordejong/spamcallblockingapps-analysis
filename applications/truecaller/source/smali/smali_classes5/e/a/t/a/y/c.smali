.class public final Le/a/t/a/y/c;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    iput p1, p0, Le/a/t/a/y/c;->a:I

    iput p1, p0, Le/a/t/a/y/c;->b:I

    iput p1, p0, Le/a/t/a/y/c;->c:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 1

    const-string v0, "outRect"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "state"

    invoke-static {p4, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams"

    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 2
    iget-object p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    .line 3
    :cond_0
    iget p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    :goto_0
    if-nez p2, :cond_1

    .line 4
    iget p2, p0, Le/a/t/a/y/c;->a:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 5
    iget p2, p0, Le/a/t/a/y/c;->b:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 6
    :cond_1
    iget p2, p0, Le/a/t/a/y/c;->b:I

    div-int/lit8 p3, p2, 0x2

    sub-int p3, p2, p3

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 7
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 8
    :goto_1
    iget p2, p0, Le/a/t/a/y/c;->c:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
