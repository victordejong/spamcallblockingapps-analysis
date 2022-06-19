.class public Le/m/a/g/j/g;
.super Landroidx/recyclerview/widget/RecyclerView$t;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/m/a/g/j/r;

.field public final synthetic b:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic c:Le/m/a/g/j/d;


# direct methods
.method public constructor <init>(Le/m/a/g/j/d;Le/m/a/g/j/r;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/j/g;->c:Le/m/a/g/j/d;

    iput-object p2, p0, Le/m/a/g/j/g;->a:Le/m/a/g/j/r;

    iput-object p3, p0, Le/m/a/g/j/g;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Le/m/a/g/j/g;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    if-gez p2, :cond_0

    .line 1
    iget-object p1, p0, Le/m/a/g/j/g;->c:Le/m/a/g/j/d;

    invoke-virtual {p1}, Le/m/a/g/j/d;->PA()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/m/a/g/j/g;->c:Le/m/a/g/j/d;

    invoke-virtual {p1}, Le/m/a/g/j/d;->PA()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 3
    :goto_0
    iget-object p2, p0, Le/m/a/g/j/g;->c:Le/m/a/g/j/d;

    iget-object p3, p0, Le/m/a/g/j/g;->a:Le/m/a/g/j/r;

    invoke-virtual {p3, p1}, Le/m/a/g/j/r;->e(I)Lcom/google/android/material/datepicker/Month;

    move-result-object p3

    .line 4
    iput-object p3, p2, Le/m/a/g/j/d;->e:Lcom/google/android/material/datepicker/Month;

    .line 5
    iget-object p2, p0, Le/m/a/g/j/g;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object p3, p0, Le/m/a/g/j/g;->a:Le/m/a/g/j/r;

    .line 6
    iget-object v0, p3, Le/m/a/g/j/r;->b:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 7
    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->a:Lcom/google/android/material/datepicker/Month;

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/Month;->g(I)Lcom/google/android/material/datepicker/Month;

    move-result-object p1

    .line 9
    iget-object p3, p3, Le/m/a/g/j/r;->a:Landroid/content/Context;

    invoke-virtual {p1, p3}, Lcom/google/android/material/datepicker/Month;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
