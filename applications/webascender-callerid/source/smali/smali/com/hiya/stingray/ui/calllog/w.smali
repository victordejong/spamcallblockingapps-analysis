.class public Lcom/hiya/stingray/ui/calllog/w;
.super Landroid/widget/Filter;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n0;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n0;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n0;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

.field private e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/calllog/SearchListAdapter;Ljava/util/List;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/ui/calllog/SearchListAdapter;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n0;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/w;->d:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/ui/calllog/w;->a:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/w;->b:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/w;->c:Ljava/util/List;

    .line 6
    iput-object p3, p0, Lcom/hiya/stingray/ui/calllog/w;->e:Ljava/lang/Boolean;

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/w;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/w;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 3
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/t/n0;

    .line 5
    invoke-virtual {v1}, Lcom/hiya/stingray/t/n0;->f()Lcom/hiya/stingray/t/m0;

    move-result-object v1

    sget-object v2, Lcom/hiya/stingray/t/m0;->PERSON:Lcom/hiya/stingray/t/m0;

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "\\d+"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/w;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/t/n0;

    .line 2
    invoke-virtual {v1}, Lcom/hiya/stingray/t/n0;->i()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    iget-object v2, p0, Lcom/hiya/stingray/ui/calllog/w;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method c(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/util/p;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/calllog/w;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/calllog/w;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/w;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/t/n0;

    .line 6
    invoke-virtual {v1}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hiya/stingray/util/p;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/hiya/stingray/ui/calllog/w;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/w;->a:Ljava/util/List;

    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/w;->b:Ljava/util/List;

    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/w;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/calllog/w;->c(Ljava/lang/CharSequence;)V

    .line 5
    invoke-direct {p0}, Lcom/hiya/stingray/ui/calllog/w;->a()V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/calllog/w;->c:Ljava/util/List;

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    return-object v0

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/calllog/w;->b:Ljava/util/List;

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/w;->d:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->j(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/calllog/w;->d:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->k(Ljava/util/List;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/calllog/w;->d:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/calllog/w;->d:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->j(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/calllog/w;->d:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    iget-object p2, p0, Lcom/hiya/stingray/ui/calllog/w;->b:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->k(Ljava/util/List;)V

    .line 7
    iget-object p1, p0, Lcom/hiya/stingray/ui/calllog/w;->d:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method
