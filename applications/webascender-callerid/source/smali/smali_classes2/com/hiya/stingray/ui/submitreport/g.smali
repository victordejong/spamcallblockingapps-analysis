.class public Lcom/hiya/stingray/ui/submitreport/g;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/submitreport/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/hiya/stingray/ui/submitreport/g$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/b1;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Li/c/b0/k/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/b<",
            "Lcom/hiya/stingray/t/b1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    invoke-static {}, Li/c/b0/k/b;->c()Li/c/b0/k/b;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/submitreport/g;->b:Li/c/b0/k/b;

    return-void
.end method

.method static synthetic c(Lcom/hiya/stingray/ui/submitreport/g;)Li/c/b0/k/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/submitreport/g;->b:Li/c/b0/k/b;

    return-object p0
.end method


# virtual methods
.method public d(Lcom/hiya/stingray/ui/submitreport/g$b;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/g;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hiya/stingray/t/b1;

    .line 2
    iget-object v0, p1, Lcom/hiya/stingray/ui/submitreport/g$b;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/hiya/stingray/t/b1;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/hiya/stingray/ui/submitreport/g$a;

    invoke-direct {v0, p0, p2}, Lcom/hiya/stingray/ui/submitreport/g$a;-><init>(Lcom/hiya/stingray/ui/submitreport/g;Lcom/hiya/stingray/t/b1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public e()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Lcom/hiya/stingray/t/b1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/g;->b:Li/c/b0/k/b;

    invoke-virtual {v0}, Li/c/b0/b/v;->hide()Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroid/view/ViewGroup;I)Lcom/hiya/stingray/ui/submitreport/g$b;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0133

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/hiya/stingray/ui/submitreport/g$b;

    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/submitreport/g$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public g(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/b1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/submitreport/g;->a:Ljava/util/List;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/submitreport/g$b;

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/submitreport/g;->d(Lcom/hiya/stingray/ui/submitreport/g$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/submitreport/g;->f(Landroid/view/ViewGroup;I)Lcom/hiya/stingray/ui/submitreport/g$b;

    move-result-object p1

    return-object p1
.end method
