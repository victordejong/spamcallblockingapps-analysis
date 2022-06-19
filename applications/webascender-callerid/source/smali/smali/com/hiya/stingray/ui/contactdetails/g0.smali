.class public final Lcom/hiya/stingray/ui/contactdetails/g0;
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
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/c1;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lkotlin/w/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/g0;->c:Landroid/content/Context;

    .line 2
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/g0;->a:Ljava/util/List;

    return-void
.end method

.method private final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/g0;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/c1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/g0;->a:Ljava/util/List;

    return-void
.end method

.method public final e(Lkotlin/w/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/g0;->b:Lkotlin/w/b/a;

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/contactdetails/g0;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    const/16 v0, 0xb

    :cond_1
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/g0;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/ui/contactdetails/g0;->c()I

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    if-ge p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 6

    const-string v0, "baseHolder"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$d0;->getItemViewType()I

    move-result v0

    const/16 v1, 0x8

    const-string v2, "holder.commentTv"

    const-string v3, "holder.dateTv"

    if-eqz v0, :cond_5

    const/4 v4, 0x1

    const v5, 0x7f080162

    if-eq v0, v4, :cond_2

    const/4 p2, 0x2

    if-eq v0, p2, :cond_1

    const/4 p2, 0x3

    if-ne v0, p2, :cond_0

    .line 2
    check-cast p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;

    .line 3
    iget-object p2, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object p2, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;->commentTv:Landroid/widget/TextView;

    invoke-static {p2, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/g0;->c:Landroid/content/Context;

    const v2, 0x7f1100e2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;->dateTv:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid recent activity view holder type onBind: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    check-cast p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/a;

    .line 8
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/g0;->c:Landroid/content/Context;

    const v0, 0x7f11040b

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/g0;->b:Lkotlin/w/b/a;

    invoke-virtual {p1, p2, v0}, Lcom/hiya/stingray/ui/contactdetails/viewholder/a;->n(Ljava/lang/String;Lkotlin/w/b/a;)V

    goto/16 :goto_0

    .line 9
    :cond_2
    check-cast p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;

    .line 10
    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;->commentTv:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/g0;->a:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/t/c1;

    invoke-virtual {v1}, Lcom/hiya/stingray/t/c1;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    new-instance v0, Lorg/joda/time/b;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/g0;->a:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hiya/stingray/t/c1;

    invoke-virtual {p2}, Lcom/hiya/stingray/t/c1;->f()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/joda/time/b;-><init>(J)V

    .line 13
    iget-object p2, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;->dateTv:Landroid/widget/TextView;

    invoke-static {p2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/joda/time/b;->x()Lorg/joda/time/b$a;

    move-result-object v2

    const-string v4, "dateTime.monthOfYear()"

    invoke-static {v2, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/joda/time/a0/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/joda/time/b;->w()Lorg/joda/time/b$a;

    move-result-object v0

    const-string v2, "dateTime.dayOfMonth()"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/joda/time/a0/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;->dateTv:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 16
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 17
    :cond_5
    check-cast p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;

    .line 18
    iget-object p2, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f080174

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    iget-object p2, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;->commentTv:Landroid/widget/TextView;

    invoke-static {p2, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/g0;->c:Landroid/content/Context;

    const v2, 0x7f1100f1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p1, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;->dateTv:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid recent activity view holder type onCreate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c014b

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/hiya/stingray/ui/contactdetails/viewholder/a;

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/contactdetails/viewholder/a;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0134

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;

    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/contactdetails/viewholder/CommentsViewHolder;-><init>(Landroid/view/View;)V

    :goto_1
    return-object p2
.end method
