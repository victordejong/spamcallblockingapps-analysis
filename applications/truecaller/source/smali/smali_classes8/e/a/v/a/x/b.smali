.class public final Le/a/v/a/x/b;
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
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\u0008\u0008\u0001\u0010\t\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0006J\u0015\u0010\r\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0017\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00042\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Le/a/v/a/x/b;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "",
        "text",
        "Ls1/s;",
        "setTitle",
        "(I)V",
        "icon",
        "setIcon",
        "color",
        "setTextColor",
        "Le/a/v/a/r0/h;",
        "painter",
        "setIconPainter",
        "(Le/a/v/a/r0/h;)V",
        "Landroid/view/View$OnClickListener;",
        "onClickListener",
        "setOnClickedListener",
        "(Landroid/view/View$OnClickListener;)V",
        "",
        "alpha",
        "setTextAlpha",
        "(F)V",
        "setBorderAlpha",
        "tag",
        "setIconTag",
        "(Ljava/lang/Integer;)V",
        "Le/a/v/k/d;",
        "t",
        "Le/a/v/k/d;",
        "binding",
        "details-view_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final t:Le/a/v/k/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 2

    and-int/lit8 p2, p5, 0x2

    const/4 p2, 0x0

    and-int/lit8 v0, p5, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p3, v1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move p4, v1

    :cond_1
    const-string p5, "context"

    .line 1
    invoke-static {p1, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 4
    sget p2, Lcom/truecaller/details_view/R$layout;->layout_action_button:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    sget p1, Lcom/truecaller/details_view/R$id;->icon:I

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    if-eqz p2, :cond_2

    .line 7
    sget p1, Lcom/truecaller/details_view/R$id;->text:I

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_2

    .line 9
    new-instance p1, Le/a/v/k/d;

    invoke-direct {p1, p0, p2, p3}, Le/a/v/k/d;-><init>(Landroid/view/View;Lcom/truecaller/common/ui/imageview/GoldShineImageView;Landroid/widget/TextView;)V

    const-string p2, "LayoutActionButtonBindin\u2026ater.from(context), this)"

    .line 10
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/v/a/x/b;->t:Le/a/v/k/d;

    return-void

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "Missing required view with ID: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final setBorderAlpha(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/x/b;->t:Le/a/v/k/d;

    iget-object v0, v0, Le/a/v/k/d;->b:Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    const-string v1, "binding.icon"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "binding.icon.background"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xff

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public final setIcon(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v/a/x/b;->t:Le/a/v/k/d;

    iget-object v0, v0, Le/a/v/k/d;->b:Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public final setIconPainter(Le/a/v/a/r0/h;)V
    .locals 2

    const-string v0, "painter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/x/b;->t:Le/a/v/k/d;

    iget-object v0, v0, Le/a/v/k/d;->b:Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    const-string v1, "binding.icon"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/v/a/r0/h;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method public final setIconTag(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/x/b;->t:Le/a/v/k/d;

    iget-object v0, v0, Le/a/v/k/d;->b:Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    const-string v1, "binding.icon"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "onClickListener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/x/b;->t:Le/a/v/k/d;

    iget-object v0, v0, Le/a/v/k/d;->b:Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setTextAlpha(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/x/b;->t:Le/a/v/k/d;

    iget-object v0, v0, Le/a/v/k/d;->c:Landroid/widget/TextView;

    const-string v1, "binding.text"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public final setTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v/a/x/b;->t:Le/a/v/k/d;

    iget-object v0, v0, Le/a/v/k/d;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v/a/x/b;->t:Le/a/v/k/d;

    iget-object v0, v0, Le/a/v/k/d;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
