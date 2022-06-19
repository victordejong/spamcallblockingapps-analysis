.class public final Le/a/c/a/p/d/p;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    iput p1, p0, Le/a/c/a/p/d/p;->a:I

    iput p2, p0, Le/a/c/a/p/d/p;->b:I

    iput p3, p0, Le/a/c/a/p/d/p;->c:I

    iput p4, p0, Le/a/c/a/p/d/p;->d:I

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

    const-string v0, "state"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    .line 2
    iget p3, p0, Le/a/c/a/p/d/p;->c:I

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 3
    iget p3, p0, Le/a/c/a/p/d/p;->a:I

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 4
    iget p3, p0, Le/a/c/a/p/d/p;->d:I

    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    if-nez p2, :cond_0

    .line 5
    iget p2, p0, Le/a/c/a/p/d/p;->b:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    return-void
.end method
