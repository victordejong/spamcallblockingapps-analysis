.class public Lcom/hiya/stingray/ui/contactdetails/c0;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoAddressViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/ui/contactdetails/v;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/hiya/stingray/ui/contactdetails/v;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n;",
            ">;",
            "Lcom/hiya/stingray/ui/contactdetails/v;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/c0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/c0;->c:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/c0;->b:Lcom/hiya/stingray/ui/contactdetails/v;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/ui/contactdetails/c0;->d:Ljava/lang/String;

    return-void
.end method

.method private c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/c0;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic d(ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/contactdetails/c0;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/c0;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/t/n;

    invoke-static {p1}, Lcom/hiya/stingray/t/f1/a;->a(Lcom/hiya/stingray/t/n;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/c0;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/hiya/stingray/util/u;->j(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/c0;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/c0;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/c0;->d:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/hiya/stingray/util/u;->j(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/c0;->b:Lcom/hiya/stingray/ui/contactdetails/v;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/contactdetails/v;->s()V

    return-void
.end method


# virtual methods
.method public synthetic e(ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/c0;->d(ILandroid/view/View;)V

    return-void
.end method

.method public f(Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoAddressViewHolder;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/contactdetails/c0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/c0;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/t/n;

    .line 3
    iget-object v1, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoAddressViewHolder;->addressTv:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/hiya/stingray/t/f1/a;->a(Lcom/hiya/stingray/t/n;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hiya/stingray/util/e0;->q(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/c0;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoAddressViewHolder;->addressTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/c0;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hiya/stingray/util/e0;->q(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoAddressViewHolder;->addressContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    :goto_0
    iget-object p1, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoAddressViewHolder;->addressContainer:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/s;

    invoke-direct {v0, p0, p2}, Lcom/hiya/stingray/ui/contactdetails/s;-><init>(Lcom/hiya/stingray/ui/contactdetails/c0;I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoAddressViewHolder;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c004f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoAddressViewHolder;

    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoAddressViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/contactdetails/c0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/c0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/c0;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public h(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/c0;->c:Ljava/util/List;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/c0;->d:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoAddressViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/c0;->f(Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoAddressViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/c0;->g(Landroid/view/ViewGroup;I)Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoAddressViewHolder;

    move-result-object p1

    return-object p1
.end method
