.class public Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter$ViewHolder;,
        Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/l0;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/hiya/stingray/t/l0;

.field private c:Lcom/hiya/stingray/ui/customblock/countrylist/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;->a:Ljava/util/List;

    return-void
.end method

.method private synthetic d(Lcom/hiya/stingray/t/l0;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;->c:Lcom/hiya/stingray/ui/customblock/countrylist/g;

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/l0;->b()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/l0;->d()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-interface {p2, v0, p1}, Lcom/hiya/stingray/ui/customblock/countrylist/g;->L0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic f(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;->c:Lcom/hiya/stingray/ui/customblock/countrylist/g;

    invoke-interface {p1}, Lcom/hiya/stingray/ui/customblock/countrylist/g;->J0()V

    return-void
.end method


# virtual methods
.method public c()Lcom/hiya/stingray/t/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;->b:Lcom/hiya/stingray/t/l0;

    return-object v0
.end method

.method public synthetic e(Lcom/hiya/stingray/t/l0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;->d(Lcom/hiya/stingray/t/l0;Landroid/view/View;)V

    return-void
.end method

.method public synthetic g(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;->f(Landroid/view/View;)V

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;->b:Lcom/hiya/stingray/t/l0;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;->b:Lcom/hiya/stingray/t/l0;

    if-nez p1, :cond_0

    sget-object p1, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter$a;->COUNTRY:Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter$a;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter$a;->SUGGESTION:Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter$a;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1
.end method

.method public h(Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter$ViewHolder;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;->getItemViewType(I)I

    move-result p2

    sget-object v0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter$a;->COUNTRY:Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;->a:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$d0;->getAdapterPosition()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hiya/stingray/t/l0;

    .line 3
    iget-object v0, p1, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter$ViewHolder;->countryName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/hiya/stingray/t/l0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter$ViewHolder;->countryPrefix:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/hiya/stingray/t/l0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/hiya/stingray/ui/customblock/countrylist/a;

    invoke-direct {v0, p0, p2}, Lcom/hiya/stingray/ui/customblock/countrylist/a;-><init>(Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;Lcom/hiya/stingray/t/l0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p1, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter$ViewHolder;->countryName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;->b:Lcom/hiya/stingray/t/l0;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/l0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p2, p1, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter$ViewHolder;->countryPrefix:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;->b:Lcom/hiya/stingray/t/l0;

    invoke-virtual {v0}, Lcom/hiya/stingray/t/l0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance p2, Lcom/hiya/stingray/ui/customblock/countrylist/b;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/customblock/countrylist/b;-><init>(Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public i(Landroid/view/ViewGroup;I)Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter$ViewHolder;
    .locals 3

    .line 1
    new-instance p2, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public j(Lcom/hiya/stingray/ui/customblock/countrylist/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;->c:Lcom/hiya/stingray/ui/customblock/countrylist/g;

    return-void
.end method

.method public k(Ljava/util/List;Lcom/hiya/stingray/t/l0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/l0;",
            ">;",
            "Lcom/hiya/stingray/t/l0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;->a:Ljava/util/List;

    .line 2
    iput-object p2, p0, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;->b:Lcom/hiya/stingray/t/l0;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;->h(Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter;->i(Landroid/view/ViewGroup;I)Lcom/hiya/stingray/ui/customblock/countrylist/CountryListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
