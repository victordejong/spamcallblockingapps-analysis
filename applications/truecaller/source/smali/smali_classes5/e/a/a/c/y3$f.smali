.class public Le/a/a/c/y3$f;
.super Le/a/a/c/b5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/y3;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public final synthetic e:Le/a/a/c/y3;


# direct methods
.method public constructor <init>(Le/a/a/c/y3;ILandroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/c/y3$f;->e:Le/a/a/c/y3;

    iput-object p3, p0, Le/a/a/c/y3$f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0, p2}, Le/a/a/c/b5;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/y3$f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/y3$f;->e:Le/a/a/c/y3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/a/a/c/y3;->j7(Z)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/y3$f;->e:Le/a/a/c/y3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Le/a/a/c/y3;->j7(Z)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Le/a/a/c/b5;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    iget-object p1, p0, Le/a/a/c/y3$f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    .line 3
    iget-object p2, p0, Le/a/a/c/y3$f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p2

    const/4 p3, -0x1

    if-eq p1, p3, :cond_1

    .line 4
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_0

    .line 5
    iget-object v0, p0, Le/a/a/c/y3$f;->e:Le/a/a/c/y3;

    .line 6
    iget-object v0, v0, Le/a/a/c/y3;->T:Le/a/o2/f;

    .line 7
    invoke-virtual {v0, p1}, Le/a/o2/f;->getItemId(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Le/a/a/c/y3$f;->e:Le/a/a/c/y3;

    iget-object p1, p1, Le/a/a/c/y3;->r:Le/a/a/c/k/a/d;

    invoke-interface {p1, p3}, Le/a/a/c/k/a/d;->d(Ljava/util/Set;)V

    :cond_1
    return-void
.end method
