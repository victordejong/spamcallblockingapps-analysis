.class Lzendesk/support/request/AdapterAttachmentCarousel$ImageAttachmentViewHolder;
.super Lzendesk/support/request/AdapterAttachmentCarousel$CarouselViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/AdapterAttachmentCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageAttachmentViewHolder"
.end annotation


# instance fields
.field private final container:Landroid/view/View;

.field private final imageView:Landroid/widget/ImageView;

.field private final picasso:Lg/i/a/d;

.field private final remove:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lg/i/a/d;)V
    .locals 2

    .line 1
    sget v0, Lg/k/c/h;->m:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lzendesk/support/request/AdapterAttachmentCarousel$CarouselViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    sget p2, Lg/k/c/f;->b0:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lzendesk/support/request/AdapterAttachmentCarousel$ImageAttachmentViewHolder;->imageView:Landroid/widget/ImageView;

    .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    sget p2, Lg/k/c/f;->c0:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/AdapterAttachmentCarousel$ImageAttachmentViewHolder;->remove:Landroid/view/View;

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    sget p2, Lg/k/c/f;->e0:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/AdapterAttachmentCarousel$ImageAttachmentViewHolder;->container:Landroid/view/View;

    .line 5
    iput-object p3, p0, Lzendesk/support/request/AdapterAttachmentCarousel$ImageAttachmentViewHolder;->picasso:Lg/i/a/d;

    return-void
.end method


# virtual methods
.method bind(Lzendesk/support/request/StateRequestAttachment;Lzendesk/support/request/AdapterAttachmentCarousel$CarouselViewHolder$OnRemoveListener;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lzendesk/support/request/AdapterAttachmentCarousel$ImageAttachmentViewHolder;->picasso:Lg/i/a/d;

    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getParsedLocalUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lg/i/a/d;->a(Landroid/net/Uri;)Lg/i/a/g;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lg/i/a/g;->a()Lg/i/a/g;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lg/i/a/g;->g()Lg/i/a/g;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/request/AdapterAttachmentCarousel$ImageAttachmentViewHolder;->imageView:Landroid/widget/ImageView;

    .line 4
    invoke-interface {v0, v1}, Lg/i/a/g;->i(Landroid/widget/ImageView;)V

    .line 5
    iget-object v0, p0, Lzendesk/support/request/AdapterAttachmentCarousel$ImageAttachmentViewHolder;->remove:Landroid/view/View;

    new-instance v1, Lzendesk/support/request/AdapterAttachmentCarousel$ImageAttachmentViewHolder$1;

    invoke-direct {v1, p0, p2, p1}, Lzendesk/support/request/AdapterAttachmentCarousel$ImageAttachmentViewHolder$1;-><init>(Lzendesk/support/request/AdapterAttachmentCarousel$ImageAttachmentViewHolder;Lzendesk/support/request/AdapterAttachmentCarousel$CarouselViewHolder$OnRemoveListener;Lzendesk/support/request/StateRequestAttachment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 7
    iget-object v0, p0, Lzendesk/support/request/AdapterAttachmentCarousel$ImageAttachmentViewHolder;->remove:Landroid/view/View;

    sget v1, Lg/k/c/j;->Q:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 9
    invoke-virtual {p2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lzendesk/support/request/AdapterAttachmentCarousel$ImageAttachmentViewHolder;->container:Landroid/view/View;

    sget v1, Lg/k/c/j;->P:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    .line 12
    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
