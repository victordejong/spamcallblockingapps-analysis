.class public Lcom/hiya/stingray/ui/contactdetails/b0;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/v0;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/v0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Li/c/b0/k/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Li/c/b0/k/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/v0;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    invoke-static {}, Li/c/b0/k/b;->c()Li/c/b0/k/b;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->d:Li/c/b0/k/b;

    .line 3
    invoke-static {}, Li/c/b0/k/b;->c()Li/c/b0/k/b;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->e:Li/c/b0/k/b;

    .line 4
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->a:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->b:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->c:Ljava/util/List;

    .line 7
    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/hiya/stingray/ui/contactdetails/b0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/b0;->f(I)V

    return-void
.end method

.method static synthetic d(Lcom/hiya/stingray/ui/contactdetails/b0;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/hiya/stingray/ui/contactdetails/b0;)Li/c/b0/k/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->e:Li/c/b0/k/b;

    return-object p0
.end method

.method private f(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->d:Li/c/b0/k/b;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Li/c/b0/k/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public g()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->d:Li/c/b0/k/b;

    invoke-virtual {v0}, Li/c/b0/b/v;->hide()Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public h()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->e:Li/c/b0/k/b;

    invoke-virtual {v0}, Li/c/b0/b/v;->hide()Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public i(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->h:Z

    return-void
.end method

.method public j(Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;I)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;->phoneNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/hiya/stingray/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;->phoneNumber:Landroid/widget/TextView;

    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/b0$a;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/ui/contactdetails/b0$a;-><init>(Lcom/hiya/stingray/ui/contactdetails/b0;Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;->callIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/b0$b;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/ui/contactdetails/b0$b;-><init>(Lcom/hiya/stingray/ui/contactdetails/b0;Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->h:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;->phoneType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/t/v0;

    invoke-virtual {v1}, Lcom/hiya/stingray/t/v0;->getStringResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;->phoneType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->g:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;->phoneType:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1103fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :goto_1
    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;->textIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/b0$c;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/ui/contactdetails/b0$c;-><init>(Lcom/hiya/stingray/ui/contactdetails/b0;Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->b:Ljava/util/List;

    .line 9
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10
    iget-object p2, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;->recentLabel:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object p1, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;->recentLabel:Landroid/widget/TextView;

    const p2, 0x7f1102d6

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 12
    :cond_2
    iget-object p1, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;->recentLabel:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public k(Landroid/view/ViewGroup;I)Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0050

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;

    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->g:Ljava/lang/String;

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->f:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/v0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->a:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->b:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/b0;->c:Ljava/util/List;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/b0;->j(Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/b0;->k(Landroid/view/ViewGroup;I)Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoPhoneHolder;

    move-result-object p1

    return-object p1
.end method
