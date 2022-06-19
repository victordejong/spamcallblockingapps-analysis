.class public Le/a/e/l0$b;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/l0;


# direct methods
.method public constructor <init>(Le/a/e/l0;Le/a/e/l0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/l0$b;->a:Le/a/e/l0;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/l0$b;->a:Le/a/e/l0;

    invoke-virtual {v0, p1}, Le/a/e/l0;->e(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/e/l0$b;->a:Le/a/e/l0;

    add-int/2addr p1, p2

    invoke-virtual {v1, p1}, Le/a/e/l0;->e(I)I

    move-result p1

    sub-int/2addr p1, v0

    return p1
.end method

.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/l0$b;->a:Le/a/e/l0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/l0$b;->a:Le/a/e/l0;

    invoke-virtual {v0, p1}, Le/a/e/l0;->e(I)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Le/a/e/l0$b;->a(II)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2

    .line 2
    iget-object v0, p0, Le/a/e/l0$b;->a:Le/a/e/l0;

    invoke-virtual {v0, p1}, Le/a/e/l0;->e(I)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Le/a/e/l0$b;->a(II)I

    move-result p1

    invoke-virtual {v0, v1, p1, p3}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/l0$b;->a:Le/a/e/l0;

    invoke-virtual {v0, p1}, Le/a/e/l0;->e(I)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Le/a/e/l0$b;->a(II)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/e/l0$b;->a:Le/a/e/l0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p3, p0, Le/a/e/l0$b;->a:Le/a/e/l0;

    invoke-virtual {p3, p1}, Le/a/e/l0;->e(I)I

    move-result p1

    iget-object v0, p0, Le/a/e/l0$b;->a:Le/a/e/l0;

    invoke-virtual {v0, p2}, Le/a/e/l0;->e(I)I

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemMoved(II)V

    :goto_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/l0$b;->a:Le/a/e/l0;

    invoke-virtual {v0, p1}, Le/a/e/l0;->e(I)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Le/a/e/l0$b;->a(II)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeRemoved(II)V

    return-void
.end method
