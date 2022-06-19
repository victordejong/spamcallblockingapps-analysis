.class Lzendesk/commonui/EndUserFileCellView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private f:Landroid/widget/ImageView;

.field private g:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-direct {p0}, Lzendesk/commonui/EndUserFileCellView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v0, 0x800055

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lzendesk/commonui/j;->i:I

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

    iput-object v0, p0, Lzendesk/commonui/EndUserFileCellView;->f:Landroid/widget/ImageView;

    .line 6
    sget v0, Lzendesk/commonui/h;->r:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzendesk/commonui/MessageStatusView;

    .line 7
    sget v0, Lzendesk/commonui/h;->o:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lzendesk/commonui/g;->c:I

    invoke-static {v0, v1}, Landroidx/core/content/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzendesk/commonui/EndUserFileCellView;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 9
    sget v0, Lzendesk/commonui/d;->a:I

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lzendesk/commonui/e;->c:I

    invoke-static {v0, v1, v2}, Lzendesk/commonui/r;->c(ILandroid/content/Context;I)I

    move-result v0

    .line 11
    iget-object v1, p0, Lzendesk/commonui/EndUserFileCellView;->g:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lzendesk/commonui/EndUserFileCellView;->f:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lzendesk/commonui/r;->b(ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    :cond_0
    return-void
.end method
