.class public Le/a/i/t/g;
.super Le/a/i/t/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/i/t/g$a;
    }
.end annotation


# instance fields
.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(IILandroidx/recyclerview/widget/RecyclerView$g;Le/a/i/g;Le/a/i/t/b;Le/a/i/t/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p4, p5, p6}, Le/a/i/t/a;-><init>(Landroidx/recyclerview/widget/RecyclerView$g;Le/a/i/g;Le/a/i/t/b;Le/a/i/t/e;)V

    .line 2
    iput p1, p0, Le/a/i/t/g;->e:I

    .line 3
    iput p2, p0, Le/a/i/t/g;->f:I

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1

    .line 1
    instance-of v0, p1, Le/a/i/t/g$a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Le/a/i/t/g$a;

    iget-object p1, p1, Le/a/i/t/g$a;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-super {p0, p1, p2}, Le/a/i/t/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Le/a/i/t/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V
    .locals 1

    .line 4
    instance-of v0, p1, Le/a/i/t/g$a;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Le/a/i/t/g$a;

    iget-object p1, p1, Le/a/i/t/g$a;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-super {p0, p1, p2, p3}, Le/a/i/t/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Le/a/i/t/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Le/a/i/t/a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object v0

    const v1, 0x7f0a13d7

    if-eq p2, v1, :cond_1

    const v1, 0x7f0a13dd

    if-eq p2, v1, :cond_1

    const v1, 0x7f0a13d8

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 2
    :cond_1
    :goto_0
    new-instance p2, Le/a/i/t/g$a;

    invoke-direct {p2, p0, v0, p1}, Le/a/i/t/g$a;-><init>(Le/a/i/t/g;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/ViewGroup;)V

    return-object p2
.end method
