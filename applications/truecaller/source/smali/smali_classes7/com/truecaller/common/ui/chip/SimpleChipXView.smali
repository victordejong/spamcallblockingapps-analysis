.class public final Lcom/truecaller/common/ui/chip/SimpleChipXView;
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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0008J\u0017\u0010\n\u001a\u00020\u00042\u0008\u0008\u0001\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u0008R%\u0010\u0011\u001a\n \u000c*\u0004\u0018\u00010\u000b0\u000b8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R%\u0010\u0016\u001a\n \u000c*\u0004\u0018\u00010\u00120\u00128B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u000e\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/truecaller/common/ui/chip/SimpleChipXView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "",
        "text",
        "Ls1/s;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "",
        "(I)V",
        "iconRes",
        "setIcon",
        "Landroid/widget/ImageView;",
        "kotlin.jvm.PlatformType",
        "t",
        "Ls1/g;",
        "getIcon",
        "()Landroid/widget/ImageView;",
        "icon",
        "Landroid/widget/TextView;",
        "u",
        "getTitle",
        "()Landroid/widget/TextView;",
        "title",
        "common-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final t:Ls1/g;

.field public final u:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget p1, Lcom/truecaller/common/ui/R$id;->icon:I

    invoke-static {p0, p1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/common/ui/chip/SimpleChipXView;->t:Ls1/g;

    .line 4
    sget p1, Lcom/truecaller/common/ui/R$id;->title:I

    invoke-static {p0, p1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/common/ui/chip/SimpleChipXView;->u:Ls1/g;

    .line 5
    sget p1, Lcom/truecaller/common/ui/R$layout;->layout_tcx_simple_chip:I

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Le/a/p5/s0/f;->k(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    .line 6
    sget p1, Lcom/truecaller/common/ui/R$drawable;->ripple_tcx_chip:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/truecaller/common/ui/R$dimen;->simple_chip_tcx_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 8
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 9
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 10
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    return-void
.end method

.method public static f1(Lcom/truecaller/common/ui/chip/SimpleChipXView;III)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/truecaller/common/ui/R$attr;->tcx_brandBackgroundBlue:I

    invoke-static {p2, p3}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p2

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/truecaller/common/ui/chip/SimpleChipXView;->getIcon()Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    invoke-direct {p0}, Lcom/truecaller/common/ui/chip/SimpleChipXView;->getIcon()Landroid/widget/ImageView;

    move-result-object p0

    invoke-static {p0, p2}, Le/a/p5/s0/g;->r1(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private final getIcon()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/common/ui/chip/SimpleChipXView;->t:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/common/ui/chip/SimpleChipXView;->u:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final setIcon(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/common/ui/chip/SimpleChipXView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final setIconWithTint(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Lcom/truecaller/common/ui/chip/SimpleChipXView;->f1(Lcom/truecaller/common/ui/chip/SimpleChipXView;III)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/truecaller/common/ui/chip/SimpleChipXView;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/truecaller/common/ui/chip/SimpleChipXView;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "title"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
