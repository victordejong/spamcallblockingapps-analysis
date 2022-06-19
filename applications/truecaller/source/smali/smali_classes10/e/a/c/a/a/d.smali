.class public abstract Le/a/c/a/a/d;
.super Landroidx/recyclerview/widget/RecyclerView$t;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public final c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V

    iput p1, p0, Le/a/c/a/a/d;->c:I

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$t;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    move-object p1, p0

    check-cast p1, Le/a/c/a/a/e;

    .line 3
    iget-object p2, p1, Le/a/c/a/a/e;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-lez p3, :cond_4

    .line 4
    iget p2, p0, Le/a/c/a/a/d;->a:I

    add-int/2addr p2, p3

    iput p2, p0, Le/a/c/a/a/d;->a:I

    .line 5
    iget p3, p0, Le/a/c/a/a/d;->c:I

    if-le p2, p3, :cond_4

    .line 6
    iput v0, p0, Le/a/c/a/a/d;->a:I

    .line 7
    iget-boolean p2, p0, Le/a/c/a/a/d;->b:Z

    if-nez p2, :cond_1

    .line 8
    iget-object p2, p1, Le/a/c/a/a/e;->e:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p()V

    .line 9
    iget-object p1, p1, Le/a/c/a/a/e;->f:Ls1/z/b/l;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Le/a/c/a/a/d;->b:Z

    goto :goto_0

    .line 11
    :cond_2
    iget-boolean p2, p0, Le/a/c/a/a/d;->b:Z

    if-eqz p2, :cond_3

    .line 12
    iget-object p2, p1, Le/a/c/a/a/e;->e:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()V

    .line 13
    iget-object p1, p1, Le/a/c/a/a/e;->f:Ls1/z/b/l;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_3
    iput-boolean v0, p0, Le/a/c/a/a/d;->b:Z

    :cond_4
    :goto_0
    return-void
.end method
