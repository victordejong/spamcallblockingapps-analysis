.class public final Lcom/hiya/stingray/ui/local/f/m/b;
.super Lcom/hiya/stingray/ui/local/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/local/f/a<",
        "Lkotlin/l<",
        "+",
        "Lcom/hiya/stingray/t/h1/d;",
        "+",
        "Lcom/hiya/stingray/t/h1/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private final e:Lcom/hiya/stingray/manager/e1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/hiya/stingray/manager/e1;)V
    .locals 1

    const-string v0, "analyticsManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/f/a;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/b;->e:Lcom/hiya/stingray/manager/e1;

    .line 2
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/b;->c:Ljava/util/List;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/local/f/m/b;->d:Z

    return-void
.end method


# virtual methods
.method public b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 1
    new-instance p2, Lcom/hiya/stingray/ui/local/f/n/j;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00b3

    .line 3
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026ding_item, parent, false)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/local/f/n/j;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Lcom/hiya/stingray/ui/local/f/n/d;

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00b1

    .line 7
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026eric_item, parent, false)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/local/f/n/d;-><init>(Landroid/view/View;)V

    .line 9
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/b;->e:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {p2, p1}, Lcom/hiya/stingray/ui/local/f/n/d;->p(Lcom/hiya/stingray/manager/e1;)V

    :goto_0
    return-object p2
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lkotlin/l;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/f/m/b;->j(Lkotlin/l;)V

    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$d0;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2
    check-cast p1, Lcom/hiya/stingray/ui/local/f/n/c;

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/b;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/t/h1/b;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1, v0, v1}, Lcom/hiya/stingray/ui/local/f/n/c;->l(Lcom/hiya/stingray/t/h1/b;Z)V

    :cond_1
    return-void
.end method

.method public e(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/local/f/m/b;->d:Z

    return v0
.end method

.method public j(Lkotlin/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/l<",
            "Lcom/hiya/stingray/t/h1/d;",
            "Lcom/hiya/stingray/t/h1/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/hiya/stingray/t/h1/c;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/h1/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/local/f/m/b;->d:Z

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/f/a;->f()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lcom/hiya/stingray/t/h1/c;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/h1/c;->a()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/b;->c:Ljava/util/List;

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_3
    :goto_0
    return-void
.end method
