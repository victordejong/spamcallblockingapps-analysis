.class public final Le/a/i/d/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d/a;->a(Le/a/i/d/x;Le/a/u3/g;Le/a/i/d/e;)Le/a/o2/o;
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

    iput p1, p0, Le/a/i/d/a$a;->b:I

    iput-object p2, p0, Le/a/i/d/a$a;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Le/a/i/d/a$a;->b:I

    const/4 v1, 0x0

    const v2, 0x7f0d0070

    const-string v3, "parent"

    const/4 v4, 0x2

    if-eqz v0, :cond_2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_1

    if-ne v0, v4, :cond_0

    .line 1
    check-cast p1, Landroid/view/ViewGroup;

    .line 2
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/i/d/g;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "parent.context"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Le/a/i/d/a;->a:Le/a/i/g;

    .line 5
    invoke-static {p1, v1}, Le/m/d/y/n;->y(Landroid/content/Context;Le/a/i/g;)Le/a/i/a/f;

    move-result-object p1

    iget-object v1, p0, Le/a/i/d/a$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/i/d/e;

    invoke-direct {v0, p1, v1}, Le/a/i/d/g;-><init>(Landroid/view/View;Le/a/i/d/e;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1

    .line 7
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .line 8
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Le/a/i/d/d;

    invoke-static {p1, v2, v1, v4}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Le/a/i/d/a$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/i/d/e;

    invoke-direct {v0, p1, v1}, Le/a/i/d/d;-><init>(Landroid/view/View;Le/a/i/d/e;)V

    return-object v0

    .line 10
    :cond_2
    check-cast p1, Landroid/view/ViewGroup;

    .line 11
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Le/a/i/d/f;

    invoke-static {p1, v2, v1, v4}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    .line 13
    sget-object v1, Le/a/i/d/a;->a:Le/a/i/g;

    .line 14
    iget-object v2, p0, Le/a/i/d/a$a;->c:Ljava/lang/Object;

    check-cast v2, Le/a/i/d/e;

    invoke-direct {v0, p1, v1, v2}, Le/a/i/d/f;-><init>(Landroid/view/View;Le/a/i/g;Le/a/i/d/e;)V

    return-object v0
.end method
