.class public Lcom/hiya/stingray/ui/customblock/e;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$d0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Li/c/b0/k/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/b<",
            "Lcom/hiya/stingray/t/k0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Li/c/b0/k/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/b<",
            "Lcom/hiya/stingray/t/d0;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/hiya/stingray/manager/u3;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/k0;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/d0;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/ui/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;

.field private h:Landroid/content/Context;

.field private i:Lcom/squareup/picasso/Picasso;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/u3;Lcom/squareup/picasso/Picasso;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    invoke-static {}, Li/c/b0/k/b;->c()Li/c/b0/k/b;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/customblock/e;->a:Li/c/b0/k/b;

    .line 3
    invoke-static {}, Li/c/b0/k/b;->c()Li/c/b0/k/b;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/customblock/e;->b:Li/c/b0/k/b;

    .line 4
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/e;->h:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/hiya/stingray/ui/customblock/e;->c:Lcom/hiya/stingray/manager/u3;

    .line 6
    iput-object p3, p0, Lcom/hiya/stingray/ui/customblock/e;->i:Lcom/squareup/picasso/Picasso;

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/customblock/e$a;->a:[I

    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/e;->g:Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/e;->h:Landroid/content/Context;

    const v1, 0x7f1100c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal block source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/e;->h:Landroid/content/Context;

    const v1, 0x7f1102d8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic g(ILandroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/hiya/stingray/ui/customblock/e;->b:Li/c/b0/k/b;

    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/e;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Li/c/b0/k/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic i(ILandroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/hiya/stingray/ui/customblock/e;->a:Li/c/b0/k/b;

    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/e;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Li/c/b0/k/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c()Lcom/hiya/stingray/ui/common/n;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/hiya/stingray/ui/common/n$c;

    invoke-direct {p0}, Lcom/hiya/stingray/ui/customblock/e;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/hiya/stingray/ui/common/n$c;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/hiya/stingray/ui/common/n;

    iget-object v5, p0, Lcom/hiya/stingray/ui/customblock/e;->h:Landroid/content/Context;

    const v6, 0x7f06019a

    const v7, 0x7f0c0067

    const v8, 0x7f0903bb

    move-object v4, v1

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/hiya/stingray/ui/common/n;-><init>(Landroid/content/Context;IIILandroidx/recyclerview/widget/RecyclerView$g;)V

    .line 4
    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/common/n;->h(Ljava/util/List;)V

    return-object v1
.end method

.method public d()Li/c/b0/b/v;
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
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/e;->b:Li/c/b0/k/b;

    invoke-virtual {v0}, Li/c/b0/b/v;->hide()Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public e()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Lcom/hiya/stingray/t/k0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/e;->a:Li/c/b0/k/b;

    invoke-virtual {v0}, Li/c/b0/b/v;->hide()Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/customblock/e$a;->a:[I

    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/e;->g:Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/e;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal block source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/e;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic h(ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/customblock/e;->g(ILandroid/view/View;)V

    return-void
.end method

.method public synthetic j(ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/customblock/e;->i(ILandroid/view/View;)V

    return-void
.end method

.method public k(Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/e;->g:Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;

    return-void
.end method

.method public l(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/ui/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/e;->f:Ljava/util/List;

    return-void
.end method

.method public m(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/d0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/e;->e:Ljava/util/List;

    return-void
.end method

.method public n(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/k0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/e;->d:Ljava/util/List;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 4

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/hiya/stingray/ui/customblock/l/a;

    .line 2
    sget-object v1, Lcom/hiya/stingray/ui/customblock/e$a;->a:[I

    iget-object v2, p0, Lcom/hiya/stingray/ui/customblock/e;->g:Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Selected from invalid block source type: %s"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hiya/stingray/ui/customblock/e;->g:Lcom/hiya/stingray/ui/customblock/BlockFromActivity$b;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/hiya/stingray/ui/customblock/l/a;->a:Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;

    iget-object v1, v1, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, v0, Lcom/hiya/stingray/ui/customblock/l/a;->a:Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;

    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/e;->d:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/t/k0;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->l(Lcom/hiya/stingray/t/k0;)V

    .line 6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/hiya/stingray/ui/customblock/b;

    invoke-direct {v0, p0, p2}, Lcom/hiya/stingray/ui/customblock/b;-><init>(Lcom/hiya/stingray/ui/customblock/e;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, v0, Lcom/hiya/stingray/ui/customblock/l/a;->a:Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;

    iget-object v1, v1, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v0, v0, Lcom/hiya/stingray/ui/customblock/l/a;->a:Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;

    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/e;->e:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/t/d0;

    iget-object v2, p0, Lcom/hiya/stingray/ui/customblock/e;->f:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/ui/b;

    iget-object v3, p0, Lcom/hiya/stingray/ui/customblock/e;->c:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;->k(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/b;Z)V

    .line 9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/hiya/stingray/ui/customblock/c;

    invoke-direct {v0, p0, p2}, Lcom/hiya/stingray/ui/customblock/c;-><init>(Lcom/hiya/stingray/ui/customblock/e;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0033

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/hiya/stingray/ui/customblock/l/a;

    new-instance v0, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;

    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/e;->i:Lcom/squareup/picasso/Picasso;

    invoke-direct {v0, p1, v1}, Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;-><init>(Landroid/view/View;Lcom/squareup/picasso/Picasso;)V

    invoke-direct {p2, p1, v0}, Lcom/hiya/stingray/ui/customblock/l/a;-><init>(Landroid/view/View;Lcom/hiya/stingray/ui/customblock/BlockFromFabItemView;)V

    return-object p2
.end method
