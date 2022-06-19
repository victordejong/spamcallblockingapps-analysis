.class Lzendesk/commonui/AgentFileCellView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private f:Landroid/widget/ImageView;

.field private g:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-direct {p0}, Lzendesk/commonui/AgentFileCellView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lzendesk/commonui/j;->b:I

    invoke-static {v0, v1, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    sget v0, Lzendesk/commonui/h;->m:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3
    sget v0, Lzendesk/commonui/h;->v:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    sget v0, Lzendesk/commonui/h;->n:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5
    sget v0, Lzendesk/commonui/h;->l:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lzendesk/commonui/AgentFileCellView;->f:Landroid/widget/ImageView;

    .line 6
    sget v0, Lzendesk/commonui/h;->r:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 7
    sget v0, Lzendesk/commonui/h;->q:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8
    sget v0, Lzendesk/commonui/h;->p:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lzendesk/commonui/g;->c:I

    invoke-static {v0, v1}, Landroidx/core/content/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzendesk/commonui/AgentFileCellView;->g:Landroid/graphics/drawable/Drawable;

    .line 10
    sget v0, Lzendesk/commonui/d;->a:I

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lzendesk/commonui/e;->c:I

    invoke-static {v0, v1, v2}, Lzendesk/commonui/r;->c(ILandroid/content/Context;I)I

    move-result v0

    .line 12
    iget-object v1, p0, Lzendesk/commonui/AgentFileCellView;->g:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lzendesk/commonui/AgentFileCellView;->f:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lzendesk/commonui/r;->b(ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-void
.end method
