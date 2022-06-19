.class public final Lcom/hiya/stingray/ui/customblock/f;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/customblock/f$d;,
        Lcom/hiya/stingray/ui/customblock/f$c;,
        Lcom/hiya/stingray/ui/customblock/f$b;,
        Lcom/hiya/stingray/ui/customblock/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$d0;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/c0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Li/c/b0/k/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/b<",
            "Lcom/hiya/stingray/t/c0;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lkotlin/w/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Boolean;

.field private e:Z

.field private final f:Lcom/hiya/stingray/manager/u3;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/u3;)V
    .locals 1

    const-string v0, "premiumManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/f;->f:Lcom/hiya/stingray/manager/u3;

    .line 2
    invoke-static {}, Li/c/b0/k/b;->c()Li/c/b0/k/b;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/customblock/f;->b:Li/c/b0/k/b;

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/f;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public static final synthetic c(Lcom/hiya/stingray/ui/customblock/f;)Li/c/b0/k/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/customblock/f;->b:Li/c/b0/k/b;

    return-object p0
.end method

.method private final d()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/f;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/hiya/stingray/t/c0;

    .line 3
    invoke-virtual {v4}, Lcom/hiya/stingray/t/c0;->m()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/hiya/stingray/util/k;->FULL_NUMBER_TYPE:Lcom/hiya/stingray/util/k;

    invoke-virtual {v5}, Lcom/hiya/stingray/util/k;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 4
    :cond_1
    check-cast v2, Lcom/hiya/stingray/t/c0;

    :cond_2
    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private final e()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/f;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/hiya/stingray/t/c0;

    .line 3
    invoke-virtual {v4}, Lcom/hiya/stingray/t/c0;->m()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/hiya/stingray/util/k;->BEGINS_WITH_TYPE:Lcom/hiya/stingray/util/k;

    invoke-virtual {v5}, Lcom/hiya/stingray/util/k;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 4
    :cond_1
    check-cast v2, Lcom/hiya/stingray/t/c0;

    :cond_2
    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private final f()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/f;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/t/c0;

    .line 4
    invoke-virtual {v2}, Lcom/hiya/stingray/t/c0;->m()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/hiya/stingray/util/k;->FULL_NUMBER_TYPE:Lcom/hiya/stingray/util/k;

    invoke-virtual {v3}, Lcom/hiya/stingray/util/k;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/s/k;->o()V

    const/4 v0, 0x0

    throw v0

    :cond_3
    :goto_1
    return v1
.end method

.method private final g()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/f;->i()I

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final h()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private final i()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/f;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/t/c0;

    .line 4
    invoke-virtual {v2}, Lcom/hiya/stingray/t/c0;->m()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/hiya/stingray/util/k;->BEGINS_WITH_TYPE:Lcom/hiya/stingray/util/k;

    invoke-virtual {v3}, Lcom/hiya/stingray/util/k;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/s/k;->o()V

    const/4 v0, 0x0

    throw v0

    :cond_3
    :goto_1
    return v1
.end method

.method private final k(I)I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/f;->h()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/f;->h()I

    move-result v0

    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/f;->i()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/f;->h()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/f;->g()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/f;->i()I

    move-result v0

    add-int/2addr p1, v0

    :goto_0
    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/f;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/f;->d()Z

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/hiya/stingray/ui/customblock/f;->a:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    if-nez p1, :cond_1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/f;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/hiya/stingray/ui/customblock/f$d;->STARTS_WITH_HEADER:Lcom/hiya/stingray/ui/customblock/f$d;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/f;->d()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/hiya/stingray/ui/customblock/f$d;->NUMBERS_HEADER:Lcom/hiya/stingray/ui/customblock/f$d;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/f;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/hiya/stingray/ui/customblock/f$d;->CONTACTS_SETTING:Lcom/hiya/stingray/ui/customblock/f$d;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/f;->d()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/hiya/stingray/ui/customblock/f$d;->NUMBER:Lcom/hiya/stingray/ui/customblock/f$d;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    .line 5
    :cond_3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/f;->g()I

    move-result v0

    if-lt p1, v0, :cond_4

    .line 6
    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/f;->g()I

    move-result v0

    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/f;->f()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/f;->h()I

    move-result v0

    if-lt p1, v0, :cond_6

    .line 7
    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/f;->h()I

    move-result v0

    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/f;->i()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_6

    .line 8
    :cond_5
    sget-object p1, Lcom/hiya/stingray/ui/customblock/f$d;->NUMBER:Lcom/hiya/stingray/ui/customblock/f$d;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    .line 9
    :cond_6
    sget-object p1, Lcom/hiya/stingray/ui/customblock/f$d;->NUMBERS_HEADER:Lcom/hiya/stingray/ui/customblock/f$d;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1
.end method

