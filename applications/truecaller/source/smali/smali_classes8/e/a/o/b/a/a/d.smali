.class public final Le/a/o/b/a/a/d;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/o/b/a/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/o/b/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/o/b/a/a/r;

.field public final c:Le/a/o/b/a/a/p;


# direct methods
.method public constructor <init>(Le/a/o/b/a/a/r;Le/a/o/b/a/a/p;)V
    .locals 1

    const-string v0, "theme"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Le/a/o/b/a/a/d;->b:Le/a/o/b/a/a/r;

    iput-object p2, p0, Le/a/o/b/a/a/d;->c:Le/a/o/b/a/a/p;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/o/b/a/a/d;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/b/a/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/b/a/a/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/o/b/a/a/e;

    .line 2
    instance-of v0, p1, Le/a/o/b/a/a/e$b;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Le/a/o/b/a/a/e$a;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Le/a/o/b/a/a/e$c;->a:Le/a/o/b/a/a/e$c;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    :goto_0
    return p1

    :cond_2
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/o/b/a/a/c;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/o/b/a/a/d;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/o/b/a/a/e;

    invoke-virtual {p1, p2}, Le/a/o/b/a/a/c;->N4(Le/a/o/b/a/a/e;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3

    const-string v0, "parent"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ContextCallOnDemandReaso\u2026.context), parent, false)"

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 2
    new-instance p2, Le/a/o/b/a/a/s;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Le/a/o/o/k;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le/a/o/o/k;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/a/o/b/a/a/d;->b:Le/a/o/b/a/a/r;

    .line 5
    iget-object v1, p0, Le/a/o/b/a/a/d;->c:Le/a/o/b/a/a/p;

    .line 6
    invoke-direct {p2, p1, v0, v1}, Le/a/o/b/a/a/s;-><init>(Le/a/o/o/k;Le/a/o/b/a/a/r;Le/a/o/b/a/a/p;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Invalid view type"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p2, Le/a/o/b/a/a/b;

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Le/a/o/o/k;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le/a/o/o/k;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Le/a/o/b/a/a/d;->b:Le/a/o/b/a/a/r;

    .line 11
    iget-object v1, p0, Le/a/o/b/a/a/d;->c:Le/a/o/b/a/a/p;

    .line 12
    invoke-direct {p2, p1, v0, v1}, Le/a/o/b/a/a/b;-><init>(Le/a/o/o/k;Le/a/o/b/a/a/r;Le/a/o/b/a/a/p;)V

    goto :goto_0

    .line 13
    :cond_2
    new-instance p2, Le/a/o/b/a/a/q;

    .line 14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Le/a/o/o/k;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le/a/o/o/k;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Le/a/o/b/a/a/d;->b:Le/a/o/b/a/a/r;

    .line 16
    iget-object v1, p0, Le/a/o/b/a/a/d;->c:Le/a/o/b/a/a/p;

    .line 17
    invoke-direct {p2, p1, v0, v1}, Le/a/o/b/a/a/q;-><init>(Le/a/o/o/k;Le/a/o/b/a/a/r;Le/a/o/b/a/a/p;)V

    :goto_0
    return-object p2
.end method
