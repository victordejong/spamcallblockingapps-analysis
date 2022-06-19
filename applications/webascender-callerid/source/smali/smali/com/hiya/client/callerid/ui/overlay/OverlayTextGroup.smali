.class public final Lcom/hiya/client/callerid/ui/overlay/OverlayTextGroup;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final f:Landroid/util/AttributeSet;

.field private g:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/hiya/client/callerid/ui/overlay/OverlayTextGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/w/c/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/overlay/OverlayTextGroup;->f:Landroid/util/AttributeSet;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/hiya/client/callerid/ui/r;->k:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 4
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p1, 0x30

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 6
    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 7
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/overlay/OverlayTextGroup;->b()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/w/c/g;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 1
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hiya/client/callerid/ui/overlay/OverlayTextGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/overlay/OverlayTextGroup;->g:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/overlay/OverlayTextGroup;->g:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/overlay/OverlayTextGroup;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/overlay/OverlayTextGroup;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/overlay/OverlayTextGroup;->f:Landroid/util/AttributeSet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/hiya/client/callerid/ui/u;->a:[I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "context.obtainStyledAttr\u2026e.OverlayTextGroup, 0, 0)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget v1, Lcom/hiya/client/callerid/ui/p;->f0:I

    invoke-virtual {p0, v1}, Lcom/hiya/client/callerid/ui/overlay/OverlayTextGroup;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4
    sget v2, Lcom/hiya/client/callerid/ui/u;->d:I

    .line 5
    sget v3, Lcom/hiya/client/callerid/ui/t;->c:I

    .line 6
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 7
    invoke-static {v1, v2}, Landroidx/core/widget/i;->q(Landroid/widget/TextView;I)V

    .line 8
    sget v1, Lcom/hiya/client/callerid/ui/p;->b0:I

    invoke-virtual {p0, v1}, Lcom/hiya/client/callerid/ui/overlay/OverlayTextGroup;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 9
    sget v2, Lcom/hiya/client/callerid/ui/u;->b:I

    .line 10
    sget v3, Lcom/hiya/client/callerid/ui/t;->a:I

    .line 11
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 12
    invoke-static {v1, v2}, Landroidx/core/widget/i;->q(Landroid/widget/TextView;I)V

    .line 13
    sget v1, Lcom/hiya/client/callerid/ui/p;->c0:I

    invoke-virtual {p0, v1}, Lcom/hiya/client/callerid/ui/overlay/OverlayTextGroup;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 14
    sget v2, Lcom/hiya/client/callerid/ui/u;->c:I

    .line 15
    sget v3, Lcom/hiya/client/callerid/ui/t;->b:I

    .line 16
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 17
    invoke-static {v1, v2}, Landroidx/core/widget/i;->q(Landroid/widget/TextView;I)V

    .line 18
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method
