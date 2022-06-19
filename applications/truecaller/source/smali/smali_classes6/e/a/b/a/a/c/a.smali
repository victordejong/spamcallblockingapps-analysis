.class public final Le/a/b/a/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic b:I

.field public final synthetic c:Ln3/b0/a/y;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;ILn3/b0/a/y;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/c/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput p2, p0, Le/a/b/a/a/c/a;->b:I

    iput-object p3, p0, Le/a/b/a/a/c/a;->c:Ln3/b0/a/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/b/a/a/c/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget v1, p0, Le/a/b/a/a/c/a;->b:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p0, Le/a/b/a/a/c/a;->c:Ln3/b0/a/y;

    invoke-virtual {v2, v0, v1}, Ln3/b0/a/y;->b(Landroidx/recyclerview/widget/RecyclerView$o;Landroid/view/View;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    aget v2, v0, v3

    if-eqz v2, :cond_1

    .line 5
    :cond_0
    iget-object v2, p0, Le/a/b/a/a/c/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    aget v1, v0, v1

    aget v0, v0, v3

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_1
    return-void
.end method
