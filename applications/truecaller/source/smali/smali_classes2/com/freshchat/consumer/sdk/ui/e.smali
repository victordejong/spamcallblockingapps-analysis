.class public Lcom/freshchat/consumer/sdk/ui/e;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "SourceFile"


# instance fields
.field private final pO:Lcom/freshchat/consumer/sdk/ui/f;

.field private pP:I


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/ui/f;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/ui/e;->pO:Lcom/freshchat/consumer/sdk/ui/f;

    return-void
.end method

.method private a(ILandroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/e;->pO:Lcom/freshchat/consumer/sdk/ui/f;

    invoke-interface {v0, p1}, Lcom/freshchat/consumer/sdk/ui/f;->N(I)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/e;->pO:Lcom/freshchat/consumer/sdk/ui/f;

    invoke-interface {v0, p2, p1}, Lcom/freshchat/consumer/sdk/ui/f;->c(Landroid/view/View;I)V

    return-object p2
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;II)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq p3, v1, :cond_0

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/ui/e;->pO:Lcom/freshchat/consumer/sdk/ui/f;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/freshchat/consumer/sdk/ui/f;->O(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/freshchat/consumer/sdk/ui/e;->pP:I

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    :goto_2
    if-le v4, p2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-gt v3, p2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_3
    return-object v2
.end method

.method private a(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0, v4, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, p1, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/freshchat/consumer/sdk/ui/e;->pP:I

    invoke-virtual {p2, v2, v2, p1, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/e;->pO:Lcom/freshchat/consumer/sdk/ui/f;

    invoke-interface {v0, p3}, Lcom/freshchat/consumer/sdk/ui/f;->M(I)I

    move-result p3

    invoke-direct {p0, p3, p2}, Lcom/freshchat/consumer/sdk/ui/e;->a(ILandroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/freshchat/consumer/sdk/ui/e;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-direct {p0, p2, v1, p3}, Lcom/freshchat/consumer/sdk/ui/e;->a(Landroidx/recyclerview/widget/RecyclerView;II)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/ui/e;->pO:Lcom/freshchat/consumer/sdk/ui/f;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-interface {v1, p2}, Lcom/freshchat/consumer/sdk/ui/f;->O(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1, v0, p3}, Lcom/freshchat/consumer/sdk/ui/e;->a(Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/freshchat/consumer/sdk/ui/e;->a(Landroid/graphics/Canvas;Landroid/view/View;)V

    return-void
.end method
