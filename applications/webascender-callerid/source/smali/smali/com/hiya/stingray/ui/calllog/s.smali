.class public Lcom/hiya/stingray/ui/calllog/s;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/calllog/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/hiya/stingray/ui/calllog/s$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/hiya/stingray/t/d0;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/ui/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Li/c/b0/k/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/b<",
            "Lcom/hiya/stingray/t/d0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Li/c/b0/k/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/b<",
            "Lcom/hiya/stingray/t/d0;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/hiya/stingray/manager/u3;

.field private final f:Lcom/squareup/picasso/Picasso;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/u3;Lcom/squareup/picasso/Picasso;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    invoke-static {}, Li/c/b0/k/b;->c()Li/c/b0/k/b;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/calllog/s;->c:Li/c/b0/k/b;

    .line 3
    invoke-static {}, Li/c/b0/k/b;->c()Li/c/b0/k/b;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/calllog/s;->d:Li/c/b0/k/b;

    .line 4
    invoke-static {}, Lcom/google/common/collect/g0;->f()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/calllog/s;->a:Ljava/util/Map;

    .line 5
    invoke-static {}, Lcom/google/common/collect/Lists;->g()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/calllog/s;->b:Ljava/util/List;

    .line 6
    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/s;->e:Lcom/hiya/stingray/manager/u3;

    .line 7
    iput-object p2, p0, Lcom/hiya/stingray/ui/calllog/s;->f:Lcom/squareup/picasso/Picasso;

    return-void
.end method

.method private synthetic c(Lcom/hiya/stingray/t/d0;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/hiya/stingray/ui/calllog/s;->d:Li/c/b0/k/b;

    invoke-virtual {p2, p1}, Li/c/b0/k/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic e(Lcom/hiya/stingray/t/d0;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/hiya/stingray/ui/calllog/s;->c:Li/c/b0/k/b;

    invoke-virtual {p2, p1}, Li/c/b0/k/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic d(Lcom/hiya/stingray/t/d0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/calllog/s;->c(Lcom/hiya/stingray/t/d0;Landroid/view/View;)V

    return-void
.end method

.method public synthetic f(Lcom/hiya/stingray/t/d0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/calllog/s;->e(Lcom/hiya/stingray/t/d0;Landroid/view/View;)V

    return-void
.end method

.method public g(Lcom/hiya/stingray/ui/calllog/s$a;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/s;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->i(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/t/d0;

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/calllog/s;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hiya/stingray/ui/b;

    .line 3
    iget-object v1, p1, Lcom/hiya/stingray/ui/calllog/s$a;->a:Lcom/hiya/stingray/ui/calllog/LogItemView;

    iget-object v2, p0, Lcom/hiya/stingray/ui/calllog/s;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/hiya/stingray/ui/calllog/s;->e:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v3

    invoke-virtual {v1, v0, p2, v2, v3}, Lcom/hiya/stingray/ui/calllog/LogItemView;->k(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/b;IZ)V

    .line 4
    iget-object p2, p1, Lcom/hiya/stingray/ui/calllog/s$a;->a:Lcom/hiya/stingray/ui/calllog/LogItemView;

    iget-object p2, p2, Lcom/hiya/stingray/ui/calllog/LogItemView;->callButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/hiya/stingray/ui/calllog/a;

    invoke-direct {v1, p0, v0}, Lcom/hiya/stingray/ui/calllog/a;-><init>(Lcom/hiya/stingray/ui/calllog/s;Lcom/hiya/stingray/t/d0;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance p2, Lcom/hiya/stingray/ui/calllog/b;

    invoke-direct {p2, p0, v0}, Lcom/hiya/stingray/ui/calllog/b;-><init>(Lcom/hiya/stingray/ui/calllog/s;Lcom/hiya/stingray/t/d0;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/s;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public h()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Lcom/hiya/stingray/t/d0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/s;->c:Li/c/b0/k/b;

    invoke-virtual {v0}, Li/c/b0/b/v;->hide()Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public i()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Lcom/hiya/stingray/t/d0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/s;->d:Li/c/b0/k/b;

    invoke-virtual {v0}, Li/c/b0/b/v;->hide()Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public j(Landroid/view/ViewGroup;I)Lcom/hiya/stingray/ui/calllog/s$a;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00c7

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/hiya/stingray/ui/calllog/s$a;

    new-instance v0, Lcom/hiya/stingray/ui/calllog/LogItemView;

    iget-object v1, p0, Lcom/hiya/stingray/ui/calllog/s;->f:Lcom/squareup/picasso/Picasso;

    invoke-direct {v0, p1, v1}, Lcom/hiya/stingray/ui/calllog/LogItemView;-><init>(Landroid/view/View;Lcom/squareup/picasso/Picasso;)V

    invoke-direct {p2, p1, v0}, Lcom/hiya/stingray/ui/calllog/s$a;-><init>(Landroid/view/View;Lcom/hiya/stingray/ui/calllog/LogItemView;)V

    return-object p2
.end method

.method public k(Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/hiya/stingray/t/d0;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/ui/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/s;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/s;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/s;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/calllog/s;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/calllog/s$a;

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/calllog/s;->g(Lcom/hiya/stingray/ui/calllog/s$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/calllog/s;->j(Landroid/view/ViewGroup;I)Lcom/hiya/stingray/ui/calllog/s$a;

    move-result-object p1

    return-object p1
.end method
