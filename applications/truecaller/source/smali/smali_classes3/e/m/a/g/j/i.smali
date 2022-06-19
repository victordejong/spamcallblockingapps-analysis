.class public Le/m/a/g/j/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/m/a/g/j/r;

.field public final synthetic b:Le/m/a/g/j/d;


# direct methods
.method public constructor <init>(Le/m/a/g/j/d;Le/m/a/g/j/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/j/i;->b:Le/m/a/g/j/d;

    iput-object p2, p0, Le/m/a/g/j/i;->a:Le/m/a/g/j/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/m/a/g/j/i;->b:Le/m/a/g/j/d;

    invoke-virtual {p1}, Le/m/a/g/j/d;->PA()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 2
    iget-object v0, p0, Le/m/a/g/j/i;->b:Le/m/a/g/j/d;

    .line 3
    iget-object v0, v0, Le/m/a/g/j/d;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 5
    iget-object v0, p0, Le/m/a/g/j/i;->b:Le/m/a/g/j/d;

    iget-object v1, p0, Le/m/a/g/j/i;->a:Le/m/a/g/j/r;

    invoke-virtual {v1, p1}, Le/m/a/g/j/r;->e(I)Lcom/google/android/material/datepicker/Month;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/m/a/g/j/d;->RA(Lcom/google/android/material/datepicker/Month;)V

    :cond_0
    return-void
.end method
