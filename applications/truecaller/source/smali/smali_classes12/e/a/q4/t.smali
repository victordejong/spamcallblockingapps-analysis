.class public Le/a/q4/t;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/q4/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/q4/t$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/q4/x;


# direct methods
.method public constructor <init>(Le/a/q4/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/q4/t;->a:Le/a/q4/x;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/t;->a:Le/a/q4/x;

    invoke-virtual {v0}, Le/a/q4/x;->Kb()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/t;->a:Le/a/q4/x;

    invoke-virtual {v0, p1}, Le/a/q4/x;->Za(I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/q4/t$a;

    .line 2
    iget-object v0, p0, Le/a/q4/t;->a:Le/a/q4/x;

    invoke-virtual {v0, p1, p2}, Le/a/q4/x;->Lj(Le/a/q4/s;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 2
    new-instance v1, Le/a/q4/t$a;

    const v3, 0x7f0d026b

    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Le/a/q4/t;->a:Le/a/q4/x;

    invoke-direct {v1, p1, v0, p2}, Le/a/q4/t$a;-><init>(Landroid/view/View;Le/a/q4/x;I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Type "

    const-string v1, " is not handled."

    invoke-static {v0, p2, v1}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance v1, Le/a/q4/t$a;

    const v3, 0x7f0d026a

    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Le/a/q4/t;->a:Le/a/q4/x;

    invoke-direct {v1, p1, v0, p2}, Le/a/q4/t$a;-><init>(Landroid/view/View;Le/a/q4/x;I)V

    goto :goto_0

    .line 5
    :cond_2
    new-instance v1, Le/a/q4/t$a;

    const v3, 0x7f0d025d

    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Le/a/q4/t;->a:Le/a/q4/x;

    invoke-direct {v1, p1, v0, p2}, Le/a/q4/t$a;-><init>(Landroid/view/View;Le/a/q4/x;I)V

    goto :goto_0

    .line 6
    :cond_3
    new-instance v1, Le/a/q4/t$a;

    const v3, 0x7f0d02b6

    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Le/a/q4/t;->a:Le/a/q4/x;

    invoke-direct {v1, p1, v0, p2}, Le/a/q4/t$a;-><init>(Landroid/view/View;Le/a/q4/x;I)V

    :goto_0
    return-object v1
.end method
