.class public abstract Le/a/a/c/b5;
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

    iput p1, p0, Le/a/a/c/b5;->c:I

    return-void
.end method


# virtual methods
.method public abstract d()I
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Le/a/a/c/b5;->d()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    if-gez p3, :cond_4

    .line 2
    iget p1, p0, Le/a/a/c/b5;->a:I

    add-int/2addr p1, p3

    iput p1, p0, Le/a/a/c/b5;->a:I

    .line 3
    iget p3, p0, Le/a/a/c/b5;->c:I

    neg-int p3, p3

    if-ge p1, p3, :cond_4

    .line 4
    iput p2, p0, Le/a/a/c/b5;->a:I

    .line 5
    iget-boolean p1, p0, Le/a/a/c/b5;->b:Z

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0}, Le/a/a/c/b5;->f()V

    :cond_1
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Le/a/a/c/b5;->b:Z

    goto :goto_0

    .line 8
    :cond_2
    iget-boolean p1, p0, Le/a/a/c/b5;->b:Z

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p0}, Le/a/a/c/b5;->e()V

    .line 10
    :cond_3
    iput-boolean p2, p0, Le/a/a/c/b5;->b:Z

    :cond_4
    :goto_0
    return-void
.end method
