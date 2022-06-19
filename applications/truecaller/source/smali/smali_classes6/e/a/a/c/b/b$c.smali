.class public final Le/a/a/c/b/b$c;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/b/b;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/ViewGroup;",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/a/c/b/b$c;->b:I

    iput-object p2, p0, Le/a/a/c/b/b$c;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Le/a/a/c/b/b$c;->b:I

    const/4 v1, 0x0

    const-string v2, "viewGroup"

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    const/4 v4, 0x2

    const v5, 0x7f0d029d

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    .line 1
    check-cast p1, Landroid/view/ViewGroup;

    .line 2
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/a/c/d;

    invoke-static {p1, v5, v1}, Le/a/p5/s0/f;->k(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/c/b/b$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/b/b;

    .line 4
    iget-object v1, v1, Le/a/a/c/b/b;->u:Le/a/a/c/k/a/n;

    if-eqz v1, :cond_0

    .line 5
    invoke-direct {v0, p1, v1}, Le/a/a/c/d;-><init>(Landroid/view/View;Le/a/a/c/k/a/j;)V

    return-object v0

    :cond_0
    const-string p1, "pendingMmsItemPresenter"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 7
    :cond_1
    throw v3

    .line 8
    :cond_2
    check-cast p1, Landroid/view/ViewGroup;

    .line 9
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Le/a/a/c/d;

    invoke-static {p1, v5, v1}, Le/a/p5/s0/f;->k(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/c/b/b$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/b/b;

    .line 11
    iget-object v1, v1, Le/a/a/c/b/b;->r:Le/a/a/c/b/k;

    if-eqz v1, :cond_3

    .line 12
    invoke-direct {v0, p1, v1}, Le/a/a/c/d;-><init>(Landroid/view/View;Le/a/a/c/k/a/j;)V

    return-object v0

    :cond_3
    const-string p1, "incomingMessageItemPresenter"

    .line 13
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 14
    :cond_4
    check-cast p1, Landroid/view/ViewGroup;

    .line 15
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Le/a/a/c/d;

    const v2, 0x7f0d029e

    invoke-static {p1, v2, v1}, Le/a/p5/s0/f;->k(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/c/b/b$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/b/b;

    .line 17
    iget-object v1, v1, Le/a/a/c/b/b;->s:Le/a/a/c/b/r;

    if-eqz v1, :cond_5

    .line 18
    invoke-direct {v0, p1, v1}, Le/a/a/c/d;-><init>(Landroid/view/View;Le/a/a/c/k/a/j;)V

    return-object v0

    :cond_5
    const-string p1, "outgoingMessageItemPresenter"

    .line 19
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 20
    :cond_6
    check-cast p1, Landroid/view/ViewGroup;

    .line 21
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Le/a/a/c/d;

    const v2, 0x7f0d02a2

    invoke-static {p1, v2, v1}, Le/a/p5/s0/f;->k(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/a/c/b/b$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/b/b;

    .line 23
    iget-object v1, v1, Le/a/a/c/b/b;->t:Le/a/a/c/k/a/p;

    if-eqz v1, :cond_7

    .line 24
    invoke-direct {v0, p1, v1}, Le/a/a/c/d;-><init>(Landroid/view/View;Le/a/a/c/k/a/j;)V

    return-object v0

    :cond_7
    const-string p1, "statusItemPresenter"

    .line 25
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method
