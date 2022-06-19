.class public final Lcom/hiya/stingray/ui/local/f/m/c;
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
.field private c:Lcom/hiya/stingray/t/h1/d;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/hiya/stingray/t/h1/c;

.field private final f:Lcom/hiya/stingray/manager/e1;


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

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/c;->f:Lcom/hiya/stingray/manager/e1;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/c;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private final k(Lcom/hiya/stingray/t/h1/c;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/c;->e:Lcom/hiya/stingray/t/h1/c;

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/f/a;->g()V

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Lcom/hiya/stingray/ui/local/f/n/f;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00b1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026eric_item, parent, false)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/local/f/n/f;-><init>(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/c;->f:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {p2, p1}, Lcom/hiya/stingray/ui/local/f/n/f;->p(Lcom/hiya/stingray/manager/e1;)V

    return-object p2
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lkotlin/l;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/f/m/c;->j(Lkotlin/l;)V

    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 4

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/hiya/stingray/ui/local/f/n/e;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$d0;->getItemViewType()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    const-string v2, "item"

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/c;->c:Lcom/hiya/stingray/t/h1/d;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/hiya/stingray/t/h1/d;->m()Lcom/hiya/stingray/t/h1/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/h1/h;->b()I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/c;->c:Lcom/hiya/stingray/t/h1/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hiya/stingray/t/h1/d;->m()Lcom/hiya/stingray/t/h1/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/h1/h;->c()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v3, p0, Lcom/hiya/stingray/ui/local/f/m/c;->c:Lcom/hiya/stingray/t/h1/d;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/hiya/stingray/t/h1/d;->b()Lcom/hiya/stingray/t/h1/a;

    move-result-object v1

    .line 6
    invoke-interface {p2, p1, v0, v1}, Lcom/hiya/stingray/ui/local/f/n/e;->g(ILjava/lang/String;Lcom/hiya/stingray/t/h1/a;)V

    goto :goto_3

    .line 7
    :cond_1
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_2
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_3
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/c;->c:Lcom/hiya/stingray/t/h1/d;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/hiya/stingray/t/h1/d;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/hiya/stingray/ui/local/f/n/e;->f(Ljava/util/List;)V

    goto :goto_3

    :cond_5
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_6
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/c;->c:Lcom/hiya/stingray/t/h1/d;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/hiya/stingray/t/h1/d;->l()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/hiya/stingray/ui/local/f/n/e;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_8
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/c;->e:Lcom/hiya/stingray/t/h1/c;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/hiya/stingray/t/h1/c;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_9
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_a

    goto :goto_1

    :cond_a
    const-string p1, ""

    .line 13
    :goto_1
    iget-object v2, p0, Lcom/hiya/stingray/ui/local/f/m/c;->e:Lcom/hiya/stingray/t/h1/c;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/hiya/stingray/t/h1/c;->c()Ljava/lang/Boolean;

    move-result-object v1

    .line 14
    :cond_b
    iget-object v2, p0, Lcom/hiya/stingray/ui/local/f/m/c;->e:Lcom/hiya/stingray/t/h1/c;

    if-nez v2, :cond_c

    goto :goto_2

    :cond_c
    const/4 v0, 0x0

    .line 15
    :goto_2
    invoke-interface {p2, p1, v1, v0}, Lcom/hiya/stingray/ui/local/f/n/e;->a(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    :goto_3
    return-void
.end method

.method public e(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "viewTypes[position]"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j(Lkotlin/l;)V
    .locals 5
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
    invoke-virtual {p1}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/t/h1/d;

    iput-object v1, p0, Lcom/hiya/stingray/ui/local/f/m/c;->c:Lcom/hiya/stingray/t/h1/d;

    .line 2
    invoke-virtual {p1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/t/h1/c;

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/f/m/c;->k(Lcom/hiya/stingray/t/h1/c;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/c;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/c;->e:Lcom/hiya/stingray/t/h1/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    if-eqz p1, :cond_3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/h1/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3

    .line 5
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/c;->d:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/c;->c:Lcom/hiya/stingray/t/h1/d;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/hiya/stingray/t/h1/d;->l()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    .line 7
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/c;->d:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_5
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/c;->c:Lcom/hiya/stingray/t/h1/d;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/hiya/stingray/t/h1/d;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_6

    .line 9
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/c;->d:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_6
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/c;->c:Lcom/hiya/stingray/t/h1/d;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/hiya/stingray/t/h1/d;->m()Lcom/hiya/stingray/t/h1/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/h1/h;->b()I

    move-result p1

    if-lez p1, :cond_7

    .line 11
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/c;->d:Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void

    .line 12
    :cond_8
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 13
    :cond_9
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 14
    :cond_a
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3
.end method
