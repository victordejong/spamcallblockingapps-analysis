.class public Lcom/hiya/stingray/ui/contactdetails/reports_list/a;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/c1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;I)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f080162

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;->commentTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/reports_list/a;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/t/c1;

    invoke-virtual {v1}, Lcom/hiya/stingray/t/c1;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    new-instance v0, Lorg/joda/time/b;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/reports_list/a;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hiya/stingray/t/c1;

    invoke-virtual {p2}, Lcom/hiya/stingray/t/c1;->f()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/joda/time/b;-><init>(J)V

    .line 4
    iget-object p1, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;->dateTv:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/joda/time/b;->x()Lorg/joda/time/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a0/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/joda/time/b;->w()Lorg/joda/time/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a0/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Landroid/view/ViewGroup;I)Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0134

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;

    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public e(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/c1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/reports_list/a;->a:Ljava/util/List;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/reports_list/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/reports_list/a;->c(Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/reports_list/a;->d(Landroid/view/ViewGroup;I)Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;

    move-result-object p1

    return-object p1
.end method
