.class public Lcom/hiya/stingray/ui/calllog/v;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/calllog/v$b;
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
.field private a:Landroid/content/Context;

.field private b:Lcom/hiya/stingray/manager/e1;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/v0;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/v0;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/hiya/stingray/util/g0/c;

.field private g:Lcom/hiya/stingray/ui/calllog/v$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/e1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/v;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/ui/calllog/v;->b:Lcom/hiya/stingray/manager/e1;

    return-void
.end method

.method static synthetic c(Lcom/hiya/stingray/ui/calllog/v;)Lcom/hiya/stingray/util/g0/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/calllog/v;->f:Lcom/hiya/stingray/util/g0/c;

    return-object p0
.end method

.method static synthetic d(Lcom/hiya/stingray/ui/calllog/v;)Lcom/hiya/stingray/manager/e1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/calllog/v;->b:Lcom/hiya/stingray/manager/e1;

    return-object p0
.end method

.method static synthetic e(Lcom/hiya/stingray/ui/calllog/v;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/calllog/v;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/hiya/stingray/ui/calllog/v;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/calllog/v;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lcom/hiya/stingray/ui/calllog/v;)Lcom/hiya/stingray/ui/calllog/v$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/calllog/v;->g:Lcom/hiya/stingray/ui/calllog/v$b;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/v;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public h(Lcom/hiya/stingray/util/g0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/v;->f:Lcom/hiya/stingray/util/g0/c;

    return-void
.end method

.method public i(Lcom/hiya/stingray/ui/calllog/v$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/v;->g:Lcom/hiya/stingray/ui/calllog/v$b;

    return-void
.end method

.method public j(Z)V
    .locals 0

    return-void
.end method

.method public k(Ljava/util/Map;)V
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
    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/v;->c:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/hiya/stingray/ui/calllog/v;->d:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/hiya/stingray/ui/calllog/v;->e:Ljava/util/List;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 4

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/calllog/viewholder/CallPickerItemViewHolder;

    .line 2
    iget-object v0, p1, Lcom/hiya/stingray/ui/calllog/viewholder/CallPickerItemViewHolder;->phoneNumberTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hiya/stingray/ui/calllog/v;->d:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/hiya/stingray/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/v;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/t/v0;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 5
    iget-object v1, p1, Lcom/hiya/stingray/ui/calllog/viewholder/CallPickerItemViewHolder;->phoneTypeTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p1, Lcom/hiya/stingray/ui/calllog/viewholder/CallPickerItemViewHolder;->phoneTypeTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    iget-object p1, p1, Lcom/hiya/stingray/ui/calllog/viewholder/CallPickerItemViewHolder;->callPickerLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/hiya/stingray/ui/calllog/v$a;

    invoke-direct {v0, p0, p2}, Lcom/hiya/stingray/ui/calllog/v$a;-><init>(Lcom/hiya/stingray/ui/calllog/v;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0039

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/hiya/stingray/ui/calllog/viewholder/CallPickerItemViewHolder;

    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/calllog/viewholder/CallPickerItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
