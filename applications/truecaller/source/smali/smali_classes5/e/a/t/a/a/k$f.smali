.class public final Le/a/t/a/a/k$f;
.super Landroidx/recyclerview/widget/RecyclerView$t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/t/a/a/k;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/t/a/a/k;


# direct methods
.method public constructor <init>(Le/a/t/a/a/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/t/a/a/k$f;->a:Le/a/t/a/a/k;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$t;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    if-lez p3, :cond_4

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$o;->getItemCount()I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, p3

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p1}, Lcom/tenor/android/core/util/AbstractLayoutManagerUtils;->findLastVisibleItemPosition(Landroidx/recyclerview/widget/RecyclerView$o;)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, p3

    .line 5
    :goto_1
    iget-object v0, p0, Le/a/t/a/a/k$f;->a:Le/a/t/a/a/k;

    .line 6
    iget-boolean v1, v0, Le/a/t/a/a/k;->u:Z

    if-nez v1, :cond_4

    add-int/lit8 p1, p1, 0x6

    if-gt p2, p1, :cond_4

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, v0, Le/a/t/a/a/k;->u:Z

    .line 8
    invoke-virtual {v0}, Le/a/t/a/a/k;->g()Landroid/widget/EditText;

    move-result-object p2

    const-string v0, "etSearch"

    .line 9
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    const-string v1, "etSearch.text"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_2

    move p3, p1

    :cond_2
    if-eqz p3, :cond_4

    .line 10
    iget-object p2, p0, Le/a/t/a/a/k$f;->a:Le/a/t/a/a/k;

    .line 11
    invoke-virtual {p2}, Le/a/t/a/a/k;->g()Landroid/widget/EditText;

    move-result-object p3

    .line 12
    invoke-static {p3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-static {p3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 13
    iget-object p2, p2, Le/a/t/a/a/k;->p:Le/a/t/a/a/q;

    if-eqz p2, :cond_3

    invoke-interface {p2, p3, p1}, Le/a/t/a/a/q;->b(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_3
    const-string p1, "searchListener"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_4
    :goto_2
    return-void
.end method
