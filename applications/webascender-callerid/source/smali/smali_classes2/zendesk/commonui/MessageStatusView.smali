.class public Lzendesk/commonui/MessageStatusView;
.super Landroidx/appcompat/widget/n;
.source "SourceFile"


# instance fields
.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-direct {p0}, Lzendesk/commonui/MessageStatusView;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    sget v0, Lzendesk/commonui/d;->a:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lzendesk/commonui/e;->c:I

    .line 3
    invoke-static {v0, v1, v2}, Lzendesk/commonui/r;->c(ILandroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lzendesk/commonui/MessageStatusView;->i:I

    .line 4
    sget v0, Lzendesk/commonui/e;->f:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lzendesk/commonui/r;->a(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lzendesk/commonui/MessageStatusView;->h:I

    .line 5
    sget v0, Lzendesk/commonui/e;->b:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lzendesk/commonui/r;->a(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lzendesk/commonui/MessageStatusView;->j:I

    return-void
.end method


# virtual methods
.method public setStatus(Lzendesk/commonui/b;)V
    .locals 1

    .line 1
    sget-object v0, Lzendesk/commonui/MessageStatusView$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/n;->setImageResource(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lzendesk/commonui/MessageStatusView;->j:I

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/widget/e;->c(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 4
    sget p1, Lzendesk/commonui/g;->e:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/n;->setImageResource(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget p1, p0, Lzendesk/commonui/MessageStatusView;->i:I

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/widget/e;->c(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 6
    sget p1, Lzendesk/commonui/g;->f:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/n;->setImageResource(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget p1, p0, Lzendesk/commonui/MessageStatusView;->h:I

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/widget/e;->c(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 8
    sget p1, Lzendesk/commonui/g;->d:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/n;->setImageResource(I)V

    :goto_0
    return-void
.end method
