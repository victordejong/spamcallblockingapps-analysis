.class public final Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nR%\u0010\u0011\u001a\n \u000c*\u0004\u0018\u00010\u000b0\u000b8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R%\u0010\u0018\u001a\n \u000c*\u0004\u0018\u00010\u00140\u00148B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u000e\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "",
        "Ls1/s;",
        "onAttachedToWindow",
        "()V",
        "onDetachedFromWindow",
        "Le/a/c/a/s/g/a;",
        "presenter",
        "setPresenter",
        "(Le/a/c/a/s/g/a;)V",
        "Lcom/truecaller/common/ui/avatar/AvatarXView;",
        "kotlin.jvm.PlatformType",
        "u",
        "Ls1/g;",
        "getAvatar",
        "()Lcom/truecaller/common/ui/avatar/AvatarXView;",
        "avatar",
        "t",
        "Le/a/c/a/s/g/a;",
        "Landroid/widget/TextView;",
        "v",
        "getTitle",
        "()Landroid/widget/TextView;",
        "title",
        "insights-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public t:Le/a/c/a/s/g/a;

.field public final u:Ls1/g;

.field public final v:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    const-string p4, "context"

    .line 1
    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget p1, Lcom/truecaller/insights/ui/R$id;->avatar:I

    invoke-static {p0, p1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;->u:Ls1/g;

    .line 4
    sget p1, Lcom/truecaller/insights/ui/R$id;->title:I

    invoke-static {p0, p1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;->v:Ls1/g;

    .line 5
    sget p1, Lcom/truecaller/insights/ui/R$layout;->layout_tcx_filter_chip:I

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Le/a/p5/s0/f;->k(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    .line 6
    sget p1, Lcom/truecaller/insights/ui/R$drawable;->filter_background_selector:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/truecaller/insights/ui/R$dimen;->chip_tcx_padding:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 8
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 9
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 10
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 11
    new-instance p1, Le/a/c/a/s/g/c;

    invoke-direct {p1, p0}, Le/a/c/a/s/g/c;-><init>(Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic f1(Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;->getTitle()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final getAvatar()Lcom/truecaller/common/ui/avatar/AvatarXView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;->u:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/ui/avatar/AvatarXView;

    return-object v0
.end method

.method private final getTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;->v:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;->t:Le/a/c/a/s/g/a;

    if-eqz v0, :cond_0

    .line 3
    iput-object p0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;->t:Le/a/c/a/s/g/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final setPresenter(Le/a/c/a/s/g/a;)V
    .locals 2

    const-string v0, "presenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;->t:Le/a/c/a/s/g/a;

    .line 3
    invoke-direct {p0}, Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "title"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Le/a/c/a/s/g/a;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-direct {p0}, Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;->getAvatar()Lcom/truecaller/common/ui/avatar/AvatarXView;

    move-result-object v0

    invoke-virtual {p1}, Le/a/c/a/s/g/a;->Hj()Le/a/b0/a/b/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    return-void
.end method
