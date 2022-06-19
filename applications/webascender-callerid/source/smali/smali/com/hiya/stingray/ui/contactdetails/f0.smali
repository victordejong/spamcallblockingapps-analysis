.class public Lcom/hiya/stingray/ui/contactdetails/f0;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactNamePhotoViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/f0;->a:Ljava/util/Map;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/f0;->b:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/f0;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public c(Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactNamePhotoViewHolder;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/f0;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/f0;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 3
    iget-object v1, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactNamePhotoViewHolder;->nameTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {p2}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactNamePhotoViewHolder;->photoIv:Landroid/widget/ImageView;

    const p2, 0x7f080120

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactNamePhotoViewHolder;->photoIv:Landroid/widget/ImageView;

    const v0, 0x7f0701f9

    invoke-static {p2, p1, v0}, Lcom/hiya/stingray/util/f0;->g(Ljava/lang/String;Landroid/widget/ImageView;I)V

    :goto_0
    return-void
.end method

.method public d(Landroid/view/ViewGroup;I)Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactNamePhotoViewHolder;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0051

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactNamePhotoViewHolder;

    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactNamePhotoViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public e(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/f0;->a:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/f0;->b:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/f0;->c:Ljava/util/List;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/f0;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactNamePhotoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/f0;->c(Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactNamePhotoViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/f0;->d(Landroid/view/ViewGroup;I)Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactNamePhotoViewHolder;

    move-result-object p1

    return-object p1
.end method
