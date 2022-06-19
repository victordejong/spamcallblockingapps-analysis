.class public final Le/a/t/a/y/d;
.super Landroidx/recyclerview/widget/RecyclerView$t;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic b:D

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;DLandroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/t/a/y/d;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-wide p2, p0, Le/a/t/a/y/d;->b:D

    iput-object p4, p0, Le/a/t/a/y/d;->c:Landroid/view/View;

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

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget-object p2, p0, Le/a/t/a/y/d;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {p2, v0}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result p2

    div-int/2addr p1, p2

    int-to-double p1, p1

    iget-wide v0, p0, Le/a/t/a/y/d;->b:D

    mul-double/2addr p1, v0

    int-to-double v0, p3

    cmpl-double p3, v0, p1

    if-lez p3, :cond_0

    .line 3
    iget-object p3, p0, Le/a/t/a/y/d;->c:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_0

    .line 4
    iget-object p1, p0, Le/a/t/a/y/d;->c:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    neg-double p1, p1

    cmpg-double p1, v0, p1

    if-gez p1, :cond_1

    .line 5
    iget-object p1, p0, Le/a/t/a/y/d;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Le/a/t/a/y/d;->c:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
