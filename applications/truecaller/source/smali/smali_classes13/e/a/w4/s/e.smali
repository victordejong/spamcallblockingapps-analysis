.class public final synthetic Le/a/w4/s/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# instance fields
.field public final synthetic a:Le/a/w4/s/c0;


# direct methods
.method public synthetic constructor <init>(Le/a/w4/s/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/w4/s/e;->a:Le/a/w4/s/c0;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Le/a/w4/s/e;->a:Le/a/w4/s/c0;

    check-cast p1, Le/a/l0/u/d/b;

    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, Le/a/w4/s/c0;->p:Le/a/r2/a;

    .line 2
    iget-object v1, v0, Le/a/w4/s/c0;->h:Le/a/e/c2/j0;

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, v1, Le/a/e/c2/x;->b:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 4
    iget-object v2, v0, Le/a/w4/s/c0;->w:Landroid/database/ContentObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 5
    :cond_1
    iget-object v1, v0, Le/a/w4/s/c0;->h:Le/a/e/c2/j0;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    const-string v2, "_id"

    .line 7
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Le/a/e/c2/x;->c:I

    .line 8
    :cond_2
    iput-object p1, v1, Le/a/e/c2/x;->b:Landroid/database/Cursor;

    .line 9
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 10
    iget-object v1, v0, Le/a/w4/s/c0;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v1

    if-nez v1, :cond_3

    .line 11
    iget-object v1, v0, Le/a/w4/s/c0;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Le/a/w4/s/c0;->m:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v1, v0, Le/a/w4/s/c0;->h:Le/a/e/c2/j0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :goto_0
    if-eqz p1, :cond_4

    .line 13
    iget-object v1, v0, Le/a/w4/s/c0;->w:Landroid/database/ContentObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 14
    :cond_4
    invoke-virtual {v0}, Le/a/w4/s/c0;->eB()V

    .line 15
    iget-object p1, v0, Le/a/w4/s/c0;->i:Le/a/e/c2/f0;

    invoke-virtual {v0, p1}, Le/a/e/g1;->ZA(Le/a/e/c2/f0;)V

    :goto_1
    return-void
.end method
