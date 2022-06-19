.class Lzendesk/support/request/CellMarginDecorator;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "SourceFile"


# instance fields
.field private final dataSource:Lzendesk/support/request/ComponentRequestAdapter;

.field private final groupVerticalMargin:I

.field private final verticalMargin:I


# direct methods
.method constructor <init>(Lzendesk/support/request/ComponentRequestAdapter;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/CellMarginDecorator;->dataSource:Lzendesk/support/request/ComponentRequestAdapter;

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lg/k/c/d;->t:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lzendesk/support/request/CellMarginDecorator;->verticalMargin:I

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lg/k/c/d;->n:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lzendesk/support/request/CellMarginDecorator;->groupVerticalMargin:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 9

    .line 1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->e0(Landroid/view/View;)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p3, p0, Lzendesk/support/request/CellMarginDecorator;->dataSource:Lzendesk/support/request/ComponentRequestAdapter;

    invoke-virtual {p3, p2}, Lzendesk/support/request/ComponentRequestAdapter;->getMessageForPos(I)Lzendesk/support/request/CellType$Base;

    move-result-object p2

    .line 3
    invoke-interface {p2}, Lzendesk/support/request/CellType$Base;->getPositionType()I

    move-result p3

    .line 4
    invoke-interface {p2}, Lzendesk/support/request/CellType$Base;->getInsets()Landroid/graphics/Rect;

    move-result-object p2

    and-int/lit8 p4, p3, 0x2

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p4, v0, :cond_1

    const/4 p4, 0x1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    and-int/lit8 v0, p3, 0x8

    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    and-int/lit8 v3, p3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    and-int/lit8 v4, p3, 0x1

    if-ne v4, v2, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    .line 5
    :goto_3
    iget v5, p2, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    .line 6
    iget v6, p2, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    .line 7
    iget v7, p2, Landroid/graphics/Rect;->right:I

    neg-int v7, v7

    .line 8
    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    neg-int v8, v8

    if-eqz p4, :cond_5

    if-eqz v0, :cond_5

    .line 9
    iget p3, p0, Lzendesk/support/request/CellMarginDecorator;->groupVerticalMargin:I

    :goto_4
    add-int/2addr v6, p3

    goto :goto_5

    :cond_5
    if-eqz p4, :cond_6

    .line 10
    iget p3, p0, Lzendesk/support/request/CellMarginDecorator;->groupVerticalMargin:I

    add-int/2addr v6, p3

    .line 11
    iget p3, p0, Lzendesk/support/request/CellMarginDecorator;->verticalMargin:I

    :goto_5
    add-int/2addr v8, p3

    goto :goto_6

    :cond_6
    if-eqz v0, :cond_7

    .line 12
    iget p3, p0, Lzendesk/support/request/CellMarginDecorator;->verticalMargin:I

    add-int/2addr v6, p3

    .line 13
    iget p3, p0, Lzendesk/support/request/CellMarginDecorator;->groupVerticalMargin:I

    goto :goto_5

    :cond_7
    if-eqz v4, :cond_8

    .line 14
    iget p3, p0, Lzendesk/support/request/CellMarginDecorator;->verticalMargin:I

    goto :goto_4

    :cond_8
    new-array p4, v2, [Ljava/lang/Object;

    .line 15
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p4, v1

    const-string p3, "RequestActivity"

    const-string v0, "Unknown position type: %s"

    invoke-static {p3, v0, p4}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    if-eqz v3, :cond_9

    .line 16
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    neg-int v8, p2

    .line 17
    :cond_9
    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