.method public final j()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Lcom/hiya/stingray/t/c0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/f;->b:Li/c/b0/k/b;

    invoke-virtual {v0}, Li/c/b0/b/v;->hide()Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "onClickSubject.hide()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final l(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/customblock/f;->e:Z

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public final m(Lkotlin/w/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/f;->c:Lkotlin/w/b/l;

    return-void
.end method

.method public final n(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/c0;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/customblock/f$f;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/customblock/f$f;-><init>()V

    invoke-static {p1, v0}, Lkotlin/s/k;->d0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/f;->a:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/hiya/stingray/ui/customblock/l/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/f;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/hiya/stingray/ui/customblock/f;->k(I)I

    move-result p2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hiya/stingray/t/c0;

    if-eqz p2, :cond_3

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/hiya/stingray/ui/customblock/l/b;

    iget-object v1, v0, Lcom/hiya/stingray/ui/customblock/l/b;->a:Lcom/hiya/stingray/ui/customblock/BlockListItemView;

    iget-object v1, v1, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->removeButton:Landroid/widget/ImageButton;

    const-string v2, "holder.blockListItemView.removeButton"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4
    iget-object v1, v0, Lcom/hiya/stingray/ui/customblock/l/b;->a:Lcom/hiya/stingray/ui/customblock/BlockListItemView;

    iget-object v2, p0, Lcom/hiya/stingray/ui/customblock/f;->d:Ljava/lang/Boolean;

    invoke-virtual {v1, p2, v2}, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->c(Lcom/hiya/stingray/t/c0;Ljava/lang/Boolean;)V

    .line 5
    iget-object v0, v0, Lcom/hiya/stingray/ui/customblock/l/b;->a:Lcom/hiya/stingray/ui/customblock/BlockListItemView;

    iget-object v0, v0, Lcom/hiya/stingray/ui/customblock/BlockListItemView;->removeButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/hiya/stingray/ui/customblock/f$e;

    invoke-direct {v1, p2, p0, p1}, Lcom/hiya/stingray/ui/customblock/f$e;-><init>(Lcom/hiya/stingray/t/c0;Lcom/hiya/stingray/ui/customblock/f;Landroidx/recyclerview/widget/RecyclerView$d0;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/hiya/stingray/ui/customblock/f$b;

    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Lcom/hiya/stingray/ui/customblock/f$b;

    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/f;->h()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne p2, v0, :cond_1

    sget-object p2, Lcom/hiya/stingray/ui/customblock/f$c;->STARTS_WITH:Lcom/hiya/stingray/ui/customblock/f$c;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/hiya/stingray/ui/customblock/f$c;->NUMBERS:Lcom/hiya/stingray/ui/customblock/f$c;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/customblock/f$b;->n(Lcom/hiya/stingray/ui/customblock/f$c;)V

    goto :goto_1

    .line 8
    :cond_2
    instance-of p2, p1, Lcom/hiya/stingray/ui/customblock/f$a;

    if-eqz p2, :cond_3

    .line 9
    check-cast p1, Lcom/hiya/stingray/ui/customblock/f$a;

    iget-boolean p2, p0, Lcom/hiya/stingray/ui/customblock/f;->e:Z

    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/f;->c:Lkotlin/w/b/l;

    invoke-virtual {p1, p2, v0}, Lcom/hiya/stingray/ui/customblock/f$a;->n(ZLkotlin/w/b/l;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/customblock/f$d;->STARTS_WITH_HEADER:Lcom/hiya/stingray/ui/customblock/f$d;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hiya/stingray/ui/customblock/f$d;->NUMBERS_HEADER:Lcom/hiya/stingray/ui/customblock/f$d;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_1

    :goto_0
    new-instance p2, Lcom/hiya/stingray/ui/customblock/f$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0067

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026l_section, parent, false)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/hiya/stingray/ui/customblock/f$b;-><init>(Lcom/hiya/stingray/ui/customblock/f;Landroid/view/View;)V

    goto :goto_1

    .line 2
    :cond_1
    sget-object v0, Lcom/hiya/stingray/ui/customblock/f$d;->CONTACTS_SETTING:Lcom/hiya/stingray/ui/customblock/f$d;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_2

    new-instance p2, Lcom/hiya/stingray/ui/customblock/f$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0036

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026_contacts, parent, false)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/hiya/stingray/ui/customblock/f$a;-><init>(Lcom/hiya/stingray/ui/customblock/f;Landroid/view/View;)V

    goto :goto_1

    .line 3
    :cond_2
    sget-object v0, Lcom/hiya/stingray/ui/customblock/f$d;->NUMBER:Lcom/hiya/stingray/ui/customblock/f$d;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_3

    new-instance p2, Lcom/hiya/stingray/ui/customblock/l/b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0035

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/customblock/l/b;-><init>(Landroid/view/View;)V

    :goto_1
    return-object p2

    .line 4
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Shouldn\'t be here"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
