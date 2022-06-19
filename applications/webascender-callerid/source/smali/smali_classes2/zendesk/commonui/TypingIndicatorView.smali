.class Lzendesk/commonui/TypingIndicatorView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private f:Landroid/widget/ImageView;

.field private final g:Lf/w/a/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lzendesk/commonui/TypingIndicatorView$a;

    invoke-direct {p1, p0}, Lzendesk/commonui/TypingIndicatorView$a;-><init>(Lzendesk/commonui/TypingIndicatorView;)V

    iput-object p1, p0, Lzendesk/commonui/TypingIndicatorView;->g:Lf/w/a/a/b;

    .line 3
    invoke-direct {p0}, Lzendesk/commonui/TypingIndicatorView;->a()V

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

    sget v1, Lzendesk/commonui/j;->p:I

    invoke-static {v0, v1, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/commonui/TypingIndicatorView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lzendesk/commonui/TypingIndicatorView;->g:Lf/w/a/a/b;

    invoke-static {v0, v1}, Lf/w/a/a/c;->b(Landroid/graphics/drawable/Drawable;Lf/w/a/a/b;)V

    .line 3
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    sget v0, Lzendesk/commonui/h;->r:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 3
    sget v0, Lzendesk/commonui/h;->q:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    sget v0, Lzendesk/commonui/h;->p:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    sget v0, Lzendesk/commonui/h;->t:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lzendesk/commonui/TypingIndicatorView;->f:Landroid/widget/ImageView;

    .line 6
    invoke-direct {p0}, Lzendesk/commonui/TypingIndicatorView;->b()V

    return-void
.end method
